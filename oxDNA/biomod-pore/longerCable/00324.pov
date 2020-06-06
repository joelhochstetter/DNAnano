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
	<24.531742, 34.956505, 35.438564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485796, 35.109886, 35.072010>,  <24.458229, 35.201916, 34.852077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485796, 35.109886, 35.072010>,  <24.531742, 34.956505, 35.438564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485796, 35.109886, 35.072010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468480, -0.792557, -0.390359,
		-0.875975, -0.474148, -0.088605,
		-0.114864, 0.383454, -0.916389,
		24.451336, 35.224922, 34.797092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541380, 35.517868, 35.919994>,  <24.531742, 34.956505, 35.438564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541380, 35.517868, 35.919994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870483, 35.315891, 36.024380>,  <25.067945, 35.194706, 36.087009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870483, 35.315891, 36.024380>,  <24.541380, 35.517868, 35.919994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870483, 35.315891, 36.024380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310569, -0.014840, 0.950435,
		-0.476042, -0.863026, -0.169030,
		0.822758, -0.504942, 0.260965,
		25.117311, 35.164410, 36.102669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297419, 35.074524, 36.387226>,  <24.541380, 35.517868, 35.919994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297419, 35.074524, 36.387226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689852, 35.061344, 36.463535>,  <24.925312, 35.053436, 36.509319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689852, 35.061344, 36.463535>,  <24.297419, 35.074524, 36.387226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689852, 35.061344, 36.463535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193462, -0.203161, 0.959843,
		0.007136, -0.978591, -0.205691,
		0.981082, -0.032944, 0.190770,
		24.984177, 35.051460, 36.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370720, 34.620770, 36.909775>,  <24.297419, 35.074524, 36.387226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370720, 34.620770, 36.909775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734312, 34.785267, 36.936996>,  <24.952467, 34.883965, 36.953327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734312, 34.785267, 36.936996>,  <24.370720, 34.620770, 36.909775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734312, 34.785267, 36.936996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048679, -0.057411, 0.997163,
		0.413986, -0.909715, -0.032167,
		0.908981, 0.411246, 0.068052,
		25.007006, 34.908642, 36.957413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508804, 34.363979, 37.507339>,  <24.370720, 34.620770, 36.909775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508804, 34.363979, 37.507339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795799, 34.630829, 37.427177>,  <24.967997, 34.790939, 37.379082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795799, 34.630829, 37.427177>,  <24.508804, 34.363979, 37.507339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795799, 34.630829, 37.427177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264171, 0.005610, 0.964460,
		0.644536, -0.744928, -0.172208,
		0.717487, 0.667121, -0.200404,
		25.011045, 34.830967, 37.367058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215248, 34.103615, 37.678429>,  <24.508804, 34.363979, 37.507339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215248, 34.103615, 37.678429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190914, 34.493046, 37.766472>,  <25.176313, 34.726704, 37.819298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190914, 34.493046, 37.766472>,  <25.215248, 34.103615, 37.678429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190914, 34.493046, 37.766472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087385, -0.214471, 0.972814,
		0.994315, 0.078415, -0.072028,
		-0.060835, 0.973578, 0.220104,
		25.172663, 34.785118, 37.832504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766983, 34.185402, 38.101398>,  <25.215248, 34.103615, 37.678429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766983, 34.185402, 38.101398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500942, 34.471485, 38.187294>,  <25.341318, 34.643135, 38.238831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500942, 34.471485, 38.187294>,  <25.766983, 34.185402, 38.101398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500942, 34.471485, 38.187294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226222, -0.081073, 0.970696,
		0.711660, 0.694192, -0.107874,
		-0.665104, 0.715210, 0.214738,
		25.301411, 34.686047, 38.251717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177811, 34.689621, 38.431316>,  <25.766983, 34.185402, 38.101398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177811, 34.689621, 38.431316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807514, 34.660858, 38.579819>,  <25.585337, 34.643600, 38.668919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807514, 34.660858, 38.579819>,  <26.177811, 34.689621, 38.431316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807514, 34.660858, 38.579819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378117, -0.190221, 0.906004,
		0.005469, 0.979104, 0.203286,
		-0.925742, -0.071911, 0.371256,
		25.529791, 34.639286, 38.691196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219080, 34.927696, 39.043411>,  <26.177811, 34.689621, 38.431316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219080, 34.927696, 39.043411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896687, 34.695385, 39.089165>,  <25.703251, 34.555996, 39.116615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896687, 34.695385, 39.089165>,  <26.219080, 34.927696, 39.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896687, 34.695385, 39.089165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257225, -0.169604, 0.951351,
		-0.533129, 0.796195, 0.286090,
		-0.805983, -0.580783, 0.114381,
		25.654892, 34.521149, 39.123478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805105, 35.148663, 39.624699>,  <26.219080, 34.927696, 39.043411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805105, 35.148663, 39.624699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688046, 34.772747, 39.554089>,  <25.617809, 34.547199, 39.511723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688046, 34.772747, 39.554089>,  <25.805105, 35.148663, 39.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688046, 34.772747, 39.554089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187021, -0.237292, 0.953266,
		-0.937753, 0.245959, 0.245203,
		-0.292648, -0.939786, -0.176522,
		25.600250, 34.490810, 39.501133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504406, 35.032982, 40.176853>,  <25.805105, 35.148663, 39.624699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504406, 35.032982, 40.176853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550001, 34.658199, 40.044724>,  <25.577358, 34.433331, 39.965446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550001, 34.658199, 40.044724>,  <25.504406, 35.032982, 40.176853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550001, 34.658199, 40.044724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251292, -0.294485, 0.922025,
		-0.961176, -0.188107, 0.201883,
		0.113988, -0.936960, -0.330322,
		25.584198, 34.377110, 39.945625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085411, 34.646290, 40.568695>,  <25.504406, 35.032982, 40.176853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085411, 34.646290, 40.568695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411564, 34.460060, 40.431065>,  <25.607256, 34.348320, 40.348484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411564, 34.460060, 40.431065>,  <25.085411, 34.646290, 40.568695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411564, 34.460060, 40.431065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243072, -0.264094, 0.933365,
		-0.525423, -0.844685, -0.102168,
		0.815382, -0.465577, -0.344080,
		25.656178, 34.320389, 40.327839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801220, 34.609753, 40.843800>,  <25.085411, 34.646290, 40.568695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801220, 34.609753, 40.843800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571247, 34.851040, 41.064915>,  <25.433264, 34.995811, 41.197586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571247, 34.851040, 41.064915>,  <25.801220, 34.609753, 40.843800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571247, 34.851040, 41.064915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258886, 0.775022, -0.576471,
		-0.776164, -0.188323, -0.601751,
		-0.574933, 0.603221, 0.552790,
		25.398767, 35.032005, 41.230751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188297, 34.026207, 41.078102>,  <25.801220, 34.609753, 40.843800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188297, 34.026207, 41.078102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985798, 33.701412, 40.961906>,  <25.864298, 33.506535, 40.892189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985798, 33.701412, 40.961906>,  <26.188297, 34.026207, 41.078102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985798, 33.701412, 40.961906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121873, 0.400825, -0.908012,
		0.853734, -0.424275, -0.301876,
		-0.506247, -0.811992, -0.290490,
		25.833923, 33.457813, 40.874760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426228, 33.884560, 40.484123>,  <26.188297, 34.026207, 41.078102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426228, 33.884560, 40.484123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057888, 33.730606, 40.509094>,  <25.836884, 33.638233, 40.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057888, 33.730606, 40.509094>,  <26.426228, 33.884560, 40.484123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057888, 33.730606, 40.509094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201857, 0.333598, -0.920851,
		0.333598, -0.860566, -0.384886,
		0.920851, 0.384886, -0.062423,
		25.781633, 33.615139, 40.527821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362913, 33.451752, 39.802547>,  <26.426228, 33.884560, 40.484123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362913, 33.451752, 39.802547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039946, 33.620975, 39.967033>,  <25.846165, 33.722507, 40.065723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039946, 33.620975, 39.967033>,  <26.362913, 33.451752, 39.802547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039946, 33.620975, 39.967033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272367, 0.350992, -0.895891,
		-0.523344, -0.835362, -0.168171,
		-0.807420, 0.423055, 0.411215,
		25.797720, 33.747890, 40.090397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635260, 33.188801, 39.516823>,  <26.362913, 33.451752, 39.802547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635260, 33.188801, 39.516823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627968, 33.565899, 39.650024>,  <25.623592, 33.792160, 39.729946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627968, 33.565899, 39.650024>,  <25.635260, 33.188801, 39.516823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627968, 33.565899, 39.650024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502721, 0.279254, -0.818100,
		-0.864256, -0.182324, 0.468849,
		-0.018231, 0.942749, 0.333005,
		25.622498, 33.848724, 39.749928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982203, 33.383953, 39.427242>,  <25.635260, 33.188801, 39.516823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982203, 33.383953, 39.427242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201012, 33.718441, 39.442787>,  <25.332296, 33.919132, 39.452114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201012, 33.718441, 39.442787>,  <24.982203, 33.383953, 39.427242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201012, 33.718441, 39.442787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454934, 0.335932, -0.824733,
		-0.702711, 0.433466, 0.564185,
		0.547021, 0.836216, 0.038864,
		25.365118, 33.969307, 39.454445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546238, 33.861481, 39.309643>,  <24.982203, 33.383953, 39.427242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546238, 33.861481, 39.309643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890148, 34.050838, 39.233032>,  <25.096495, 34.164452, 39.187065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890148, 34.050838, 39.233032>,  <24.546238, 33.861481, 39.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890148, 34.050838, 39.233032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438833, 0.493089, -0.751191,
		-0.261169, 0.729905, 0.631688,
		0.859777, 0.473393, -0.191527,
		25.148081, 34.192856, 39.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.306423, 34.441963, 39.157310>,  <24.546238, 33.861481, 39.309643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.306423, 34.441963, 39.157310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678146, 34.486271, 39.016392>,  <24.901180, 34.512856, 38.931839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678146, 34.486271, 39.016392>,  <24.306423, 34.441963, 39.157310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678146, 34.486271, 39.016392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320677, 0.715187, -0.621027,
		0.183165, 0.690100, 0.700152,
		0.929310, 0.110772, -0.352296,
		24.956940, 34.519501, 38.910702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440744, 35.145126, 39.160229>,  <24.306423, 34.441963, 39.157310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440744, 35.145126, 39.160229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684402, 34.967571, 38.897350>,  <24.830597, 34.861038, 38.739624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684402, 34.967571, 38.897350>,  <24.440744, 35.145126, 39.160229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684402, 34.967571, 38.897350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349892, 0.593242, -0.725010,
		0.711699, 0.671584, 0.206058,
		0.609147, -0.443891, -0.657192,
		24.867147, 34.834404, 38.700191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644936, 35.652237, 38.698864>,  <24.440744, 35.145126, 39.160229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644936, 35.652237, 38.698864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859808, 35.355362, 38.538570>,  <24.988731, 35.177235, 38.442394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859808, 35.355362, 38.538570>,  <24.644936, 35.652237, 38.698864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859808, 35.355362, 38.538570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125483, 0.399499, -0.908105,
		0.834081, 0.538102, 0.121471,
		0.537181, -0.742190, -0.400738,
		25.020962, 35.132706, 38.418350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939175, 36.039806, 38.215721>,  <24.644936, 35.652237, 38.698864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939175, 36.039806, 38.215721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016941, 35.664162, 38.102394>,  <25.063601, 35.438774, 38.034397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016941, 35.664162, 38.102394>,  <24.939175, 36.039806, 38.215721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016941, 35.664162, 38.102394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118300, 0.309169, -0.943621,
		0.973759, 0.149939, 0.171205,
		0.194416, -0.939113, -0.283318,
		25.075266, 35.382427, 38.017399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133865, 36.142361, 37.459023>,  <24.939175, 36.039806, 38.215721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133865, 36.142361, 37.459023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214029, 35.759750, 37.543781>,  <25.262127, 35.530186, 37.594635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214029, 35.759750, 37.543781>,  <25.133865, 36.142361, 37.459023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214029, 35.759750, 37.543781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208863, -0.169599, -0.963127,
		0.957190, 0.237276, 0.165793,
		0.200409, -0.956523, 0.211896,
		25.274153, 35.472794, 37.607349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640642, 35.912670, 36.954269>,  <25.133865, 36.142361, 37.459023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640642, 35.912670, 36.954269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486254, 35.577404, 37.108418>,  <25.393620, 35.376244, 37.200905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486254, 35.577404, 37.108418>,  <25.640642, 35.912670, 36.954269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486254, 35.577404, 37.108418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210913, -0.486854, -0.847637,
		0.898076, -0.245885, 0.364691,
		-0.385973, -0.838161, 0.385371,
		25.370462, 35.325954, 37.224030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174381, 35.403450, 36.910057>,  <25.640642, 35.912670, 36.954269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174381, 35.403450, 36.910057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816380, 35.225288, 36.919724>,  <25.601580, 35.118389, 36.925522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816380, 35.225288, 36.919724>,  <26.174381, 35.403450, 36.910057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816380, 35.225288, 36.919724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080228, -0.214029, -0.973527,
		0.438788, -0.869370, 0.227291,
		-0.895002, -0.445408, 0.024166,
		25.547878, 35.091667, 36.926971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230307, 34.774254, 36.657162>,  <26.174381, 35.403450, 36.910057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230307, 34.774254, 36.657162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847809, 34.882332, 36.612278>,  <25.618311, 34.947178, 36.585346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847809, 34.882332, 36.612278>,  <26.230307, 34.774254, 36.657162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847809, 34.882332, 36.612278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047407, -0.235367, -0.970750,
		-0.288702, -0.933594, 0.212260,
		-0.956245, 0.270195, -0.112210,
		25.560936, 34.963390, 36.578613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317053, 34.738304, 35.969723>,  <26.230307, 34.774254, 36.657162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317053, 34.738304, 35.969723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199574, 35.095406, 36.106380>,  <26.129086, 35.309669, 36.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199574, 35.095406, 36.106380>,  <26.317053, 34.738304, 35.969723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199574, 35.095406, 36.106380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354306, -0.433623, 0.828516,
		0.887811, 0.122286, 0.443664,
		-0.293699, 0.892758, 0.341648,
		26.111464, 35.363232, 36.208874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735767, 35.140400, 35.552109>,  <26.317053, 34.738304, 35.969723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735767, 35.140400, 35.552109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077904, 35.255123, 35.379536>,  <27.283186, 35.323956, 35.275993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077904, 35.255123, 35.379536>,  <26.735767, 35.140400, 35.552109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077904, 35.255123, 35.379536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423389, -0.092931, -0.901169,
		-0.298553, 0.953471, 0.041942,
		0.855341, 0.286804, -0.431434,
		27.334505, 35.341164, 35.250107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619246, 35.650890, 35.017693>,  <26.735767, 35.140400, 35.552109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619246, 35.650890, 35.017693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957582, 35.504581, 34.862381>,  <27.160585, 35.416794, 34.769196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957582, 35.504581, 34.862381>,  <26.619246, 35.650890, 35.017693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957582, 35.504581, 34.862381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432793, -0.045063, -0.900366,
		0.311835, 0.929611, -0.196421,
		0.845842, -0.365776, -0.388277,
		27.211334, 35.394848, 34.745899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865345, 36.138905, 34.494728>,  <26.619246, 35.650890, 35.017693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865345, 36.138905, 34.494728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974417, 35.761402, 34.419926>,  <27.039860, 35.534901, 34.375042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974417, 35.761402, 34.419926>,  <26.865345, 36.138905, 34.494728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974417, 35.761402, 34.419926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431163, 0.053895, -0.900663,
		0.860084, 0.326225, -0.392216,
		0.272680, -0.943755, -0.187010,
		27.056221, 35.478275, 34.363823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176556, 36.292961, 33.847397>,  <26.865345, 36.138905, 34.494728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176556, 36.292961, 33.847397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061197, 35.912918, 33.894939>,  <26.991983, 35.684891, 33.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061197, 35.912918, 33.894939>,  <27.176556, 36.292961, 33.847397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061197, 35.912918, 33.894939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610669, 0.086898, -0.787104,
		0.737504, -0.299577, -0.605261,
		-0.288394, -0.950106, 0.118855,
		26.974678, 35.627888, 33.930595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320665, 36.070358, 33.196228>,  <27.176556, 36.292961, 33.847397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320665, 36.070358, 33.196228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065214, 35.812576, 33.364433>,  <26.911943, 35.657906, 33.465355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065214, 35.812576, 33.364433>,  <27.320665, 36.070358, 33.196228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065214, 35.812576, 33.364433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508017, -0.057367, -0.859435,
		0.577992, -0.762486, -0.290759,
		-0.638627, -0.644457, 0.420513,
		26.873627, 35.619240, 33.490585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266310, 35.569538, 32.636868>,  <27.320665, 36.070358, 33.196228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266310, 35.569538, 32.636868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951958, 35.554874, 32.883785>,  <26.763348, 35.546078, 33.031937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951958, 35.554874, 32.883785>,  <27.266310, 35.569538, 32.636868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951958, 35.554874, 32.883785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605822, 0.245792, -0.756681,
		-0.123990, -0.968629, -0.215369,
		-0.785879, -0.036654, 0.617293,
		26.716194, 35.543877, 33.068974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762220, 35.271744, 32.255440>,  <27.266310, 35.569538, 32.636868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762220, 35.271744, 32.255440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577515, 35.482861, 32.540596>,  <26.466690, 35.609531, 32.711689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577515, 35.482861, 32.540596>,  <26.762220, 35.271744, 32.255440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577515, 35.482861, 32.540596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777866, 0.145274, -0.611408,
		-0.426259, -0.836860, 0.343467,
		-0.461766, 0.527789, 0.712889,
		26.438986, 35.641197, 32.754463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857307, 34.565479, 32.698681>,  <26.762220, 35.271744, 32.255440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857307, 34.565479, 32.698681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614634, 34.767254, 32.944439>,  <26.469028, 34.888317, 33.091892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614634, 34.767254, 32.944439>,  <26.857307, 34.565479, 32.698681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614634, 34.767254, 32.944439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672567, 0.086305, -0.734987,
		-0.423778, -0.859125, 0.286907,
		-0.606684, 0.504435, 0.614393,
		26.432629, 34.918583, 33.128757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177876, 34.164860, 32.742622>,  <26.857307, 34.565479, 32.698681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177876, 34.164860, 32.742622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094545, 34.529667, 32.883949>,  <26.044548, 34.748550, 32.968746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094545, 34.529667, 32.883949>,  <26.177876, 34.164860, 32.742622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094545, 34.529667, 32.883949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767435, 0.071522, -0.637125,
		-0.606337, -0.403873, 0.685012,
		-0.208324, 0.912015, 0.353313,
		26.032047, 34.803272, 32.989944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506794, 34.302288, 32.885941>,  <26.177876, 34.164860, 32.742622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506794, 34.302288, 32.885941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617565, 34.681923, 32.825867>,  <25.684027, 34.909702, 32.789822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617565, 34.681923, 32.825867>,  <25.506794, 34.302288, 32.885941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617565, 34.681923, 32.825867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730319, 0.106318, -0.674782,
		-0.624457, 0.296544, 0.722575,
		0.276926, 0.949082, -0.150181,
		25.700644, 34.966648, 32.780811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939192, 34.576721, 32.889393>,  <25.506794, 34.302288, 32.885941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939192, 34.576721, 32.889393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213341, 34.789051, 32.689999>,  <25.377831, 34.916451, 32.570362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213341, 34.789051, 32.689999>,  <24.939192, 34.576721, 32.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213341, 34.789051, 32.689999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596252, 0.016105, -0.802636,
		-0.418030, 0.847329, 0.327543,
		0.685372, 0.530823, -0.498490,
		25.418953, 34.948299, 32.540451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594898, 35.081852, 32.500542>,  <24.939192, 34.576721, 32.889393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594898, 35.081852, 32.500542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948509, 35.043224, 32.317600>,  <25.160675, 35.020046, 32.207836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948509, 35.043224, 32.317600>,  <24.594898, 35.081852, 32.500542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948509, 35.043224, 32.317600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460331, -0.009890, -0.887692,
		0.081204, 0.995277, -0.053198,
		0.884026, -0.096573, -0.457354,
		25.213717, 35.014252, 32.180393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696508, 35.528896, 31.929932>,  <24.594898, 35.081852, 32.500542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696508, 35.528896, 31.929932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938442, 35.222607, 31.842447>,  <25.083603, 35.038834, 31.789957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938442, 35.222607, 31.842447>,  <24.696508, 35.528896, 31.929932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938442, 35.222607, 31.842447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314920, 0.022270, -0.948857,
		0.731437, 0.642779, -0.227674,
		0.604835, -0.765728, -0.218713,
		25.119892, 34.992889, 31.776833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080109, 35.815517, 31.355181>,  <24.696508, 35.528896, 31.929932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080109, 35.815517, 31.355181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096689, 35.415936, 31.362892>,  <25.106638, 35.176186, 31.367519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096689, 35.415936, 31.362892>,  <25.080109, 35.815517, 31.355181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096689, 35.415936, 31.362892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337240, -0.032153, -0.940870,
		0.940506, 0.032500, -0.338220,
		0.041453, -0.998955, 0.019280,
		25.109125, 35.116249, 31.368675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825647, 35.597652, 31.381199>,  <25.080109, 35.815517, 31.355181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825647, 35.597652, 31.381199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575912, 35.602222, 31.693628>,  <25.426071, 35.604965, 31.881086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575912, 35.602222, 31.693628>,  <25.825647, 35.597652, 31.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575912, 35.602222, 31.693628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780427, 0.052301, 0.623056,
		-0.033731, 0.998566, -0.041572,
		-0.624337, 0.011428, 0.781072,
		25.388611, 35.605652, 31.927950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124016, 35.924870, 31.972813>,  <25.825647, 35.597652, 31.381199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124016, 35.924870, 31.972813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853683, 35.696407, 32.159161>,  <25.691484, 35.559330, 32.270969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853683, 35.696407, 32.159161>,  <26.124016, 35.924870, 31.972813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853683, 35.696407, 32.159161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601858, -0.062781, 0.796131,
		-0.425467, 0.818437, 0.386184,
		-0.675829, -0.571156, 0.465872,
		25.650934, 35.525059, 32.298923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982185, 36.179035, 32.554806>,  <26.124016, 35.924870, 31.972813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982185, 36.179035, 32.554806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915611, 35.789188, 32.614693>,  <25.875666, 35.555279, 32.650627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915611, 35.789188, 32.614693>,  <25.982185, 36.179035, 32.554806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915611, 35.789188, 32.614693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497915, 0.047990, 0.865897,
		-0.851105, 0.218665, 0.477290,
		-0.166437, -0.974619, 0.149721,
		25.865681, 35.496803, 32.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757767, 36.168850, 33.259972>,  <25.982185, 36.179035, 32.554806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757767, 36.168850, 33.259972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879250, 35.806736, 33.141167>,  <25.952139, 35.589466, 33.069881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879250, 35.806736, 33.141167>,  <25.757767, 36.168850, 33.259972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879250, 35.806736, 33.141167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577358, -0.073111, 0.813211,
		-0.757904, -0.418463, 0.500470,
		0.303708, -0.905286, -0.297014,
		25.970362, 35.535149, 33.052063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576092, 35.543388, 33.692989>,  <25.757767, 36.168850, 33.259972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576092, 35.543388, 33.692989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929920, 35.487751, 33.514915>,  <26.142218, 35.454369, 33.408073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929920, 35.487751, 33.514915>,  <25.576092, 35.543388, 33.692989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929920, 35.487751, 33.514915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413087, -0.209522, 0.886262,
		-0.216537, -0.967862, -0.127885,
		0.884574, -0.139080, -0.445181,
		26.195292, 35.446022, 33.381359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918310, 34.924454, 34.029667>,  <25.576092, 35.543388, 33.692989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918310, 34.924454, 34.029667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229679, 35.103973, 33.854103>,  <26.416500, 35.211685, 33.748764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229679, 35.103973, 33.854103>,  <25.918310, 34.924454, 34.029667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229679, 35.103973, 33.854103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537419, -0.115129, 0.835420,
		0.324401, -0.886188, -0.330810,
		0.778425, 0.448794, -0.438906,
		26.463207, 35.238613, 33.722431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557077, 34.441833, 34.190411>,  <25.918310, 34.924454, 34.029667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557077, 34.441833, 34.190411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673992, 34.816242, 34.112000>,  <26.744141, 35.040890, 34.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673992, 34.816242, 34.112000>,  <26.557077, 34.441833, 34.190411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673992, 34.816242, 34.112000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707644, -0.073809, 0.702703,
		0.643278, -0.344110, -0.683945,
		0.292289, 0.936024, -0.196028,
		26.761679, 35.097050, 34.053192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257326, 34.257889, 34.283333>,  <26.557077, 34.441833, 34.190411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257326, 34.257889, 34.283333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200216, 34.653728, 34.276203>,  <27.165951, 34.891232, 34.271927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200216, 34.653728, 34.276203>,  <27.257326, 34.257889, 34.283333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200216, 34.653728, 34.276203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803412, 0.126390, 0.581854,
		0.578052, 0.068755, -0.813098,
		-0.142773, 0.989595, -0.017822,
		27.157385, 34.950607, 34.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938219, 34.575279, 34.195854>,  <27.257326, 34.257889, 34.283333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938219, 34.575279, 34.195854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722391, 34.856495, 34.381157>,  <27.592894, 35.025223, 34.492336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722391, 34.856495, 34.381157>,  <27.938219, 34.575279, 34.195854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722391, 34.856495, 34.381157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732139, 0.120105, 0.670483,
		0.415735, 0.700938, -0.579526,
		-0.539571, 0.703036, 0.463253,
		27.560520, 35.067406, 34.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211979, 35.187138, 34.204224>,  <27.938219, 34.575279, 34.195854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211979, 35.187138, 34.204224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994905, 35.179096, 34.540104>,  <27.864662, 35.174271, 34.741631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994905, 35.179096, 34.540104>,  <28.211979, 35.187138, 34.204224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994905, 35.179096, 34.540104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791501, 0.322338, 0.519254,
		-0.281105, 0.946411, -0.159015,
		-0.542684, -0.020104, 0.839696,
		27.832100, 35.173065, 34.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166870, 35.878078, 34.660210>,  <28.211979, 35.187138, 34.204224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166870, 35.878078, 34.660210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109005, 35.557007, 34.891651>,  <28.074286, 35.364365, 35.030514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109005, 35.557007, 34.891651>,  <28.166870, 35.878078, 34.660210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109005, 35.557007, 34.891651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678356, 0.345253, 0.648563,
		-0.720351, 0.486321, 0.494557,
		-0.144662, -0.802679, 0.578602,
		28.065607, 35.316204, 35.065231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066425, 36.128235, 35.460190>,  <28.166870, 35.878078, 34.660210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066425, 36.128235, 35.460190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178034, 35.745018, 35.433933>,  <28.244999, 35.515087, 35.418179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178034, 35.745018, 35.433933>,  <28.066425, 36.128235, 35.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178034, 35.745018, 35.433933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715568, 0.161845, 0.679536,
		-0.640398, -0.236576, 0.730700,
		0.279022, -0.958039, -0.065641,
		28.261740, 35.457607, 35.414242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911606, 35.813686, 36.133419>,  <28.066425, 36.128235, 35.460190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911606, 35.813686, 36.133419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205978, 35.652260, 35.915966>,  <28.382603, 35.555405, 35.785496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205978, 35.652260, 35.915966>,  <27.911606, 35.813686, 36.133419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205978, 35.652260, 35.915966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600510, 0.018218, 0.799409,
		-0.312712, -0.914769, 0.255754,
		0.735934, -0.403568, -0.543631,
		28.426758, 35.531189, 35.752876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154821, 35.093494, 36.295017>,  <27.911606, 35.813686, 36.133419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154821, 35.093494, 36.295017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446585, 35.340614, 36.177517>,  <28.621643, 35.488888, 36.107018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446585, 35.340614, 36.177517>,  <28.154821, 35.093494, 36.295017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446585, 35.340614, 36.177517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429445, -0.079287, 0.899606,
		0.532485, -0.782328, -0.323144,
		0.729408, 0.617799, -0.293748,
		28.665407, 35.525955, 36.089394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805916, 34.918224, 36.556480>,  <28.154821, 35.093494, 36.295017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805916, 34.918224, 36.556480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824089, 35.317013, 36.531258>,  <28.834993, 35.556286, 36.516125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824089, 35.317013, 36.531258>,  <28.805916, 34.918224, 36.556480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824089, 35.317013, 36.531258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063348, 0.065870, 0.995816,
		0.996957, -0.041248, 0.066149,
		0.045432, 0.996975, -0.063056,
		28.837719, 35.616104, 36.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548929, 34.742554, 36.679451>,  <28.805916, 34.918224, 36.556480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548929, 34.742554, 36.679451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370438, 34.503426, 36.945831>,  <29.263342, 34.359947, 37.105659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370438, 34.503426, 36.945831>,  <29.548929, 34.742554, 36.679451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370438, 34.503426, 36.945831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703459, 0.225682, 0.673954,
		-0.553196, 0.769207, 0.319836,
		-0.446228, -0.597820, 0.665952,
		29.236568, 34.324081, 37.145618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142427, 35.312538, 36.831455>,  <29.548929, 34.742554, 36.679451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142427, 35.312538, 36.831455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499994, 35.170105, 36.722561>,  <30.714535, 35.084644, 36.657223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499994, 35.170105, 36.722561>,  <30.142427, 35.312538, 36.831455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499994, 35.170105, 36.722561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446891, 0.661085, 0.602707,
		-0.034641, -0.660432, 0.750086,
		0.893918, -0.356085, -0.272240,
		30.768169, 35.063278, 36.640888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606901, 35.071987, 37.483921>,  <30.142427, 35.312538, 36.831455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606901, 35.071987, 37.483921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834997, 35.166229, 37.169136>,  <30.971855, 35.222775, 36.980263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834997, 35.166229, 37.169136>,  <30.606901, 35.071987, 37.483921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834997, 35.166229, 37.169136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598892, 0.536476, 0.594577,
		0.562277, -0.810359, 0.164813,
		0.570239, 0.235612, -0.786965,
		31.006069, 35.236912, 36.933048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179934, 34.639603, 37.384228>,  <30.606901, 35.071987, 37.483921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179934, 34.639603, 37.384228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241678, 35.026527, 37.303741>,  <31.278725, 35.258682, 37.255451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241678, 35.026527, 37.303741>,  <31.179934, 34.639603, 37.384228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241678, 35.026527, 37.303741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484552, 0.103363, 0.868634,
		0.861035, -0.231582, -0.452756,
		0.154362, 0.967308, -0.201213,
		31.287987, 35.316719, 37.243378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896044, 34.637020, 37.291008>,  <31.179934, 34.639603, 37.384228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896044, 34.637020, 37.291008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673630, 34.929966, 37.448219>,  <31.540182, 35.105732, 37.542545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673630, 34.929966, 37.448219>,  <31.896044, 34.637020, 37.291008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673630, 34.929966, 37.448219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563997, -0.014885, 0.825643,
		0.610520, 0.680752, -0.404774,
		-0.556033, 0.732363, 0.393029,
		31.506821, 35.149673, 37.566128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401592, 35.144096, 37.442467>,  <31.896044, 34.637020, 37.291008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401592, 35.144096, 37.442467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062996, 35.142723, 37.655426>,  <31.859838, 35.141899, 37.783199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062996, 35.142723, 37.655426>,  <32.401592, 35.144096, 37.442467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062996, 35.142723, 37.655426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531802, -0.053080, 0.845204,
		0.025356, 0.998584, 0.046758,
		-0.846489, -0.003435, 0.532395,
		31.809050, 35.141693, 37.815144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721321, 35.634869, 37.043182>,  <32.401592, 35.144096, 37.442467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721321, 35.634869, 37.043182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886639, 35.976589, 36.917103>,  <32.985828, 36.181622, 36.841454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886639, 35.976589, 36.917103>,  <32.721321, 35.634869, 37.043182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886639, 35.976589, 36.917103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319874, 0.460295, 0.828136,
		0.852566, -0.241438, 0.463507,
		0.413293, 0.854304, -0.315202,
		33.010628, 36.232880, 36.822540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562744, 35.627129, 37.113071>,  <32.721321, 35.634869, 37.043182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562744, 35.627129, 37.113071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356159, 35.805584, 37.405434>,  <33.232208, 35.912659, 37.580853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356159, 35.805584, 37.405434>,  <33.562744, 35.627129, 37.113071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356159, 35.805584, 37.405434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754739, -0.640379, -0.142418,
		0.404518, -0.625197, 0.667454,
		-0.516463, 0.446143, 0.730905,
		33.201221, 35.939426, 37.624706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144886, 35.143227, 37.381424>,  <33.562744, 35.627129, 37.113071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144886, 35.143227, 37.381424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750431, 35.119038, 37.443233>,  <33.513760, 35.104523, 37.480320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750431, 35.119038, 37.443233>,  <34.144886, 35.143227, 37.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750431, 35.119038, 37.443233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140904, -0.186704, -0.972259,
		0.087646, -0.980553, 0.175595,
		-0.986136, -0.060472, 0.154528,
		33.454590, 35.100895, 37.489594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024944, 34.559963, 37.158081>,  <34.144886, 35.143227, 37.381424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024944, 34.559963, 37.158081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700733, 34.784206, 37.090233>,  <33.506207, 34.918751, 37.049526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700733, 34.784206, 37.090233>,  <34.024944, 34.559963, 37.158081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700733, 34.784206, 37.090233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022854, -0.319648, -0.947261,
		-0.585259, -0.763902, 0.271895,
		-0.810524, 0.560607, -0.169618,
		33.457577, 34.952389, 37.039349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607449, 34.129257, 36.815002>,  <34.024944, 34.559963, 37.158081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607449, 34.129257, 36.815002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535034, 34.504128, 36.695717>,  <33.491585, 34.729050, 36.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535034, 34.504128, 36.695717>,  <33.607449, 34.129257, 36.815002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535034, 34.504128, 36.695717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028608, -0.298079, -0.954112,
		-0.983060, -0.181262, 0.027153,
		-0.181038, 0.937173, -0.298216,
		33.480724, 34.785278, 36.606251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989914, 34.153225, 36.477825>,  <33.607449, 34.129257, 36.815002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989914, 34.153225, 36.477825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227459, 34.447414, 36.347340>,  <33.369984, 34.623928, 36.269051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227459, 34.447414, 36.347340>,  <32.989914, 34.153225, 36.477825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227459, 34.447414, 36.347340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042391, -0.376282, -0.925535,
		-0.803450, 0.563467, -0.192282,
		0.593861, 0.735470, -0.326210,
		33.405617, 34.668056, 36.249477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735306, 34.437595, 35.863438>,  <32.989914, 34.153225, 36.477825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735306, 34.437595, 35.863438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108521, 34.575050, 35.820812>,  <33.332451, 34.657524, 35.795235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108521, 34.575050, 35.820812>,  <32.735306, 34.437595, 35.863438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108521, 34.575050, 35.820812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039654, -0.196171, -0.979768,
		-0.357586, 0.918386, -0.169408,
		0.933038, 0.343634, -0.106565,
		33.388432, 34.678139, 35.788841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781834, 34.320461, 35.254307>,  <32.735306, 34.437595, 35.863438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781834, 34.320461, 35.254307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155418, 34.441742, 35.329979>,  <33.379570, 34.514511, 35.375381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155418, 34.441742, 35.329979>,  <32.781834, 34.320461, 35.254307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155418, 34.441742, 35.329979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256330, -0.199478, -0.945782,
		-0.249023, 0.931815, -0.264023,
		0.933960, 0.303199, 0.189178,
		33.435608, 34.532703, 35.386734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915657, 34.815014, 34.765476>,  <32.781834, 34.320461, 35.254307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915657, 34.815014, 34.765476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266834, 34.657509, 34.874413>,  <33.477539, 34.563007, 34.939774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266834, 34.657509, 34.874413>,  <32.915657, 34.815014, 34.765476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266834, 34.657509, 34.874413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072217, -0.453420, -0.888366,
		0.473292, 0.799601, -0.369639,
		0.877940, -0.393763, 0.272345,
		33.530216, 34.539379, 34.956116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464523, 35.047962, 34.291275>,  <32.915657, 34.815014, 34.765476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464523, 35.047962, 34.291275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593147, 34.700912, 34.442974>,  <33.670322, 34.492683, 34.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593147, 34.700912, 34.442974>,  <33.464523, 35.047962, 34.291275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593147, 34.700912, 34.442974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319322, -0.277696, -0.906045,
		0.891422, 0.412450, 0.187756,
		0.321559, -0.867623, 0.379249,
		33.689613, 34.440624, 34.556747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926399, 34.841919, 33.812176>,  <33.464523, 35.047962, 34.291275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926399, 34.841919, 33.812176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880302, 34.494473, 34.004932>,  <33.852642, 34.286003, 34.120586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880302, 34.494473, 34.004932>,  <33.926399, 34.841919, 33.812176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880302, 34.494473, 34.004932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420512, -0.482174, -0.768556,
		0.899938, 0.114069, 0.420833,
		-0.115246, -0.868618, 0.481894,
		33.845730, 34.233887, 34.149502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597290, 34.472084, 33.805134>,  <33.926399, 34.841919, 33.812176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597290, 34.472084, 33.805134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364880, 34.156139, 33.883640>,  <34.225433, 33.966572, 33.930744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364880, 34.156139, 33.883640>,  <34.597290, 34.472084, 33.805134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364880, 34.156139, 33.883640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481177, -0.527864, -0.699877,
		0.656413, -0.312206, 0.686768,
		-0.581025, -0.789865, 0.196270,
		34.190571, 33.919178, 33.942520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972504, 33.818699, 33.864914>,  <34.597290, 34.472084, 33.805134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972504, 33.818699, 33.864914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607082, 33.674358, 33.789860>,  <34.387829, 33.587753, 33.744827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607082, 33.674358, 33.789860>,  <34.972504, 33.818699, 33.864914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607082, 33.674358, 33.789860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381181, -0.598714, -0.704445,
		0.141858, -0.715072, 0.684506,
		-0.913552, -0.360851, -0.187640,
		34.333015, 33.566105, 33.733566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062378, 33.132088, 33.949501>,  <34.972504, 33.818699, 33.864914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062378, 33.132088, 33.949501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731113, 33.187561, 33.732277>,  <34.532356, 33.220844, 33.601940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731113, 33.187561, 33.732277>,  <35.062378, 33.132088, 33.949501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731113, 33.187561, 33.732277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361381, -0.608502, -0.706491,
		-0.428431, -0.781341, 0.453822,
		-0.828161, 0.138680, -0.543062,
		34.482666, 33.229164, 33.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813873, 32.431522, 33.812424>,  <35.062378, 33.132088, 33.949501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813873, 32.431522, 33.812424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645634, 32.672806, 33.541355>,  <34.544689, 32.817574, 33.378712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645634, 32.672806, 33.541355>,  <34.813873, 32.431522, 33.812424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645634, 32.672806, 33.541355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229450, -0.651948, -0.722715,
		-0.877753, -0.459464, 0.135802,
		-0.420597, 0.603206, -0.677673,
		34.519455, 32.853767, 33.338055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536507, 31.945206, 33.383739>,  <34.813873, 32.431522, 33.812424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536507, 31.945206, 33.383739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551369, 32.289368, 33.180439>,  <34.560284, 32.495865, 33.058460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551369, 32.289368, 33.180439>,  <34.536507, 31.945206, 33.383739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551369, 32.289368, 33.180439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239153, -0.501479, -0.831460,
		-0.970271, -0.090660, -0.224400,
		0.037151, 0.860407, -0.508252,
		34.562515, 32.547489, 33.027962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321362, 31.709446, 32.718502>,  <34.536507, 31.945206, 33.383739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321362, 31.709446, 32.718502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436775, 32.082848, 32.633347>,  <34.506023, 32.306889, 32.582253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436775, 32.082848, 32.633347>,  <34.321362, 31.709446, 32.718502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436775, 32.082848, 32.633347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210492, -0.278746, -0.937013,
		-0.934045, 0.225550, -0.276923,
		0.288534, 0.933503, -0.212885,
		34.523335, 32.362900, 32.569481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939491, 31.875465, 32.107857>,  <34.321362, 31.709446, 32.718502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939491, 31.875465, 32.107857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261913, 32.111771, 32.122112>,  <34.455368, 32.253551, 32.130665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261913, 32.111771, 32.122112>,  <33.939491, 31.875465, 32.107857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261913, 32.111771, 32.122112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191570, -0.203465, -0.960158,
		-0.559972, 0.780771, -0.277177,
		0.806059, 0.590761, 0.035638,
		34.503731, 32.288998, 32.132805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829506, 32.385525, 31.649786>,  <33.939491, 31.875465, 32.107857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829506, 32.385525, 31.649786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224960, 32.388416, 31.709852>,  <34.462234, 32.390152, 31.745892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224960, 32.388416, 31.709852>,  <33.829506, 32.385525, 31.649786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224960, 32.388416, 31.709852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149180, -0.170972, -0.973917,
		0.018631, 0.985249, -0.170108,
		0.988635, 0.007232, 0.150165,
		34.521549, 32.390587, 31.754902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133186, 32.836647, 31.159300>,  <33.829506, 32.385525, 31.649786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133186, 32.836647, 31.159300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423359, 32.586975, 31.275337>,  <34.597462, 32.437172, 31.344959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423359, 32.586975, 31.275337>,  <34.133186, 32.836647, 31.159300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423359, 32.586975, 31.275337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201646, -0.210247, -0.956627,
		0.658099, 0.752459, -0.026655,
		0.725427, -0.624180, 0.290094,
		34.640987, 32.399719, 31.362366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774178, 32.941795, 30.768078>,  <34.133186, 32.836647, 31.159300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774178, 32.941795, 30.768078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835716, 32.568138, 30.896889>,  <34.872639, 32.343945, 30.974176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835716, 32.568138, 30.896889>,  <34.774178, 32.941795, 30.768078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835716, 32.568138, 30.896889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219216, -0.285520, -0.932965,
		0.963471, 0.214126, 0.160854,
		0.153845, -0.934146, 0.322030,
		34.881870, 32.287895, 30.993498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408142, 32.689362, 30.389418>,  <34.774178, 32.941795, 30.768078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408142, 32.689362, 30.389418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222649, 32.358433, 30.516218>,  <35.111355, 32.159874, 30.592299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222649, 32.358433, 30.516218>,  <35.408142, 32.689362, 30.389418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222649, 32.358433, 30.516218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316787, -0.488977, -0.812741,
		0.827406, -0.276470, 0.488839,
		-0.463730, -0.827325, 0.317000,
		35.083530, 32.110237, 30.611319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950432, 32.154266, 30.395432>,  <35.408142, 32.689362, 30.389418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950432, 32.154266, 30.395432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582806, 31.999355, 30.366203>,  <35.362232, 31.906408, 30.348667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582806, 31.999355, 30.366203>,  <35.950432, 32.154266, 30.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582806, 31.999355, 30.366203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321131, -0.628415, -0.708498,
		0.228468, -0.674619, 0.701920,
		-0.919063, -0.387277, -0.073068,
		35.307087, 31.883173, 30.344282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025810, 31.417076, 30.193815>,  <35.950432, 32.154266, 30.395432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025810, 31.417076, 30.193815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646938, 31.521084, 30.118725>,  <35.419617, 31.583488, 30.073671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646938, 31.521084, 30.118725>,  <36.025810, 31.417076, 30.193815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646938, 31.521084, 30.118725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044887, -0.472110, -0.880396,
		-0.317545, -0.842320, 0.435502,
		-0.947180, 0.260017, -0.187726,
		35.362785, 31.599089, 30.062407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616276, 30.741781, 30.049055>,  <36.025810, 31.417076, 30.193815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616276, 30.741781, 30.049055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431087, 31.061039, 29.894844>,  <35.319977, 31.252594, 29.802319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431087, 31.061039, 29.894844>,  <35.616276, 30.741781, 30.049055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431087, 31.061039, 29.894844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123021, -0.488596, -0.863793,
		-0.877797, -0.352480, 0.324392,
		-0.462967, 0.798142, -0.385526,
		35.292198, 31.300482, 29.779186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154648, 30.425905, 29.645681>,  <35.616276, 30.741781, 30.049055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154648, 30.425905, 29.645681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149239, 30.805124, 29.518547>,  <35.145992, 31.032656, 29.442266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149239, 30.805124, 29.518547>,  <35.154648, 30.425905, 29.645681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149239, 30.805124, 29.518547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049978, -0.318110, -0.946736,
		-0.998659, 0.003083, 0.051684,
		-0.013523, 0.948049, -0.317837,
		35.145184, 31.089539, 29.423197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577522, 30.413996, 29.209112>,  <35.154648, 30.425905, 29.645681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577522, 30.413996, 29.209112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816845, 30.722437, 29.121998>,  <34.960438, 30.907501, 29.069729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816845, 30.722437, 29.121998>,  <34.577522, 30.413996, 29.209112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816845, 30.722437, 29.121998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002658, -0.269888, -0.962888,
		-0.801265, 0.576679, -0.159425,
		0.598304, 0.771105, -0.217785,
		34.996338, 30.953768, 29.056662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250626, 30.762541, 28.663408>,  <34.577522, 30.413996, 29.209112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250626, 30.762541, 28.663408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632584, 30.877583, 28.633839>,  <34.861759, 30.946608, 28.616096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632584, 30.877583, 28.633839>,  <34.250626, 30.762541, 28.663408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632584, 30.877583, 28.633839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025919, -0.167266, -0.985571,
		-0.295819, 0.943030, -0.152267,
		0.954892, 0.287604, -0.073923,
		34.919052, 30.963863, 28.611662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342491, 31.010649, 27.911697>,  <34.250626, 30.762541, 28.663408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342491, 31.010649, 27.911697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722904, 30.987135, 28.033073>,  <34.951153, 30.973026, 28.105898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722904, 30.987135, 28.033073>,  <34.342491, 31.010649, 27.911697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722904, 30.987135, 28.033073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294706, -0.123449, -0.947580,
		0.093162, 0.990608, -0.100081,
		0.951036, -0.058784, 0.303439,
		35.008217, 30.969500, 28.124105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766861, 31.407015, 27.451767>,  <34.342491, 31.010649, 27.911697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766861, 31.407015, 27.451767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000122, 31.121233, 27.606421>,  <35.140079, 30.949764, 27.699213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000122, 31.121233, 27.606421>,  <34.766861, 31.407015, 27.451767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000122, 31.121233, 27.606421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399306, -0.162376, -0.902324,
		0.707448, 0.680581, 0.190594,
		0.583157, -0.714453, 0.386632,
		35.175068, 30.906897, 27.722410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506329, 31.522053, 27.096466>,  <34.766861, 31.407015, 27.451767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506329, 31.522053, 27.096466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508881, 31.156124, 27.257988>,  <35.510410, 30.936567, 27.354900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508881, 31.156124, 27.257988>,  <35.506329, 31.522053, 27.096466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508881, 31.156124, 27.257988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296943, -0.383864, -0.874342,
		0.954874, 0.125484, 0.269202,
		0.006379, -0.914824, 0.403803,
		35.510796, 30.881678, 27.379129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164474, 31.192875, 26.970821>,  <35.506329, 31.522053, 27.096466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164474, 31.192875, 26.970821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947285, 30.868696, 27.058777>,  <35.816971, 30.674189, 27.111549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947285, 30.868696, 27.058777>,  <36.164474, 31.192875, 26.970821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947285, 30.868696, 27.058777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402801, -0.481123, -0.778635,
		0.736835, -0.334210, 0.587688,
		-0.542978, -0.810447, 0.219889,
		35.784389, 30.625563, 27.124743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669270, 30.603796, 27.151657>,  <36.164474, 31.192875, 26.970821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669270, 30.603796, 27.151657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309395, 30.498425, 27.012419>,  <36.093472, 30.435202, 26.928875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309395, 30.498425, 27.012419>,  <36.669270, 30.603796, 27.151657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309395, 30.498425, 27.012419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431900, -0.421198, -0.797530,
		0.063474, -0.867869, 0.492721,
		-0.899685, -0.263429, -0.348097,
		36.039490, 30.419395, 26.907990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766266, 29.912046, 27.018995>,  <36.669270, 30.603796, 27.151657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766266, 29.912046, 27.018995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451927, 30.021202, 26.797010>,  <36.263325, 30.086697, 26.663820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451927, 30.021202, 26.797010>,  <36.766266, 29.912046, 27.018995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451927, 30.021202, 26.797010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381145, -0.492965, -0.782121,
		-0.487011, -0.826145, 0.283382,
		-0.785843, 0.272892, -0.554960,
		36.216175, 30.103069, 26.630522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639706, 29.326889, 26.579321>,  <36.766266, 29.912046, 27.018995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639706, 29.326889, 26.579321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465347, 29.638990, 26.399902>,  <36.360733, 29.826252, 26.292252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465347, 29.638990, 26.399902>,  <36.639706, 29.326889, 26.579321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465347, 29.638990, 26.399902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288848, -0.350737, -0.890814,
		-0.852385, -0.517866, -0.072490,
		-0.435897, 0.780255, -0.448548,
		36.334579, 29.873068, 26.265339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372623, 29.030014, 25.967245>,  <36.639706, 29.326889, 26.579321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372623, 29.030014, 25.967245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350979, 29.423550, 25.898972>,  <36.337994, 29.659672, 25.858007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350979, 29.423550, 25.898972>,  <36.372623, 29.030014, 25.967245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350979, 29.423550, 25.898972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369043, -0.139127, -0.918940,
		-0.927836, -0.112712, -0.355551,
		-0.054109, 0.983839, -0.170683,
		36.334747, 29.718702, 25.847767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235909, 29.011026, 25.237022>,  <36.372623, 29.030014, 25.967245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235909, 29.011026, 25.237022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364784, 29.383551, 25.304972>,  <36.442112, 29.607065, 25.345741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364784, 29.383551, 25.304972>,  <36.235909, 29.011026, 25.237022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364784, 29.383551, 25.304972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498494, -0.014356, -0.866774,
		-0.804796, 0.363947, -0.468878,
		0.322191, 0.931309, 0.169871,
		36.461441, 29.662943, 25.355932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901814, 29.431652, 24.677046>,  <36.235909, 29.011026, 25.237022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901814, 29.431652, 24.677046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240299, 29.580935, 24.829170>,  <36.443390, 29.670504, 24.920444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240299, 29.580935, 24.829170>,  <35.901814, 29.431652, 24.677046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240299, 29.580935, 24.829170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397911, 0.032092, -0.916863,
		-0.354385, 0.927193, -0.121346,
		0.846214, 0.373208, 0.380313,
		36.494164, 29.692898, 24.943264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043102, 30.046478, 24.215637>,  <35.901814, 29.431652, 24.677046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043102, 30.046478, 24.215637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380497, 29.910007, 24.381592>,  <36.582932, 29.828125, 24.481165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380497, 29.910007, 24.381592>,  <36.043102, 30.046478, 24.215637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380497, 29.910007, 24.381592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404304, -0.105279, -0.908546,
		0.353655, 0.934084, 0.049139,
		0.843485, -0.341178, 0.414886,
		36.633541, 29.807653, 24.506058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597980, 30.436846, 23.855736>,  <36.043102, 30.046478, 24.215637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597980, 30.436846, 23.855736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825855, 30.159300, 24.031919>,  <36.962582, 29.992771, 24.137630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825855, 30.159300, 24.031919>,  <36.597980, 30.436846, 23.855736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825855, 30.159300, 24.031919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528950, -0.100629, -0.842666,
		0.629021, 0.713038, 0.309693,
		0.569689, -0.693867, 0.440459,
		36.996761, 29.951139, 24.164057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378967, 30.622328, 23.763613>,  <36.597980, 30.436846, 23.855736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378967, 30.622328, 23.763613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357212, 30.229536, 23.836012>,  <37.344158, 29.993860, 23.879452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357212, 30.229536, 23.836012>,  <37.378967, 30.622328, 23.763613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357212, 30.229536, 23.836012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574234, -0.179050, -0.798872,
		0.816883, 0.060489, 0.573623,
		-0.054384, -0.981979, 0.180998,
		37.340897, 29.934942, 23.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979664, 30.427761, 23.584938>,  <37.378967, 30.622328, 23.763613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979664, 30.427761, 23.584938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785076, 30.078434, 23.595242>,  <37.668324, 29.868837, 23.601423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785076, 30.078434, 23.595242>,  <37.979664, 30.427761, 23.584938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785076, 30.078434, 23.595242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453822, -0.277764, -0.846695,
		0.746590, -0.400199, 0.531455,
		-0.486466, -0.873320, 0.025757,
		37.639137, 29.816439, 23.602968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532295, 29.873150, 23.455532>,  <37.979664, 30.427761, 23.584938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532295, 29.873150, 23.455532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170341, 29.725410, 23.370907>,  <37.953167, 29.636766, 23.320131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170341, 29.725410, 23.370907>,  <38.532295, 29.873150, 23.455532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170341, 29.725410, 23.370907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314377, -0.244851, -0.917178,
		0.286956, -0.896454, 0.337677,
		-0.904889, -0.369347, -0.211563,
		37.898876, 29.614607, 23.307438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788837, 29.399462, 23.045237>,  <38.532295, 29.873150, 23.455532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788837, 29.399462, 23.045237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395744, 29.398613, 22.971233>,  <38.159889, 29.398104, 22.926832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395744, 29.398613, 22.971233>,  <38.788837, 29.399462, 23.045237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395744, 29.398613, 22.971233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180782, -0.223803, -0.957721,
		-0.039373, -0.974632, 0.220323,
		-0.982735, -0.002122, -0.185008,
		38.100925, 29.397976, 22.915731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633755, 28.841660, 22.672157>,  <38.788837, 29.399462, 23.045237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633755, 28.841660, 22.672157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338078, 29.097261, 22.587057>,  <38.160671, 29.250622, 22.535997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338078, 29.097261, 22.587057>,  <38.633755, 28.841660, 22.672157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338078, 29.097261, 22.587057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097527, -0.211001, -0.972608,
		-0.666392, -0.739696, 0.093651,
		-0.739195, 0.639005, -0.212750,
		38.116318, 29.288963, 22.523232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307026, 28.538025, 22.143547>,  <38.633755, 28.841660, 22.672157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307026, 28.538025, 22.143547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170734, 28.913874, 22.130793>,  <38.088959, 29.139383, 22.123140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170734, 28.913874, 22.130793>,  <38.307026, 28.538025, 22.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170734, 28.913874, 22.130793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109989, -0.073519, -0.991210,
		-0.933707, -0.334225, 0.128398,
		-0.340726, 0.939622, -0.031884,
		38.068516, 29.195761, 22.121227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775620, 28.515274, 21.774628>,  <38.307026, 28.538025, 22.143547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775620, 28.515274, 21.774628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902523, 28.893269, 21.742758>,  <37.978664, 29.120066, 21.723637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902523, 28.893269, 21.742758>,  <37.775620, 28.515274, 21.774628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902523, 28.893269, 21.742758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054482, -0.065714, -0.996350,
		-0.946773, 0.320442, 0.030636,
		0.317259, 0.944986, -0.079675,
		37.997700, 29.176764, 21.718855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316647, 28.799433, 21.303030>,  <37.775620, 28.515274, 21.774628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316647, 28.799433, 21.303030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679016, 28.968796, 21.305157>,  <37.896439, 29.070414, 21.306433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679016, 28.968796, 21.305157>,  <37.316647, 28.799433, 21.303030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679016, 28.968796, 21.305157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088310, -0.176637, -0.980307,
		-0.414130, 0.888553, -0.197410,
		0.905924, 0.423407, 0.005317,
		37.950794, 29.095818, 21.306751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303741, 29.164923, 20.721977>,  <37.316647, 28.799433, 21.303030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303741, 29.164923, 20.721977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694889, 29.145550, 20.803391>,  <37.929577, 29.133926, 20.852240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694889, 29.145550, 20.803391>,  <37.303741, 29.164923, 20.721977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694889, 29.145550, 20.803391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194594, -0.146767, -0.969841,
		0.076843, 0.987985, -0.134094,
		0.977869, -0.048432, 0.203534,
		37.988251, 29.131020, 20.864450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633297, 29.711157, 20.430088>,  <37.303741, 29.164923, 20.721977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633297, 29.711157, 20.430088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815067, 29.355436, 20.450640>,  <37.924129, 29.142004, 20.462971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815067, 29.355436, 20.450640>,  <37.633297, 29.711157, 20.430088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815067, 29.355436, 20.450640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187409, -0.151835, -0.970476,
		0.870848, 0.431378, -0.235660,
		0.454424, -0.889302, 0.051381,
		37.951393, 29.088646, 20.466055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190521, 29.695969, 20.037138>,  <37.633297, 29.711157, 20.430088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190521, 29.695969, 20.037138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048866, 29.324633, 20.082338>,  <37.963875, 29.101831, 20.109459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048866, 29.324633, 20.082338>,  <38.190521, 29.695969, 20.037138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048866, 29.324633, 20.082338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062776, -0.096962, -0.993306,
		0.933084, -0.358862, -0.023939,
		-0.354138, -0.928341, 0.113002,
		37.942623, 29.046131, 20.116240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533066, 29.201439, 19.576052>,  <38.190521, 29.695969, 20.037138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533066, 29.201439, 19.576052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611874, 29.593304, 19.591274>,  <38.659157, 29.828423, 19.600409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611874, 29.593304, 19.591274>,  <38.533066, 29.201439, 19.576052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611874, 29.593304, 19.591274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706417, 0.168767, -0.687380,
		-0.679823, 0.108541, 0.725300,
		0.197016, 0.979661, 0.038056,
		38.670979, 29.887201, 19.602692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002640, 29.709295, 19.924057>,  <38.533066, 29.201439, 19.576052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002640, 29.709295, 19.924057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257267, 29.974785, 19.766960>,  <39.410046, 30.134079, 19.672703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257267, 29.974785, 19.766960>,  <39.002640, 29.709295, 19.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257267, 29.974785, 19.766960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401129, 0.719893, 0.566436,
		0.658689, -0.203038, 0.724503,
		0.636572, 0.663725, -0.392741,
		39.448238, 30.173903, 19.649137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266422, 30.086157, 20.537476>,  <39.002640, 29.709295, 19.924057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266422, 30.086157, 20.537476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273655, 30.312792, 20.207954>,  <39.277996, 30.448772, 20.010241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273655, 30.312792, 20.207954>,  <39.266422, 30.086157, 20.537476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273655, 30.312792, 20.207954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582582, 0.675589, 0.451861,
		0.812571, 0.471763, 0.342299,
		0.018082, 0.566586, -0.823804,
		39.279079, 30.482767, 19.960814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705463, 30.724113, 20.557041>,  <39.266422, 30.086157, 20.537476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705463, 30.724113, 20.557041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364872, 30.705452, 20.348120>,  <39.160515, 30.694256, 20.222767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364872, 30.705452, 20.348120>,  <39.705463, 30.724113, 20.557041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364872, 30.705452, 20.348120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454770, 0.561599, 0.691225,
		0.261078, 0.826094, -0.499407,
		-0.851483, -0.046652, -0.522304,
		39.109428, 30.691456, 20.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410004, 31.351936, 20.581524>,  <39.705463, 30.724113, 20.557041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410004, 31.351936, 20.581524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115471, 31.087488, 20.523928>,  <38.938751, 30.928820, 20.489370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115471, 31.087488, 20.523928>,  <39.410004, 31.351936, 20.581524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115471, 31.087488, 20.523928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509724, 0.402050, 0.760617,
		-0.444968, 0.633462, -0.633032,
		-0.736332, -0.661122, -0.143991,
		38.894569, 30.889153, 20.480730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723949, 31.652596, 20.345995>,  <39.410004, 31.351936, 20.581524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723949, 31.652596, 20.345995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658554, 31.316765, 20.553219>,  <38.619316, 31.115267, 20.677553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658554, 31.316765, 20.553219>,  <38.723949, 31.652596, 20.345995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658554, 31.316765, 20.553219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520491, 0.519499, 0.677650,
		-0.838070, -0.158858, -0.521923,
		-0.163488, -0.839574, 0.518060,
		38.609509, 31.064892, 20.708637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071819, 31.650826, 20.597649>,  <38.723949, 31.652596, 20.345995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071819, 31.650826, 20.597649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227989, 31.382023, 20.849356>,  <38.321690, 31.220741, 21.000380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227989, 31.382023, 20.849356>,  <38.071819, 31.650826, 20.597649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227989, 31.382023, 20.849356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553531, 0.374826, 0.743713,
		-0.735645, -0.638682, -0.225635,
		0.390423, -0.672006, 0.629269,
		38.345116, 31.180422, 21.038136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577835, 31.160242, 20.922192>,  <38.071819, 31.650826, 20.597649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577835, 31.160242, 20.922192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901356, 31.207443, 21.152637>,  <38.095470, 31.235764, 21.290905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901356, 31.207443, 21.152637>,  <37.577835, 31.160242, 20.922192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901356, 31.207443, 21.152637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565137, 0.426904, 0.705955,
		-0.162642, -0.896565, 0.411969,
		0.808806, 0.118001, 0.576115,
		38.143997, 31.242844, 21.325472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309879, 31.207888, 21.520996>,  <37.577835, 31.160242, 20.922192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309879, 31.207888, 21.520996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673958, 31.358276, 21.590496>,  <37.892406, 31.448509, 21.632196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673958, 31.358276, 21.590496>,  <37.309879, 31.207888, 21.520996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673958, 31.358276, 21.590496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402465, 0.703802, 0.585393,
		0.097808, -0.602750, 0.791913,
		0.910195, 0.375974, 0.173748,
		37.947018, 31.471069, 21.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393536, 31.168816, 22.186707>,  <37.309879, 31.207888, 21.520996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393536, 31.168816, 22.186707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649998, 31.450947, 22.065754>,  <37.803875, 31.620226, 21.993181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649998, 31.450947, 22.065754>,  <37.393536, 31.168816, 22.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649998, 31.450947, 22.065754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166559, 0.512536, 0.842357,
		0.749119, -0.489717, 0.446093,
		0.641155, 0.705326, -0.302383,
		37.842342, 31.662544, 21.975039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653271, 31.405998, 22.840635>,  <37.393536, 31.168816, 22.186707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653271, 31.405998, 22.840635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728706, 31.699436, 22.579477>,  <37.773968, 31.875500, 22.422783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728706, 31.699436, 22.579477>,  <37.653271, 31.405998, 22.840635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728706, 31.699436, 22.579477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337682, 0.672727, 0.658338,
		0.922173, 0.096314, 0.374593,
		0.188592, 0.733596, -0.652894,
		37.785282, 31.919516, 22.383610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157936, 31.788702, 23.178701>,  <37.653271, 31.405998, 22.840635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157936, 31.788702, 23.178701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008961, 32.030045, 22.896637>,  <37.919575, 32.174850, 22.727398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008961, 32.030045, 22.896637>,  <38.157936, 31.788702, 23.178701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008961, 32.030045, 22.896637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187836, 0.695093, 0.693948,
		0.908849, 0.390908, -0.145549,
		-0.372440, 0.603355, -0.705161,
		37.897228, 32.211052, 22.685089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357414, 32.405930, 23.344860>,  <38.157936, 31.788702, 23.178701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357414, 32.405930, 23.344860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030277, 32.474651, 23.125183>,  <37.833996, 32.515884, 22.993378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030277, 32.474651, 23.125183>,  <38.357414, 32.405930, 23.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030277, 32.474651, 23.125183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386525, 0.543009, 0.745479,
		0.426292, 0.821963, -0.377691,
		-0.817846, 0.171805, -0.549190,
		37.784924, 32.526192, 22.960426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304031, 33.165241, 23.379841>,  <38.357414, 32.405930, 23.344860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304031, 33.165241, 23.379841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947937, 33.041897, 23.245745>,  <37.734280, 32.967892, 23.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947937, 33.041897, 23.245745>,  <38.304031, 33.165241, 23.379841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947937, 33.041897, 23.245745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452928, 0.521295, 0.723262,
		-0.048266, 0.795717, -0.603742,
		-0.890239, -0.308361, -0.335242,
		37.680866, 32.949390, 23.145172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035759, 33.741356, 23.280724>,  <38.304031, 33.165241, 23.379841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035759, 33.741356, 23.280724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734932, 33.486340, 23.347570>,  <37.554436, 33.333328, 23.387678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734932, 33.486340, 23.347570>,  <38.035759, 33.741356, 23.280724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734932, 33.486340, 23.347570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255551, 0.515799, 0.817708,
		-0.607523, 0.572267, -0.550842,
		-0.752070, -0.637544, 0.167116,
		37.509312, 33.295074, 23.397705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563263, 34.040905, 23.646563>,  <38.035759, 33.741356, 23.280724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563263, 34.040905, 23.646563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408928, 33.682182, 23.733152>,  <37.316326, 33.466949, 23.785107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408928, 33.682182, 23.733152>,  <37.563263, 34.040905, 23.646563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408928, 33.682182, 23.733152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282439, 0.338202, 0.897690,
		-0.878270, 0.285221, -0.383785,
		-0.385837, -0.896810, 0.216475,
		37.293179, 33.413139, 23.798096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901524, 34.163280, 23.789593>,  <37.563263, 34.040905, 23.646563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901524, 34.163280, 23.789593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023174, 33.829021, 23.972544>,  <37.096165, 33.628464, 24.082315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023174, 33.829021, 23.972544>,  <36.901524, 34.163280, 23.789593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023174, 33.829021, 23.972544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313686, 0.365500, 0.876363,
		-0.899505, -0.409997, -0.150975,
		0.304124, -0.835651, 0.457379,
		37.114410, 33.578327, 24.109758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327915, 34.081799, 24.183910>,  <36.901524, 34.163280, 23.789593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327915, 34.081799, 24.183910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638153, 33.880432, 24.336243>,  <36.824295, 33.759613, 24.427643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638153, 33.880432, 24.336243>,  <36.327915, 34.081799, 24.183910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638153, 33.880432, 24.336243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311443, 0.219588, 0.924545,
		-0.549054, -0.835678, 0.013526,
		0.775592, -0.503413, 0.380832,
		36.870831, 33.729408, 24.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079494, 33.845482, 24.809944>,  <36.327915, 34.081799, 24.183910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079494, 33.845482, 24.809944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465534, 33.750771, 24.854704>,  <36.697159, 33.693943, 24.881559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465534, 33.750771, 24.854704>,  <36.079494, 33.845482, 24.809944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465534, 33.750771, 24.854704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098350, 0.068322, 0.992804,
		-0.242717, -0.969159, 0.042651,
		0.965099, -0.236776, 0.111900,
		36.755062, 33.679737, 24.888273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159573, 33.315617, 25.302189>,  <36.079494, 33.845482, 24.809944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159573, 33.315617, 25.302189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521362, 33.481422, 25.342409>,  <36.738434, 33.580906, 25.366541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521362, 33.481422, 25.342409>,  <36.159573, 33.315617, 25.302189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521362, 33.481422, 25.342409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093027, -0.038362, 0.994924,
		0.416269, -0.909234, 0.003864,
		0.904470, 0.414515, 0.100553,
		36.792702, 33.605778, 25.372576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595253, 32.913475, 25.868765>,  <36.159573, 33.315617, 25.302189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595253, 32.913475, 25.868765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738159, 33.286243, 25.843830>,  <36.823902, 33.509903, 25.828869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738159, 33.286243, 25.843830>,  <36.595253, 32.913475, 25.868765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738159, 33.286243, 25.843830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059927, 0.089474, 0.994184,
		0.932079, -0.351451, 0.087813,
		0.357264, 0.931921, -0.062336,
		36.845337, 33.565819, 25.825129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069939, 32.973404, 26.472588>,  <36.595253, 32.913475, 25.868765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069939, 32.973404, 26.472588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963497, 33.337399, 26.345398>,  <36.899632, 33.555798, 26.269085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963497, 33.337399, 26.345398>,  <37.069939, 32.973404, 26.472588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963497, 33.337399, 26.345398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226776, 0.261509, 0.938182,
		0.936888, 0.321766, 0.136775,
		-0.266107, 0.909989, -0.317974,
		36.883663, 33.610394, 26.250006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367260, 33.345955, 26.993828>,  <37.069939, 32.973404, 26.472588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367260, 33.345955, 26.993828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107586, 33.584908, 26.805492>,  <36.951782, 33.728279, 26.692492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107586, 33.584908, 26.805492>,  <37.367260, 33.345955, 26.993828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107586, 33.584908, 26.805492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506260, 0.122630, 0.853617,
		0.567676, 0.792524, 0.222822,
		-0.649188, 0.597384, -0.470838,
		36.912830, 33.764122, 26.664242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454895, 33.983074, 27.380213>,  <37.367260, 33.345955, 26.993828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454895, 33.983074, 27.380213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098312, 34.015858, 27.201962>,  <36.884361, 34.035526, 27.095011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098312, 34.015858, 27.201962>,  <37.454895, 33.983074, 27.380213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098312, 34.015858, 27.201962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442787, 0.051070, 0.895171,
		0.096123, 0.995327, -0.009238,
		-0.891459, 0.081956, -0.445627,
		36.830875, 34.040443, 27.068274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156582, 34.581543, 27.784454>,  <37.454895, 33.983074, 27.380213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156582, 34.581543, 27.784454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857613, 34.386208, 27.604282>,  <36.678230, 34.269009, 27.496180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857613, 34.386208, 27.604282>,  <37.156582, 34.581543, 27.784454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857613, 34.386208, 27.604282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622311, 0.277294, 0.732008,
		-0.232564, 0.827428, -0.511153,
		-0.747424, -0.488335, -0.450429,
		36.633385, 34.239708, 27.469154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594620, 35.042755, 27.571060>,  <37.156582, 34.581543, 27.784454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594620, 35.042755, 27.571060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424168, 34.688210, 27.643473>,  <36.321896, 34.475483, 27.686920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424168, 34.688210, 27.643473>,  <36.594620, 35.042755, 27.571060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424168, 34.688210, 27.643473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618517, 0.431482, 0.656704,
		-0.660192, 0.167868, -0.732098,
		-0.426126, -0.886366, 0.181031,
		36.296329, 34.422298, 27.697783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999477, 35.214417, 27.885172>,  <36.594620, 35.042755, 27.571060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999477, 35.214417, 27.885172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984943, 34.818443, 27.939892>,  <35.976223, 34.580860, 27.972723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984943, 34.818443, 27.939892>,  <35.999477, 35.214417, 27.885172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984943, 34.818443, 27.939892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452877, 0.138337, 0.880775,
		-0.890832, -0.029949, -0.453344,
		-0.036336, -0.989932, 0.136798,
		35.974041, 34.521465, 27.980930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283195, 35.042999, 27.997120>,  <35.999477, 35.214417, 27.885172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283195, 35.042999, 27.997120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476757, 34.742523, 28.176701>,  <35.592896, 34.562237, 28.284449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476757, 34.742523, 28.176701>,  <35.283195, 35.042999, 27.997120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476757, 34.742523, 28.176701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655622, 0.028616, 0.754547,
		-0.579653, -0.659469, -0.478647,
		0.483903, -0.751187, 0.448950,
		35.621929, 34.517166, 28.311386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751724, 34.505703, 28.044903>,  <35.283195, 35.042999, 27.997120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751724, 34.505703, 28.044903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059956, 34.462551, 28.296164>,  <35.244892, 34.436661, 28.446920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059956, 34.462551, 28.296164>,  <34.751724, 34.505703, 28.044903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059956, 34.462551, 28.296164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629910, 0.021225, 0.776378,
		-0.097092, -0.993937, -0.051602,
		0.770576, -0.107884, 0.628151,
		35.291130, 34.430187, 28.484610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565399, 33.859245, 28.512331>,  <34.751724, 34.505703, 28.044903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565399, 33.859245, 28.512331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838531, 34.101681, 28.675499>,  <35.002411, 34.247143, 28.773399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838531, 34.101681, 28.675499>,  <34.565399, 33.859245, 28.512331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838531, 34.101681, 28.675499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536796, 0.037472, 0.842880,
		0.495576, -0.794512, 0.350934,
		0.682828, 0.606091, 0.407920,
		35.043381, 34.283508, 28.797874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609760, 33.676903, 29.191925>,  <34.565399, 33.859245, 28.512331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609760, 33.676903, 29.191925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765938, 34.043789, 29.160269>,  <34.859646, 34.263920, 29.141275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765938, 34.043789, 29.160269>,  <34.609760, 33.676903, 29.191925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765938, 34.043789, 29.160269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381741, 0.239524, 0.892694,
		0.837751, -0.318337, 0.443661,
		0.390445, 0.917218, -0.079139,
		34.883072, 34.318954, 29.136528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738728, 33.758049, 29.843639>,  <34.609760, 33.676903, 29.191925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738728, 33.758049, 29.843639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737659, 34.125126, 29.684727>,  <34.737019, 34.345371, 29.589380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737659, 34.125126, 29.684727>,  <34.738728, 33.758049, 29.843639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737659, 34.125126, 29.684727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503371, 0.342045, 0.793488,
		0.864066, 0.202097, 0.461027,
		-0.002670, 0.917693, -0.397279,
		34.736858, 34.400433, 29.565542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073326, 34.134487, 30.310051>,  <34.738728, 33.758049, 29.843639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073326, 34.134487, 30.310051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878853, 34.403603, 30.086990>,  <34.762169, 34.565071, 29.953154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878853, 34.403603, 30.086990>,  <35.073326, 34.134487, 30.310051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878853, 34.403603, 30.086990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281628, 0.483468, 0.828822,
		0.827232, 0.560010, -0.045577,
		-0.486183, 0.672792, -0.557654,
		34.732998, 34.605438, 29.919695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303177, 34.777332, 30.555975>,  <35.073326, 34.134487, 30.310051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303177, 34.777332, 30.555975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954544, 34.835384, 30.368664>,  <34.745365, 34.870216, 30.256277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954544, 34.835384, 30.368664>,  <35.303177, 34.777332, 30.555975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954544, 34.835384, 30.368664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332403, 0.527154, 0.782059,
		0.360355, 0.837285, -0.411216,
		-0.871580, 0.145130, -0.468279,
		34.693069, 34.878922, 30.228180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204010, 35.534725, 30.620409>,  <35.303177, 34.777332, 30.555975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204010, 35.534725, 30.620409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830254, 35.401897, 30.568808>,  <34.605999, 35.322201, 30.537848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830254, 35.401897, 30.568808>,  <35.204010, 35.534725, 30.620409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830254, 35.401897, 30.568808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275400, 0.443624, 0.852850,
		-0.225972, 0.832425, -0.505970,
		-0.934393, -0.332065, -0.129003,
		34.549934, 35.302277, 30.530107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819641, 36.088566, 30.744745>,  <35.204010, 35.534725, 30.620409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819641, 36.088566, 30.744745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576443, 35.782066, 30.827883>,  <34.430523, 35.598167, 30.877766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576443, 35.782066, 30.827883>,  <34.819641, 36.088566, 30.744745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576443, 35.782066, 30.827883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261836, 0.440663, 0.858637,
		-0.749520, 0.467629, -0.468554,
		-0.607999, -0.766250, 0.207843,
		34.394043, 35.552193, 30.890236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247013, 36.430080, 31.032772>,  <34.819641, 36.088566, 30.744745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247013, 36.430080, 31.032772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157040, 36.058880, 31.151585>,  <34.103054, 35.836159, 31.222872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157040, 36.058880, 31.151585>,  <34.247013, 36.430080, 31.032772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157040, 36.058880, 31.151585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390378, 0.365136, 0.845151,
		-0.892754, 0.074148, -0.444400,
		-0.224933, -0.927997, 0.297031,
		34.089561, 35.780479, 31.240694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537125, 36.378090, 31.192905>,  <34.247013, 36.430080, 31.032772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537125, 36.378090, 31.192905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692265, 36.070305, 31.395885>,  <33.785347, 35.885635, 31.517673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692265, 36.070305, 31.395885>,  <33.537125, 36.378090, 31.192905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692265, 36.070305, 31.395885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365208, 0.377199, 0.851084,
		-0.846285, -0.515416, -0.134717,
		0.387847, -0.769459, 0.507452,
		33.808620, 35.839466, 31.548120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087555, 36.306561, 31.799555>,  <33.537125, 36.378090, 31.192905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087555, 36.306561, 31.799555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412815, 36.095409, 31.897646>,  <33.607971, 35.968719, 31.956501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412815, 36.095409, 31.897646>,  <33.087555, 36.306561, 31.799555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412815, 36.095409, 31.897646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207965, 0.130014, 0.969457,
		-0.543638, -0.839310, -0.004060,
		0.813147, -0.527878, 0.245227,
		33.656761, 35.937046, 31.971214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893654, 35.856297, 32.283840>,  <33.087555, 36.306561, 31.799555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893654, 35.856297, 32.283840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285339, 35.912197, 32.342636>,  <33.520351, 35.945736, 32.377914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285339, 35.912197, 32.342636>,  <32.893654, 35.856297, 32.283840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285339, 35.912197, 32.342636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176251, 0.227745, 0.957637,
		0.100353, -0.963640, 0.247643,
		0.979216, 0.139749, 0.146987,
		33.579105, 35.954124, 32.386734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992393, 35.695667, 32.893131>,  <32.893654, 35.856297, 32.283840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992393, 35.695667, 32.893131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344818, 35.877918, 32.842312>,  <33.556271, 35.987270, 32.811821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344818, 35.877918, 32.842312>,  <32.992393, 35.695667, 32.893131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344818, 35.877918, 32.842312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079328, 0.407119, 0.909923,
		0.466313, -0.791615, 0.394839,
		0.881055, 0.455631, -0.127048,
		33.609135, 36.014606, 32.804199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376114, 35.498333, 33.491776>,  <32.992393, 35.695667, 32.893131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376114, 35.498333, 33.491776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575588, 35.815517, 33.351761>,  <33.695274, 36.005829, 33.267750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575588, 35.815517, 33.351761>,  <33.376114, 35.498333, 33.491776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575588, 35.815517, 33.351761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027753, 0.389026, 0.920809,
		0.866337, -0.468912, 0.171996,
		0.498689, 0.792957, -0.350041,
		33.725197, 36.053406, 33.246750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012169, 35.624222, 33.922050>,  <33.376114, 35.498333, 33.491776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012169, 35.624222, 33.922050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950558, 35.981380, 33.752815>,  <33.913589, 36.195675, 33.651272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950558, 35.981380, 33.752815>,  <34.012169, 35.624222, 33.922050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950558, 35.981380, 33.752815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255943, 0.449644, 0.855753,
		0.954342, 0.023525, -0.297790,
		-0.154031, 0.892898, -0.423093,
		33.904350, 36.249249, 33.625889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655762, 36.031212, 34.063744>,  <34.012169, 35.624222, 33.922050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655762, 36.031212, 34.063744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336159, 36.261864, 33.995533>,  <34.144398, 36.400253, 33.954605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336159, 36.261864, 33.995533>,  <34.655762, 36.031212, 34.063744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336159, 36.261864, 33.995533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161165, 0.478577, 0.863128,
		0.579317, 0.662165, -0.475321,
		-0.799011, 0.576630, -0.170530,
		34.096455, 36.434853, 33.944374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787033, 36.626873, 34.492985>,  <34.655762, 36.031212, 34.063744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787033, 36.626873, 34.492985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400940, 36.697475, 34.415863>,  <34.169285, 36.739838, 34.369591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400940, 36.697475, 34.415863>,  <34.787033, 36.626873, 34.492985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400940, 36.697475, 34.415863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059706, 0.569229, 0.820009,
		0.254488, 0.803009, -0.538898,
		-0.965231, 0.176507, -0.192807,
		34.111370, 36.750427, 34.358021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461475, 36.130936, 34.485096>,  <34.787033, 36.626873, 34.492985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461475, 36.130936, 34.485096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791080, 36.356377, 34.508289>,  <35.988842, 36.491642, 34.522205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791080, 36.356377, 34.508289>,  <35.461475, 36.130936, 34.485096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791080, 36.356377, 34.508289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039216, 0.045352, -0.998201,
		-0.565218, 0.824800, 0.015268,
		0.824009, 0.563603, 0.057979,
		36.038284, 36.525459, 34.525684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347031, 36.643764, 34.012356>,  <35.461475, 36.130936, 34.485096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347031, 36.643764, 34.012356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740028, 36.662003, 34.084599>,  <35.975826, 36.672947, 34.127945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740028, 36.662003, 34.084599>,  <35.347031, 36.643764, 34.012356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740028, 36.662003, 34.084599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173404, 0.130301, -0.976193,
		-0.068042, 0.990426, 0.120114,
		0.982498, 0.045594, 0.180610,
		36.034779, 36.675682, 34.138783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634148, 37.254730, 33.724884>,  <35.347031, 36.643764, 34.012356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634148, 37.254730, 33.724884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972279, 37.043449, 33.756969>,  <36.175156, 36.916683, 33.776222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972279, 37.043449, 33.756969>,  <35.634148, 37.254730, 33.724884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972279, 37.043449, 33.756969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211521, 0.193013, -0.958126,
		0.490597, 0.826894, 0.274884,
		0.845324, -0.528197, 0.080214,
		36.225876, 36.884991, 33.781033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212528, 37.737190, 33.568512>,  <35.634148, 37.254730, 33.724884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212528, 37.737190, 33.568512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352455, 37.369202, 33.497772>,  <36.436413, 37.148407, 33.455330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352455, 37.369202, 33.497772>,  <36.212528, 37.737190, 33.568512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352455, 37.369202, 33.497772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249735, 0.273523, -0.928880,
		0.902916, 0.280777, 0.325434,
		0.349822, -0.919973, -0.176848,
		36.457401, 37.093208, 33.444717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957592, 37.856987, 33.273052>,  <36.212528, 37.737190, 33.568512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957592, 37.856987, 33.273052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838383, 37.488335, 33.173622>,  <36.766857, 37.267143, 33.113964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838383, 37.488335, 33.173622>,  <36.957592, 37.856987, 33.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838383, 37.488335, 33.173622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365732, 0.130287, -0.921556,
		0.881716, -0.365554, 0.298239,
		-0.298022, -0.921627, -0.248571,
		36.748978, 37.211845, 33.099052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524544, 37.670921, 32.860729>,  <36.957592, 37.856987, 33.273052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524544, 37.670921, 32.860729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209984, 37.443661, 32.763763>,  <37.021248, 37.307304, 32.705582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209984, 37.443661, 32.763763>,  <37.524544, 37.670921, 32.860729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209984, 37.443661, 32.763763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361121, -0.104459, -0.926650,
		0.501159, -0.816264, 0.287320,
		-0.786404, -0.568156, -0.242419,
		36.974064, 37.273212, 32.691036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867195, 37.126122, 32.630074>,  <37.524544, 37.670921, 32.860729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867195, 37.126122, 32.630074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505478, 37.113354, 32.459785>,  <37.288448, 37.105694, 32.357613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505478, 37.113354, 32.459785>,  <37.867195, 37.126122, 32.630074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505478, 37.113354, 32.459785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423531, -0.192367, -0.885221,
		-0.053637, -0.980804, 0.187475,
		-0.904292, -0.031921, -0.425718,
		37.234192, 37.103779, 32.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983253, 36.584240, 32.159492>,  <37.867195, 37.126122, 32.630074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983253, 36.584240, 32.159492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658363, 36.776752, 32.027645>,  <37.463428, 36.892262, 31.948536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658363, 36.776752, 32.027645>,  <37.983253, 36.584240, 32.159492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658363, 36.776752, 32.027645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288643, -0.159451, -0.944066,
		-0.506923, -0.861940, -0.009409,
		-0.812228, 0.481285, -0.329623,
		37.414696, 36.921139, 31.928759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666122, 36.094124, 31.656374>,  <37.983253, 36.584240, 32.159492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666122, 36.094124, 31.656374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501953, 36.450161, 31.577097>,  <37.403450, 36.663784, 31.529531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501953, 36.450161, 31.577097>,  <37.666122, 36.094124, 31.656374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501953, 36.450161, 31.577097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247325, -0.100539, -0.963702,
		-0.877713, -0.444548, -0.178879,
		-0.410428, 0.890095, -0.198192,
		37.378826, 36.717190, 31.517639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194763, 36.033886, 31.139229>,  <37.666122, 36.094124, 31.656374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194763, 36.033886, 31.139229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279472, 36.424629, 31.127222>,  <37.330299, 36.659077, 31.120018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279472, 36.424629, 31.127222>,  <37.194763, 36.033886, 31.139229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279472, 36.424629, 31.127222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259251, -0.085763, -0.961995,
		-0.942305, 0.195947, -0.271414,
		0.211777, 0.976857, -0.030016,
		37.343006, 36.717686, 31.118217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841846, 36.290279, 30.420380>,  <37.194763, 36.033886, 31.139229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841846, 36.290279, 30.420380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118980, 36.553673, 30.537939>,  <37.285263, 36.711708, 30.608475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118980, 36.553673, 30.537939>,  <36.841846, 36.290279, 30.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118980, 36.553673, 30.537939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467783, -0.100251, -0.878139,
		-0.548774, 0.745891, -0.377484,
		0.692839, 0.658481, 0.293900,
		37.326832, 36.751217, 30.626108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801144, 36.805805, 29.977770>,  <36.841846, 36.290279, 30.420380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801144, 36.805805, 29.977770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164112, 36.804775, 30.145855>,  <37.381893, 36.804157, 30.246706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164112, 36.804775, 30.145855>,  <36.801144, 36.805805, 29.977770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164112, 36.804775, 30.145855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419032, -0.069636, -0.905297,
		0.031593, 0.997569, -0.062110,
		0.907422, -0.002575, 0.420214,
		37.436340, 36.804005, 30.271919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129902, 37.276913, 29.606583>,  <36.801144, 36.805805, 29.977770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129902, 37.276913, 29.606583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403294, 37.036346, 29.772064>,  <37.567329, 36.892006, 29.871353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403294, 37.036346, 29.772064>,  <37.129902, 37.276913, 29.606583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403294, 37.036346, 29.772064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416425, -0.144231, -0.897657,
		0.599533, 0.785810, 0.151865,
		0.683484, -0.601415, 0.413703,
		37.608337, 36.855923, 29.896175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728962, 37.386311, 29.247419>,  <37.129902, 37.276913, 29.606583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728962, 37.386311, 29.247419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829880, 37.045944, 29.431719>,  <37.890430, 36.841724, 29.542299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829880, 37.045944, 29.431719>,  <37.728962, 37.386311, 29.247419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829880, 37.045944, 29.431719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417460, -0.333847, -0.845147,
		0.872968, 0.405573, 0.270994,
		0.252298, -0.850915, 0.460748,
		37.905571, 36.790668, 29.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268230, 37.325191, 29.010601>,  <37.728962, 37.386311, 29.247419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268230, 37.325191, 29.010601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182583, 36.957352, 29.142357>,  <38.131195, 36.736649, 29.221411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182583, 36.957352, 29.142357>,  <38.268230, 37.325191, 29.010601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182583, 36.957352, 29.142357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463369, -0.392477, -0.794513,
		0.859907, -0.017495, 0.510150,
		-0.214123, -0.919595, 0.329387,
		38.118347, 36.681473, 29.241173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874367, 36.813240, 29.009817>,  <38.268230, 37.325191, 29.010601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874367, 36.813240, 29.009817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548691, 36.582397, 28.984377>,  <38.353287, 36.443890, 28.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548691, 36.582397, 28.984377>,  <38.874367, 36.813240, 29.009817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548691, 36.582397, 28.984377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359407, -0.414935, -0.835856,
		0.455990, -0.703402, 0.545251,
		-0.814187, -0.577109, -0.063601,
		38.304436, 36.409264, 28.965296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140514, 36.219414, 28.670628>,  <38.874367, 36.813240, 29.009817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140514, 36.219414, 28.670628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746399, 36.152290, 28.657633>,  <38.509930, 36.112015, 28.649836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746399, 36.152290, 28.657633>,  <39.140514, 36.219414, 28.670628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746399, 36.152290, 28.657633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106765, -0.455782, -0.883665,
		0.133480, -0.874130, 0.466991,
		-0.985284, -0.167810, -0.032489,
		38.450813, 36.101948, 28.647886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013161, 35.511520, 28.548346>,  <39.140514, 36.219414, 28.670628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013161, 35.511520, 28.548346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674965, 35.692329, 28.434626>,  <38.472050, 35.800816, 28.366394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674965, 35.692329, 28.434626>,  <39.013161, 35.511520, 28.548346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674965, 35.692329, 28.434626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079493, -0.419929, -0.904069,
		-0.528048, -0.786977, 0.319111,
		-0.845486, 0.452025, -0.284302,
		38.421318, 35.827938, 28.349335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549355, 35.025578, 28.372944>,  <39.013161, 35.511520, 28.548346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549355, 35.025578, 28.372944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425053, 35.339874, 28.159014>,  <38.350471, 35.528454, 28.030655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425053, 35.339874, 28.159014>,  <38.549355, 35.025578, 28.372944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425053, 35.339874, 28.159014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053589, -0.547307, -0.835214,
		-0.948977, -0.288211, 0.127974,
		-0.310759, 0.785741, -0.534826,
		38.331825, 35.575596, 27.998566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091663, 34.784672, 27.920891>,  <38.549355, 35.025578, 28.372944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091663, 34.784672, 27.920891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182110, 35.135731, 27.751842>,  <38.236378, 35.346367, 27.650414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182110, 35.135731, 27.751842>,  <38.091663, 34.784672, 27.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182110, 35.135731, 27.751842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176581, -0.463602, -0.868270,
		-0.957961, 0.121707, -0.259805,
		0.226120, 0.877645, -0.422621,
		38.249947, 35.399025, 27.625055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911873, 34.666298, 27.207815>,  <38.091663, 34.784672, 27.920891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911873, 34.666298, 27.207815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130157, 34.999783, 27.174057>,  <38.261127, 35.199875, 27.153803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130157, 34.999783, 27.174057>,  <37.911873, 34.666298, 27.207815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130157, 34.999783, 27.174057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214914, -0.236591, -0.947542,
		-0.809945, 0.498947, -0.308287,
		0.545711, 0.833713, -0.084395,
		38.293869, 35.249897, 27.148739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732021, 34.824493, 26.511293>,  <37.911873, 34.666298, 27.207815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732021, 34.824493, 26.511293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057560, 35.029514, 26.620792>,  <38.252884, 35.152527, 26.686491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057560, 35.029514, 26.620792>,  <37.732021, 34.824493, 26.511293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057560, 35.029514, 26.620792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412735, -0.178293, -0.893231,
		-0.409020, 0.839942, -0.356652,
		0.813851, 0.512552, 0.273748,
		38.301716, 35.183281, 26.702917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853195, 35.381794, 26.049780>,  <37.732021, 34.824493, 26.511293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853195, 35.381794, 26.049780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207062, 35.277454, 26.204348>,  <38.419380, 35.214851, 26.297089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207062, 35.277454, 26.204348>,  <37.853195, 35.381794, 26.049780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207062, 35.277454, 26.204348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339704, -0.207016, -0.917467,
		0.319318, 0.942921, -0.094527,
		0.884668, -0.260852, 0.386418,
		38.472462, 35.199200, 26.320272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221252, 35.562569, 25.553070>,  <37.853195, 35.381794, 26.049780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221252, 35.562569, 25.553070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480427, 35.366558, 25.786325>,  <38.635929, 35.248951, 25.926279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480427, 35.366558, 25.786325>,  <38.221252, 35.562569, 25.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480427, 35.366558, 25.786325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549271, -0.229816, -0.803421,
		0.527716, 0.840865, 0.120255,
		0.647933, -0.490031, 0.583141,
		38.674809, 35.219547, 25.961267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040970, 35.716724, 25.280724>,  <38.221252, 35.562569, 25.553070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040970, 35.716724, 25.280724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040962, 35.372929, 25.485188>,  <39.040958, 35.166653, 25.607866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040962, 35.372929, 25.485188>,  <39.040970, 35.716724, 25.280724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040962, 35.372929, 25.485188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499664, -0.442783, -0.744499,
		0.866219, 0.255396, 0.429462,
		-0.000016, -0.859486, 0.511159,
		39.040958, 35.115082, 25.638535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789146, 35.444756, 25.188986>,  <39.040970, 35.716724, 25.280724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789146, 35.444756, 25.188986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551662, 35.138809, 25.288982>,  <39.409172, 34.955242, 25.348980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551662, 35.138809, 25.288982>,  <39.789146, 35.444756, 25.188986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551662, 35.138809, 25.288982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446728, -0.571692, -0.688187,
		0.669286, -0.296905, 0.681105,
		-0.593709, -0.764863, 0.249990,
		39.373550, 34.909351, 25.363979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311481, 34.875881, 25.090040>,  <39.789146, 35.444756, 25.188986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311481, 34.875881, 25.090040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937023, 34.735287, 25.093664>,  <39.712349, 34.650932, 25.095839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937023, 34.735287, 25.093664>,  <40.311481, 34.875881, 25.090040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937023, 34.735287, 25.093664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278929, -0.758098, -0.589479,
		0.214060, -0.549314, 0.807733,
		-0.936150, -0.351484, 0.009059,
		39.656178, 34.629841, 25.096382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391102, 34.143955, 25.301474>,  <40.311481, 34.875881, 25.090040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391102, 34.143955, 25.301474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022205, 34.145386, 25.146837>,  <39.800865, 34.146244, 25.054056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022205, 34.145386, 25.146837>,  <40.391102, 34.143955, 25.301474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022205, 34.145386, 25.146837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212028, -0.831481, -0.513501,
		-0.323278, -0.555542, 0.766071,
		-0.922245, 0.003575, -0.386590,
		39.745533, 34.146458, 25.030861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153259, 33.483501, 25.394705>,  <40.391102, 34.143955, 25.301474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153259, 33.483501, 25.394705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940994, 33.641708, 25.094847>,  <39.813637, 33.736633, 24.914932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940994, 33.641708, 25.094847>,  <40.153259, 33.483501, 25.394705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940994, 33.641708, 25.094847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163775, -0.819933, -0.548532,
		-0.831612, -0.413856, 0.370329,
		-0.530659, 0.395515, -0.749646,
		39.781796, 33.760361, 24.869953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861526, 33.010914, 25.223370>,  <40.153259, 33.483501, 25.394705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861526, 33.010914, 25.223370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791409, 33.248455, 24.909271>,  <39.749336, 33.390980, 24.720812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791409, 33.248455, 24.909271>,  <39.861526, 33.010914, 25.223370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791409, 33.248455, 24.909271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000470, -0.797545, -0.603260,
		-0.984516, -0.106119, 0.139528,
		-0.175297, 0.593853, -0.785245,
		39.738819, 33.426609, 24.673698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273048, 32.761097, 24.879351>,  <39.861526, 33.010914, 25.223370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273048, 32.761097, 24.879351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514156, 32.943268, 24.617279>,  <39.658821, 33.052570, 24.460035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514156, 32.943268, 24.617279>,  <39.273048, 32.761097, 24.879351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514156, 32.943268, 24.617279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069126, -0.847830, -0.525742,
		-0.794917, 0.271610, -0.542526,
		0.602767, 0.455424, -0.655180,
		39.694988, 33.079895, 24.420725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005898, 32.573841, 24.206484>,  <39.273048, 32.761097, 24.879351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005898, 32.573841, 24.206484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370514, 32.712723, 24.118349>,  <39.589283, 32.796051, 24.065468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370514, 32.712723, 24.118349>,  <39.005898, 32.573841, 24.206484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370514, 32.712723, 24.118349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133777, -0.757051, -0.639513,
		-0.388849, 0.553464, -0.736529,
		0.911537, 0.347205, -0.220338,
		39.643974, 32.816883, 24.052248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082840, 32.647133, 23.477749>,  <39.005898, 32.573841, 24.206484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082840, 32.647133, 23.477749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463001, 32.630024, 23.600977>,  <39.691097, 32.619759, 23.674913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463001, 32.630024, 23.600977>,  <39.082840, 32.647133, 23.477749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463001, 32.630024, 23.600977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138630, -0.828408, -0.542699,
		0.278420, 0.558490, -0.781390,
		0.950402, -0.042774, 0.308069,
		39.748123, 32.617191, 23.693398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513546, 32.504345, 22.789911>,  <39.082840, 32.647133, 23.477749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513546, 32.504345, 22.789911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664040, 32.383896, 23.140402>,  <39.754333, 32.311626, 23.350697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664040, 32.383896, 23.140402>,  <39.513546, 32.504345, 22.789911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664040, 32.383896, 23.140402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120841, -0.921688, -0.368632,
		0.918612, 0.244574, -0.310378,
		0.376229, -0.301123, 0.876228,
		39.776909, 32.293560, 23.403271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820454, 31.875681, 22.537851>,  <39.513546, 32.504345, 22.789911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820454, 31.875681, 22.537851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860424, 31.865803, 22.935726>,  <39.884407, 31.859875, 23.174452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860424, 31.865803, 22.935726>,  <39.820454, 31.875681, 22.537851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860424, 31.865803, 22.935726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025582, -0.999298, -0.027381,
		0.994666, 0.028182, -0.099228,
		0.099930, -0.024697, 0.994688,
		39.890404, 31.858395, 23.234133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429497, 31.534536, 22.579679>,  <39.820454, 31.875681, 22.537851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429497, 31.534536, 22.579679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230652, 31.504686, 22.925468>,  <40.111347, 31.486776, 23.132942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230652, 31.504686, 22.925468>,  <40.429497, 31.534536, 22.579679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230652, 31.504686, 22.925468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085311, -0.995671, -0.036891,
		0.863484, 0.055411, 0.501323,
		-0.497109, -0.074623, 0.864473,
		40.081520, 31.482300, 23.184811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882404, 31.052980, 23.065205>,  <40.429497, 31.534536, 22.579679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882404, 31.052980, 23.065205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497326, 31.037485, 23.172319>,  <40.266277, 31.028189, 23.236589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497326, 31.037485, 23.172319>,  <40.882404, 31.052980, 23.065205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497326, 31.037485, 23.172319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069123, -0.992069, 0.104983,
		0.261598, 0.119577, 0.957741,
		-0.962699, -0.038738, 0.267789,
		40.208515, 31.025864, 23.252655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794441, 30.678701, 23.688383>,  <40.882404, 31.052980, 23.065205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794441, 30.678701, 23.688383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442326, 30.644375, 23.501740>,  <40.231056, 30.623779, 23.389753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442326, 30.644375, 23.501740>,  <40.794441, 30.678701, 23.688383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442326, 30.644375, 23.501740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073798, -0.996301, 0.044014,
		-0.468660, 0.004311, 0.883368,
		-0.880291, -0.085818, -0.466608,
		40.178238, 30.618629, 23.361757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396667, 30.310453, 23.293751>,  <40.794441, 30.678701, 23.688383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396667, 30.310453, 23.293751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742191, 30.119570, 23.358376>,  <41.949505, 30.005039, 23.397150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742191, 30.119570, 23.358376>,  <41.396667, 30.310453, 23.293751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742191, 30.119570, 23.358376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041185, 0.386490, 0.921374,
		-0.502133, -0.789237, 0.353508,
		0.863809, -0.477211, 0.161564,
		42.001335, 29.976406, 23.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533825, 29.895258, 24.016914>,  <41.396667, 30.310453, 23.293751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533825, 29.895258, 24.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891922, 29.992941, 23.867832>,  <42.106781, 30.051550, 23.778383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891922, 29.992941, 23.867832>,  <41.533825, 29.895258, 24.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891922, 29.992941, 23.867832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094877, 0.712789, 0.694932,
		0.435369, -0.657491, 0.614946,
		0.895238, 0.244207, -0.372707,
		42.160492, 30.066204, 23.756020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005531, 29.901379, 24.620932>,  <41.533825, 29.895258, 24.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005531, 29.901379, 24.620932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166111, 30.121490, 24.328075>,  <42.262459, 30.253557, 24.152361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166111, 30.121490, 24.328075>,  <42.005531, 29.901379, 24.620932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166111, 30.121490, 24.328075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180734, 0.736069, 0.652332,
		0.897873, -0.394199, 0.196037,
		0.401446, 0.550281, -0.732142,
		42.286545, 30.286575, 24.108433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504803, 30.253275, 24.913124>,  <42.005531, 29.901379, 24.620932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504803, 30.253275, 24.913124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448452, 30.479666, 24.588205>,  <42.414642, 30.615499, 24.393253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448452, 30.479666, 24.588205>,  <42.504803, 30.253275, 24.913124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448452, 30.479666, 24.588205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131410, 0.823909, 0.551277,
		0.981267, -0.029082, -0.190445,
		-0.140877, 0.565976, -0.812296,
		42.406189, 30.649458, 24.344517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953934, 30.771631, 25.058714>,  <42.504803, 30.253275, 24.913124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953934, 30.771631, 25.058714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713722, 30.920855, 24.775818>,  <42.569595, 31.010389, 24.606081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713722, 30.920855, 24.775818>,  <42.953934, 30.771631, 25.058714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713722, 30.920855, 24.775818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182847, 0.796986, 0.575657,
		0.778413, 0.475018, -0.410403,
		-0.600533, 0.373058, -0.707240,
		42.533562, 31.032772, 24.563646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110149, 31.412779, 24.763964>,  <42.953934, 30.771631, 25.058714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110149, 31.412779, 24.763964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712029, 31.390509, 24.732298>,  <42.473156, 31.377146, 24.713299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712029, 31.390509, 24.732298>,  <43.110149, 31.412779, 24.763964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712029, 31.390509, 24.732298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090270, 0.829020, 0.551885,
		0.034904, 0.556440, -0.830154,
		-0.995305, -0.055675, -0.079166,
		42.413437, 31.373806, 24.708548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030930, 32.125397, 24.801008>,  <43.110149, 31.412779, 24.763964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030930, 32.125397, 24.801008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680698, 31.936981, 24.843870>,  <42.470558, 31.823933, 24.869587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680698, 31.936981, 24.843870>,  <43.030930, 32.125397, 24.801008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680698, 31.936981, 24.843870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259153, 0.645221, 0.718700,
		-0.407674, 0.601510, -0.687014,
		-0.875581, -0.471037, 0.107157,
		42.418026, 31.795670, 24.876017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584301, 32.669273, 24.838779>,  <43.030930, 32.125397, 24.801008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584301, 32.669273, 24.838779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381454, 32.371284, 25.012146>,  <42.259747, 32.192493, 25.116165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381454, 32.371284, 25.012146>,  <42.584301, 32.669273, 24.838779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381454, 32.371284, 25.012146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198027, 0.590135, 0.782640,
		-0.838817, 0.311065, -0.446794,
		-0.507121, -0.744969, 0.433416,
		42.229317, 32.147793, 25.142170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885269, 32.916527, 25.003664>,  <42.584301, 32.669273, 24.838779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885269, 32.916527, 25.003664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951611, 32.605030, 25.245672>,  <41.991413, 32.418133, 25.390877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951611, 32.605030, 25.245672>,  <41.885269, 32.916527, 25.003664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951611, 32.605030, 25.245672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437894, 0.491558, 0.752742,
		-0.883596, -0.389776, -0.259484,
		0.165849, -0.778746, 0.605019,
		42.001366, 32.371407, 25.427177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278736, 32.831337, 25.349943>,  <41.885269, 32.916527, 25.003664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278736, 32.831337, 25.349943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553249, 32.640591, 25.569622>,  <41.717957, 32.526142, 25.701429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553249, 32.640591, 25.569622>,  <41.278736, 32.831337, 25.349943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553249, 32.640591, 25.569622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456766, 0.305047, 0.835650,
		-0.566023, -0.824346, -0.008468,
		0.686282, -0.476865, 0.549197,
		41.759132, 32.497532, 25.734381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977966, 32.776489, 25.934925>,  <41.278736, 32.831337, 25.349943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977966, 32.776489, 25.934925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333920, 32.669872, 26.083014>,  <41.547493, 32.605904, 26.171867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333920, 32.669872, 26.083014>,  <40.977966, 32.776489, 25.934925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333920, 32.669872, 26.083014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358790, 0.092284, 0.928845,
		-0.281741, -0.959396, -0.013510,
		0.889883, -0.266540, 0.370222,
		41.600883, 32.589909, 26.194080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835529, 32.340179, 26.536854>,  <40.977966, 32.776489, 25.934925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835529, 32.340179, 26.536854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189716, 32.522945, 26.570726>,  <41.402229, 32.632607, 26.591049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189716, 32.522945, 26.570726>,  <40.835529, 32.340179, 26.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189716, 32.522945, 26.570726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210149, 0.231196, 0.949940,
		0.414466, -0.858938, 0.300738,
		0.885469, 0.456918, 0.084682,
		41.455357, 32.660019, 26.596130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920017, 32.341515, 27.218830>,  <40.835529, 32.340179, 26.536854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920017, 32.341515, 27.218830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156166, 32.631111, 27.076117>,  <41.297855, 32.804871, 26.990488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156166, 32.631111, 27.076117>,  <40.920017, 32.341515, 27.218830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156166, 32.631111, 27.076117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191853, 0.555249, 0.809254,
		0.783998, -0.409310, 0.466703,
		0.590372, 0.723992, -0.356787,
		41.333279, 32.848309, 26.969080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438065, 32.423687, 27.823992>,  <40.920017, 32.341515, 27.218830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438065, 32.423687, 27.823992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442448, 32.750816, 27.593847>,  <41.445080, 32.947094, 27.455761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442448, 32.750816, 27.593847>,  <41.438065, 32.423687, 27.823992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442448, 32.750816, 27.593847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196708, 0.562390, 0.803133,
		0.980401, -0.121982, -0.154708,
		0.010962, 0.817825, -0.575363,
		41.445736, 32.996162, 27.421238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005886, 32.880646, 28.064028>,  <41.438065, 32.423687, 27.823992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005886, 32.880646, 28.064028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729897, 33.096638, 27.871216>,  <41.564301, 33.226234, 27.755529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729897, 33.096638, 27.871216>,  <42.005886, 32.880646, 28.064028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729897, 33.096638, 27.871216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046006, 0.631878, 0.773701,
		0.722369, 0.556011, -0.411138,
		-0.689976, 0.539983, -0.482029,
		41.522903, 33.258633, 27.726606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094036, 33.529430, 28.504030>,  <42.005886, 32.880646, 28.064028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094036, 33.529430, 28.504030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769810, 33.600533, 28.280821>,  <41.575275, 33.643192, 28.146894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769810, 33.600533, 28.280821>,  <42.094036, 33.529430, 28.504030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769810, 33.600533, 28.280821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333102, 0.643766, 0.688918,
		0.481696, 0.744290, -0.462602,
		-0.810562, 0.177756, -0.558025,
		41.526642, 33.653858, 28.113413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070518, 34.229130, 28.397079>,  <42.094036, 33.529430, 28.504030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070518, 34.229130, 28.397079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697224, 34.087074, 28.375340>,  <41.473248, 34.001842, 28.362295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697224, 34.087074, 28.375340>,  <42.070518, 34.229130, 28.397079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697224, 34.087074, 28.375340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324448, 0.768116, 0.552025,
		-0.154297, 0.532802, -0.832055,
		-0.933234, -0.355134, -0.054349,
		41.417252, 33.980534, 28.359035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738010, 34.806694, 28.307606>,  <42.070518, 34.229130, 28.397079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738010, 34.806694, 28.307606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448769, 34.550732, 28.411638>,  <41.275223, 34.397156, 28.474058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448769, 34.550732, 28.411638>,  <41.738010, 34.806694, 28.307606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448769, 34.550732, 28.411638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403956, 0.697187, 0.592242,
		-0.560304, 0.323191, -0.762632,
		-0.723104, -0.639905, 0.260082,
		41.231838, 34.358761, 28.489662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209934, 35.181152, 28.263132>,  <41.738010, 34.806694, 28.307606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209934, 35.181152, 28.263132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093636, 34.876446, 28.494709>,  <41.023857, 34.693623, 28.633656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093636, 34.876446, 28.494709>,  <41.209934, 35.181152, 28.263132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093636, 34.876446, 28.494709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543029, 0.629568, 0.555664,
		-0.787771, -0.152824, -0.596709,
		-0.290750, -0.761767, 0.578944,
		41.006409, 34.647915, 28.668392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541527, 35.279175, 28.400026>,  <41.209934, 35.181152, 28.263132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541527, 35.279175, 28.400026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666962, 35.034374, 28.690437>,  <40.742222, 34.887493, 28.864683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666962, 35.034374, 28.690437>,  <40.541527, 35.279175, 28.400026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666962, 35.034374, 28.690437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525492, 0.524988, 0.669512,
		-0.790900, -0.591470, -0.156976,
		0.313585, -0.612006, 0.726025,
		40.761036, 34.850773, 28.908245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875938, 35.149235, 28.830433>,  <40.541527, 35.279175, 28.400026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875938, 35.149235, 28.830433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179726, 35.060345, 29.074997>,  <40.362000, 35.007011, 29.221735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179726, 35.060345, 29.074997>,  <39.875938, 35.149235, 28.830433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179726, 35.060345, 29.074997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460781, 0.479686, 0.746714,
		-0.459223, -0.848833, 0.261910,
		0.759470, -0.222225, 0.611409,
		40.407566, 34.993679, 29.258419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591686, 34.798817, 29.548153>,  <39.875938, 35.149235, 28.830433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591686, 34.798817, 29.548153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944370, 34.979992, 29.600962>,  <40.155983, 35.088696, 29.632647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944370, 34.979992, 29.600962>,  <39.591686, 34.798817, 29.548153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944370, 34.979992, 29.600962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385818, 0.531192, 0.754307,
		0.271524, -0.716019, 0.643110,
		0.881714, 0.452937, 0.132022,
		40.208885, 35.115871, 29.640568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560429, 34.947990, 30.193792>,  <39.591686, 34.798817, 29.548153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560429, 34.947990, 30.193792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901600, 35.138809, 30.108995>,  <40.106300, 35.253300, 30.058117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901600, 35.138809, 30.108995>,  <39.560429, 34.947990, 30.193792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901600, 35.138809, 30.108995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058243, 0.490515, 0.869484,
		0.518774, -0.729258, 0.446157,
		0.852925, 0.477051, -0.211993,
		40.157478, 35.281925, 30.045399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865974, 34.906849, 30.828022>,  <39.560429, 34.947990, 30.193792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865974, 34.906849, 30.828022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051716, 35.179264, 30.601551>,  <40.163162, 35.342712, 30.465668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051716, 35.179264, 30.601551>,  <39.865974, 34.906849, 30.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051716, 35.179264, 30.601551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144850, 0.572272, 0.807170,
		0.873723, -0.456826, 0.167090,
		0.464357, 0.681040, -0.566178,
		40.191025, 35.383575, 30.431698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422794, 35.194977, 31.243813>,  <39.865974, 34.906849, 30.828022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422794, 35.194977, 31.243813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354572, 35.476166, 30.967625>,  <40.313641, 35.644878, 30.801912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354572, 35.476166, 30.967625>,  <40.422794, 35.194977, 31.243813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354572, 35.476166, 30.967625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003332, 0.701143, 0.713012,
		0.985343, 0.119306, -0.121925,
		-0.170554, 0.702968, -0.690469,
		40.303406, 35.687057, 30.760485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805798, 35.729778, 31.402266>,  <40.422794, 35.194977, 31.243813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805798, 35.729778, 31.402266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550098, 35.918495, 31.159359>,  <40.396679, 36.031727, 31.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550098, 35.918495, 31.159359>,  <40.805798, 35.729778, 31.402266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550098, 35.918495, 31.159359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079755, 0.744749, 0.662562,
		0.764856, 0.471972, -0.438449,
		-0.639245, 0.471796, -0.607268,
		40.358326, 36.060036, 30.977179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979603, 36.491081, 31.348896>,  <40.805798, 35.729778, 31.402266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979603, 36.491081, 31.348896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597027, 36.474831, 31.233261>,  <40.367481, 36.465080, 31.163879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597027, 36.474831, 31.233261>,  <40.979603, 36.491081, 31.348896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597027, 36.474831, 31.233261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230804, 0.711588, 0.663605,
		0.178750, 0.701421, -0.689968,
		-0.956440, -0.040628, -0.289088,
		40.310093, 36.462643, 31.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711262, 37.178444, 31.421412>,  <40.979603, 36.491081, 31.348896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711262, 37.178444, 31.421412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409756, 36.918728, 31.461929>,  <40.228851, 36.762897, 31.486240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409756, 36.918728, 31.461929>,  <40.711262, 37.178444, 31.421412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409756, 36.918728, 31.461929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236276, 0.411611, 0.880198,
		-0.613199, 0.639528, -0.463670,
		-0.753764, -0.649291, 0.101294,
		40.183628, 36.723942, 31.492317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184746, 37.546581, 31.672058>,  <40.711262, 37.178444, 31.421412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184746, 37.546581, 31.672058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071968, 37.172810, 31.759094>,  <40.004299, 36.948547, 31.811316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071968, 37.172810, 31.759094>,  <40.184746, 37.546581, 31.672058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071968, 37.172810, 31.759094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348719, 0.311089, 0.884092,
		-0.893813, 0.173388, -0.413564,
		-0.281947, -0.934430, 0.217592,
		39.987385, 36.892479, 31.824371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485794, 37.492344, 31.969906>,  <40.184746, 37.546581, 31.672058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485794, 37.492344, 31.969906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646660, 37.155930, 32.114635>,  <39.743179, 36.954079, 32.201473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646660, 37.155930, 32.114635>,  <39.485794, 37.492344, 31.969906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646660, 37.155930, 32.114635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328472, 0.236347, 0.914465,
		-0.854618, -0.486613, -0.181208,
		0.402162, -0.841040, 0.361825,
		39.767307, 36.903618, 32.223183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179733, 37.526295, 32.612503>,  <39.485794, 37.492344, 31.969906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179733, 37.526295, 32.612503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405102, 37.196632, 32.635548>,  <39.540321, 36.998833, 32.649376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405102, 37.196632, 32.635548>,  <39.179733, 37.526295, 32.612503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405102, 37.196632, 32.635548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085778, 0.011002, 0.996254,
		-0.821706, -0.566250, -0.064496,
		0.563419, -0.824160, 0.057612,
		39.574127, 36.949383, 32.652832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819588, 37.036190, 32.978298>,  <39.179733, 37.526295, 32.612503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819588, 37.036190, 32.978298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214161, 36.973370, 32.997429>,  <39.450905, 36.935677, 33.008907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214161, 36.973370, 32.997429>,  <38.819588, 37.036190, 32.978298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214161, 36.973370, 32.997429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061585, -0.083930, 0.994567,
		-0.152183, -0.984018, -0.092463,
		0.986432, -0.157050, 0.047828,
		39.510090, 36.926254, 33.011776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947323, 36.410130, 33.285809>,  <38.819588, 37.036190, 32.978298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947323, 36.410130, 33.285809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273670, 36.631123, 33.354073>,  <39.469479, 36.763718, 33.395031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273670, 36.631123, 33.354073>,  <38.947323, 36.410130, 33.285809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273670, 36.631123, 33.354073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207528, 0.004296, 0.978220,
		0.539714, -0.833515, 0.118161,
		0.815868, 0.552480, 0.170659,
		39.518429, 36.796867, 33.405270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357136, 36.044697, 33.956078>,  <38.947323, 36.410130, 33.285809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357136, 36.044697, 33.956078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503365, 36.411316, 33.891220>,  <39.591103, 36.631287, 33.852306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503365, 36.411316, 33.891220>,  <39.357136, 36.044697, 33.956078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503365, 36.411316, 33.891220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046860, 0.155856, 0.986668,
		0.929602, -0.368298, 0.014027,
		0.365574, 0.916551, -0.162142,
		39.613037, 36.686279, 33.842579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773167, 36.161758, 34.523781>,  <39.357136, 36.044697, 33.956078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773167, 36.161758, 34.523781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710056, 36.535721, 34.396626>,  <39.672188, 36.760098, 34.320332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710056, 36.535721, 34.396626>,  <39.773167, 36.161758, 34.523781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710056, 36.535721, 34.396626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064849, 0.331033, 0.941388,
		0.985343, 0.127917, -0.112858,
		-0.157779, 0.934909, -0.317885,
		39.662724, 36.816193, 34.301258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155457, 36.588303, 34.976814>,  <39.773167, 36.161758, 34.523781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155457, 36.588303, 34.976814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915730, 36.863747, 34.813526>,  <39.771893, 37.029011, 34.715553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915730, 36.863747, 34.813526>,  <40.155457, 36.588303, 34.976814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915730, 36.863747, 34.813526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076163, 0.458581, 0.885382,
		0.796881, 0.561715, -0.222389,
		-0.599316, 0.688607, -0.408216,
		39.735935, 37.070328, 34.691063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479355, 37.252319, 35.093815>,  <40.155457, 36.588303, 34.976814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479355, 37.252319, 35.093815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089687, 37.325413, 35.040745>,  <39.855888, 37.369267, 35.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089687, 37.325413, 35.040745>,  <40.479355, 37.252319, 35.093815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089687, 37.325413, 35.040745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052881, 0.386579, 0.920739,
		0.219536, 0.903972, -0.366930,
		-0.974170, 0.182732, -0.132671,
		39.797436, 37.380234, 35.000942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350868, 37.819477, 35.500683>,  <40.479355, 37.252319, 35.093815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350868, 37.819477, 35.500683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969749, 37.709919, 35.448296>,  <39.741077, 37.644184, 35.416862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969749, 37.709919, 35.448296>,  <40.350868, 37.819477, 35.500683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969749, 37.709919, 35.448296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196885, 0.229087, 0.953286,
		-0.231101, 0.934077, -0.272201,
		-0.952800, -0.273897, -0.130964,
		39.683910, 37.627750, 35.409008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959293, 38.367565, 35.646660>,  <40.350868, 37.819477, 35.500683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959293, 38.367565, 35.646660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700661, 38.064373, 35.681061>,  <39.545483, 37.882458, 35.701702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700661, 38.064373, 35.681061>,  <39.959293, 38.367565, 35.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700661, 38.064373, 35.681061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152811, 0.239155, 0.958882,
		-0.747383, 0.606852, -0.270461,
		-0.646581, -0.757981, 0.086007,
		39.506687, 37.836979, 35.706863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425457, 38.616856, 36.190746>,  <39.959293, 38.367565, 35.646660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425457, 38.616856, 36.190746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316566, 38.237381, 36.126381>,  <39.251232, 38.009697, 36.087761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316566, 38.237381, 36.126381>,  <39.425457, 38.616856, 36.190746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316566, 38.237381, 36.126381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494027, -0.005709, 0.869428,
		-0.825731, 0.316172, -0.467122,
		-0.272222, -0.948685, -0.160911,
		39.234901, 37.952774, 36.078106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778809, 38.622715, 36.341568>,  <39.425457, 38.616856, 36.190746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778809, 38.622715, 36.341568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942833, 38.263123, 36.403130>,  <39.041248, 38.047367, 36.440067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942833, 38.263123, 36.403130>,  <38.778809, 38.622715, 36.341568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942833, 38.263123, 36.403130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440198, -0.047283, 0.896655,
		-0.798796, -0.435434, -0.415117,
		0.410062, -0.898978, 0.153907,
		39.065853, 37.993431, 36.449303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227493, 38.243870, 36.409782>,  <38.778809, 38.622715, 36.341568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227493, 38.243870, 36.409782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544510, 38.117329, 36.618320>,  <38.734718, 38.041405, 36.743443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544510, 38.117329, 36.618320>,  <38.227493, 38.243870, 36.409782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544510, 38.117329, 36.618320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591875, -0.193202, 0.782533,
		-0.146829, -0.928761, -0.340360,
		0.792544, -0.316349, 0.521342,
		38.782272, 38.022423, 36.774723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102188, 37.676113, 36.814201>,  <38.227493, 38.243870, 36.409782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102188, 37.676113, 36.814201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422203, 37.818352, 37.007488>,  <38.614212, 37.903694, 37.123459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422203, 37.818352, 37.007488>,  <38.102188, 37.676113, 36.814201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422203, 37.818352, 37.007488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562776, 0.165688, 0.809834,
		0.207919, -0.919832, 0.332682,
		0.800033, 0.355606, 0.483209,
		38.662212, 37.925030, 37.152451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303894, 37.223412, 37.428299>,  <38.102188, 37.676113, 36.814201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303894, 37.223412, 37.428299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443493, 37.586113, 37.522961>,  <38.527252, 37.803734, 37.579758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443493, 37.586113, 37.522961>,  <38.303894, 37.223412, 37.428299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443493, 37.586113, 37.522961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660165, 0.058649, 0.748827,
		0.665119, -0.417570, 0.619073,
		0.348996, 0.906750, 0.236657,
		38.548191, 37.858139, 37.593956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334461, 37.198219, 38.172848>,  <38.303894, 37.223412, 37.428299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334461, 37.198219, 38.172848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363308, 37.585773, 38.078140>,  <38.380615, 37.818306, 38.021317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363308, 37.585773, 38.078140>,  <38.334461, 37.198219, 38.172848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363308, 37.585773, 38.078140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631004, 0.228163, 0.741469,
		0.772421, 0.095935, 0.627824,
		0.072114, 0.968885, -0.236773,
		38.384941, 37.876438, 38.007107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339779, 37.560204, 38.855381>,  <38.334461, 37.198219, 38.172848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339779, 37.560204, 38.855381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332092, 37.894726, 38.636211>,  <38.327480, 38.095440, 38.504711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332092, 37.894726, 38.636211>,  <38.339779, 37.560204, 38.855381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332092, 37.894726, 38.636211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272712, 0.522859, 0.807618,
		0.961904, 0.164943, 0.218026,
		-0.019214, 0.836309, -0.547922,
		38.326328, 38.145618, 38.471836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602081, 38.085255, 39.289078>,  <38.339779, 37.560204, 38.855381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602081, 38.085255, 39.289078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366394, 38.265343, 39.020714>,  <38.224983, 38.373398, 38.859695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366394, 38.265343, 39.020714>,  <38.602081, 38.085255, 39.289078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366394, 38.265343, 39.020714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459886, 0.495859, 0.736633,
		0.664328, 0.742579, -0.085116,
		-0.589214, 0.450222, -0.670915,
		38.189629, 38.400410, 38.819439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830704, 38.804779, 39.119900>,  <38.602081, 38.085255, 39.289078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830704, 38.804779, 39.119900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436180, 38.777126, 39.060020>,  <38.199467, 38.760532, 39.024094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436180, 38.777126, 39.060020>,  <38.830704, 38.804779, 39.119900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436180, 38.777126, 39.060020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159148, 0.636679, 0.754527,
		0.043146, 0.768023, -0.638967,
		-0.986312, -0.069136, -0.149699,
		38.140285, 38.756386, 39.015110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636547, 39.484367, 39.099369>,  <38.830704, 38.804779, 39.119900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636547, 39.484367, 39.099369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342525, 39.243355, 39.223721>,  <38.166111, 39.098747, 39.298332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342525, 39.243355, 39.223721>,  <38.636547, 39.484367, 39.099369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342525, 39.243355, 39.223721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207993, 0.636804, 0.742441,
		-0.645315, 0.481075, -0.593409,
		-0.735056, -0.602534, 0.310879,
		38.122009, 39.062595, 39.316986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926224, 39.891975, 39.137001>,  <38.636547, 39.484367, 39.099369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926224, 39.891975, 39.137001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910110, 39.572666, 39.377380>,  <37.900444, 39.381081, 39.521610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910110, 39.572666, 39.377380>,  <37.926224, 39.891975, 39.137001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910110, 39.572666, 39.377380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201482, 0.595575, 0.777622,
		-0.978663, -0.089755, -0.184830,
		-0.040285, -0.798270, 0.600951,
		37.898026, 39.333183, 39.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294334, 39.774509, 39.448456>,  <37.926224, 39.891975, 39.137001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294334, 39.774509, 39.448456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576393, 39.635906, 39.695911>,  <37.745628, 39.552746, 39.844383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576393, 39.635906, 39.695911>,  <37.294334, 39.774509, 39.448456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576393, 39.635906, 39.695911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256573, 0.688656, 0.678176,
		-0.661018, -0.636936, 0.396696,
		0.705142, -0.346505, 0.618635,
		37.787937, 39.531956, 39.881500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957111, 39.562862, 40.103725>,  <37.294334, 39.774509, 39.448456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957111, 39.562862, 40.103725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321388, 39.704033, 40.189590>,  <37.539955, 39.788734, 40.241112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321388, 39.704033, 40.189590>,  <36.957111, 39.562862, 40.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321388, 39.704033, 40.189590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412217, 0.742796, 0.527571,
		0.026741, -0.568944, 0.821941,
		0.910693, 0.352926, 0.214665,
		37.594597, 39.809910, 40.253990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793465, 40.123226, 40.442665>,  <36.957111, 39.562862, 40.103725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793465, 40.123226, 40.442665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187012, 40.141613, 40.511829>,  <37.423138, 40.152645, 40.553329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187012, 40.141613, 40.511829>,  <36.793465, 40.123226, 40.442665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187012, 40.141613, 40.511829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149683, 0.740894, 0.654730,
		-0.098012, -0.670047, 0.735820,
		0.983864, 0.045969, 0.172911,
		37.482170, 40.155403, 40.563702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913029, 40.453274, 41.139664>,  <36.793465, 40.123226, 40.442665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913029, 40.453274, 41.139664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292301, 40.448093, 41.012680>,  <37.519867, 40.444984, 40.936489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292301, 40.448093, 41.012680>,  <36.913029, 40.453274, 41.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292301, 40.448093, 41.012680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199060, 0.802965, 0.561804,
		0.247631, -0.595886, 0.763936,
		0.948184, -0.012949, -0.317456,
		37.576756, 40.444210, 40.917442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305016, 40.426266, 41.767765>,  <36.913029, 40.453274, 41.139664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305016, 40.426266, 41.767765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553818, 40.597347, 41.505409>,  <37.703098, 40.699997, 41.347996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553818, 40.597347, 41.505409>,  <37.305016, 40.426266, 41.767765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553818, 40.597347, 41.505409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160161, 0.750435, 0.641245,
		0.766467, -0.503898, 0.398264,
		0.621993, 0.427707, -0.655889,
		37.740417, 40.725658, 41.308643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449108, 41.038692, 42.200241>,  <37.305016, 40.426266, 41.767765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449108, 41.038692, 42.200241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681355, 41.064648, 41.875607>,  <37.820702, 41.080219, 41.680824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681355, 41.064648, 41.875607>,  <37.449108, 41.038692, 42.200241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681355, 41.064648, 41.875607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351271, 0.879307, 0.321604,
		0.734499, -0.471815, 0.487751,
		0.580620, 0.064885, -0.811585,
		37.855541, 41.084114, 41.632130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155228, 41.122295, 42.417099>,  <37.449108, 41.038692, 42.200241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155228, 41.122295, 42.417099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054020, 41.280441, 42.063904>,  <37.993294, 41.375328, 41.851986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054020, 41.280441, 42.063904>,  <38.155228, 41.122295, 42.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054020, 41.280441, 42.063904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231777, 0.910879, 0.341435,
		0.939286, -0.118266, -0.322109,
		-0.253022, 0.395363, -0.882988,
		37.978115, 41.399052, 41.799007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744377, 41.435482, 42.063580>,  <38.155228, 41.122295, 42.417099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744377, 41.435482, 42.063580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415932, 41.626595, 41.938679>,  <38.218864, 41.741264, 41.863739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415932, 41.626595, 41.938679>,  <38.744377, 41.435482, 42.063580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415932, 41.626595, 41.938679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359954, 0.858032, 0.366353,
		0.442956, 0.188422, -0.876520,
		-0.821111, 0.477785, -0.312247,
		38.169598, 41.769932, 41.845005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015148, 42.076515, 41.683350>,  <38.744377, 41.435482, 42.063580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015148, 42.076515, 41.683350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637920, 42.147961, 41.795574>,  <38.411583, 42.190830, 41.862911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637920, 42.147961, 41.795574>,  <39.015148, 42.076515, 41.683350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637920, 42.147961, 41.795574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302520, 0.811203, 0.500431,
		-0.138208, 0.556817, -0.819056,
		-0.943070, 0.178617, 0.280563,
		38.355000, 42.201546, 41.879742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930771, 42.872540, 41.631653>,  <39.015148, 42.076515, 41.683350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930771, 42.872540, 41.631653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663162, 42.707779, 41.879120>,  <38.502598, 42.608921, 42.027599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663162, 42.707779, 41.879120>,  <38.930771, 42.872540, 41.631653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663162, 42.707779, 41.879120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266942, 0.643681, 0.717229,
		-0.693649, 0.644991, -0.320684,
		-0.669024, -0.411901, 0.618663,
		38.462456, 42.584209, 42.064720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586475, 43.448456, 41.941956>,  <38.930771, 42.872540, 41.631653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586475, 43.448456, 41.941956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514301, 43.143272, 42.190258>,  <38.470997, 42.960163, 42.339237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514301, 43.143272, 42.190258>,  <38.586475, 43.448456, 41.941956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514301, 43.143272, 42.190258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040230, 0.624858, 0.779701,
		-0.982764, 0.165657, -0.082051,
		-0.180433, -0.762961, 0.620753,
		38.460171, 42.914383, 42.376484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896301, 43.953838, 42.455242>,  <38.586475, 43.448456, 41.941956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896301, 43.953838, 42.455242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191669, 43.968304, 42.724590>,  <39.368893, 43.976982, 42.886200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191669, 43.968304, 42.724590>,  <38.896301, 43.953838, 42.455242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191669, 43.968304, 42.724590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114380, -0.977375, 0.177921,
		0.664566, -0.208401, -0.717580,
		0.738424, 0.036164, 0.673367,
		39.413197, 43.979153, 42.926601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890141, 43.371777, 42.978245>,  <38.896301, 43.953838, 42.455242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890141, 43.371777, 42.978245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565922, 43.547722, 42.823566>,  <38.371391, 43.653290, 42.730759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565922, 43.547722, 42.823566>,  <38.890141, 43.371777, 42.978245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565922, 43.547722, 42.823566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233287, -0.848101, -0.475712,
		-0.537207, -0.295375, 0.790039,
		-0.810547, 0.439862, -0.386699,
		38.322758, 43.679680, 42.707558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333012, 42.985397, 43.143734>,  <38.890141, 43.371777, 42.978245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333012, 42.985397, 43.143734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226002, 43.200092, 42.823650>,  <38.161797, 43.328911, 42.631599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226002, 43.200092, 42.823650>,  <38.333012, 42.985397, 43.143734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226002, 43.200092, 42.823650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357380, -0.826519, -0.434909,
		-0.894823, 0.169629, 0.412937,
		-0.267528, 0.536742, -0.800211,
		38.145744, 43.361115, 42.583588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648727, 42.829128, 42.984329>,  <38.333012, 42.985397, 43.143734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648727, 42.829128, 42.984329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842979, 42.936100, 42.651428>,  <37.959530, 43.000282, 42.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842979, 42.936100, 42.651428>,  <37.648727, 42.829128, 42.984329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842979, 42.936100, 42.651428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306657, -0.839437, -0.448673,
		-0.818612, 0.473105, -0.325647,
		0.485629, 0.267427, -0.832254,
		37.988667, 43.016327, 42.401752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266354, 42.459530, 42.587093>,  <37.648727, 42.829128, 42.984329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266354, 42.459530, 42.587093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602642, 42.549381, 42.390022>,  <37.804413, 42.603294, 42.271778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602642, 42.549381, 42.390022>,  <37.266354, 42.459530, 42.587093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602642, 42.549381, 42.390022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198689, -0.718441, -0.666607,
		-0.503703, 0.658319, -0.559374,
		0.840718, 0.224631, -0.492681,
		37.854858, 42.616772, 42.242218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084728, 42.529591, 41.982380>,  <37.266354, 42.459530, 42.587093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084728, 42.529591, 41.982380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471725, 42.429924, 41.965027>,  <37.703922, 42.370125, 41.954617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471725, 42.429924, 41.965027>,  <37.084728, 42.529591, 41.982380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471725, 42.429924, 41.965027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200456, -0.650870, -0.732247,
		0.154218, 0.717136, -0.679656,
		0.967489, -0.249167, -0.043378,
		37.761971, 42.355175, 41.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128704, 42.387772, 41.333786>,  <37.084728, 42.529591, 41.982380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128704, 42.387772, 41.333786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449749, 42.212219, 41.495377>,  <37.642376, 42.106888, 41.592331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449749, 42.212219, 41.495377>,  <37.128704, 42.387772, 41.333786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449749, 42.212219, 41.495377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235544, -0.855391, -0.461330,
		0.548027, 0.275114, -0.789923,
		0.802611, -0.438883, 0.403976,
		37.690533, 42.080555, 41.616570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456680, 42.034374, 40.765808>,  <37.128704, 42.387772, 41.333786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456680, 42.034374, 40.765808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619347, 41.842480, 41.076797>,  <37.716946, 41.727341, 41.263393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619347, 41.842480, 41.076797>,  <37.456680, 42.034374, 40.765808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619347, 41.842480, 41.076797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034429, -0.842374, -0.537792,
		0.912928, 0.245470, -0.326049,
		0.406667, -0.479740, 0.777478,
		37.741348, 41.698559, 41.310040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995697, 41.714943, 40.500805>,  <37.456680, 42.034374, 40.765808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995697, 41.714943, 40.500805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040279, 41.477180, 40.819366>,  <38.067028, 41.334522, 41.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040279, 41.477180, 40.819366>,  <37.995697, 41.714943, 40.500805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040279, 41.477180, 40.819366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031922, -0.798842, -0.600693,
		0.993256, 0.092375, -0.070064,
		0.111459, -0.594405, 0.796404,
		38.073715, 41.298859, 41.058289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608772, 41.235889, 40.487038>,  <37.995697, 41.714943, 40.500805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608772, 41.235889, 40.487038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345314, 41.068027, 40.736862>,  <38.187237, 40.967312, 40.886757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345314, 41.068027, 40.736862>,  <38.608772, 41.235889, 40.487038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345314, 41.068027, 40.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013917, -0.836685, -0.547507,
		0.752322, -0.351923, 0.556922,
		-0.658649, -0.419652, 0.624559,
		38.147720, 40.942131, 40.924229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878597, 40.627945, 40.748196>,  <38.608772, 41.235889, 40.487038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878597, 40.627945, 40.748196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484844, 40.563778, 40.777191>,  <38.248592, 40.525280, 40.794586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484844, 40.563778, 40.777191>,  <38.878597, 40.627945, 40.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484844, 40.563778, 40.777191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128901, -0.937308, -0.323786,
		0.119882, -0.309386, 0.943350,
		-0.984384, -0.160415, 0.072486,
		38.189529, 40.515652, 40.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784718, 39.911892, 40.897018>,  <38.878597, 40.627945, 40.748196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784718, 39.911892, 40.897018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424988, 40.033363, 40.771164>,  <38.209148, 40.106247, 40.695652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424988, 40.033363, 40.771164>,  <38.784718, 39.911892, 40.897018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424988, 40.033363, 40.771164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155376, -0.894487, -0.419226,
		-0.408748, -0.328133, 0.851618,
		-0.899324, 0.303679, -0.314636,
		38.155190, 40.124466, 40.676773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382942, 39.354095, 41.076748>,  <38.784718, 39.911892, 40.897018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382942, 39.354095, 41.076748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180977, 39.536037, 40.783306>,  <38.059799, 39.645203, 40.607243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180977, 39.536037, 40.783306>,  <38.382942, 39.354095, 41.076748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180977, 39.536037, 40.783306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063284, -0.867114, -0.494074,
		-0.860845, -0.203042, 0.466605,
		-0.504918, 0.454849, -0.733601,
		38.029503, 39.672493, 40.563225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847881, 38.840160, 40.869450>,  <38.382942, 39.354095, 41.076748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847881, 38.840160, 40.869450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891315, 39.101200, 40.569496>,  <37.917377, 39.257824, 40.389523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891315, 39.101200, 40.569496>,  <37.847881, 38.840160, 40.869450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891315, 39.101200, 40.569496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023824, -0.752421, -0.658252,
		-0.993801, 0.089344, -0.066157,
		0.108589, 0.652595, -0.749885,
		37.923893, 39.296978, 40.344532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777336, 38.299686, 40.390411>,  <37.847881, 38.840160, 40.869450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777336, 38.299686, 40.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799427, 38.612400, 40.141972>,  <37.812683, 38.800030, 39.992908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799427, 38.612400, 40.141972>,  <37.777336, 38.299686, 40.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799427, 38.612400, 40.141972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003921, -0.622209, -0.782841,
		-0.998466, 0.040801, -0.037430,
		0.055230, 0.781787, -0.621095,
		37.815994, 38.846935, 39.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204102, 38.236713, 39.761417>,  <37.777336, 38.299686, 40.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204102, 38.236713, 39.761417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486267, 38.488850, 39.631767>,  <37.655567, 38.640129, 39.553978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486267, 38.488850, 39.631767>,  <37.204102, 38.236713, 39.761417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486267, 38.488850, 39.631767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096686, -0.367449, -0.925004,
		-0.702167, 0.683853, -0.198260,
		0.705417, 0.630339, -0.324129,
		37.697891, 38.677952, 39.534527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786461, 38.630939, 39.178703>,  <37.204102, 38.236713, 39.761417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786461, 38.630939, 39.178703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139938, 38.818169, 39.178688>,  <37.352024, 38.930508, 39.178680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139938, 38.818169, 39.178688>,  <36.786461, 38.630939, 39.178703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139938, 38.818169, 39.178688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342087, -0.645886, -0.682501,
		-0.319483, 0.603107, -0.730885,
		0.883690, 0.468073, -0.000035,
		37.405045, 38.958591, 39.178677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949078, 38.665325, 38.505390>,  <36.786461, 38.630939, 39.178703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949078, 38.665325, 38.505390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309208, 38.728031, 38.667789>,  <37.525288, 38.765656, 38.765228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309208, 38.728031, 38.667789>,  <36.949078, 38.665325, 38.505390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309208, 38.728031, 38.667789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433036, -0.415776, -0.799756,
		0.043428, 0.895854, -0.442221,
		0.900330, 0.156766, 0.405994,
		37.579308, 38.775063, 38.789589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313026, 38.931507, 38.042946>,  <36.949078, 38.665325, 38.505390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313026, 38.931507, 38.042946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590481, 38.778233, 38.286926>,  <37.756954, 38.686268, 38.433315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590481, 38.778233, 38.286926>,  <37.313026, 38.931507, 38.042946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590481, 38.778233, 38.286926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518869, -0.321564, -0.792068,
		0.499648, 0.865890, -0.024223,
		0.693633, -0.383187, 0.609952,
		37.798569, 38.663277, 38.469913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867924, 38.804939, 37.538044>,  <37.313026, 38.931507, 38.042946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867924, 38.804939, 37.538044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058819, 38.653175, 37.855106>,  <38.173355, 38.562119, 38.045341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058819, 38.653175, 37.855106>,  <37.867924, 38.804939, 37.538044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058819, 38.653175, 37.855106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697355, -0.385359, -0.604313,
		0.534738, 0.841158, 0.080676,
		0.477234, -0.379409, 0.792652,
		38.201988, 38.539352, 38.092903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624561, 39.131516, 37.614468>,  <37.867924, 38.804939, 37.538044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624561, 39.131516, 37.614468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583050, 38.759377, 37.755142>,  <38.558144, 38.536091, 37.839546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583050, 38.759377, 37.755142>,  <38.624561, 39.131516, 37.614468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583050, 38.759377, 37.755142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705816, -0.318011, -0.633003,
		0.700753, 0.182533, 0.689658,
		-0.103775, -0.930350, 0.351682,
		38.551918, 38.480270, 37.860645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286785, 38.914925, 37.766632>,  <38.624561, 39.131516, 37.614468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286785, 38.914925, 37.766632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058670, 38.593212, 37.699810>,  <38.921803, 38.400185, 37.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058670, 38.593212, 37.699810>,  <39.286785, 38.914925, 37.766632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058670, 38.593212, 37.699810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720058, -0.391577, -0.572874,
		0.395334, -0.446994, 0.802438,
		-0.570287, -0.804278, -0.167058,
		38.887585, 38.351929, 37.649693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740749, 38.402378, 37.634159>,  <39.286785, 38.914925, 37.766632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740749, 38.402378, 37.634159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401474, 38.252377, 37.484516>,  <39.197910, 38.162376, 37.394730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401474, 38.252377, 37.484516>,  <39.740749, 38.402378, 37.634159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401474, 38.252377, 37.484516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525089, -0.502247, -0.687044,
		0.069745, -0.779181, 0.622906,
		-0.848184, -0.374999, -0.374110,
		39.147018, 38.139877, 37.372284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841022, 37.633003, 37.489929>,  <39.740749, 38.402378, 37.634159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841022, 37.633003, 37.489929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536659, 37.769863, 37.269405>,  <39.354042, 37.851978, 37.137093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536659, 37.769863, 37.269405>,  <39.841022, 37.633003, 37.489929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536659, 37.769863, 37.269405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463626, -0.307730, -0.830875,
		-0.453942, -0.887825, 0.075524,
		-0.760912, 0.342154, -0.551310,
		39.308384, 37.872509, 37.104012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604153, 37.696609, 37.724270>,  <39.841022, 37.633003, 37.489929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604153, 37.696609, 37.724270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308907, 37.897114, 37.904903>,  <40.131760, 38.017418, 38.013283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308907, 37.897114, 37.904903>,  <40.604153, 37.696609, 37.724270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308907, 37.897114, 37.904903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345720, 0.855782, -0.384858,
		-0.579371, -0.127947, -0.804959,
		-0.738111, 0.501265, 0.451581,
		40.087475, 38.047493, 38.040379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483150, 37.518398, 37.071888>,  <40.604153, 37.696609, 37.724270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483150, 37.518398, 37.071888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685860, 37.854397, 37.149433>,  <40.807484, 38.055996, 37.195961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685860, 37.854397, 37.149433>,  <40.483150, 37.518398, 37.071888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685860, 37.854397, 37.149433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841364, -0.432919, -0.323555,
		-0.187858, 0.327079, -0.926136,
		0.506770, 0.840000, 0.193865,
		40.837891, 38.106396, 37.207592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784466, 37.865936, 36.563232>,  <40.483150, 37.518398, 37.071888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784466, 37.865936, 36.563232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012424, 37.964554, 36.876774>,  <41.149200, 38.023724, 37.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012424, 37.964554, 36.876774>,  <40.784466, 37.865936, 36.563232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012424, 37.964554, 36.876774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819179, -0.245361, -0.518405,
		0.064517, 0.937557, -0.341797,
		0.569898, 0.246547, 0.783857,
		41.183395, 38.038517, 37.111931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314533, 38.333691, 36.269871>,  <40.784466, 37.865936, 36.563232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314533, 38.333691, 36.269871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463409, 38.119770, 36.573307>,  <41.552734, 37.991417, 36.755371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463409, 38.119770, 36.573307>,  <41.314533, 38.333691, 36.269871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463409, 38.119770, 36.573307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792174, -0.242873, -0.559887,
		0.483671, 0.809320, 0.333262,
		0.372188, -0.534802, 0.758593,
		41.575066, 37.959328, 36.800884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941513, 38.673218, 36.583630>,  <41.314533, 38.333691, 36.269871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941513, 38.673218, 36.583630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916706, 38.273987, 36.583637>,  <41.901821, 38.034451, 36.583641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916706, 38.273987, 36.583637>,  <41.941513, 38.673218, 36.583630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916706, 38.273987, 36.583637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795449, -0.049438, -0.604000,
		0.602839, -0.037442, 0.796984,
		-0.062016, -0.998075, 0.000020,
		41.898102, 37.974564, 36.583645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533379, 38.234066, 36.818317>,  <41.941513, 38.673218, 36.583630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533379, 38.234066, 36.818317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368057, 38.016907, 36.525894>,  <42.268864, 37.886612, 36.350441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368057, 38.016907, 36.525894>,  <42.533379, 38.234066, 36.818317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368057, 38.016907, 36.525894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884201, -0.047384, -0.464698,
		0.217642, -0.838462, 0.499613,
		-0.413306, -0.542896, -0.731055,
		42.244064, 37.854038, 36.306576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901630, 37.618595, 36.700333>,  <42.533379, 38.234066, 36.818317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901630, 37.618595, 36.700333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732410, 37.788513, 36.380188>,  <42.630878, 37.890465, 36.188103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732410, 37.788513, 36.380188>,  <42.901630, 37.618595, 36.700333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732410, 37.788513, 36.380188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894254, 0.053324, -0.444372,
		-0.146090, -0.903716, -0.402437,
		-0.423046, 0.424799, -0.800362,
		42.605495, 37.915955, 36.140079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101269, 37.271774, 36.169380>,  <42.901630, 37.618595, 36.700333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101269, 37.271774, 36.169380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012127, 37.627968, 36.010700>,  <42.958641, 37.841682, 35.915493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012127, 37.627968, 36.010700>,  <43.101269, 37.271774, 36.169380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012127, 37.627968, 36.010700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845803, -0.025716, -0.532875,
		-0.484718, -0.454287, -0.747443,
		-0.222857, 0.890484, -0.396703,
		42.945271, 37.895115, 35.891689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146969, 37.270557, 35.402431>,  <43.101269, 37.271774, 36.169380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146969, 37.270557, 35.402431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196175, 37.639637, 35.548576>,  <43.225697, 37.861084, 35.636261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196175, 37.639637, 35.548576>,  <43.146969, 37.270557, 35.402431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196175, 37.639637, 35.548576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899878, 0.051518, -0.433089,
		-0.418435, 0.382053, -0.823983,
		0.123013, 0.922703, 0.365358,
		43.233078, 37.916447, 35.658184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658268, 36.582024, 35.582203>,  <43.146969, 37.270557, 35.402431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658268, 36.582024, 35.582203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530186, 36.226460, 35.713234>,  <42.453339, 36.013119, 35.791851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530186, 36.226460, 35.713234>,  <42.658268, 36.582024, 35.582203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530186, 36.226460, 35.713234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923036, 0.370575, 0.103337,
		-0.213249, -0.269276, -0.939157,
		-0.320202, -0.888912, 0.327576,
		42.434124, 35.959785, 35.811508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937328, 35.860012, 35.794159>,  <42.658268, 36.582024, 35.582203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937328, 35.860012, 35.794159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844536, 35.991127, 36.160488>,  <42.788860, 36.069798, 36.380287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844536, 35.991127, 36.160488>,  <42.937328, 35.860012, 35.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844536, 35.991127, 36.160488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530614, 0.831736, -0.163288,
		-0.815251, 0.448071, -0.366877,
		-0.231980, 0.327791, 0.915826,
		42.774940, 36.089466, 36.435238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479607, 35.786770, 35.294052>,  <42.937328, 35.860012, 35.794159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479607, 35.786770, 35.294052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649044, 35.562080, 35.009789>,  <43.750706, 35.427265, 34.839230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649044, 35.562080, 35.009789>,  <43.479607, 35.786770, 35.294052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649044, 35.562080, 35.009789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905737, 0.275108, 0.322421,
		0.014395, -0.780243, 0.625311,
		0.423595, -0.561727, -0.710655,
		43.776123, 35.393562, 34.796593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828125, 35.201466, 35.592197>,  <43.479607, 35.786770, 35.294052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828125, 35.201466, 35.592197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001942, 35.344982, 35.261757>,  <44.106232, 35.431091, 35.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001942, 35.344982, 35.261757>,  <43.828125, 35.201466, 35.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001942, 35.344982, 35.261757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845335, 0.154025, 0.511552,
		0.310781, -0.920622, -0.236369,
		0.434539, 0.358792, -0.826102,
		44.132305, 35.452621, 35.013927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419312, 34.874996, 35.544651>,  <43.828125, 35.201466, 35.592197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419312, 34.874996, 35.544651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456684, 35.212494, 35.333229>,  <44.479107, 35.414993, 35.206375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456684, 35.212494, 35.333229>,  <44.419312, 34.874996, 35.544651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456684, 35.212494, 35.333229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934171, 0.109333, 0.339662,
		0.344376, -0.525493, -0.777986,
		0.093430, 0.843744, -0.528552,
		44.484715, 35.465618, 35.174664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063683, 34.835873, 35.146694>,  <44.419312, 34.874996, 35.544651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063683, 34.835873, 35.146694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004616, 35.227242, 35.204498>,  <44.969177, 35.462063, 35.239182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004616, 35.227242, 35.204498>,  <45.063683, 34.835873, 35.146694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004616, 35.227242, 35.204498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957854, 0.105074, 0.267350,
		0.246398, 0.177894, -0.952702,
		-0.147664, 0.978424, 0.144507,
		44.960316, 35.520767, 35.247849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394348, 35.227901, 34.673676>,  <45.063683, 34.835873, 35.146694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394348, 35.227901, 34.673676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366558, 35.382851, 35.041397>,  <45.349884, 35.475819, 35.262028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366558, 35.382851, 35.041397>,  <45.394348, 35.227901, 34.673676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366558, 35.382851, 35.041397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993433, -0.057109, 0.099145,
		0.090906, 0.920153, -0.380860,
		-0.069478, 0.387372, 0.919302,
		45.345715, 35.499062, 35.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764339, 35.816628, 34.670132>,  <45.394348, 35.227901, 34.673676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764339, 35.816628, 34.670132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748821, 35.629391, 35.023262>,  <45.739510, 35.517048, 35.235142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748821, 35.629391, 35.023262>,  <45.764339, 35.816628, 34.670132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748821, 35.629391, 35.023262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995216, -0.097378, -0.007899,
		0.089666, 0.878300, 0.469627,
		-0.038794, -0.468088, 0.882830,
		45.737183, 35.488964, 35.288113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185944, 36.147648, 35.271374>,  <45.764339, 35.816628, 34.670132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185944, 36.147648, 35.271374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138382, 35.752159, 35.307785>,  <46.109844, 35.514866, 35.329632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138382, 35.752159, 35.307785>,  <46.185944, 36.147648, 35.271374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138382, 35.752159, 35.307785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988782, -0.109564, 0.101512,
		-0.090394, 0.102077, 0.990661,
		-0.118903, -0.988724, 0.091028,
		46.102711, 35.455544, 35.335094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634266, 35.987728, 35.873833>,  <46.185944, 36.147648, 35.271374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634266, 35.987728, 35.873833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590511, 35.673950, 35.629642>,  <46.564259, 35.485683, 35.483128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590511, 35.673950, 35.629642>,  <46.634266, 35.987728, 35.873833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590511, 35.673950, 35.629642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990466, -0.034278, -0.133428,
		0.083740, -0.619254, 0.780712,
		-0.109387, -0.784442, -0.610480,
		46.557693, 35.438618, 35.446499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918282, 35.301666, 36.045380>,  <46.634266, 35.987728, 35.873833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918282, 35.301666, 36.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930599, 35.344707, 35.647892>,  <46.937992, 35.370533, 35.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930599, 35.344707, 35.647892>,  <46.918282, 35.301666, 36.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930599, 35.344707, 35.647892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971367, 0.231098, 0.055128,
		0.235578, -0.966962, -0.097404,
		0.030797, 0.107602, -0.993717,
		46.939838, 35.376987, 35.349777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.356117, 34.782665, 35.719036>,  <46.918282, 35.301666, 36.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.356117, 34.782665, 35.719036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.334999, 35.126812, 35.516262>,  <47.322327, 35.333302, 35.394600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.334999, 35.126812, 35.516262>,  <47.356117, 34.782665, 35.719036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.334999, 35.126812, 35.516262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998480, 0.053508, -0.013177,
		0.015787, -0.506857, -0.861886,
		-0.052797, 0.860368, -0.506931,
		47.319160, 35.384922, 35.364182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845539, 34.767006, 35.082222>,  <47.356117, 34.782665, 35.719036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845539, 34.767006, 35.082222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773342, 35.149357, 35.174934>,  <47.730022, 35.378765, 35.230564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773342, 35.149357, 35.174934>,  <47.845539, 34.767006, 35.082222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773342, 35.149357, 35.174934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983471, 0.178842, 0.028313,
		-0.014389, 0.233065, -0.972355,
		-0.180496, 0.955875, 0.231786,
		47.719193, 35.436119, 35.244469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.943523, 30.262234, 29.970352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572536, 30.130182, 29.900120>,  <38.349945, 30.050951, 29.857981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572536, 30.130182, 29.900120>,  <38.943523, 30.262234, 29.970352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572536, 30.130182, 29.900120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373007, 0.784147, 0.495964,
		-0.026051, 0.525481, -0.850407,
		-0.927463, -0.330128, -0.175580,
		38.294296, 30.031143, 29.847446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669373, 30.818474, 29.702028>,  <38.943523, 30.262234, 29.970352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669373, 30.818474, 29.702028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361042, 30.599138, 29.831741>,  <38.176044, 30.467537, 29.909569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361042, 30.599138, 29.831741>,  <38.669373, 30.818474, 29.702028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361042, 30.599138, 29.831741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287229, 0.753507, 0.591377,
		-0.568622, 0.362704, -0.738319,
		-0.770823, -0.548337, 0.324282,
		38.129795, 30.434637, 29.929026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057903, 31.191509, 29.743933>,  <38.669373, 30.818474, 29.702028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057903, 31.191509, 29.743933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.942692, 30.890387, 29.980684>,  <37.873566, 30.709713, 30.122734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.942692, 30.890387, 29.980684>,  <38.057903, 31.191509, 29.743933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942692, 30.890387, 29.980684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368039, 0.657623, 0.657327,
		-0.884073, -0.028503, -0.466479,
		-0.288032, -0.752807, 0.591877,
		37.856281, 30.664545, 30.158247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247955, 31.228659, 29.933332>,  <38.057903, 31.191509, 29.743933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247955, 31.228659, 29.933332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466480, 31.034430, 30.206320>,  <37.597595, 30.917892, 30.370113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466480, 31.034430, 30.206320>,  <37.247955, 31.228659, 29.933332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466480, 31.034430, 30.206320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358152, 0.601134, 0.714398,
		-0.757149, -0.634710, 0.154496,
		0.546308, -0.485573, 0.682471,
		37.630371, 30.888758, 30.411060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844006, 31.142931, 30.453297>,  <37.247955, 31.228659, 29.933332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844006, 31.142931, 30.453297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201508, 31.112988, 30.630201>,  <37.416008, 31.095022, 30.736343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201508, 31.112988, 30.630201>,  <36.844006, 31.142931, 30.453297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201508, 31.112988, 30.630201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351367, 0.496035, 0.794034,
		-0.278816, -0.865069, 0.417032,
		0.893757, -0.074858, 0.442260,
		37.469635, 31.090530, 30.762878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695393, 30.912201, 31.212149>,  <36.844006, 31.142931, 30.453297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695393, 30.912201, 31.212149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057819, 31.078402, 31.180145>,  <37.275276, 31.178122, 31.160944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057819, 31.078402, 31.180145>,  <36.695393, 30.912201, 31.212149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057819, 31.078402, 31.180145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201856, 0.590621, 0.781294,
		0.371884, -0.691755, 0.619013,
		0.906066, 0.415503, -0.080007,
		37.329639, 31.203053, 31.156143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942322, 30.913168, 31.898367>,  <36.695393, 30.912201, 31.212149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942322, 30.913168, 31.898367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165722, 31.183256, 31.705635>,  <37.299763, 31.345308, 31.589996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165722, 31.183256, 31.705635>,  <36.942322, 30.913168, 31.898367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165722, 31.183256, 31.705635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014674, 0.572731, 0.819612,
		0.829377, -0.464820, 0.309960,
		0.558496, 0.675219, -0.481831,
		37.333271, 31.385822, 31.561087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365536, 31.130123, 32.391830>,  <36.942322, 30.913168, 31.898367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365536, 31.130123, 32.391830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403812, 31.423502, 32.122639>,  <37.426777, 31.599529, 31.961124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403812, 31.423502, 32.122639>,  <37.365536, 31.130123, 32.391830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403812, 31.423502, 32.122639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063774, 0.679208, 0.731169,
		0.993366, -0.027048, 0.111770,
		0.095692, 0.733447, -0.672977,
		37.432522, 31.643536, 31.920746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734943, 31.625299, 32.718018>,  <37.365536, 31.130123, 32.391830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734943, 31.625299, 32.718018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565765, 31.835548, 32.422764>,  <37.464256, 31.961697, 32.245613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565765, 31.835548, 32.422764>,  <37.734943, 31.625299, 32.718018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565765, 31.835548, 32.422764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008711, 0.812181, 0.583341,
		0.906112, 0.253153, -0.338932,
		-0.422949, 0.525620, -0.738132,
		37.438881, 31.993235, 32.201324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086712, 32.310352, 32.528496>,  <37.734943, 31.625299, 32.718018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086712, 32.310352, 32.528496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712299, 32.380013, 32.406178>,  <37.487652, 32.421810, 32.332787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712299, 32.380013, 32.406178>,  <38.086712, 32.310352, 32.528496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712299, 32.380013, 32.406178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001072, 0.867550, 0.497349,
		0.351907, 0.465864, -0.811870,
		-0.936035, 0.174150, -0.305796,
		37.431488, 32.432259, 32.314438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098564, 33.038048, 32.275990>,  <38.086712, 32.310352, 32.528496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098564, 33.038048, 32.275990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724247, 32.953964, 32.389202>,  <37.499657, 32.903515, 32.457130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724247, 32.953964, 32.389202>,  <38.098564, 33.038048, 32.275990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724247, 32.953964, 32.389202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100606, 0.928640, 0.357081,
		-0.337895, 0.305679, -0.890162,
		-0.935792, -0.210211, 0.283029,
		37.443508, 32.890900, 32.474110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721882, 33.729252, 32.236919>,  <38.098564, 33.038048, 32.275990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721882, 33.729252, 32.236919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478832, 33.501823, 32.458736>,  <37.333000, 33.365368, 32.591827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478832, 33.501823, 32.458736>,  <37.721882, 33.729252, 32.236919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478832, 33.501823, 32.458736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162888, 0.772593, 0.613651,
		-0.777341, 0.282541, -0.562061,
		-0.607626, -0.568569, 0.554545,
		37.296543, 33.331253, 32.625099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249969, 34.166088, 32.405205>,  <37.721882, 33.729252, 32.236919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249969, 34.166088, 32.405205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201958, 33.877285, 32.677761>,  <37.173153, 33.704002, 32.841293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201958, 33.877285, 32.677761>,  <37.249969, 34.166088, 32.405205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201958, 33.877285, 32.677761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156871, 0.691523, 0.705116,
		-0.980299, -0.022258, -0.196263,
		-0.120026, -0.722012, 0.681390,
		37.165951, 33.660683, 32.882179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644699, 34.229359, 32.636196>,  <37.249969, 34.166088, 32.405205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644699, 34.229359, 32.636196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814697, 34.007465, 32.922314>,  <36.916698, 33.874329, 33.093987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814697, 34.007465, 32.922314>,  <36.644699, 34.229359, 32.636196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814697, 34.007465, 32.922314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297884, 0.660490, 0.689216,
		-0.854775, -0.505992, 0.115463,
		0.425000, -0.554730, 0.715297,
		36.942196, 33.841045, 33.136902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167988, 34.208797, 33.093906>,  <36.644699, 34.229359, 32.636196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167988, 34.208797, 33.093906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509998, 34.114632, 33.278736>,  <36.715202, 34.058132, 33.389633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509998, 34.114632, 33.278736>,  <36.167988, 34.208797, 33.093906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509998, 34.114632, 33.278736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296821, 0.508483, 0.808296,
		-0.425246, -0.828265, 0.364887,
		0.855022, -0.235418, 0.462077,
		36.766506, 34.044006, 33.417358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093781, 34.161697, 33.812473>,  <36.167988, 34.208797, 33.093906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093781, 34.161697, 33.812473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482098, 34.205566, 33.897827>,  <36.715088, 34.231888, 33.949039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482098, 34.205566, 33.897827>,  <36.093781, 34.161697, 33.812473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482098, 34.205566, 33.897827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239522, 0.494015, 0.835810,
		-0.013748, -0.862509, 0.505856,
		0.970794, 0.109673, 0.213381,
		36.773335, 34.238468, 33.961842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094067, 34.236221, 34.531025>,  <36.093781, 34.161697, 33.812473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094067, 34.236221, 34.531025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471920, 34.336784, 34.446678>,  <36.698631, 34.397121, 34.396069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471920, 34.336784, 34.446678>,  <36.094067, 34.236221, 34.531025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471920, 34.336784, 34.446678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012729, 0.614065, 0.789153,
		0.327890, -0.748142, 0.576864,
		0.944630, 0.251412, -0.210868,
		36.755310, 34.412209, 34.383419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558338, 34.041149, 35.229946>,  <36.094067, 34.236221, 34.531025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558338, 34.041149, 35.229946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755806, 34.317921, 35.019226>,  <36.874287, 34.483986, 34.892796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755806, 34.317921, 35.019226>,  <36.558338, 34.041149, 35.229946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755806, 34.317921, 35.019226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033471, 0.590196, 0.806566,
		0.869005, -0.415810, 0.268202,
		0.493669, 0.691932, -0.526801,
		36.903908, 34.525501, 34.861187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068897, 34.235428, 35.688702>,  <36.558338, 34.041149, 35.229946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068897, 34.235428, 35.688702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029095, 34.532532, 35.423851>,  <37.005211, 34.710793, 35.264942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029095, 34.532532, 35.423851>,  <37.068897, 34.235428, 35.688702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029095, 34.532532, 35.423851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090900, 0.669433, 0.737290,
		0.990876, 0.013179, -0.134131,
		-0.099509, 0.742756, -0.662127,
		36.999241, 34.755360, 35.225212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555511, 34.655159, 35.934650>,  <37.068897, 34.235428, 35.688702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555511, 34.655159, 35.934650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298622, 34.871292, 35.717175>,  <37.144489, 35.000973, 35.586689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298622, 34.871292, 35.717175>,  <37.555511, 34.655159, 35.934650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298622, 34.871292, 35.717175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112830, 0.768202, 0.630187,
		0.758171, 0.343375, -0.554320,
		-0.642220, 0.540333, -0.543685,
		37.105957, 35.033394, 35.554070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873631, 35.339371, 35.876457>,  <37.555511, 34.655159, 35.934650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873631, 35.339371, 35.876457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481625, 35.378349, 35.807087>,  <37.246422, 35.401737, 35.765465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481625, 35.378349, 35.807087>,  <37.873631, 35.339371, 35.876457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481625, 35.378349, 35.807087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074755, 0.627521, 0.775003,
		0.184350, 0.772478, -0.607695,
		-0.980014, 0.097444, -0.173430,
		37.187622, 35.407581, 35.755058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770359, 36.061398, 35.726791>,  <37.873631, 35.339371, 35.876457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770359, 36.061398, 35.726791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460384, 35.857765, 35.876625>,  <37.274399, 35.735584, 35.966526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460384, 35.857765, 35.876625>,  <37.770359, 36.061398, 35.726791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460384, 35.857765, 35.876625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000898, 0.591768, 0.806108,
		-0.632039, 0.625018, -0.458126,
		-0.774936, -0.509080, 0.374582,
		37.227905, 35.705040, 35.988998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230766, 35.897270, 36.363464>,  <37.770359, 36.061398, 35.726791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230766, 35.897270, 36.363464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557449, 35.840130, 36.587101>,  <38.753460, 35.805847, 36.721283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557449, 35.840130, 36.587101>,  <38.230766, 35.897270, 36.363464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557449, 35.840130, 36.587101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420878, -0.515375, -0.746492,
		0.394779, 0.844975, -0.360787,
		0.816708, -0.142852, 0.559090,
		38.802464, 35.797276, 36.754829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727139, 35.980946, 35.872360>,  <38.230766, 35.897270, 36.363464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727139, 35.980946, 35.872360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896694, 35.773563, 36.169415>,  <38.998428, 35.649132, 36.347649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896694, 35.773563, 36.169415>,  <38.727139, 35.980946, 35.872360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896694, 35.773563, 36.169415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543028, -0.510748, -0.666526,
		0.724869, 0.685810, 0.065036,
		0.423893, -0.518460, 0.742640,
		39.023861, 35.618027, 36.392208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337936, 35.796947, 35.582638>,  <38.727139, 35.980946, 35.872360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337936, 35.796947, 35.582638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295204, 35.534901, 35.881813>,  <39.269566, 35.377674, 36.061317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295204, 35.534901, 35.881813>,  <39.337936, 35.796947, 35.582638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295204, 35.534901, 35.881813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373960, -0.723483, -0.580281,
		0.921271, 0.217706, 0.322278,
		-0.106832, -0.655116, 0.747937,
		39.263153, 35.338367, 36.106194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975216, 35.453995, 35.651501>,  <39.337936, 35.796947, 35.582638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975216, 35.453995, 35.651501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.700077, 35.215099, 35.816513>,  <39.534996, 35.071762, 35.915520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.700077, 35.215099, 35.816513>,  <39.975216, 35.453995, 35.651501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700077, 35.215099, 35.816513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334560, -0.765220, -0.550008,
		0.644160, -0.240303, 0.726163,
		-0.687842, -0.597238, 0.412528,
		39.493725, 35.035927, 35.940273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306664, 34.772049, 35.895920>,  <39.975216, 35.453995, 35.651501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306664, 34.772049, 35.895920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.926510, 34.651600, 35.864716>,  <39.698418, 34.579330, 35.845993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.926510, 34.651600, 35.864716>,  <40.306664, 34.772049, 35.895920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926510, 34.651600, 35.864716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287362, -0.753877, -0.590841,
		0.119104, -0.583946, 0.803007,
		-0.950388, -0.301125, -0.078014,
		39.641392, 34.561264, 35.841312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282806, 34.091053, 35.955982>,  <40.306664, 34.772049, 35.895920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282806, 34.091053, 35.955982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952019, 34.157192, 35.741032>,  <39.753544, 34.196877, 35.612061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952019, 34.157192, 35.741032>,  <40.282806, 34.091053, 35.955982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952019, 34.157192, 35.741032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343735, -0.607667, -0.715952,
		-0.444932, -0.776788, 0.445687,
		-0.826972, 0.165352, -0.537379,
		39.703926, 34.206799, 35.579819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039879, 33.439217, 35.707077>,  <40.282806, 34.091053, 35.955982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039879, 33.439217, 35.707077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817101, 33.670399, 35.468487>,  <39.683434, 33.809109, 35.325333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817101, 33.670399, 35.468487>,  <40.039879, 33.439217, 35.707077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817101, 33.670399, 35.468487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156191, -0.632473, -0.758671,
		-0.815730, -0.515703, 0.261982,
		-0.556946, 0.577952, -0.596475,
		39.650017, 33.843784, 35.289543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854755, 33.034878, 35.178955>,  <40.039879, 33.439217, 35.707077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854755, 33.034878, 35.178955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713070, 33.368832, 35.010433>,  <39.628059, 33.569202, 34.909321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713070, 33.368832, 35.010433>,  <39.854755, 33.034878, 35.178955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713070, 33.368832, 35.010433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070043, -0.425565, -0.902213,
		-0.932538, -0.349086, 0.092263,
		-0.354213, 0.834885, -0.421306,
		39.606804, 33.619297, 34.884041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252373, 32.825279, 34.776669>,  <39.854755, 33.034878, 35.178955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252373, 32.825279, 34.776669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440819, 33.154602, 34.650043>,  <39.553886, 33.352196, 34.574066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440819, 33.154602, 34.650043>,  <39.252373, 32.825279, 34.776669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440819, 33.154602, 34.650043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090967, -0.402325, -0.910967,
		-0.877369, 0.400373, -0.264435,
		0.471115, 0.823308, -0.316567,
		39.582153, 33.401596, 34.555073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902252, 32.924465, 34.232170>,  <39.252373, 32.825279, 34.776669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902252, 32.924465, 34.232170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264847, 33.087029, 34.186363>,  <39.482403, 33.184566, 34.158878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264847, 33.087029, 34.186363>,  <38.902252, 32.924465, 34.232170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264847, 33.087029, 34.186363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077926, -0.427588, -0.900609,
		-0.414979, 0.807467, -0.419273,
		0.906488, 0.406406, -0.114517,
		39.536793, 33.208950, 34.152008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900059, 33.029377, 33.442650>,  <38.902252, 32.924465, 34.232170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900059, 33.029377, 33.442650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274548, 33.039539, 33.582844>,  <39.499241, 33.045635, 33.666962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274548, 33.039539, 33.582844>,  <38.900059, 33.029377, 33.442650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274548, 33.039539, 33.582844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346081, -0.239672, -0.907075,
		0.060961, 0.970522, -0.233177,
		0.936222, 0.025402, 0.350490,
		39.555412, 33.047161, 33.687992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360443, 33.385372, 32.844463>,  <38.900059, 33.029377, 33.442650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360443, 33.385372, 32.844463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.613441, 33.185059, 33.080822>,  <39.765240, 33.064873, 33.222637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.613441, 33.185059, 33.080822>,  <39.360443, 33.385372, 32.844463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613441, 33.185059, 33.080822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433115, -0.403806, -0.805824,
		0.642149, 0.765612, -0.038512,
		0.632500, -0.500779, 0.590901,
		39.803192, 33.034824, 33.258091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062401, 33.435635, 32.574028>,  <39.360443, 33.385372, 32.844463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062401, 33.435635, 32.574028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.031445, 33.100689, 32.790482>,  <40.012871, 32.899719, 32.920353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.031445, 33.100689, 32.790482>,  <40.062401, 33.435635, 32.574028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031445, 33.100689, 32.790482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467583, -0.509855, -0.722090,
		0.880555, 0.197146, 0.430994,
		-0.077387, -0.837366, 0.541137,
		40.008228, 32.849480, 32.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735531, 33.153206, 32.442970>,  <40.062401, 33.435635, 32.574028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735531, 33.153206, 32.442970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501812, 32.863842, 32.590092>,  <40.361580, 32.690224, 32.678364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501812, 32.863842, 32.590092>,  <40.735531, 33.153206, 32.442970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501812, 32.863842, 32.590092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402232, -0.651780, -0.642956,
		0.704848, -0.227732, 0.671809,
		-0.584293, -0.723409, 0.367805,
		40.326523, 32.646820, 32.700432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177814, 32.599697, 32.583626>,  <40.735531, 33.153206, 32.442970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177814, 32.599697, 32.583626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.802223, 32.473446, 32.528912>,  <40.576870, 32.397697, 32.496082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.802223, 32.473446, 32.528912>,  <41.177814, 32.599697, 32.583626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802223, 32.473446, 32.528912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311731, -0.612640, -0.726289,
		0.145436, -0.724606, 0.673643,
		-0.938974, -0.315624, -0.136782,
		40.520531, 32.378757, 32.487877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309231, 31.951830, 32.434078>,  <41.177814, 32.599697, 32.583626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309231, 31.951830, 32.434078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931469, 31.998201, 32.311012>,  <40.704811, 32.026024, 32.237171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931469, 31.998201, 32.311012>,  <41.309231, 31.951830, 32.434078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931469, 31.998201, 32.311012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095570, -0.798569, -0.594268,
		-0.314584, -0.590634, 0.743094,
		-0.944406, 0.115930, -0.307664,
		40.648148, 32.032982, 32.218712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993973, 31.339394, 32.519913>,  <41.309231, 31.951830, 32.434078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993973, 31.339394, 32.519913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782253, 31.545994, 32.250671>,  <40.655220, 31.669954, 32.089127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782253, 31.545994, 32.250671>,  <40.993973, 31.339394, 32.519913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782253, 31.545994, 32.250671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036462, -0.778767, -0.626253,
		-0.847650, -0.356019, 0.393369,
		-0.529301, 0.516500, -0.673103,
		40.623463, 31.700943, 32.048740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373669, 30.910660, 32.333374>,  <40.993973, 31.339394, 32.519913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373669, 30.910660, 32.333374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420307, 31.169550, 32.032040>,  <40.448288, 31.324883, 31.851240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420307, 31.169550, 32.032040>,  <40.373669, 30.910660, 32.333374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420307, 31.169550, 32.032040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024145, -0.760128, -0.649325,
		-0.992886, 0.057518, -0.104253,
		0.116593, 0.647223, -0.753332,
		40.455284, 31.363716, 31.806040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.998669, 30.609667, 31.792109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232563, 30.873987, 31.603884>,  <40.372898, 31.032579, 31.490950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232563, 30.873987, 31.603884>,  <39.998669, 30.609667, 31.792109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232563, 30.873987, 31.603884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016635, -0.589708, -0.807445,
		-0.811053, 0.464314, -0.355816,
		0.584736, 0.660800, -0.470561,
		40.407982, 31.072227, 31.462715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511852, 30.845760, 31.194056>,  <39.998669, 30.609667, 31.792109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511852, 30.845760, 31.194056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890030, 30.931414, 31.095850>,  <40.116936, 30.982805, 31.036926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890030, 30.931414, 31.095850>,  <39.511852, 30.845760, 31.194056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890030, 30.931414, 31.095850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135170, -0.427847, -0.893687,
		-0.296412, 0.878119, -0.375562,
		0.945446, 0.214135, -0.245514,
		40.173664, 30.995655, 31.022196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477238, 31.000450, 30.513477>,  <39.511852, 30.845760, 31.194056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477238, 31.000450, 30.513477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864864, 30.944586, 30.594873>,  <40.097439, 30.911066, 30.643711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864864, 30.944586, 30.594873>,  <39.477238, 31.000450, 30.513477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864864, 30.944586, 30.594873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102139, -0.523635, -0.845798,
		0.224680, 0.840417, -0.493171,
		0.969065, -0.139662, 0.203489,
		40.155582, 30.902687, 30.655920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772911, 31.184254, 29.902018>,  <39.477238, 31.000450, 30.513477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772911, 31.184254, 29.902018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999657, 30.921787, 30.101263>,  <40.135704, 30.764307, 30.220810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999657, 30.921787, 30.101263>,  <39.772911, 31.184254, 29.902018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999657, 30.921787, 30.101263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123171, -0.530339, -0.838791,
		0.814554, 0.536830, -0.219808,
		0.566860, -0.656167, 0.498112,
		40.169716, 30.724937, 30.250696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358150, 30.988873, 29.534273>,  <39.772911, 31.184254, 29.902018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358150, 30.988873, 29.534273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.377960, 30.667139, 29.771118>,  <40.389847, 30.474098, 29.913225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.377960, 30.667139, 29.771118>,  <40.358150, 30.988873, 29.534273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377960, 30.667139, 29.771118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302709, -0.552867, -0.776341,
		0.951796, 0.217681, 0.216102,
		0.049520, -0.804334, 0.592110,
		40.392815, 30.425838, 29.948751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021709, 30.626451, 29.365963>,  <40.358150, 30.988873, 29.534273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021709, 30.626451, 29.365963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769459, 30.367960, 29.537870>,  <40.618111, 30.212866, 29.641014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769459, 30.367960, 29.537870>,  <41.021709, 30.626451, 29.365963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769459, 30.367960, 29.537870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251312, -0.693964, -0.674727,
		0.734272, -0.317494, 0.600036,
		-0.630625, -0.646229, 0.429768,
		40.580273, 30.174091, 29.666801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377934, 30.083525, 29.286304>,  <41.021709, 30.626451, 29.365963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377934, 30.083525, 29.286304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.004650, 29.959038, 29.358162>,  <40.780682, 29.884346, 29.401276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.004650, 29.959038, 29.358162>,  <41.377934, 30.083525, 29.286304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004650, 29.959038, 29.358162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105327, -0.714861, -0.691288,
		0.343561, -0.626193, 0.699892,
		-0.933205, -0.311217, 0.179643,
		40.724689, 29.865673, 29.412054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457306, 29.371572, 29.320702>,  <41.377934, 30.083525, 29.286304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457306, 29.371572, 29.320702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062523, 29.416176, 29.274267>,  <40.825653, 29.442938, 29.246407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062523, 29.416176, 29.274267>,  <41.457306, 29.371572, 29.320702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062523, 29.416176, 29.274267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006675, -0.748909, -0.662639,
		-0.160828, -0.653223, 0.739888,
		-0.986960, 0.111510, -0.116086,
		40.766434, 29.449629, 29.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167725, 28.763140, 29.389761>,  <41.457306, 29.371572, 29.320702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167725, 28.763140, 29.389761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.914032, 28.975035, 29.164507>,  <40.761814, 29.102171, 29.029354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.914032, 28.975035, 29.164507>,  <41.167725, 28.763140, 29.389761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914032, 28.975035, 29.164507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130891, -0.644291, -0.753496,
		-0.761981, -0.551602, 0.339293,
		-0.634234, 0.529739, -0.563138,
		40.723763, 29.133957, 28.995565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981930, 28.305405, 28.892397>,  <41.167725, 28.763140, 29.389761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981930, 28.305405, 28.892397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822071, 28.645378, 28.755054>,  <40.726154, 28.849363, 28.672649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822071, 28.645378, 28.755054>,  <40.981930, 28.305405, 28.892397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822071, 28.645378, 28.755054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029520, -0.386307, -0.921898,
		-0.916194, -0.358296, 0.179476,
		-0.399646, 0.849936, -0.343355,
		40.702179, 28.900358, 28.652048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607742, 28.068949, 28.329035>,  <40.981930, 28.305405, 28.892397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607742, 28.068949, 28.329035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741917, 28.439966, 28.263134>,  <40.822422, 28.662577, 28.223595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741917, 28.439966, 28.263134>,  <40.607742, 28.068949, 28.329035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741917, 28.439966, 28.263134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239767, -0.253180, -0.937236,
		-0.911041, 0.274880, -0.307320,
		0.335434, 0.927546, -0.164750,
		40.842548, 28.718229, 28.213709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292202, 28.255781, 27.705660>,  <40.607742, 28.068949, 28.329035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292202, 28.255781, 27.705660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.589165, 28.520845, 27.745073>,  <40.767342, 28.679884, 27.768721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.589165, 28.520845, 27.745073>,  <40.292202, 28.255781, 27.705660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589165, 28.520845, 27.745073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282267, -0.176013, -0.943051,
		-0.607578, 0.727944, -0.317721,
		0.742411, 0.662659, 0.098533,
		40.811890, 28.719643, 27.774633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315155, 28.471786, 27.065329>,  <40.292202, 28.255781, 27.705660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315155, 28.471786, 27.065329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.635025, 28.651962, 27.224134>,  <40.826946, 28.760069, 27.319418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.635025, 28.651962, 27.224134>,  <40.315155, 28.471786, 27.065329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635025, 28.651962, 27.224134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411928, 0.069491, -0.908563,
		-0.436842, 0.890098, -0.129979,
		0.799678, 0.450441, 0.397012,
		40.874928, 28.787094, 27.343239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338467, 29.023685, 26.650829>,  <40.315155, 28.471786, 27.065329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338467, 29.023685, 26.650829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701122, 28.953863, 26.804470>,  <40.918716, 28.911970, 26.896654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701122, 28.953863, 26.804470>,  <40.338467, 29.023685, 26.650829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701122, 28.953863, 26.804470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384727, -0.031623, -0.922488,
		0.173172, 0.984139, 0.038485,
		0.906640, -0.174555, 0.384102,
		40.973114, 28.901497, 26.919701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791904, 29.322563, 26.174128>,  <40.338467, 29.023685, 26.650829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791904, 29.322563, 26.174128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.044369, 29.095543, 26.385605>,  <41.195847, 28.959332, 26.512491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.044369, 29.095543, 26.385605>,  <40.791904, 29.322563, 26.174128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044369, 29.095543, 26.385605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565245, -0.130213, -0.814581,
		0.531158, 0.812978, 0.238618,
		0.631165, -0.567549, 0.528695,
		41.233719, 28.925278, 26.544214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511078, 29.517576, 25.935659>,  <40.791904, 29.322563, 26.174128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511078, 29.517576, 25.935659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.526752, 29.149998, 26.092632>,  <41.536160, 28.929451, 26.186815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.526752, 29.149998, 26.092632>,  <41.511078, 29.517576, 25.935659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526752, 29.149998, 26.092632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632726, -0.281145, -0.721537,
		0.773384, 0.276577, 0.570424,
		0.039188, -0.918947, 0.392430,
		41.538509, 28.874313, 26.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256229, 29.294180, 25.838556>,  <41.511078, 29.517576, 25.935659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256229, 29.294180, 25.838556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.037445, 28.962959, 25.887815>,  <41.906174, 28.764227, 25.917372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.037445, 28.962959, 25.887815>,  <42.256229, 29.294180, 25.838556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037445, 28.962959, 25.887815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453661, -0.416806, -0.787696,
		0.703584, -0.374967, 0.603630,
		-0.546957, -0.828053, 0.123149,
		41.873360, 28.714542, 25.924761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639400, 28.852148, 25.568268>,  <42.256229, 29.294180, 25.838556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639400, 28.852148, 25.568268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.315796, 28.619970, 25.605324>,  <42.121632, 28.480663, 25.627558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.315796, 28.619970, 25.605324>,  <42.639400, 28.852148, 25.568268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315796, 28.619970, 25.605324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321234, -0.568598, -0.757301,
		0.492246, -0.582907, 0.646461,
		-0.809013, -0.580444, 0.092641,
		42.073093, 28.445837, 25.633116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990021, 28.197067, 25.566902>,  <42.639400, 28.852148, 25.568268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990021, 28.197067, 25.566902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.605907, 28.163204, 25.460560>,  <42.375439, 28.142887, 25.396753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.605907, 28.163204, 25.460560>,  <42.990021, 28.197067, 25.566902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605907, 28.163204, 25.460560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276261, -0.421951, -0.863503,
		-0.039076, -0.902657, 0.428582,
		-0.960288, -0.084658, -0.265857,
		42.317822, 28.137806, 25.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872784, 27.477522, 25.328506>,  <42.990021, 28.197067, 25.566902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872784, 27.477522, 25.328506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.567547, 27.696571, 25.191223>,  <42.384403, 27.828001, 25.108852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.567547, 27.696571, 25.191223>,  <42.872784, 27.477522, 25.328506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567547, 27.696571, 25.191223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150939, -0.365351, -0.918551,
		-0.628414, -0.752745, 0.196139,
		-0.763094, 0.547626, -0.343210,
		42.338619, 27.860859, 25.088261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481487, 26.981531, 24.896839>,  <42.872784, 27.477522, 25.328506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481487, 26.981531, 24.896839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366070, 27.346098, 24.779493>,  <42.296818, 27.564838, 24.709085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366070, 27.346098, 24.779493>,  <42.481487, 26.981531, 24.896839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366070, 27.346098, 24.779493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034336, -0.296350, -0.954462,
		-0.956851, -0.285476, 0.054215,
		-0.288543, 0.911417, -0.293365,
		42.279507, 27.619522, 24.691484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954243, 26.957106, 24.410414>,  <42.481487, 26.981531, 24.896839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954243, 26.957106, 24.410414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104588, 27.321772, 24.343964>,  <42.194794, 27.540571, 24.304092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104588, 27.321772, 24.343964>,  <41.954243, 26.957106, 24.410414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104588, 27.321772, 24.343964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062208, -0.203689, -0.977057,
		-0.924587, 0.356900, -0.133271,
		0.375857, 0.911665, -0.166126,
		42.217346, 27.595272, 24.294127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823002, 27.066095, 23.807491>,  <41.954243, 26.957106, 24.410414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823002, 27.066095, 23.807491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081402, 27.365072, 23.869480>,  <42.236443, 27.544458, 23.906673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081402, 27.365072, 23.869480>,  <41.823002, 27.066095, 23.807491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081402, 27.365072, 23.869480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262427, -0.026819, -0.964579,
		-0.716811, 0.663785, -0.213474,
		0.645999, 0.747442, 0.154970,
		42.275200, 27.589304, 23.915972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307148, 26.928379, 23.151896>,  <41.823002, 27.066095, 23.807491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307148, 26.928379, 23.151896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.042675, 27.057112, 22.880821>,  <40.883991, 27.134352, 22.718176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.042675, 27.057112, 22.880821>,  <41.307148, 26.928379, 23.151896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042675, 27.057112, 22.880821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373309, 0.642406, 0.669295,
		0.650750, 0.695514, -0.304606,
		-0.661184, 0.321832, -0.677687,
		40.844318, 27.153662, 22.677515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207706, 27.705656, 23.252726>,  <41.307148, 26.928379, 23.151896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207706, 27.705656, 23.252726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887520, 27.566999, 23.057138>,  <40.695408, 27.483805, 22.939785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887520, 27.566999, 23.057138>,  <41.207706, 27.705656, 23.252726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887520, 27.566999, 23.057138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596446, 0.541259, 0.592698,
		0.059205, 0.766079, -0.640013,
		-0.800467, -0.346643, -0.488970,
		40.647381, 27.463007, 22.910448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718224, 28.339621, 23.138371>,  <41.207706, 27.705656, 23.252726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718224, 28.339621, 23.138371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477234, 28.023811, 23.091597>,  <40.332642, 27.834326, 23.063532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477234, 28.023811, 23.091597>,  <40.718224, 28.339621, 23.138371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477234, 28.023811, 23.091597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630141, 0.380614, 0.676797,
		-0.489842, 0.481439, -0.726823,
		-0.602476, -0.789525, -0.116934,
		40.296490, 27.786953, 23.056517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056747, 28.635784, 23.154318>,  <40.718224, 28.339621, 23.138371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056747, 28.635784, 23.154318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002491, 28.246666, 23.229439>,  <39.969936, 28.013195, 23.274511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002491, 28.246666, 23.229439>,  <40.056747, 28.635784, 23.154318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002491, 28.246666, 23.229439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625799, 0.231079, 0.744968,
		-0.768099, -0.016478, -0.640119,
		-0.135642, -0.972795, 0.187804,
		39.961800, 27.954826, 23.285780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359722, 28.495092, 23.063896>,  <40.056747, 28.635784, 23.154318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359722, 28.495092, 23.063896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519474, 28.224012, 23.310867>,  <39.615326, 28.061365, 23.459049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519474, 28.224012, 23.310867>,  <39.359722, 28.495092, 23.063896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519474, 28.224012, 23.310867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667165, 0.247070, 0.702743,
		-0.628796, -0.692589, -0.353463,
		0.399382, -0.677700, 0.617427,
		39.639290, 28.020702, 23.496096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821705, 28.271503, 23.389347>,  <39.359722, 28.495092, 23.063896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821705, 28.271503, 23.389347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111660, 28.141279, 23.632179>,  <39.285633, 28.063145, 23.777878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111660, 28.141279, 23.632179>,  <38.821705, 28.271503, 23.389347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111660, 28.141279, 23.632179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539568, 0.279538, 0.794182,
		-0.428258, -0.903254, 0.026971,
		0.724888, -0.325562, 0.607081,
		39.329128, 28.043612, 23.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445038, 27.790594, 23.869331>,  <38.821705, 28.271503, 23.389347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445038, 27.790594, 23.869331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798168, 27.891718, 24.027674>,  <39.010048, 27.952393, 24.122679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798168, 27.891718, 24.027674>,  <38.445038, 27.790594, 23.869331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798168, 27.891718, 24.027674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416551, 0.031985, 0.908549,
		0.217029, -0.966987, 0.133546,
		0.882827, 0.252810, 0.395858,
		39.063015, 27.967562, 24.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644173, 27.396336, 24.602322>,  <38.445038, 27.790594, 23.869331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644173, 27.396336, 24.602322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871559, 27.725397, 24.606194>,  <39.007992, 27.922834, 24.608517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871559, 27.725397, 24.606194>,  <38.644173, 27.396336, 24.602322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871559, 27.725397, 24.606194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273076, 0.177572, 0.945462,
		0.776068, -0.540102, 0.325589,
		0.568461, 0.822653, 0.009681,
		39.042099, 27.972193, 24.609098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880775, 27.348434, 25.230453>,  <38.644173, 27.396336, 24.602322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880775, 27.348434, 25.230453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936436, 27.730104, 25.124479>,  <38.969833, 27.959106, 25.060896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936436, 27.730104, 25.124479>,  <38.880775, 27.348434, 25.230453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936436, 27.730104, 25.124479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119031, 0.281713, 0.952087,
		0.983091, -0.100952, 0.152778,
		0.139154, 0.954173, -0.264933,
		38.978184, 28.016356, 25.045000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386261, 27.651867, 25.647772>,  <38.880775, 27.348434, 25.230453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386261, 27.651867, 25.647772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167446, 27.961878, 25.521231>,  <39.036156, 28.147884, 25.445305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167446, 27.961878, 25.521231>,  <39.386261, 27.651867, 25.647772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167446, 27.961878, 25.521231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118574, 0.302363, 0.945789,
		0.828666, 0.554896, -0.073507,
		-0.547040, 0.775027, -0.316354,
		39.003334, 28.194386, 25.426325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676468, 28.210373, 25.952806>,  <39.386261, 27.651867, 25.647772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676468, 28.210373, 25.952806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.301220, 28.326078, 25.876646>,  <39.076069, 28.395502, 25.830950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.301220, 28.326078, 25.876646>,  <39.676468, 28.210373, 25.952806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301220, 28.326078, 25.876646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087049, 0.335184, 0.938123,
		0.335184, 0.896648, -0.289264,
		-0.938123, 0.289264, -0.190400,
		39.019783, 28.412857, 25.819527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693375, 28.889591, 26.108376>,  <39.676468, 28.210373, 25.952806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693375, 28.889591, 26.108376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306728, 28.789261, 26.129314>,  <39.074741, 28.729063, 26.141878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306728, 28.789261, 26.129314>,  <39.693375, 28.889591, 26.108376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306728, 28.789261, 26.129314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058943, 0.416486, 0.907229,
		-0.249356, 0.873857, -0.417367,
		-0.966616, -0.250824, 0.052346,
		39.016743, 28.714014, 26.145018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300922, 29.462317, 26.378141>,  <39.693375, 28.889591, 26.108376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300922, 29.462317, 26.378141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036797, 29.176706, 26.471222>,  <38.878319, 29.005341, 26.527071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036797, 29.176706, 26.471222>,  <39.300922, 29.462317, 26.378141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036797, 29.176706, 26.471222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141410, 0.422534, 0.895247,
		-0.737554, 0.558241, -0.379977,
		-0.660317, -0.714025, 0.232701,
		38.838703, 28.962500, 26.541033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822319, 29.732332, 26.884542>,  <39.300922, 29.462317, 26.378141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822319, 29.732332, 26.884542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705357, 29.353472, 26.937309>,  <38.635181, 29.126156, 26.968969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705357, 29.353472, 26.937309>,  <38.822319, 29.732332, 26.884542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705357, 29.353472, 26.937309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262739, 0.212207, 0.941242,
		-0.919493, 0.240563, -0.310904,
		-0.292404, -0.947152, 0.131918,
		38.617634, 29.069326, 26.976885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240871, 29.825769, 27.298595>,  <38.822319, 29.732332, 26.884542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240871, 29.825769, 27.298595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347958, 29.441147, 27.323069>,  <38.412209, 29.210373, 27.337753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347958, 29.441147, 27.323069>,  <38.240871, 29.825769, 27.298595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347958, 29.441147, 27.323069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300132, -0.022883, 0.953623,
		-0.915561, -0.273658, -0.294719,
		0.267711, -0.961555, 0.061182,
		38.428272, 29.152681, 27.341423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601070, 29.345154, 27.493750>,  <38.240871, 29.825769, 27.298595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601070, 29.345154, 27.493750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.947239, 29.175806, 27.600941>,  <38.154938, 29.074198, 27.665257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.947239, 29.175806, 27.600941>,  <37.601070, 29.345154, 27.493750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947239, 29.175806, 27.600941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272486, 0.051164, 0.960798,
		-0.420483, -0.904512, -0.071084,
		0.865416, -0.423369, 0.267980,
		38.206863, 29.048796, 27.681335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434196, 28.714006, 27.927807>,  <37.601070, 29.345154, 27.493750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434196, 28.714006, 27.927807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800720, 28.837234, 28.030155>,  <38.020634, 28.911171, 28.091564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800720, 28.837234, 28.030155>,  <37.434196, 28.714006, 27.927807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800720, 28.837234, 28.030155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229629, -0.119276, 0.965942,
		0.328098, -0.943857, -0.038551,
		0.916309, 0.308071, 0.255871,
		38.075611, 28.929655, 28.106916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600513, 28.335369, 28.602047>,  <37.434196, 28.714006, 27.927807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600513, 28.335369, 28.602047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847160, 28.646561, 28.553833>,  <37.995148, 28.833275, 28.524904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847160, 28.646561, 28.553833>,  <37.600513, 28.335369, 28.602047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847160, 28.646561, 28.553833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070132, 0.206782, 0.975870,
		0.784130, -0.593289, 0.182068,
		0.616622, 0.777978, -0.120535,
		38.032146, 28.879953, 28.517672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083469, 28.273327, 29.171633>,  <37.600513, 28.335369, 28.602047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083469, 28.273327, 29.171633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081722, 28.653036, 29.045866>,  <38.080673, 28.880861, 28.970406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081722, 28.653036, 29.045866>,  <38.083469, 28.273327, 29.171633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081722, 28.653036, 29.045866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088768, 0.313547, 0.945415,
		0.996043, -0.023780, -0.085635,
		-0.004369, 0.949275, -0.314417,
		38.080410, 28.937819, 28.951540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541744, 28.567535, 29.679300>,  <38.083469, 28.273327, 29.171633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541744, 28.567535, 29.679300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397156, 28.896870, 29.504274>,  <38.310402, 29.094469, 29.399260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397156, 28.896870, 29.504274>,  <38.541744, 28.567535, 29.679300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397156, 28.896870, 29.504274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104825, 0.430436, 0.896514,
		0.926473, 0.369929, -0.069282,
		-0.361468, 0.823333, -0.437565,
		38.288715, 29.143869, 29.373005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955662, 29.158491, 29.909327>,  <38.541744, 28.567535, 29.679300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955662, 29.158491, 29.909327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595562, 29.294617, 29.800709>,  <38.379501, 29.376291, 29.735538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595562, 29.294617, 29.800709>,  <38.955662, 29.158491, 29.909327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595562, 29.294617, 29.800709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045866, 0.546100, 0.836463,
		0.432948, 0.765482, -0.476019,
		-0.900251, 0.340312, -0.271543,
		38.325485, 29.396709, 29.719246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.635990, 32.299259, 33.933334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371777, 32.523014, 33.733021>,  <40.213249, 32.657265, 33.612831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371777, 32.523014, 33.733021>,  <40.635990, 32.299259, 33.933334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371777, 32.523014, 33.733021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175654, 0.533357, 0.827452,
		0.729962, 0.634523, -0.254040,
		-0.660531, 0.559385, -0.500787,
		40.173618, 32.690830, 33.582787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777584, 33.074615, 34.089619>,  <40.635990, 32.299259, 33.933334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777584, 33.074615, 34.089619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396187, 33.068748, 33.969196>,  <40.167347, 33.065228, 33.896942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396187, 33.068748, 33.969196>,  <40.777584, 33.074615, 34.089619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396187, 33.068748, 33.969196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253625, 0.578708, 0.775094,
		0.162856, 0.815403, -0.555514,
		-0.953495, -0.014664, -0.301053,
		40.110138, 33.064350, 33.878880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598240, 33.888947, 33.973824>,  <40.777584, 33.074615, 34.089619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598240, 33.888947, 33.973824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250938, 33.691868, 33.997093>,  <40.042557, 33.573620, 34.011055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250938, 33.691868, 33.997093>,  <40.598240, 33.888947, 33.973824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250938, 33.691868, 33.997093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390378, 0.750853, 0.532752,
		-0.306167, 0.439853, -0.844270,
		-0.868255, -0.492696, 0.058178,
		39.990463, 33.544060, 34.014545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041672, 34.414482, 33.918797>,  <40.598240, 33.888947, 33.973824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041672, 34.414482, 33.918797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907047, 34.108742, 34.138794>,  <39.826275, 33.925297, 34.270794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907047, 34.108742, 34.138794>,  <40.041672, 34.414482, 33.918797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907047, 34.108742, 34.138794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379276, 0.644628, 0.663781,
		-0.861904, 0.014802, -0.506855,
		-0.336559, -0.764353, 0.549994,
		39.806080, 33.879436, 34.303791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662075, 34.815742, 34.419556>,  <40.041672, 34.414482, 33.918797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662075, 34.815742, 34.419556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618771, 34.440411, 34.550900>,  <39.592789, 34.215214, 34.629707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618771, 34.440411, 34.550900>,  <39.662075, 34.815742, 34.419556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618771, 34.440411, 34.550900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238543, 0.345172, 0.907719,
		-0.965079, 0.019940, -0.261200,
		-0.108258, -0.938327, 0.328362,
		39.586292, 34.158913, 34.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933247, 34.692436, 34.632076>,  <39.662075, 34.815742, 34.419556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933247, 34.692436, 34.632076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122749, 34.406342, 34.837597>,  <39.236450, 34.234684, 34.960911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122749, 34.406342, 34.837597>,  <38.933247, 34.692436, 34.632076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122749, 34.406342, 34.837597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376102, 0.363229, 0.852416,
		-0.796307, -0.597077, -0.096921,
		0.473753, -0.715237, 0.513804,
		39.264874, 34.191769, 34.991737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480061, 34.367088, 35.113960>,  <38.933247, 34.692436, 34.632076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480061, 34.367088, 35.113960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846157, 34.315262, 35.266560>,  <39.065815, 34.284164, 35.358120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846157, 34.315262, 35.266560>,  <38.480061, 34.367088, 35.113960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846157, 34.315262, 35.266560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300154, 0.412366, 0.860152,
		-0.268767, -0.901757, 0.338524,
		0.915244, -0.129571, 0.381496,
		39.120731, 34.276390, 35.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392605, 34.265469, 35.932186>,  <38.480061, 34.367088, 35.113960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392605, 34.265469, 35.932186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783398, 34.345230, 35.901894>,  <39.017876, 34.393089, 35.883717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783398, 34.345230, 35.901894>,  <38.392605, 34.265469, 35.932186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783398, 34.345230, 35.901894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086787, 0.695945, 0.712832,
		0.194851, -0.689854, 0.697234,
		0.976986, 0.199407, -0.075736,
		39.076492, 34.405052, 35.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791683, 34.185852, 36.580280>,  <38.392605, 34.265469, 35.932186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791683, 34.185852, 36.580280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005638, 34.451363, 36.371170>,  <39.134010, 34.610668, 36.245705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005638, 34.451363, 36.371170>,  <38.791683, 34.185852, 36.580280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005638, 34.451363, 36.371170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043754, 0.596136, 0.801690,
		0.843791, -0.451686, 0.289822,
		0.534886, 0.663778, -0.522777,
		39.166103, 34.650497, 36.214336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144302, 34.421509, 37.082020>,  <38.791683, 34.185852, 36.580280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144302, 34.421509, 37.082020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.166821, 34.694820, 36.790825>,  <39.180332, 34.858807, 36.616108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.166821, 34.694820, 36.790825>,  <39.144302, 34.421509, 37.082020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166821, 34.694820, 36.790825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055149, 0.730158, 0.681050,
		0.996890, 0.001808, 0.078787,
		0.056296, 0.683276, -0.727986,
		39.183708, 34.899803, 36.572430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716381, 34.834370, 37.171410>,  <39.144302, 34.421509, 37.082020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716381, 34.834370, 37.171410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460358, 35.058819, 36.961472>,  <39.306744, 35.193489, 36.835510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460358, 35.058819, 36.961472>,  <39.716381, 34.834370, 37.171410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460358, 35.058819, 36.961472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121990, 0.600215, 0.790481,
		0.758576, 0.569983, -0.315724,
		-0.640063, 0.561125, -0.524841,
		39.268337, 35.227158, 36.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787663, 35.442608, 37.539219>,  <39.716381, 34.834370, 37.171410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787663, 35.442608, 37.539219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465954, 35.533199, 37.319454>,  <39.272926, 35.587555, 37.187595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465954, 35.533199, 37.319454>,  <39.787663, 35.442608, 37.539219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465954, 35.533199, 37.319454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094131, 0.864306, 0.494080,
		0.586754, 0.449092, -0.673822,
		-0.804275, 0.226476, -0.549409,
		39.224670, 35.601143, 37.154633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787334, 36.207729, 37.341541>,  <39.787663, 35.442608, 37.539219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787334, 36.207729, 37.341541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414974, 36.063675, 37.317123>,  <39.191559, 35.977242, 37.302475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414974, 36.063675, 37.317123>,  <39.787334, 36.207729, 37.341541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414974, 36.063675, 37.317123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341073, 0.797179, 0.498171,
		-0.130751, 0.484567, -0.864927,
		-0.930899, -0.360140, -0.061040,
		39.135704, 35.955631, 37.298813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248913, 36.583916, 36.829472>,  <39.787334, 36.207729, 37.341541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248913, 36.583916, 36.829472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140186, 36.428802, 37.181778>,  <39.074951, 36.335735, 37.393162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140186, 36.428802, 37.181778>,  <39.248913, 36.583916, 36.829472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140186, 36.428802, 37.181778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227068, 0.915224, 0.332875,
		-0.935178, -0.109514, -0.336821,
		-0.271812, -0.387779, 0.880764,
		39.058643, 36.312469, 37.446007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916019, 36.694012, 36.224213>,  <39.248913, 36.583916, 36.829472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916019, 36.694012, 36.224213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995720, 37.079952, 36.155685>,  <39.043541, 37.311516, 36.114567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995720, 37.079952, 36.155685>,  <38.916019, 36.694012, 36.224213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995720, 37.079952, 36.155685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123679, -0.148670, -0.981122,
		-0.972112, 0.216682, 0.089709,
		0.199254, 0.964856, -0.171322,
		39.055496, 37.369408, 36.104290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596191, 36.882664, 35.697693>,  <38.916019, 36.694012, 36.224213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596191, 36.882664, 35.697693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871773, 37.172466, 35.706089>,  <39.037121, 37.346348, 35.711128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871773, 37.172466, 35.706089>,  <38.596191, 36.882664, 35.697693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871773, 37.172466, 35.706089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161692, -0.125395, -0.978842,
		-0.706542, 0.677769, -0.203537,
		0.688952, 0.724503, 0.020993,
		39.078457, 37.389816, 35.712387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456116, 37.420994, 35.144203>,  <38.596191, 36.882664, 35.697693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456116, 37.420994, 35.144203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842270, 37.469547, 35.236546>,  <39.073963, 37.498680, 35.291950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842270, 37.469547, 35.236546>,  <38.456116, 37.420994, 35.144203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842270, 37.469547, 35.236546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223345, 0.072428, -0.972045,
		-0.134711, 0.989960, 0.042810,
		0.965386, 0.121384, 0.230860,
		39.131886, 37.505962, 35.305805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633091, 37.911854, 34.712101>,  <38.456116, 37.420994, 35.144203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633091, 37.911854, 34.712101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984356, 37.735924, 34.787346>,  <39.195114, 37.630367, 34.832493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984356, 37.735924, 34.787346>,  <38.633091, 37.911854, 34.712101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984356, 37.735924, 34.787346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175919, -0.068758, -0.982000,
		0.444843, 0.895447, 0.016993,
		0.878161, -0.439826, 0.188113,
		39.247803, 37.603977, 34.843781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919956, 37.899582, 34.123608>,  <38.633091, 37.911854, 34.712101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919956, 37.899582, 34.123608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174625, 37.645367, 34.298302>,  <39.327427, 37.492840, 34.403118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174625, 37.645367, 34.298302>,  <38.919956, 37.899582, 34.123608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174625, 37.645367, 34.298302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298658, -0.318928, -0.899493,
		0.710947, 0.703121, -0.013247,
		0.636678, -0.635536, 0.436734,
		39.365627, 37.454704, 34.429321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453716, 38.098614, 33.815456>,  <38.919956, 37.899582, 34.123608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453716, 38.098614, 33.815456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516537, 37.735306, 33.970573>,  <39.554230, 37.517323, 34.063644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516537, 37.735306, 33.970573>,  <39.453716, 38.098614, 33.815456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516537, 37.735306, 33.970573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174323, -0.361003, -0.916127,
		0.972083, 0.211481, 0.101635,
		0.157053, -0.908269, 0.387791,
		39.563652, 37.462826, 34.086910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179638, 37.874882, 33.622078>,  <39.453716, 38.098614, 33.815456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179638, 37.874882, 33.622078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996826, 37.530033, 33.709599>,  <39.887138, 37.323124, 33.762112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996826, 37.530033, 33.709599>,  <40.179638, 37.874882, 33.622078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996826, 37.530033, 33.709599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210855, -0.343996, -0.914990,
		0.864098, -0.372042, 0.338999,
		-0.457029, -0.862120, 0.218799,
		39.859718, 37.271397, 33.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672817, 37.385700, 33.462948>,  <40.179638, 37.874882, 33.622078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672817, 37.385700, 33.462948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311466, 37.215092, 33.445122>,  <40.094654, 37.112728, 33.434425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311466, 37.215092, 33.445122>,  <40.672817, 37.385700, 33.462948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311466, 37.215092, 33.445122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192540, -0.310552, -0.930852,
		0.383187, -0.849493, 0.362668,
		-0.903380, -0.426519, -0.044562,
		40.040451, 37.087135, 33.431751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756573, 36.740540, 33.210148>,  <40.672817, 37.385700, 33.462948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756573, 36.740540, 33.210148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361794, 36.775249, 33.155872>,  <40.124928, 36.796074, 33.123306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361794, 36.775249, 33.155872>,  <40.756573, 36.740540, 33.210148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361794, 36.775249, 33.155872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080678, -0.462826, -0.882770,
		-0.139401, -0.882192, 0.449783,
		-0.986944, 0.086772, -0.135692,
		40.065712, 36.801281, 33.115166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550747, 36.110909, 32.965378>,  <40.756573, 36.740540, 33.210148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550747, 36.110909, 32.965378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259945, 36.358501, 32.846500>,  <40.085464, 36.507057, 32.775173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259945, 36.358501, 32.846500>,  <40.550747, 36.110909, 32.965378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259945, 36.358501, 32.846500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007395, -0.425748, -0.904812,
		-0.686592, -0.660000, 0.304944,
		-0.727005, 0.618981, -0.297196,
		40.041843, 36.544197, 32.757343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179535, 35.713234, 32.444801>,  <40.550747, 36.110909, 32.965378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179535, 35.713234, 32.444801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048447, 36.087124, 32.389832>,  <39.969791, 36.311459, 32.356850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048447, 36.087124, 32.389832>,  <40.179535, 35.713234, 32.444801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048447, 36.087124, 32.389832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055898, -0.164382, -0.984812,
		-0.943118, -0.315066, 0.106122,
		-0.327725, 0.934726, -0.137420,
		39.950130, 36.367542, 32.348606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547012, 35.751728, 32.068497>,  <40.179535, 35.713234, 32.444801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547012, 35.751728, 32.068497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682915, 36.118355, 31.984144>,  <39.764458, 36.338329, 31.933533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682915, 36.118355, 31.984144>,  <39.547012, 35.751728, 32.068497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682915, 36.118355, 31.984144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213039, -0.143391, -0.966464,
		-0.916066, 0.373292, 0.146546,
		0.339760, 0.916565, -0.210882,
		39.784843, 36.393326, 31.920879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187656, 35.925583, 31.523636>,  <39.547012, 35.751728, 32.068497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187656, 35.925583, 31.523636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508266, 36.164482, 31.511883>,  <39.700630, 36.307819, 31.504831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508266, 36.164482, 31.511883>,  <39.187656, 35.925583, 31.523636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508266, 36.164482, 31.511883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076119, -0.150647, -0.985653,
		-0.593102, 0.787785, -0.166209,
		0.801521, 0.597244, -0.029384,
		39.748722, 36.343655, 31.503067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068123, 36.377735, 30.990278>,  <39.187656, 35.925583, 31.523636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068123, 36.377735, 30.990278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463089, 36.431919, 31.022903>,  <39.700069, 36.464428, 31.042479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463089, 36.431919, 31.022903>,  <39.068123, 36.377735, 30.990278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463089, 36.431919, 31.022903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129354, -0.395362, -0.909371,
		-0.090936, 0.908482, -0.407911,
		0.987420, 0.135459, 0.081563,
		39.759315, 36.472557, 31.047373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667309, 37.073128, 30.662846>,  <39.068123, 36.377735, 30.990278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667309, 37.073128, 30.662846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297695, 36.978157, 30.542980>,  <38.075928, 36.921177, 30.471060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297695, 36.978157, 30.542980>,  <38.667309, 37.073128, 30.662846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297695, 36.978157, 30.542980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382168, 0.551438, 0.741527,
		-0.010810, 0.799716, -0.600281,
		-0.924029, -0.237425, -0.299665,
		38.020485, 36.906929, 30.453081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286278, 37.573002, 31.026073>,  <38.667309, 37.073128, 30.662846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286278, 37.573002, 31.026073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982044, 37.337757, 30.916065>,  <37.799503, 37.196609, 30.850060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982044, 37.337757, 30.916065>,  <38.286278, 37.573002, 31.026073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982044, 37.337757, 30.916065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465409, 0.198541, 0.862541,
		-0.452669, 0.784031, -0.424720,
		-0.760582, -0.588114, -0.275022,
		37.753868, 37.161324, 30.833559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587872, 37.954231, 31.239325>,  <38.286278, 37.573002, 31.026073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587872, 37.954231, 31.239325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.501171, 37.566528, 31.192751>,  <37.449150, 37.333904, 31.164806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.501171, 37.566528, 31.192751>,  <37.587872, 37.954231, 31.239325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501171, 37.566528, 31.192751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588836, 0.034671, 0.807509,
		-0.778649, 0.243586, -0.578249,
		-0.216746, -0.969260, -0.116435,
		37.436146, 37.275749, 31.157820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795757, 37.823441, 31.212673>,  <37.587872, 37.954231, 31.239325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795757, 37.823441, 31.212673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010910, 37.510487, 31.338245>,  <37.140003, 37.322716, 31.413588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010910, 37.510487, 31.338245>,  <36.795757, 37.823441, 31.212673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010910, 37.510487, 31.338245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515404, -0.010517, 0.856883,
		-0.667111, -0.622705, -0.408902,
		0.537886, -0.782386, 0.313929,
		37.172276, 37.275772, 31.432425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338257, 37.614834, 31.658855>,  <36.795757, 37.823441, 31.212673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338257, 37.614834, 31.658855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651665, 37.372948, 31.716013>,  <36.839710, 37.227818, 31.750307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651665, 37.372948, 31.716013>,  <36.338257, 37.614834, 31.658855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651665, 37.372948, 31.716013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387758, -0.296148, 0.872892,
		-0.485531, -0.739337, -0.466520,
		0.783520, -0.604713, 0.142894,
		36.886723, 37.191536, 31.758881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109966, 36.940426, 31.746895>,  <36.338257, 37.614834, 31.658855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109966, 36.940426, 31.746895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.458210, 37.014805, 31.929087>,  <36.667156, 37.059433, 32.038403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.458210, 37.014805, 31.929087>,  <36.109966, 36.940426, 31.746895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458210, 37.014805, 31.929087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427767, -0.171191, 0.887530,
		0.243011, -0.967531, -0.069497,
		0.870610, 0.185951, 0.455479,
		36.719395, 37.070591, 32.065731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990643, 36.512604, 32.355717>,  <36.109966, 36.940426, 31.746895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990643, 36.512604, 32.355717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.311726, 36.726360, 32.461605>,  <36.504375, 36.854614, 32.525139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.311726, 36.726360, 32.461605>,  <35.990643, 36.512604, 32.355717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311726, 36.726360, 32.461605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147486, -0.252215, 0.956366,
		0.577844, -0.806727, -0.123640,
		0.802710, 0.534395, 0.264722,
		36.552540, 36.886681, 32.541023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277332, 36.075436, 32.793232>,  <35.990643, 36.512604, 32.355717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277332, 36.075436, 32.793232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.467804, 36.419716, 32.865284>,  <36.582085, 36.626286, 32.908516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.467804, 36.419716, 32.865284>,  <36.277332, 36.075436, 32.793232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467804, 36.419716, 32.865284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017570, -0.195486, 0.980549,
		0.879174, -0.470080, -0.077963,
		0.476177, 0.860704, 0.180126,
		36.610657, 36.677925, 32.919323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896378, 35.892685, 33.242161>,  <36.277332, 36.075436, 32.793232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896378, 35.892685, 33.242161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.766075, 36.264233, 33.312683>,  <36.687893, 36.487160, 33.354996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.766075, 36.264233, 33.312683>,  <36.896378, 35.892685, 33.242161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766075, 36.264233, 33.312683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004925, -0.184808, 0.982762,
		0.945441, 0.321009, 0.055628,
		-0.325756, 0.928870, 0.176306,
		36.668350, 36.542892, 33.365574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261871, 36.120693, 33.780739>,  <36.896378, 35.892685, 33.242161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261871, 36.120693, 33.780739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.917290, 36.323006, 33.762463>,  <36.710541, 36.444393, 33.751495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.917290, 36.323006, 33.762463>,  <37.261871, 36.120693, 33.780739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917290, 36.323006, 33.762463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142483, -0.154358, 0.977687,
		0.487443, 0.848740, 0.205037,
		-0.861451, 0.505781, -0.045690,
		36.658855, 36.474739, 33.748756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286713, 36.673237, 34.387707>,  <37.261871, 36.120693, 33.780739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286713, 36.673237, 34.387707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900017, 36.675560, 34.285435>,  <36.667999, 36.676952, 34.224072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900017, 36.675560, 34.285435>,  <37.286713, 36.673237, 34.387707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900017, 36.675560, 34.285435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255064, 0.051199, 0.965568,
		0.018694, 0.998672, -0.048016,
		-0.966744, 0.005803, -0.255682,
		36.609993, 36.677299, 34.208729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006374, 37.316673, 34.749111>,  <37.286713, 36.673237, 34.387707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006374, 37.316673, 34.749111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721828, 37.044262, 34.679649>,  <36.551102, 36.880814, 34.637970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721828, 37.044262, 34.679649>,  <37.006374, 37.316673, 34.749111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721828, 37.044262, 34.679649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434650, 0.232124, 0.870171,
		-0.552301, 0.694492, -0.461134,
		-0.711367, -0.681028, -0.173659,
		36.508419, 36.839954, 34.627552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.026684, 36.301521, 27.043808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797474, 35.978455, 27.099400>,  <38.659946, 35.784615, 27.132753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797474, 35.978455, 27.099400>,  <39.026684, 36.301521, 27.043808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797474, 35.978455, 27.099400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395178, 0.420874, 0.816517,
		-0.717965, 0.412966, -0.560344,
		-0.573028, -0.807666, 0.138978,
		38.625565, 35.736156, 27.141092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396717, 36.552872, 27.169121>,  <39.026684, 36.301521, 27.043808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396717, 36.552872, 27.169121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409870, 36.183392, 27.321798>,  <38.417763, 35.961704, 27.413404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409870, 36.183392, 27.321798>,  <38.396717, 36.552872, 27.169121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409870, 36.183392, 27.321798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427228, 0.332261, 0.840880,
		-0.903546, -0.190719, -0.383707,
		0.032881, -0.923704, 0.381693,
		38.419735, 35.906281, 27.436306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728695, 36.595379, 27.500269>,  <38.396717, 36.552872, 27.169121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728695, 36.595379, 27.500269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923367, 36.278492, 27.647528>,  <38.040169, 36.088360, 27.735884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923367, 36.278492, 27.647528>,  <37.728695, 36.595379, 27.500269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923367, 36.278492, 27.647528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303473, 0.241856, 0.921634,
		-0.819173, -0.560266, -0.122710,
		0.486682, -0.792217, 0.368147,
		38.069370, 36.040825, 27.757973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319206, 36.348534, 27.896669>,  <37.728695, 36.595379, 27.500269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319206, 36.348534, 27.896669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644440, 36.161961, 28.036003>,  <37.839581, 36.050018, 28.119602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644440, 36.161961, 28.036003>,  <37.319206, 36.348534, 27.896669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644440, 36.161961, 28.036003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281577, 0.208602, 0.936589,
		-0.509515, -0.859610, 0.038276,
		0.813086, -0.466429, 0.348333,
		37.888367, 36.022034, 28.140503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174030, 35.901329, 28.443962>,  <37.319206, 36.348534, 27.896669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174030, 35.901329, 28.443962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561375, 35.977745, 28.508183>,  <37.793781, 36.023594, 28.546715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561375, 35.977745, 28.508183>,  <37.174030, 35.901329, 28.443962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561375, 35.977745, 28.508183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185800, 0.122465, 0.974926,
		0.166595, -0.973911, 0.154087,
		0.968361, 0.191048, 0.160551,
		37.851883, 36.035057, 28.556349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282024, 35.603992, 29.001783>,  <37.174030, 35.901329, 28.443962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282024, 35.603992, 29.001783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593781, 35.853218, 28.975447>,  <37.780834, 36.002754, 28.959644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593781, 35.853218, 28.975447>,  <37.282024, 35.603992, 29.001783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593781, 35.853218, 28.975447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014506, 0.087112, 0.996093,
		0.626369, -0.777302, 0.058856,
		0.779392, 0.623068, -0.065840,
		37.827599, 36.040138, 28.955694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770477, 35.395737, 29.595505>,  <37.282024, 35.603992, 29.001783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770477, 35.395737, 29.595505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860256, 35.772533, 29.495680>,  <37.914124, 35.998611, 29.435785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860256, 35.772533, 29.495680>,  <37.770477, 35.395737, 29.595505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860256, 35.772533, 29.495680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067621, 0.240423, 0.968310,
		0.972137, -0.234209, -0.009736,
		0.224446, 0.941989, -0.249562,
		37.927589, 36.055130, 29.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244812, 35.716946, 30.158335>,  <37.770477, 35.395737, 29.595505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244812, 35.716946, 30.158335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139179, 36.057323, 29.976717>,  <38.075798, 36.261551, 29.867746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139179, 36.057323, 29.976717>,  <38.244812, 35.716946, 30.158335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139179, 36.057323, 29.976717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114404, 0.439797, 0.890781,
		0.957691, 0.287186, -0.018792,
		-0.264084, 0.850942, -0.454045,
		38.059956, 36.312607, 29.840504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639992, 36.280048, 30.366640>,  <38.244812, 35.716946, 30.158335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639992, 36.280048, 30.366640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287807, 36.415352, 30.233751>,  <38.076496, 36.496532, 30.154018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287807, 36.415352, 30.233751>,  <38.639992, 36.280048, 30.366640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287807, 36.415352, 30.233751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172223, 0.424671, 0.888816,
		0.441731, 0.839785, -0.315651,
		-0.880462, 0.338255, -0.332221,
		38.023670, 36.516827, 30.134085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378136, 36.513489, 30.331854>,  <38.639992, 36.280048, 30.366640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378136, 36.513489, 30.331854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696907, 36.354675, 30.513960>,  <39.888172, 36.259388, 30.623224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696907, 36.354675, 30.513960>,  <39.378136, 36.513489, 30.331854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696907, 36.354675, 30.513960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204793, -0.531454, -0.821959,
		0.568296, 0.748280, -0.342223,
		0.796932, -0.397031, 0.455266,
		39.935986, 36.235565, 30.650539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906940, 36.576118, 29.900293>,  <39.378136, 36.513489, 30.331854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906940, 36.576118, 29.900293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988865, 36.282455, 30.159235>,  <40.038021, 36.106258, 30.314600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988865, 36.282455, 30.159235>,  <39.906940, 36.576118, 29.900293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988865, 36.282455, 30.159235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231310, -0.606336, -0.760824,
		0.951078, 0.305563, 0.045635,
		0.204810, -0.734158, 0.647352,
		40.050308, 36.062206, 30.353441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514908, 36.461475, 29.765303>,  <39.906940, 36.576118, 29.900293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514908, 36.461475, 29.765303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414082, 36.125237, 29.957077>,  <40.353584, 35.923492, 30.072142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414082, 36.125237, 29.957077>,  <40.514908, 36.461475, 29.765303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414082, 36.125237, 29.957077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399890, -0.541636, -0.739405,
		0.881222, 0.005344, 0.472673,
		-0.252065, -0.840597, 0.479438,
		40.338463, 35.873058, 30.100908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088161, 36.127575, 29.700230>,  <40.514908, 36.461475, 29.765303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088161, 36.127575, 29.700230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814522, 35.856564, 29.808281>,  <40.650337, 35.693958, 29.873112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814522, 35.856564, 29.808281>,  <41.088161, 36.127575, 29.700230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814522, 35.856564, 29.808281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411179, -0.664120, -0.624401,
		0.602446, -0.316080, 0.732907,
		-0.684098, -0.677524, 0.270131,
		40.609291, 35.653305, 29.889320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473991, 35.435047, 29.747843>,  <41.088161, 36.127575, 29.700230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473991, 35.435047, 29.747843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081482, 35.363102, 29.720264>,  <40.845978, 35.319935, 29.703718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081482, 35.363102, 29.720264>,  <41.473991, 35.435047, 29.747843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081482, 35.363102, 29.720264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183250, -0.761323, -0.621938,
		0.059376, -0.622924, 0.780025,
		-0.981272, -0.179868, -0.068946,
		40.787102, 35.309143, 29.699581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449078, 34.720535, 29.925419>,  <41.473991, 35.435047, 29.747843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449078, 34.720535, 29.925419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119080, 34.811508, 29.718473>,  <40.921082, 34.866093, 29.594307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119080, 34.811508, 29.718473>,  <41.449078, 34.720535, 29.925419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119080, 34.811508, 29.718473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166294, -0.777231, -0.606842,
		-0.540124, -0.586674, 0.603390,
		-0.824992, 0.227430, -0.517362,
		40.871582, 34.879738, 29.563265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058506, 34.154202, 29.927996>,  <41.449078, 34.720535, 29.925419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058506, 34.154202, 29.927996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944786, 34.372375, 29.612610>,  <40.876556, 34.503281, 29.423378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944786, 34.372375, 29.612610>,  <41.058506, 34.154202, 29.927996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944786, 34.372375, 29.612610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175375, -0.778937, -0.602081,
		-0.942560, -0.309446, 0.125794,
		-0.284297, 0.545436, -0.788463,
		40.859497, 34.536007, 29.376070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614212, 33.738983, 29.490643>,  <41.058506, 34.154202, 29.927996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614212, 33.738983, 29.490643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758930, 34.030735, 29.258396>,  <40.845760, 34.205784, 29.119049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758930, 34.030735, 29.258396>,  <40.614212, 33.738983, 29.490643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758930, 34.030735, 29.258396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130378, -0.656271, -0.743175,
		-0.923097, 0.193176, -0.332528,
		0.361792, 0.729377, -0.580616,
		40.867466, 34.249550, 29.084211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288662, 33.577454, 28.949986>,  <40.614212, 33.738983, 29.490643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288662, 33.577454, 28.949986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579933, 33.817417, 28.817404>,  <40.754696, 33.961395, 28.737854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579933, 33.817417, 28.817404>,  <40.288662, 33.577454, 28.949986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579933, 33.817417, 28.817404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056053, -0.534107, -0.843556,
		-0.683090, 0.595682, -0.422553,
		0.728180, 0.599911, -0.331454,
		40.798386, 33.997391, 28.717968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175243, 33.631016, 28.217791>,  <40.288662, 33.577454, 28.949986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175243, 33.631016, 28.217791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560760, 33.725658, 28.266981>,  <40.792068, 33.782444, 28.296495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560760, 33.725658, 28.266981>,  <40.175243, 33.631016, 28.217791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560760, 33.725658, 28.266981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235246, -0.537286, -0.809928,
		-0.125564, 0.809530, -0.573493,
		0.963791, 0.236610, 0.122975,
		40.849899, 33.796642, 28.303873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358189, 33.586933, 27.560467>,  <40.175243, 33.631016, 28.217791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358189, 33.586933, 27.560467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714886, 33.641407, 27.733089>,  <40.928905, 33.674091, 27.836662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714886, 33.641407, 27.733089>,  <40.358189, 33.586933, 27.560467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714886, 33.641407, 27.733089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450590, -0.355526, -0.818883,
		0.041908, 0.924691, -0.378404,
		0.891747, 0.136187, 0.431556,
		40.982410, 33.682262, 27.862556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741230, 34.077877, 27.130058>,  <40.358189, 33.586933, 27.560467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741230, 34.077877, 27.130058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984035, 33.821064, 27.317389>,  <41.129719, 33.666977, 27.429787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984035, 33.821064, 27.317389>,  <40.741230, 34.077877, 27.130058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984035, 33.821064, 27.317389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374385, -0.288785, -0.881158,
		0.700977, 0.710210, 0.065070,
		0.607015, -0.642032, 0.468324,
		41.166142, 33.628456, 27.457886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473980, 34.114620, 26.727104>,  <40.741230, 34.077877, 27.130058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473980, 34.114620, 26.727104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467972, 33.768044, 26.926723>,  <41.464367, 33.560097, 27.046495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467972, 33.768044, 26.926723>,  <41.473980, 34.114620, 26.727104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467972, 33.768044, 26.926723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551880, -0.423382, -0.718454,
		0.833788, 0.264621, 0.484534,
		-0.015025, -0.866443, 0.499050,
		41.463463, 33.508110, 27.076439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126598, 33.800758, 26.657391>,  <41.473980, 34.114620, 26.727104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126598, 33.800758, 26.657391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881252, 33.498276, 26.748539>,  <41.734043, 33.316784, 26.803228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881252, 33.498276, 26.748539>,  <42.126598, 33.800758, 26.657391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881252, 33.498276, 26.748539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408577, -0.550727, -0.727849,
		0.675902, -0.353336, 0.646769,
		-0.613369, -0.756210, 0.227873,
		41.697243, 33.271412, 26.816900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.008869, 29.658655, 27.325171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297485, 29.931885, 27.279932>,  <35.470654, 30.095823, 27.252789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297485, 29.931885, 27.279932>,  <35.008869, 29.658655, 27.325171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297485, 29.931885, 27.279932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126957, 0.291101, 0.948231,
		0.680635, -0.669827, 0.296762,
		0.721539, 0.683075, -0.113094,
		35.513947, 30.136806, 27.246004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591183, 29.661963, 27.887300>,  <35.008869, 29.658655, 27.325171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591183, 29.661963, 27.887300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.545219, 30.032337, 27.743393>,  <35.517643, 30.254562, 27.657049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.545219, 30.032337, 27.743393>,  <35.591183, 29.661963, 27.887300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545219, 30.032337, 27.743393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025698, 0.359276, 0.932878,
		0.993044, 0.116438, -0.017488,
		-0.114906, 0.925939, -0.359769,
		35.510746, 30.310120, 27.635462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950211, 30.033356, 28.308022>,  <35.591183, 29.661963, 27.887300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950211, 30.033356, 28.308022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718735, 30.298883, 28.118511>,  <35.579849, 30.458200, 28.004805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718735, 30.298883, 28.118511>,  <35.950211, 30.033356, 28.308022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718735, 30.298883, 28.118511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022542, 0.593729, 0.804349,
		0.815237, 0.454789, -0.358548,
		-0.578689, 0.663817, -0.473777,
		35.545128, 30.498028, 27.976377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112568, 30.608931, 28.706690>,  <35.950211, 30.033356, 28.308022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112568, 30.608931, 28.706690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790016, 30.712254, 28.493887>,  <35.596485, 30.774248, 28.366205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790016, 30.712254, 28.493887>,  <36.112568, 30.608931, 28.706690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790016, 30.712254, 28.493887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220055, 0.703927, 0.675324,
		0.548936, 0.661637, -0.510789,
		-0.806378, 0.258308, -0.532007,
		35.548103, 30.789745, 28.334284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206642, 31.296541, 28.651707>,  <36.112568, 30.608931, 28.706690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206642, 31.296541, 28.651707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816128, 31.211693, 28.634438>,  <35.581818, 31.160784, 28.624077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816128, 31.211693, 28.634438>,  <36.206642, 31.296541, 28.651707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816128, 31.211693, 28.634438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156982, 0.556448, 0.815918,
		-0.149048, 0.803350, -0.576554,
		-0.976290, -0.212119, -0.043174,
		35.523239, 31.148058, 28.621485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838551, 31.973755, 28.840521>,  <36.206642, 31.296541, 28.651707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838551, 31.973755, 28.840521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581127, 31.671909, 28.891731>,  <35.426674, 31.490803, 28.922457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581127, 31.671909, 28.891731>,  <35.838551, 31.973755, 28.840521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581127, 31.671909, 28.891731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228055, 0.348720, 0.909057,
		-0.730630, 0.555837, -0.396516,
		-0.643561, -0.754612, 0.128024,
		35.388058, 31.445526, 28.930138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171288, 32.289825, 28.902193>,  <35.838551, 31.973755, 28.840521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171288, 32.289825, 28.902193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160568, 31.924347, 29.064396>,  <35.154137, 31.705059, 29.161716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160568, 31.924347, 29.064396>,  <35.171288, 32.289825, 28.902193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160568, 31.924347, 29.064396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293953, 0.394921, 0.870419,
		-0.955444, -0.095870, -0.279170,
		-0.026803, -0.913699, 0.405506,
		35.152527, 31.650238, 29.186049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547791, 32.261089, 29.292116>,  <35.171288, 32.289825, 28.902193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547791, 32.261089, 29.292116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803516, 31.990377, 29.438129>,  <34.956951, 31.827950, 29.525738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803516, 31.990377, 29.438129>,  <34.547791, 32.261089, 29.292116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803516, 31.990377, 29.438129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260564, 0.255962, 0.930908,
		-0.723455, -0.690254, -0.012706,
		0.639311, -0.676781, 0.365033,
		34.995308, 31.787344, 29.547640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115227, 31.963810, 29.909838>,  <34.547791, 32.261089, 29.292116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115227, 31.963810, 29.909838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493053, 31.835510, 29.937891>,  <34.719749, 31.758532, 29.954723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493053, 31.835510, 29.937891>,  <34.115227, 31.963810, 29.909838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493053, 31.835510, 29.937891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090733, -0.049719, 0.994633,
		-0.315540, -0.945859, -0.076065,
		0.944564, -0.320748, 0.070132,
		34.776424, 31.739286, 29.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163765, 31.309006, 30.324047>,  <34.115227, 31.963810, 29.909838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163765, 31.309006, 30.324047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498890, 31.526997, 30.337187>,  <34.699963, 31.657791, 30.345070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498890, 31.526997, 30.337187>,  <34.163765, 31.309006, 30.324047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498890, 31.526997, 30.337187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031575, -0.108431, 0.993602,
		0.545051, -0.831411, -0.108052,
		0.837808, 0.544976, 0.032849,
		34.750233, 31.690489, 30.347042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486526, 30.989489, 30.980291>,  <34.163765, 31.309006, 30.324047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486526, 30.989489, 30.980291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655487, 31.337862, 30.879852>,  <34.756863, 31.546886, 30.819590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655487, 31.337862, 30.879852>,  <34.486526, 30.989489, 30.980291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655487, 31.337862, 30.879852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006574, 0.279959, 0.959990,
		0.906386, -0.403849, 0.123980,
		0.422401, 0.870936, -0.251095,
		34.782207, 31.599142, 30.804523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038727, 31.089991, 31.447968>,  <34.486526, 30.989489, 30.980291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038727, 31.089991, 31.447968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998497, 31.457140, 31.294399>,  <34.974358, 31.677429, 31.202257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998497, 31.457140, 31.294399>,  <35.038727, 31.089991, 31.447968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998497, 31.457140, 31.294399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236201, 0.396876, 0.886961,
		0.966485, -0.001473, -0.256719,
		-0.100579, 0.917871, -0.383922,
		34.968323, 31.732502, 31.179222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561558, 31.570786, 31.711924>,  <35.038727, 31.089991, 31.447968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561558, 31.570786, 31.711924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.266575, 31.818970, 31.605204>,  <35.089584, 31.967880, 31.541172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.266575, 31.818970, 31.605204>,  <35.561558, 31.570786, 31.711924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266575, 31.818970, 31.605204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064755, 0.458166, 0.886505,
		0.672282, 0.636483, -0.378056,
		-0.737458, 0.620462, -0.266801,
		35.045338, 32.005108, 31.525164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780239, 32.184189, 31.947231>,  <35.561558, 31.570786, 31.711924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780239, 32.184189, 31.947231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386673, 32.225620, 31.889006>,  <35.150536, 32.250481, 31.854071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386673, 32.225620, 31.889006>,  <35.780239, 32.184189, 31.947231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386673, 32.225620, 31.889006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080648, 0.469532, 0.879224,
		0.159416, 0.876819, -0.453625,
		-0.983912, 0.103579, -0.145564,
		35.091499, 32.256695, 31.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312939, 32.680984, 31.711237>,  <35.780239, 32.184189, 31.947231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312939, 32.680984, 31.711237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.661201, 32.634682, 31.902468>,  <36.870159, 32.606899, 32.017204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.661201, 32.634682, 31.902468>,  <36.312939, 32.680984, 31.711237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661201, 32.634682, 31.902468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281298, -0.680136, -0.676968,
		0.403518, 0.723889, -0.559605,
		0.870658, -0.115753, 0.478076,
		36.922398, 32.599957, 32.045891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817593, 32.564468, 31.244825>,  <36.312939, 32.680984, 31.711237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817593, 32.564468, 31.244825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024746, 32.411118, 31.550720>,  <37.149036, 32.319107, 31.734257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024746, 32.411118, 31.550720>,  <36.817593, 32.564468, 31.244825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024746, 32.411118, 31.550720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540638, -0.546116, -0.639897,
		0.662955, 0.744837, -0.075557,
		0.517882, -0.383374, 0.764737,
		37.180111, 32.296104, 31.780142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538548, 32.616619, 31.042028>,  <36.817593, 32.564468, 31.244825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538548, 32.616619, 31.042028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494194, 32.319527, 31.306168>,  <37.467583, 32.141273, 31.464651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494194, 32.319527, 31.306168>,  <37.538548, 32.616619, 31.042028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494194, 32.319527, 31.306168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447907, -0.630484, -0.633931,
		0.887178, 0.225485, 0.402581,
		-0.110879, -0.742729, 0.660348,
		37.460930, 32.096706, 31.504272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119663, 32.246746, 30.918324>,  <37.538548, 32.616619, 31.042028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119663, 32.246746, 30.918324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885715, 31.993942, 31.121691>,  <37.745346, 31.842260, 31.243711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885715, 31.993942, 31.121691>,  <38.119663, 32.246746, 30.918324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885715, 31.993942, 31.121691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288464, -0.747898, -0.597860,
		0.758098, -0.203011, 0.619736,
		-0.584872, -0.632008, 0.508419,
		37.710255, 31.804340, 31.274216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546032, 31.633579, 31.105122>,  <38.119663, 32.246746, 30.918324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546032, 31.633579, 31.105122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166317, 31.510176, 31.129402>,  <37.938488, 31.436134, 31.143970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166317, 31.510176, 31.129402>,  <38.546032, 31.633579, 31.105122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166317, 31.510176, 31.129402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244843, -0.846429, -0.472874,
		0.197265, -0.434029, 0.879037,
		-0.949283, -0.308507, 0.060702,
		37.881531, 31.417624, 31.147614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627232, 30.912189, 31.306389>,  <38.546032, 31.633579, 31.105122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627232, 30.912189, 31.306389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278248, 30.979200, 31.122757>,  <38.068859, 31.019407, 31.012577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278248, 30.979200, 31.122757>,  <38.627232, 30.912189, 31.306389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278248, 30.979200, 31.122757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209348, -0.720723, -0.660857,
		-0.441580, -0.672677, 0.593728,
		-0.872457, 0.167526, -0.459081,
		38.016510, 31.029459, 30.985033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206116, 30.241779, 31.346777>,  <38.627232, 30.912189, 31.306389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206116, 30.241779, 31.346777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037991, 30.439180, 31.042200>,  <37.937115, 30.557621, 30.859453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037991, 30.439180, 31.042200>,  <38.206116, 30.241779, 31.346777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037991, 30.439180, 31.042200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203578, -0.766486, -0.609143,
		-0.884249, -0.411041, 0.221695,
		-0.420309, 0.493502, -0.761444,
		37.911900, 30.587231, 30.813766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867283, 29.735861, 31.018038>,  <38.206116, 30.241779, 31.346777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867283, 29.735861, 31.018038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862137, 30.028774, 30.745687>,  <37.859051, 30.204523, 30.582277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862137, 30.028774, 30.745687>,  <37.867283, 29.735861, 31.018038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862137, 30.028774, 30.745687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137047, -0.673215, -0.726636,
		-0.990481, -0.102661, -0.091696,
		-0.012866, 0.732286, -0.680876,
		37.858276, 30.248461, 30.541424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305614, 29.563915, 30.480013>,  <37.867283, 29.735861, 31.018038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305614, 29.563915, 30.480013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567387, 29.821510, 30.321524>,  <37.724449, 29.976068, 30.226429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567387, 29.821510, 30.321524>,  <37.305614, 29.563915, 30.480013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567387, 29.821510, 30.321524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034663, -0.549025, -0.835087,
		-0.755324, 0.532774, -0.381623,
		0.654434, 0.643990, -0.396224,
		37.763718, 30.014708, 30.202656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135799, 29.502417, 29.832489>,  <37.305614, 29.563915, 30.480013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135799, 29.502417, 29.832489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504841, 29.656666, 29.828482>,  <37.726265, 29.749216, 29.826077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504841, 29.656666, 29.828482>,  <37.135799, 29.502417, 29.832489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504841, 29.656666, 29.828482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198426, -0.496685, -0.844945,
		-0.330808, 0.777559, -0.534760,
		0.922601, 0.385625, -0.010020,
		37.781620, 29.772354, 29.825476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189774, 29.865993, 29.155718>,  <37.135799, 29.502417, 29.832489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189774, 29.865993, 29.155718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530403, 29.735527, 29.319883>,  <37.734779, 29.657248, 29.418383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530403, 29.735527, 29.319883>,  <37.189774, 29.865993, 29.155718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530403, 29.735527, 29.319883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311942, -0.313932, -0.896738,
		0.421330, 0.891662, -0.165591,
		0.851571, -0.326168, 0.410416,
		37.785873, 29.637676, 29.443008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751225, 30.305740, 28.915300>,  <37.189774, 29.865993, 29.155718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751225, 30.305740, 28.915300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900688, 29.956446, 29.040415>,  <37.990368, 29.746868, 29.115482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900688, 29.956446, 29.040415>,  <37.751225, 30.305740, 28.915300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900688, 29.956446, 29.040415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194756, -0.255834, -0.946900,
		0.906888, 0.414738, 0.074472,
		0.373663, -0.873236, 0.312785,
		38.012787, 29.694475, 29.134251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331261, 30.166092, 28.531382>,  <37.751225, 30.305740, 28.915300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331261, 30.166092, 28.531382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245090, 29.795927, 28.656090>,  <38.193390, 29.573828, 28.730915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245090, 29.795927, 28.656090>,  <38.331261, 30.166092, 28.531382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245090, 29.795927, 28.656090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217730, -0.356750, -0.908473,
		0.951937, -0.127827, 0.278344,
		-0.215426, -0.925413, 0.311772,
		38.180462, 29.518303, 28.749622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900734, 29.831312, 28.652229>,  <38.331261, 30.166092, 28.531382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900734, 29.831312, 28.652229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.615917, 29.571667, 28.545160>,  <38.445026, 29.415880, 28.480919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.615917, 29.571667, 28.545160>,  <38.900734, 29.831312, 28.652229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615917, 29.571667, 28.545160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525687, -0.240123, -0.816084,
		0.465457, -0.721798, 0.512209,
		-0.712041, -0.649114, -0.267672,
		38.402306, 29.376932, 28.464859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535172, 29.539209, 28.922915>,  <38.900734, 29.831312, 28.652229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535172, 29.539209, 28.922915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.924137, 29.524048, 29.014984>,  <40.157516, 29.514950, 29.070225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.924137, 29.524048, 29.014984>,  <39.535172, 29.539209, 28.922915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924137, 29.524048, 29.014984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173430, 0.542412, 0.822017,
		-0.156008, -0.839257, 0.520873,
		0.972411, -0.037906, 0.230173,
		40.215862, 29.512676, 29.084036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565445, 29.423843, 29.552671>,  <39.535172, 29.539209, 28.922915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565445, 29.423843, 29.552671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.945621, 29.547863, 29.543522>,  <40.173729, 29.622274, 29.538033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.945621, 29.547863, 29.543522>,  <39.565445, 29.423843, 29.552671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945621, 29.547863, 29.543522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102653, 0.382416, 0.918271,
		0.293457, -0.870418, 0.395293,
		0.950445, 0.310051, -0.022872,
		40.230755, 29.640879, 29.536661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871681, 29.271233, 30.221260>,  <39.565445, 29.423843, 29.552671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871681, 29.271233, 30.221260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080162, 29.569294, 30.054842>,  <40.205250, 29.748131, 29.954990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080162, 29.569294, 30.054842>,  <39.871681, 29.271233, 30.221260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080162, 29.569294, 30.054842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093304, 0.434824, 0.895669,
		0.848317, -0.505644, 0.157105,
		0.521203, 0.745153, -0.416048,
		40.236523, 29.792839, 29.930027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374878, 29.442078, 30.790516>,  <39.871681, 29.271233, 30.221260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374878, 29.442078, 30.790516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397545, 29.741829, 30.526630>,  <40.411144, 29.921680, 30.368299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397545, 29.741829, 30.526630>,  <40.374878, 29.442078, 30.790516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397545, 29.741829, 30.526630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230271, 0.633148, 0.738985,
		0.971475, -0.193788, -0.136683,
		0.056666, 0.749379, -0.659712,
		40.414543, 29.966642, 30.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000416, 29.884495, 30.774637>,  <40.374878, 29.442078, 30.790516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000416, 29.884495, 30.774637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749146, 30.159906, 30.629683>,  <40.598385, 30.325153, 30.542709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749146, 30.159906, 30.629683>,  <41.000416, 29.884495, 30.774637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749146, 30.159906, 30.629683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282895, 0.635985, 0.717979,
		0.724824, 0.348497, -0.594290,
		-0.628173, 0.688530, -0.362389,
		40.560692, 30.366465, 30.520966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424732, 30.635187, 30.826572>,  <41.000416, 29.884495, 30.774637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424732, 30.635187, 30.826572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.038879, 30.715197, 30.757906>,  <40.807365, 30.763203, 30.716705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.038879, 30.715197, 30.757906>,  <41.424732, 30.635187, 30.826572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038879, 30.715197, 30.757906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010805, 0.680729, 0.732456,
		0.263366, 0.704698, -0.658817,
		-0.964636, 0.200023, -0.171667,
		40.749489, 30.775204, 30.706406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468029, 31.335451, 30.892021>,  <41.424732, 30.635187, 30.826572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468029, 31.335451, 30.892021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078857, 31.243237, 30.898588>,  <40.845356, 31.187908, 30.902529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078857, 31.243237, 30.898588>,  <41.468029, 31.335451, 30.892021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078857, 31.243237, 30.898588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142866, 0.655732, 0.741354,
		-0.181673, 0.718936, -0.670914,
		-0.972926, -0.230534, 0.016418,
		40.786980, 31.174076, 30.903513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173233, 32.018742, 30.937620>,  <41.468029, 31.335451, 30.892021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173233, 32.018742, 30.937620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933517, 31.732479, 31.081114>,  <40.789688, 31.560720, 31.167210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933517, 31.732479, 31.081114>,  <41.173233, 32.018742, 30.937620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933517, 31.732479, 31.081114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413200, 0.660339, 0.627071,
		-0.685655, 0.227565, -0.691442,
		-0.599285, -0.715658, 0.358735,
		40.753731, 31.517782, 31.188734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539692, 32.276749, 30.876200>,  <41.173233, 32.018742, 30.937620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539692, 32.276749, 30.876200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524529, 31.986635, 31.151161>,  <40.515430, 31.812567, 31.316137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524529, 31.986635, 31.151161>,  <40.539692, 32.276749, 30.876200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524529, 31.986635, 31.151161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482777, 0.615584, 0.622883,
		-0.874923, -0.308249, -0.373487,
		-0.037910, -0.725285, 0.687404,
		40.513157, 31.769049, 31.357382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906048, 32.327427, 31.181824>,  <40.539692, 32.276749, 30.876200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906048, 32.327427, 31.181824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.108349, 32.101032, 31.442245>,  <40.229729, 31.965197, 31.598497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.108349, 32.101032, 31.442245>,  <39.906048, 32.327427, 31.181824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108349, 32.101032, 31.442245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424400, 0.493808, 0.758972,
		-0.751062, -0.660162, 0.009542,
		0.505757, -0.565986, 0.651053,
		40.260075, 31.931236, 31.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410145, 32.089161, 31.787621>,  <39.906048, 32.327427, 31.181824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410145, 32.089161, 31.787621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777924, 32.065346, 31.943092>,  <39.998592, 32.051056, 32.036377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777924, 32.065346, 31.943092>,  <39.410145, 32.089161, 31.787621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777924, 32.065346, 31.943092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300077, 0.532548, 0.791421,
		-0.254110, -0.844304, 0.471784,
		0.919446, -0.059536, 0.388682,
		40.053757, 32.047485, 32.059696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324409, 31.911327, 32.449520>,  <39.410145, 32.089161, 31.787621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324409, 31.911327, 32.449520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.706985, 32.027645, 32.459740>,  <39.936531, 32.097435, 32.465874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.706985, 32.027645, 32.459740>,  <39.324409, 31.911327, 32.449520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706985, 32.027645, 32.459740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117848, 0.304561, 0.945174,
		0.267066, -0.907019, 0.325565,
		0.956445, 0.290791, 0.025553,
		39.993919, 32.114883, 32.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507801, 31.653631, 33.102409>,  <39.324409, 31.911327, 32.449520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507801, 31.653631, 33.102409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755550, 31.946161, 32.988194>,  <39.904202, 32.121681, 32.919662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755550, 31.946161, 32.988194>,  <39.507801, 31.653631, 33.102409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755550, 31.946161, 32.988194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268187, 0.538913, 0.798529,
		0.737868, -0.418011, 0.529922,
		0.619375, 0.731328, -0.285541,
		39.941364, 32.165558, 32.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944622, 31.790710, 33.681705>,  <39.507801, 31.653631, 33.102409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944622, 31.790710, 33.681705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980209, 32.125420, 33.465595>,  <40.001560, 32.326244, 33.335930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980209, 32.125420, 33.465595>,  <39.944622, 31.790710, 33.681705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980209, 32.125420, 33.465595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161243, 0.547369, 0.821211,
		0.982897, 0.014054, 0.183622,
		0.088967, 0.836773, -0.540273,
		40.006901, 32.376453, 33.303513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.593872, 33.118118, 26.894215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.238823, 32.992939, 26.759047>,  <42.025795, 32.917831, 26.677946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.238823, 32.992939, 26.759047>,  <42.593872, 33.118118, 26.894215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238823, 32.992939, 26.759047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460083, -0.568737, -0.681808,
		0.021180, -0.760661, 0.648804,
		-0.887623, -0.312944, -0.337921,
		41.972534, 32.899055, 26.657671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823383, 32.503002, 26.645767>,  <42.593872, 33.118118, 26.894215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823383, 32.503002, 26.645767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456081, 32.531494, 26.489960>,  <42.235699, 32.548588, 26.396475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456081, 32.531494, 26.489960>,  <42.823383, 32.503002, 26.645767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456081, 32.531494, 26.489960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272996, -0.598664, -0.753043,
		-0.286831, -0.797827, 0.530283,
		-0.918260, 0.071231, -0.389519,
		42.180603, 32.552864, 26.373104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554146, 31.767923, 26.440697>,  <42.823383, 32.503002, 26.645767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554146, 31.767923, 26.440697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.299896, 31.991537, 26.227730>,  <42.147346, 32.125706, 26.099951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.299896, 31.991537, 26.227730>,  <42.554146, 31.767923, 26.440697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299896, 31.991537, 26.227730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097977, -0.625665, -0.773914,
		-0.765759, -0.544081, 0.342914,
		-0.635621, 0.559034, -0.532416,
		42.109211, 32.159248, 26.068005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135155, 31.305176, 26.154903>,  <42.554146, 31.767923, 26.440697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135155, 31.305176, 26.154903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.105679, 31.631142, 25.924953>,  <42.087994, 31.826721, 25.786983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.105679, 31.631142, 25.924953>,  <42.135155, 31.305176, 26.154903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105679, 31.631142, 25.924953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074901, -0.570293, -0.818020,
		-0.994465, -0.103337, -0.019015,
		-0.073687, 0.814916, -0.574876,
		42.083572, 31.875616, 25.752491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588905, 31.194241, 25.751959>,  <42.135155, 31.305176, 26.154903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588905, 31.194241, 25.751959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.812897, 31.473719, 25.573860>,  <41.947292, 31.641405, 25.467001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.812897, 31.473719, 25.573860>,  <41.588905, 31.194241, 25.751959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812897, 31.473719, 25.573860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034469, -0.517299, -0.855110,
		-0.827787, 0.494194, -0.265595,
		0.559982, 0.698695, -0.445247,
		41.980892, 31.683327, 25.440287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219223, 31.312969, 25.141239>,  <41.588905, 31.194241, 25.751959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219223, 31.312969, 25.141239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.599812, 31.426512, 25.093710>,  <41.828167, 31.494638, 25.065193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.599812, 31.426512, 25.093710>,  <41.219223, 31.312969, 25.141239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599812, 31.426512, 25.093710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012577, -0.349939, -0.936688,
		-0.307466, 0.892731, -0.329388,
		0.951476, 0.283857, -0.118822,
		41.885254, 31.511669, 25.058064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153416, 31.409374, 24.469603>,  <41.219223, 31.312969, 25.141239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153416, 31.409374, 24.469603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547577, 31.394737, 24.536118>,  <41.784073, 31.385954, 24.576027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547577, 31.394737, 24.536118>,  <41.153416, 31.409374, 24.469603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547577, 31.394737, 24.536118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148423, -0.293929, -0.944233,
		0.083429, 0.955126, -0.284206,
		0.985398, -0.036594, 0.166285,
		41.843197, 31.383759, 24.586002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568798, 31.526697, 23.832321>,  <41.153416, 31.409374, 24.469603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568798, 31.526697, 23.832321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.891293, 31.401365, 24.033045>,  <42.084789, 31.326166, 24.153479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.891293, 31.401365, 24.033045>,  <41.568798, 31.526697, 23.832321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891293, 31.401365, 24.033045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203224, -0.649927, -0.732322,
		0.555598, 0.692402, -0.460316,
		0.806232, -0.313330, 0.501811,
		42.133163, 31.307367, 24.183588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129059, 31.461443, 23.374781>,  <41.568798, 31.526697, 23.832321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129059, 31.461443, 23.374781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.207447, 31.207018, 23.673315>,  <42.254478, 31.054363, 23.852436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.207447, 31.207018, 23.673315>,  <42.129059, 31.461443, 23.374781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207447, 31.207018, 23.673315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270852, -0.696378, -0.664603,
		0.942463, 0.332387, 0.035812,
		0.195966, -0.636064, 0.746338,
		42.266235, 31.016199, 23.897217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794304, 31.120213, 23.221497>,  <42.129059, 31.461443, 23.374781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794304, 31.120213, 23.221497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.604820, 30.869070, 23.468527>,  <42.491131, 30.718386, 23.616745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.604820, 30.869070, 23.468527>,  <42.794304, 31.120213, 23.221497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604820, 30.869070, 23.468527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291558, -0.773507, -0.562743,
		0.831019, -0.086519, 0.549474,
		-0.473710, -0.627854, 0.617574,
		42.462708, 30.680714, 23.653799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167831, 30.542358, 23.125368>,  <42.794304, 31.120213, 23.221497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167831, 30.542358, 23.125368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.838383, 30.391211, 23.294535>,  <42.640713, 30.300522, 23.396034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.838383, 30.391211, 23.294535>,  <43.167831, 30.542358, 23.125368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838383, 30.391211, 23.294535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087184, -0.821202, -0.563938,
		0.560395, -0.427602, 0.709306,
		-0.823624, -0.377868, 0.422917,
		42.591297, 30.277849, 23.421410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213284, 29.864298, 23.465652>,  <43.167831, 30.542358, 23.125368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213284, 29.864298, 23.465652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832687, 29.907965, 23.350588>,  <42.604328, 29.934164, 23.281549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832687, 29.907965, 23.350588>,  <43.213284, 29.864298, 23.465652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832687, 29.907965, 23.350588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090722, -0.793831, -0.601333,
		-0.293998, -0.598260, 0.745419,
		-0.951491, 0.109165, -0.287660,
		42.547241, 29.940714, 23.264290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864796, 29.190069, 23.390169>,  <43.213284, 29.864298, 23.465652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864796, 29.190069, 23.390169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.703182, 29.448856, 23.131498>,  <42.606216, 29.604128, 22.976295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.703182, 29.448856, 23.131498>,  <42.864796, 29.190069, 23.390169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703182, 29.448856, 23.131498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417068, -0.498906, -0.759702,
		-0.814133, -0.576652, -0.068255,
		-0.404031, 0.646966, -0.646679,
		42.581974, 29.642946, 22.937494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661133, 28.404789, 23.513231>,  <42.864796, 29.190069, 23.390169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661133, 28.404789, 23.513231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.339249, 28.183245, 23.598719>,  <42.146118, 28.050318, 23.650011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.339249, 28.183245, 23.598719>,  <42.661133, 28.404789, 23.513231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339249, 28.183245, 23.598719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036860, 0.312695, 0.949138,
		-0.592518, 0.771662, -0.231215,
		-0.804714, -0.553859, 0.213720,
		42.097836, 28.017088, 23.662834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583542, 28.665159, 24.186913>,  <42.661133, 28.404789, 23.513231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583542, 28.665159, 24.186913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.336060, 28.351484, 24.167923>,  <42.187572, 28.163279, 24.156530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.336060, 28.351484, 24.167923>,  <42.583542, 28.665159, 24.186913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336060, 28.351484, 24.167923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199472, 0.098358, 0.974955,
		-0.759879, 0.612678, -0.217278,
		-0.618704, -0.784188, -0.047472,
		42.150448, 28.116228, 24.153681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945099, 28.855284, 24.428085>,  <42.583542, 28.665159, 24.186913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945099, 28.855284, 24.428085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.037834, 28.471930, 24.494719>,  <42.093475, 28.241917, 24.534698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.037834, 28.471930, 24.494719>,  <41.945099, 28.855284, 24.428085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037834, 28.471930, 24.494719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273370, 0.100159, 0.956680,
		-0.933553, -0.267330, -0.238774,
		0.231834, -0.958386, 0.166583,
		42.107384, 28.184414, 24.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362080, 28.569448, 24.621975>,  <41.945099, 28.855284, 24.428085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362080, 28.569448, 24.621975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671795, 28.359955, 24.764065>,  <41.857624, 28.234259, 24.849319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671795, 28.359955, 24.764065>,  <41.362080, 28.569448, 24.621975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671795, 28.359955, 24.764065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332644, 0.140691, 0.932499,
		-0.538357, -0.840185, -0.065281,
		0.774286, -0.523733, 0.355225,
		41.904079, 28.202835, 24.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025208, 28.024168, 24.998409>,  <41.362080, 28.569448, 24.621975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025208, 28.024168, 24.998409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401184, 28.097574, 25.113535>,  <41.626770, 28.141619, 25.182611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401184, 28.097574, 25.113535>,  <41.025208, 28.024168, 24.998409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401184, 28.097574, 25.113535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319679, 0.177654, 0.930723,
		0.119667, -0.966831, 0.225649,
		0.939939, 0.183512, 0.287816,
		41.683167, 28.152630, 25.199879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969582, 27.709497, 25.621086>,  <41.025208, 28.024168, 24.998409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969582, 27.709497, 25.621086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312859, 27.913076, 25.647873>,  <41.518826, 28.035225, 25.663944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312859, 27.913076, 25.647873>,  <40.969582, 27.709497, 25.621086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312859, 27.913076, 25.647873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264786, 0.327124, 0.907126,
		0.439774, -0.796217, 0.415497,
		0.858188, 0.508949, 0.066967,
		41.570316, 28.065762, 25.667963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155502, 27.624968, 26.239054>,  <40.969582, 27.709497, 25.621086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155502, 27.624968, 26.239054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.393280, 27.935848, 26.156506>,  <41.535946, 28.122377, 26.106977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.393280, 27.935848, 26.156506>,  <41.155502, 27.624968, 26.239054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393280, 27.935848, 26.156506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167430, 0.370636, 0.913562,
		0.786510, -0.508513, 0.350451,
		0.594448, 0.777202, -0.206369,
		41.571613, 28.169008, 26.094595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518375, 27.704193, 26.744677>,  <41.155502, 27.624968, 26.239054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518375, 27.704193, 26.744677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.552193, 28.070175, 26.586838>,  <41.572483, 28.289764, 26.492134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.552193, 28.070175, 26.586838>,  <41.518375, 27.704193, 26.744677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552193, 28.070175, 26.586838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162283, 0.403373, 0.900530,
		0.983116, -0.012095, 0.182583,
		0.084541, 0.914956, -0.394599,
		41.577557, 28.344662, 26.468458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892967, 28.017540, 27.177202>,  <41.518375, 27.704193, 26.744677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892967, 28.017540, 27.177202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.698936, 28.318707, 26.999296>,  <41.582520, 28.499407, 26.892553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.698936, 28.318707, 26.999296>,  <41.892967, 28.017540, 27.177202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698936, 28.318707, 26.999296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186453, 0.407862, 0.893803,
		0.854362, 0.516492, -0.057461,
		-0.485078, 0.752918, -0.444763,
		41.553413, 28.544582, 26.865868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098797, 28.632862, 27.565920>,  <41.892967, 28.017540, 27.177202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098797, 28.632862, 27.565920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.768085, 28.721813, 27.359240>,  <41.569656, 28.775185, 27.235231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.768085, 28.721813, 27.359240>,  <42.098797, 28.632862, 27.565920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768085, 28.721813, 27.359240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445908, 0.300879, 0.842993,
		0.342928, 0.927373, -0.149601,
		-0.826781, 0.222378, -0.516703,
		41.520050, 28.788527, 27.204229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988689, 29.242369, 27.730982>,  <42.098797, 28.632862, 27.565920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988689, 29.242369, 27.730982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.635654, 29.112226, 27.595230>,  <41.423832, 29.034142, 27.513779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.635654, 29.112226, 27.595230>,  <41.988689, 29.242369, 27.730982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635654, 29.112226, 27.595230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449045, 0.369562, 0.813500,
		-0.139254, 0.870384, -0.472271,
		-0.882591, -0.325354, -0.339379,
		41.370876, 29.014620, 27.493416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639603, 29.713263, 27.922888>,  <41.988689, 29.242369, 27.730982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639603, 29.713263, 27.922888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.390694, 29.404325, 27.871872>,  <41.241348, 29.218964, 27.841263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.390694, 29.404325, 27.871872>,  <41.639603, 29.713263, 27.922888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390694, 29.404325, 27.871872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533661, 0.299354, 0.790945,
		-0.572699, 0.560246, -0.598448,
		-0.622272, -0.772341, -0.127542,
		41.204014, 29.172623, 27.833609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043488, 29.987488, 27.942518>,  <41.639603, 29.713263, 27.922888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043488, 29.987488, 27.942518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.983852, 29.599680, 28.020292>,  <40.948071, 29.366995, 28.066957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.983852, 29.599680, 28.020292>,  <41.043488, 29.987488, 27.942518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983852, 29.599680, 28.020292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516402, 0.244030, 0.820840,
		-0.843268, 0.021971, -0.537044,
		-0.149090, -0.969519, 0.194437,
		40.939125, 29.308825, 28.078623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375591, 29.948717, 27.935543>,  <41.043488, 29.987488, 27.942518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375591, 29.948717, 27.935543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.497978, 29.651424, 28.173532>,  <40.571411, 29.473049, 28.316326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.497978, 29.651424, 28.173532>,  <40.375591, 29.948717, 27.935543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497978, 29.651424, 28.173532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425067, 0.452548, 0.783912,
		-0.851880, -0.492757, -0.177456,
		0.305971, -0.743230, 0.594972,
		40.589771, 29.428455, 28.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790554, 29.661545, 28.270798>,  <40.375591, 29.948717, 27.935543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790554, 29.661545, 28.270798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101852, 29.570406, 28.504866>,  <40.288631, 29.515722, 28.645306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101852, 29.570406, 28.504866>,  <39.790554, 29.661545, 28.270798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101852, 29.570406, 28.504866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472663, 0.400964, 0.784741,
		-0.413434, -0.887307, 0.204352,
		0.778243, -0.227849, 0.585169,
		40.335327, 29.502052, 28.680416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416496, 28.980572, 28.248308>,  <39.790554, 29.661545, 28.270798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416496, 28.980572, 28.248308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018757, 28.986891, 28.206305>,  <38.780113, 28.990683, 28.181103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018757, 28.986891, 28.206305>,  <39.416496, 28.980572, 28.248308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018757, 28.986891, 28.206305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077461, -0.568500, -0.819029,
		-0.072636, -0.822532, 0.564062,
		-0.994346, 0.015798, -0.105007,
		38.720451, 28.991631, 28.174803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256252, 28.368048, 28.087763>,  <39.416496, 28.980572, 28.248308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256252, 28.368048, 28.087763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940269, 28.574675, 27.955626>,  <38.750679, 28.698650, 27.876343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940269, 28.574675, 27.955626>,  <39.256252, 28.368048, 28.087763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940269, 28.574675, 27.955626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167737, -0.336145, -0.926753,
		-0.589775, -0.787504, 0.178892,
		-0.789955, 0.516569, -0.330344,
		38.703281, 28.729645, 27.856522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968307, 27.954477, 27.614393>,  <39.256252, 28.368048, 28.087763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968307, 27.954477, 27.614393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788181, 28.300026, 27.524107>,  <38.680107, 28.507355, 27.469934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788181, 28.300026, 27.524107>,  <38.968307, 27.954477, 27.614393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788181, 28.300026, 27.524107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096023, -0.204476, -0.974151,
		-0.887693, -0.460346, 0.009127,
		-0.450313, 0.863870, -0.225716,
		38.653088, 28.559187, 27.456392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569489, 27.788464, 27.046513>,  <38.968307, 27.954477, 27.614393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569489, 27.788464, 27.046513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587540, 28.188034, 27.042355>,  <38.598370, 28.427776, 27.039860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587540, 28.188034, 27.042355>,  <38.569489, 27.788464, 27.046513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587540, 28.188034, 27.042355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025439, -0.011550, -0.999610,
		-0.998657, 0.044847, -0.025933,
		0.045129, 0.998927, -0.010394,
		38.601078, 28.487713, 27.039236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954681, 28.028589, 26.653547>,  <38.569489, 27.788464, 27.046513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954681, 28.028589, 26.653547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240807, 28.305609, 26.616241>,  <38.412483, 28.471821, 26.593859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240807, 28.305609, 26.616241>,  <37.954681, 28.028589, 26.653547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240807, 28.305609, 26.616241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067835, -0.201652, -0.977105,
		-0.695499, 0.692614, -0.191224,
		0.715318, 0.692548, -0.093265,
		38.455402, 28.513372, 26.588263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749062, 28.411139, 26.120411>,  <37.954681, 28.028589, 26.653547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749062, 28.411139, 26.120411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135952, 28.510332, 26.142263>,  <38.368084, 28.569849, 26.155375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135952, 28.510332, 26.142263>,  <37.749062, 28.411139, 26.120411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135952, 28.510332, 26.142263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100245, -0.175217, -0.979413,
		-0.233307, 0.952787, -0.194333,
		0.967222, 0.247985, 0.054633,
		38.426117, 28.584728, 26.158653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944553, 29.027754, 25.685665>,  <37.749062, 28.411139, 26.120411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944553, 29.027754, 25.685665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245415, 28.767365, 25.726658>,  <38.425930, 28.611132, 25.751253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245415, 28.767365, 25.726658>,  <37.944553, 29.027754, 25.685665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245415, 28.767365, 25.726658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118822, -0.018992, -0.992734,
		0.648188, 0.758865, 0.063065,
		0.752153, -0.650971, 0.102480,
		38.471062, 28.572073, 25.757402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740700, 29.651852, 25.216076>,  <37.944553, 29.027754, 25.685665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740700, 29.651852, 25.216076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414326, 29.708637, 24.991901>,  <37.218502, 29.742708, 24.857397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414326, 29.708637, 24.991901>,  <37.740700, 29.651852, 25.216076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414326, 29.708637, 24.991901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434549, 0.488787, 0.756475,
		0.381327, 0.860775, -0.337129,
		-0.815939, 0.141965, -0.560437,
		37.169544, 29.751226, 24.823771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511192, 30.372719, 25.279984>,  <37.740700, 29.651852, 25.216076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511192, 30.372719, 25.279984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176098, 30.180237, 25.176731>,  <36.975040, 30.064747, 25.114779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176098, 30.180237, 25.176731>,  <37.511192, 30.372719, 25.279984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176098, 30.180237, 25.176731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473701, 0.405230, 0.781918,
		-0.271661, 0.777321, -0.567426,
		-0.837739, -0.481207, -0.258133,
		36.924774, 30.035875, 25.099291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036743, 30.788628, 25.573952>,  <37.511192, 30.372719, 25.279984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036743, 30.788628, 25.573952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824692, 30.455738, 25.508997>,  <36.697460, 30.256004, 25.470024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824692, 30.455738, 25.508997>,  <37.036743, 30.788628, 25.573952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824692, 30.455738, 25.508997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625501, 0.254537, 0.737536,
		-0.572461, 0.492562, -0.655493,
		-0.530130, -0.832222, -0.162385,
		36.665653, 30.206072, 25.460281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363068, 30.985830, 25.594215>,  <37.036743, 30.788628, 25.573952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363068, 30.985830, 25.594215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347725, 30.593651, 25.671415>,  <36.338520, 30.358343, 25.717735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347725, 30.593651, 25.671415>,  <36.363068, 30.985830, 25.594215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347725, 30.593651, 25.671415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580785, 0.179045, 0.794123,
		-0.813153, -0.081630, -0.576298,
		-0.038359, -0.980449, 0.193000,
		36.336216, 30.299517, 25.729315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719677, 30.885664, 25.755760>,  <36.363068, 30.985830, 25.594215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719677, 30.885664, 25.755760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.897770, 30.565897, 25.917107>,  <36.004623, 30.374037, 26.013914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.897770, 30.565897, 25.917107>,  <35.719677, 30.885664, 25.755760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897770, 30.565897, 25.917107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609486, 0.059449, 0.790565,
		-0.655971, -0.597827, -0.460766,
		0.445229, -0.799418, 0.403364,
		36.031338, 30.326071, 26.038116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217926, 30.546162, 25.959415>,  <35.719677, 30.885664, 25.755760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217926, 30.546162, 25.959415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509560, 30.383654, 26.179735>,  <35.684540, 30.286148, 26.311926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509560, 30.383654, 26.179735>,  <35.217926, 30.546162, 25.959415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509560, 30.383654, 26.179735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597249, 0.015367, 0.801908,
		-0.334258, -0.913623, -0.231442,
		0.729085, -0.406272, 0.550797,
		35.728287, 30.261772, 26.344975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852852, 30.102018, 26.368561>,  <35.217926, 30.546162, 25.959415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852852, 30.102018, 26.368561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206635, 30.175989, 26.539923>,  <35.418903, 30.220371, 26.642740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206635, 30.175989, 26.539923>,  <34.852852, 30.102018, 26.368561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206635, 30.175989, 26.539923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460397, 0.196449, 0.865703,
		0.075932, -0.962917, 0.258892,
		0.884460, 0.184928, 0.428407,
		35.471973, 30.231468, 26.668446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.949684, 30.795231, 22.891529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305092, 30.739475, 23.066391>,  <39.518337, 30.706022, 23.171309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305092, 30.739475, 23.066391>,  <38.949684, 30.795231, 22.891529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305092, 30.739475, 23.066391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065458, 0.981502, 0.179914,
		-0.454144, -0.131242, 0.881208,
		0.888520, -0.139389, 0.437153,
		39.571648, 30.697659, 23.197536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928501, 30.997124, 23.641216>,  <38.949684, 30.795231, 22.891529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928501, 30.997124, 23.641216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.316452, 31.027704, 23.548708>,  <39.549225, 31.046053, 23.493202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.316452, 31.027704, 23.548708>,  <38.928501, 30.997124, 23.641216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316452, 31.027704, 23.548708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048607, 0.991117, 0.123789,
		0.238680, -0.108819, 0.964982,
		0.969881, 0.076450, -0.231271,
		39.607418, 31.050640, 23.479326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329762, 31.369593, 24.207724>,  <38.928501, 30.997124, 23.641216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329762, 31.369593, 24.207724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.574257, 31.387705, 23.891665>,  <39.720955, 31.398573, 23.702028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.574257, 31.387705, 23.891665>,  <39.329762, 31.369593, 24.207724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574257, 31.387705, 23.891665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121408, 0.981181, 0.150147,
		0.782076, -0.187706, 0.594241,
		0.611242, 0.045281, -0.790148,
		39.757629, 31.401289, 23.654619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977829, 31.694429, 24.525936>,  <39.329762, 31.369593, 24.207724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977829, 31.694429, 24.525936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955669, 31.747475, 24.130089>,  <39.942375, 31.779303, 23.892580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955669, 31.747475, 24.130089>,  <39.977829, 31.694429, 24.525936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955669, 31.747475, 24.130089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307564, 0.945212, 0.109446,
		0.949913, -0.298308, -0.093150,
		-0.055397, 0.132614, -0.989618,
		39.939049, 31.787258, 23.833202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617001, 31.896139, 24.310574>,  <39.977829, 31.694429, 24.525936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617001, 31.896139, 24.310574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.339191, 32.034397, 24.058172>,  <40.172504, 32.117352, 23.906733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.339191, 32.034397, 24.058172>,  <40.617001, 31.896139, 24.310574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339191, 32.034397, 24.058172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338040, 0.930976, 0.137888,
		0.635108, -0.117537, -0.763429,
		-0.694527, 0.345643, -0.631002,
		40.130833, 32.138088, 23.868872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957767, 32.434002, 24.025475>,  <40.617001, 31.896139, 24.310574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957767, 32.434002, 24.025475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568775, 32.495399, 23.955368>,  <40.335381, 32.532238, 23.913305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568775, 32.495399, 23.955368>,  <40.957767, 32.434002, 24.025475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568775, 32.495399, 23.955368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080756, 0.927734, 0.364401,
		0.218532, 0.340220, -0.914600,
		-0.972483, 0.153492, -0.175264,
		40.277031, 32.541447, 23.902788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903702, 33.231606, 23.803679>,  <40.957767, 32.434002, 24.025475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903702, 33.231606, 23.803679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.528091, 33.115623, 23.877613>,  <40.302727, 33.046036, 23.921974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.528091, 33.115623, 23.877613>,  <40.903702, 33.231606, 23.803679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528091, 33.115623, 23.877613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193338, 0.889729, 0.413525,
		-0.284358, 0.352573, -0.891534,
		-0.939021, -0.289957, 0.184836,
		40.246384, 33.028637, 23.933064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425686, 33.826149, 23.600155>,  <40.903702, 33.231606, 23.803679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425686, 33.826149, 23.600155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217236, 33.590828, 23.847485>,  <40.092163, 33.449635, 23.995882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217236, 33.590828, 23.847485>,  <40.425686, 33.826149, 23.600155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217236, 33.590828, 23.847485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408755, 0.808021, 0.424290,
		-0.749230, -0.031634, -0.661554,
		-0.521128, -0.588304, 0.618324,
		40.060898, 33.414337, 24.032982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808842, 34.048134, 23.552969>,  <40.425686, 33.826149, 23.600155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808842, 34.048134, 23.552969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782494, 33.887306, 23.918262>,  <39.766685, 33.790810, 24.137440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782494, 33.887306, 23.918262>,  <39.808842, 34.048134, 23.552969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782494, 33.887306, 23.918262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459258, 0.824738, 0.329984,
		-0.885857, -0.397675, -0.238980,
		-0.065869, -0.402072, 0.913236,
		39.762733, 33.766685, 24.192234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131012, 34.175354, 23.843849>,  <39.808842, 34.048134, 23.552969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131012, 34.175354, 23.843849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344479, 34.069008, 24.164976>,  <39.472557, 34.005199, 24.357653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344479, 34.069008, 24.164976>,  <39.131012, 34.175354, 23.843849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344479, 34.069008, 24.164976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377511, 0.774579, 0.507457,
		-0.756761, -0.573885, 0.312999,
		0.533664, -0.265863, 0.802819,
		39.504578, 33.989250, 24.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631447, 34.191586, 24.385717>,  <39.131012, 34.175354, 23.843849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631447, 34.191586, 24.385717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.969635, 34.171436, 24.598373>,  <39.172546, 34.159348, 24.725967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.969635, 34.171436, 24.598373>,  <38.631447, 34.191586, 24.385717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969635, 34.171436, 24.598373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374452, 0.653874, 0.657445,
		-0.380740, -0.754925, 0.533971,
		0.845472, -0.050369, 0.531640,
		39.223278, 34.156326, 24.757866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449646, 34.106224, 25.009884>,  <38.631447, 34.191586, 24.385717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449646, 34.106224, 25.009884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817326, 34.238655, 25.095173>,  <39.037933, 34.318115, 25.146347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817326, 34.238655, 25.095173>,  <38.449646, 34.106224, 25.009884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817326, 34.238655, 25.095173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354831, 0.461486, 0.813097,
		0.170799, -0.823054, 0.541673,
		0.919196, 0.331078, 0.213224,
		39.093086, 34.337978, 25.159140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001949, 33.634121, 25.114162>,  <38.449646, 34.106224, 25.009884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001949, 33.634121, 25.114162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.608250, 33.638107, 25.043556>,  <37.372032, 33.640499, 25.001192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.608250, 33.638107, 25.043556>,  <38.001949, 33.634121, 25.114162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608250, 33.638107, 25.043556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156751, -0.412580, -0.897333,
		-0.081771, -0.910867, 0.404519,
		-0.984247, 0.009967, -0.176516,
		37.312977, 33.641098, 24.990601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808338, 32.964714, 24.976851>,  <38.001949, 33.634121, 25.114162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808338, 32.964714, 24.976851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.543289, 33.213345, 24.809721>,  <37.384258, 33.362522, 24.709442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.543289, 33.213345, 24.809721>,  <37.808338, 32.964714, 24.976851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543289, 33.213345, 24.809721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047053, -0.591325, -0.805059,
		-0.747475, -0.513790, 0.421071,
		-0.662621, 0.621574, -0.417826,
		37.344501, 33.399818, 24.684374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404526, 32.442776, 24.672081>,  <37.808338, 32.964714, 24.976851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404526, 32.442776, 24.672081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306038, 32.790985, 24.501640>,  <37.246944, 32.999912, 24.399376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306038, 32.790985, 24.501640>,  <37.404526, 32.442776, 24.672081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306038, 32.790985, 24.501640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023448, -0.434156, -0.900533,
		-0.968930, -0.231721, 0.086486,
		-0.246221, 0.870525, -0.426100,
		37.232170, 33.052143, 24.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906483, 32.217392, 24.154942>,  <37.404526, 32.442776, 24.672081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906483, 32.217392, 24.154942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.022392, 32.581417, 24.036400>,  <37.091938, 32.799831, 23.965275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.022392, 32.581417, 24.036400>,  <36.906483, 32.217392, 24.154942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022392, 32.581417, 24.036400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039480, -0.320743, -0.946343,
		-0.956281, 0.262522, -0.128871,
		0.289771, 0.910058, -0.296356,
		37.109322, 32.854435, 23.947493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523769, 32.491875, 23.589304>,  <36.906483, 32.217392, 24.154942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523769, 32.491875, 23.589304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872498, 32.680935, 23.537886>,  <37.081734, 32.794373, 23.507034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872498, 32.680935, 23.537886>,  <36.523769, 32.491875, 23.589304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872498, 32.680935, 23.537886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035558, -0.322817, -0.945793,
		-0.488530, 0.819993, -0.298246,
		0.871822, 0.472653, -0.128548,
		37.134045, 32.822731, 23.499321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569733, 32.407299, 22.828791>,  <36.523769, 32.491875, 23.589304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569733, 32.407299, 22.828791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.926498, 32.558376, 22.928257>,  <37.140560, 32.649021, 22.987938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.926498, 32.558376, 22.928257>,  <36.569733, 32.407299, 22.828791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926498, 32.558376, 22.928257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314440, -0.122810, -0.941300,
		-0.324981, 0.917751, -0.228297,
		0.891916, 0.377690, 0.248667,
		37.194073, 32.671684, 23.002857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786011, 32.805614, 22.205664>,  <36.569733, 32.407299, 22.828791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786011, 32.805614, 22.205664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.103203, 32.696754, 22.423698>,  <37.293518, 32.631439, 22.554520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.103203, 32.696754, 22.423698>,  <36.786011, 32.805614, 22.205664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103203, 32.696754, 22.423698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463239, -0.311783, -0.829578,
		0.395715, 0.910345, -0.121169,
		0.792981, -0.272146, 0.545085,
		37.341099, 32.615112, 22.587223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324482, 32.998753, 21.757465>,  <36.786011, 32.805614, 22.205664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324482, 32.998753, 21.757465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.497131, 32.756767, 22.025114>,  <37.600719, 32.611576, 22.185703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.497131, 32.756767, 22.025114>,  <37.324482, 32.998753, 21.757465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497131, 32.756767, 22.025114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550158, -0.411301, -0.726744,
		0.714862, 0.681803, 0.155297,
		0.431622, -0.604960, 0.669123,
		37.626617, 32.575279, 22.225851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057281, 32.943935, 21.586735>,  <37.324482, 32.998753, 21.757465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057281, 32.943935, 21.586735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.990250, 32.622475, 21.815142>,  <37.950031, 32.429600, 21.952187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.990250, 32.622475, 21.815142>,  <38.057281, 32.943935, 21.586735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990250, 32.622475, 21.815142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500764, -0.568313, -0.652882,
		0.849207, 0.176536, 0.497677,
		-0.167580, -0.803651, 0.571018,
		37.939976, 32.381378, 21.986446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703575, 32.491425, 21.534367>,  <38.057281, 32.943935, 21.586735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703575, 32.491425, 21.534367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449429, 32.235237, 21.706934>,  <38.296940, 32.081524, 21.810474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449429, 32.235237, 21.706934>,  <38.703575, 32.491425, 21.534367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449429, 32.235237, 21.706934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369005, -0.742572, -0.558947,
		0.678344, -0.195939, 0.708137,
		-0.635362, -0.640464, 0.431417,
		38.258820, 32.043098, 21.836359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115078, 31.973045, 21.873547>,  <38.703575, 32.491425, 21.534367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115078, 31.973045, 21.873547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.759510, 31.808250, 21.793453>,  <38.546169, 31.709373, 21.745398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.759510, 31.808250, 21.793453>,  <39.115078, 31.973045, 21.873547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759510, 31.808250, 21.793453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457942, -0.809514, -0.367391,
		-0.010730, -0.418275, 0.908257,
		-0.888917, -0.411987, -0.200232,
		38.492836, 31.684654, 21.733383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243034, 31.253355, 21.997679>,  <39.115078, 31.973045, 21.873547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243034, 31.253355, 21.997679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889301, 31.255827, 21.810951>,  <38.677063, 31.257309, 21.698915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889301, 31.255827, 21.810951>,  <39.243034, 31.253355, 21.997679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889301, 31.255827, 21.810951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339624, -0.677567, -0.652349,
		-0.320330, -0.735435, 0.597096,
		-0.884332, 0.006179, -0.466816,
		38.624001, 31.257681, 21.670906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988670, 30.482960, 21.918526>,  <39.243034, 31.253355, 21.997679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988670, 30.482960, 21.918526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.807579, 30.705902, 21.640133>,  <38.698925, 30.839668, 21.473097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.807579, 30.705902, 21.640133>,  <38.988670, 30.482960, 21.918526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807579, 30.705902, 21.640133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463167, -0.519985, -0.717699,
		-0.761915, -0.647278, -0.022738,
		-0.452727, 0.557357, -0.695982,
		38.671761, 30.873110, 21.431337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299057, 30.417086, 21.629063>,  <38.988670, 30.482960, 21.918526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299057, 30.417086, 21.629063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193573, 30.031807, 21.649889>,  <38.130283, 29.800640, 21.662384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193573, 30.031807, 21.649889>,  <38.299057, 30.417086, 21.629063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193573, 30.031807, 21.649889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299430, 0.133050, 0.944796,
		-0.916951, 0.233560, -0.323496,
		-0.263707, -0.963197, 0.052066,
		38.114460, 29.742847, 21.665508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586578, 30.468500, 22.056231>,  <38.299057, 30.417086, 21.629063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586578, 30.468500, 22.056231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727036, 30.094093, 22.065729>,  <37.811310, 29.869450, 22.071428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727036, 30.094093, 22.065729>,  <37.586578, 30.468500, 22.056231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727036, 30.094093, 22.065729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329015, -0.099604, 0.939057,
		-0.876610, -0.337560, -0.342940,
		0.351146, -0.936019, 0.023748,
		37.832378, 29.813288, 22.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137238, 30.143148, 22.374853>,  <37.586578, 30.468500, 22.056231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137238, 30.143148, 22.374853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435352, 29.881651, 22.427248>,  <37.614223, 29.724752, 22.458685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435352, 29.881651, 22.427248>,  <37.137238, 30.143148, 22.374853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435352, 29.881651, 22.427248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247526, -0.088875, 0.964796,
		-0.619090, -0.751477, -0.228057,
		0.745291, -0.653746, 0.130988,
		37.658939, 29.685528, 22.466545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898746, 29.624310, 22.675262>,  <37.137238, 30.143148, 22.374853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898746, 29.624310, 22.675262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.288765, 29.565088, 22.741426>,  <37.522778, 29.529556, 22.781124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.288765, 29.565088, 22.741426>,  <36.898746, 29.624310, 22.675262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288765, 29.565088, 22.741426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185535, -0.134369, 0.973407,
		-0.121866, -0.979812, -0.158481,
		0.975052, -0.148029, 0.165414,
		37.581280, 29.520674, 22.791050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913685, 28.976601, 22.913136>,  <36.898746, 29.624310, 22.675262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913685, 28.976601, 22.913136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237080, 29.152143, 23.069984>,  <37.431114, 29.257469, 23.164095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237080, 29.152143, 23.069984>,  <36.913685, 28.976601, 22.913136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237080, 29.152143, 23.069984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195898, -0.427614, 0.882480,
		0.554959, -0.790286, -0.259747,
		0.808482, 0.438856, 0.392124,
		37.479626, 29.283800, 23.187622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876713, 28.727600, 23.604660>,  <36.913685, 28.976601, 22.913136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876713, 28.727600, 23.604660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111397, 29.051519, 23.603855>,  <37.252205, 29.245871, 23.603373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111397, 29.051519, 23.603855>,  <36.876713, 28.727600, 23.604660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111397, 29.051519, 23.603855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069718, 0.052986, 0.996159,
		0.806794, -0.584311, 0.087545,
		0.586705, 0.809798, -0.002012,
		37.287407, 29.294458, 23.603252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435749, 28.692764, 24.145037>,  <36.876713, 28.727600, 23.604660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435749, 28.692764, 24.145037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.394073, 29.083887, 24.072336>,  <37.369068, 29.318562, 24.028715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.394073, 29.083887, 24.072336>,  <37.435749, 28.692764, 24.145037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394073, 29.083887, 24.072336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253787, 0.150556, 0.955471,
		0.961632, 0.145680, 0.232468,
		-0.104194, 0.977809, -0.181751,
		37.362816, 29.377230, 24.017811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628433, 28.988506, 24.791096>,  <37.435749, 28.692764, 24.145037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628433, 28.988506, 24.791096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434601, 29.277168, 24.593349>,  <37.318302, 29.450365, 24.474701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434601, 29.277168, 24.593349>,  <37.628433, 28.988506, 24.791096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434601, 29.277168, 24.593349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504712, 0.230933, 0.831827,
		0.714458, 0.652598, 0.252322,
		-0.484578, 0.721655, -0.494366,
		37.289227, 29.493666, 24.445040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449924, 29.133383, 24.810415>,  <37.628433, 28.988506, 24.791096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449924, 29.133383, 24.810415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.647770, 28.861563, 25.027143>,  <38.766476, 28.698471, 25.157181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.647770, 28.861563, 25.027143>,  <38.449924, 29.133383, 24.810415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647770, 28.861563, 25.027143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451485, -0.331803, -0.828292,
		0.742643, 0.654309, 0.142692,
		0.494613, -0.679549, 0.541822,
		38.796154, 28.657698, 25.189690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217861, 29.259426, 24.767483>,  <38.449924, 29.133383, 24.810415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217861, 29.259426, 24.767483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.151112, 28.875597, 24.858145>,  <39.111061, 28.645300, 24.912542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.151112, 28.875597, 24.858145>,  <39.217861, 29.259426, 24.767483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151112, 28.875597, 24.858145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499661, -0.280473, -0.819557,
		0.849995, -0.023511, 0.526265,
		-0.166872, -0.959574, 0.226653,
		39.101051, 28.587725, 24.926140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908958, 28.947786, 24.642605>,  <39.217861, 29.259426, 24.767483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908958, 28.947786, 24.642605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.632751, 28.658461, 24.641699>,  <39.467026, 28.484865, 24.641155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.632751, 28.658461, 24.641699>,  <39.908958, 28.947786, 24.642605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632751, 28.658461, 24.641699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357083, -0.338164, -0.870710,
		0.629030, -0.602049, 0.491791,
		-0.690516, -0.723313, -0.002266,
		39.425598, 28.441467, 24.641020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270432, 28.369108, 24.538786>,  <39.908958, 28.947786, 24.642605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270432, 28.369108, 24.538786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.901752, 28.270279, 24.419163>,  <39.680546, 28.210981, 24.347389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.901752, 28.270279, 24.419163>,  <40.270432, 28.369108, 24.538786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901752, 28.270279, 24.419163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387850, -0.572457, -0.722402,
		0.007290, -0.781823, 0.623458,
		-0.921694, -0.247075, -0.299056,
		39.625244, 28.196157, 24.329445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275295, 27.621044, 24.591810>,  <40.270432, 28.369108, 24.538786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275295, 27.621044, 24.591810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989750, 27.773849, 24.357046>,  <39.818424, 27.865532, 24.216187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989750, 27.773849, 24.357046>,  <40.275295, 27.621044, 24.591810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989750, 27.773849, 24.357046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368862, -0.507297, -0.778840,
		-0.595267, -0.772473, 0.221229,
		-0.713862, 0.382014, -0.586913,
		39.775593, 27.888454, 24.180973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937370, 27.114279, 24.341833>,  <40.275295, 27.621044, 24.591810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937370, 27.114279, 24.341833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.892223, 27.415827, 24.082930>,  <39.865135, 27.596756, 23.927588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.892223, 27.415827, 24.082930>,  <39.937370, 27.114279, 24.341833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892223, 27.415827, 24.082930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464969, -0.535619, -0.704923,
		-0.878103, -0.380516, -0.290073,
		-0.112865, 0.753870, -0.647257,
		39.858364, 27.641987, 23.888752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718636, 26.770737, 23.657642>,  <39.937370, 27.114279, 24.341833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718636, 26.770737, 23.657642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791405, 27.141241, 23.525616>,  <39.835068, 27.363543, 23.446400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791405, 27.141241, 23.525616>,  <39.718636, 26.770737, 23.657642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791405, 27.141241, 23.525616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412881, -0.376603, -0.829276,
		-0.892430, 0.014587, -0.450949,
		0.181926, 0.926260, -0.330069,
		39.845982, 27.419119, 23.426596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372269, 26.865368, 23.005167>,  <39.718636, 26.770737, 23.657642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372269, 26.865368, 23.005167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678925, 27.120052, 23.038284>,  <39.862919, 27.272863, 23.058155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678925, 27.120052, 23.038284>,  <39.372269, 26.865368, 23.005167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678925, 27.120052, 23.038284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424081, -0.405312, -0.809863,
		-0.482094, 0.655986, -0.580747,
		0.766643, 0.636713, 0.082793,
		39.908916, 27.311066, 23.063122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659588, 26.879362, 22.317245>,  <39.372269, 26.865368, 23.005167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659588, 26.879362, 22.317245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.951546, 27.050861, 22.530199>,  <40.126720, 27.153761, 22.657970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.951546, 27.050861, 22.530199>,  <39.659588, 26.879362, 22.317245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951546, 27.050861, 22.530199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668058, -0.282477, -0.688408,
		-0.144768, 0.858126, -0.492607,
		0.729891, 0.428749, 0.532384,
		40.170513, 27.179485, 22.689915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.041332, 35.391155, 36.173054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429203, 35.488075, 36.160343>,  <36.661926, 35.546227, 36.152718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429203, 35.488075, 36.160343>,  <36.041332, 35.391155, 36.173054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429203, 35.488075, 36.160343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010806, -0.172418, -0.984965,
		-0.244134, 0.954758, -0.169809,
		0.969681, 0.242298, -0.031776,
		36.720108, 35.560764, 36.150810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941963, 35.621014, 35.542603>,  <36.041332, 35.391155, 36.173054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941963, 35.621014, 35.542603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332272, 35.564049, 35.609039>,  <36.566456, 35.529869, 35.648899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332272, 35.564049, 35.609039>,  <35.941963, 35.621014, 35.542603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332272, 35.564049, 35.609039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062763, -0.545036, -0.836060,
		0.209589, 0.826229, -0.522894,
		0.975773, -0.142410, 0.166090,
		36.625004, 35.521324, 35.658867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290417, 35.848560, 34.945553>,  <35.941963, 35.621014, 35.542603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290417, 35.848560, 34.945553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533661, 35.588062, 35.127136>,  <36.679607, 35.431763, 35.236088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533661, 35.588062, 35.127136>,  <36.290417, 35.848560, 34.945553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533661, 35.588062, 35.127136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099481, -0.504824, -0.857471,
		0.787593, 0.566599, -0.242203,
		0.608112, -0.651244, 0.453962,
		36.716095, 35.392689, 35.263325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866726, 35.765564, 34.421402>,  <36.290417, 35.848560, 34.945553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866726, 35.765564, 34.421402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924168, 35.455959, 34.668072>,  <36.958633, 35.270199, 34.816074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924168, 35.455959, 34.668072>,  <36.866726, 35.765564, 34.421402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924168, 35.455959, 34.668072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374902, -0.534142, -0.757721,
		0.915875, 0.340003, 0.213473,
		0.143603, -0.774009, 0.616675,
		36.967247, 35.223755, 34.853073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473221, 35.456131, 34.158623>,  <36.866726, 35.765564, 34.421402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473221, 35.456131, 34.158623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307671, 35.168400, 34.381790>,  <37.208340, 34.995762, 34.515690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307671, 35.168400, 34.381790>,  <37.473221, 35.456131, 34.158623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307671, 35.168400, 34.381790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300389, -0.686463, -0.662219,
		0.859345, -0.106482, 0.500188,
		-0.413875, -0.719326, 0.557923,
		37.183510, 34.952602, 34.549168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903488, 34.924110, 34.121571>,  <37.473221, 35.456131, 34.158623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903488, 34.924110, 34.121571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562912, 34.745449, 34.231522>,  <37.358566, 34.638252, 34.297493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562912, 34.745449, 34.231522>,  <37.903488, 34.924110, 34.121571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562912, 34.745449, 34.231522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138732, -0.697261, -0.703264,
		0.505775, -0.560651, 0.655639,
		-0.851437, -0.446651, 0.274877,
		37.307480, 34.611454, 34.313984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052074, 34.217682, 34.312393>,  <37.903488, 34.924110, 34.121571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052074, 34.217682, 34.312393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666874, 34.231537, 34.205482>,  <37.435753, 34.239849, 34.141335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666874, 34.231537, 34.205482>,  <38.052074, 34.217682, 34.312393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666874, 34.231537, 34.205482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114365, -0.845483, -0.521612,
		-0.244043, -0.532878, 0.810238,
		-0.962998, 0.034633, -0.267276,
		37.377975, 34.241928, 34.125301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009960, 33.657112, 33.887882>,  <38.052074, 34.217682, 34.312393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009960, 33.657112, 33.887882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633854, 33.761093, 33.799953>,  <37.408192, 33.823483, 33.747196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633854, 33.761093, 33.799953>,  <38.009960, 33.657112, 33.887882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633854, 33.761093, 33.799953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107316, -0.839113, -0.533265,
		-0.323082, -0.477821, 0.816887,
		-0.940266, 0.259953, -0.219824,
		37.351772, 33.839081, 33.734005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532188, 33.026367, 33.957283>,  <38.009960, 33.657112, 33.887882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532188, 33.026367, 33.957283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354969, 33.287277, 33.711277>,  <37.248638, 33.443825, 33.563675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354969, 33.287277, 33.711277>,  <37.532188, 33.026367, 33.957283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354969, 33.287277, 33.711277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125052, -0.724278, -0.678074,
		-0.887735, -0.223508, 0.402456,
		-0.443045, 0.652278, -0.615016,
		37.222057, 33.482960, 33.526772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027683, 32.588768, 33.686253>,  <37.532188, 33.026367, 33.957283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027683, 32.588768, 33.686253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071255, 32.910778, 33.452991>,  <37.097397, 33.103985, 33.313034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071255, 32.910778, 33.452991>,  <37.027683, 32.588768, 33.686253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071255, 32.910778, 33.452991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232834, -0.549663, -0.802284,
		-0.966397, 0.223169, 0.127563,
		0.108928, 0.805026, -0.583154,
		37.103931, 33.152287, 33.278046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467106, 32.616753, 33.306084>,  <37.027683, 32.588768, 33.686253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467106, 32.616753, 33.306084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723618, 32.831318, 33.086620>,  <36.877525, 32.960056, 32.954945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723618, 32.831318, 33.086620>,  <36.467106, 32.616753, 33.306084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723618, 32.831318, 33.086620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157999, -0.607402, -0.778524,
		-0.750863, 0.585939, -0.304763,
		0.641281, 0.536413, -0.548654,
		36.916000, 32.992241, 32.922024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142845, 32.574127, 32.683399>,  <36.467106, 32.616753, 33.306084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142845, 32.574127, 32.683399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523388, 32.673786, 32.610912>,  <36.751713, 32.733582, 32.567421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523388, 32.673786, 32.610912>,  <36.142845, 32.574127, 32.683399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523388, 32.673786, 32.610912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063351, -0.733850, -0.676351,
		-0.301497, 0.631974, -0.713939,
		0.951360, 0.249146, -0.181217,
		36.808796, 32.748531, 32.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618473, 32.934402, 32.244259>,  <36.142845, 32.574127, 32.683399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618473, 32.934402, 32.244259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263268, 32.755150, 32.203056>,  <35.050144, 32.647598, 32.178337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263268, 32.755150, 32.203056>,  <35.618473, 32.934402, 32.244259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263268, 32.755150, 32.203056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351714, 0.517679, 0.779939,
		-0.296196, 0.728823, -0.617321,
		-0.888012, -0.448135, -0.103003,
		34.996864, 32.620708, 32.172157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224476, 33.405930, 32.303650>,  <35.618473, 32.934402, 32.244259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224476, 33.405930, 32.303650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992569, 33.088554, 32.377750>,  <34.853424, 32.898129, 32.422211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992569, 33.088554, 32.377750>,  <35.224476, 33.405930, 32.303650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992569, 33.088554, 32.377750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465611, 0.509220, 0.723810,
		-0.668635, 0.333388, -0.664665,
		-0.579771, -0.793440, 0.185253,
		34.818638, 32.850521, 32.433327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468025, 33.611694, 32.275112>,  <35.224476, 33.405930, 32.303650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468025, 33.611694, 32.275112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497944, 33.291145, 32.512501>,  <34.515896, 33.098816, 32.654934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497944, 33.291145, 32.512501>,  <34.468025, 33.611694, 32.275112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497944, 33.291145, 32.512501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502064, 0.483944, 0.716749,
		-0.861590, -0.351568, -0.366145,
		0.074792, -0.801372, 0.593471,
		34.520382, 33.050735, 32.690540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844837, 33.635002, 32.504768>,  <34.468025, 33.611694, 32.275112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844837, 33.635002, 32.504768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054131, 33.391800, 32.743622>,  <34.179707, 33.245880, 32.886932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054131, 33.391800, 32.743622>,  <33.844837, 33.635002, 32.504768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054131, 33.391800, 32.743622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440670, 0.406712, 0.800247,
		-0.729412, -0.681850, -0.055125,
		0.523229, -0.608002, 0.597131,
		34.211098, 33.209400, 32.922760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390396, 33.222305, 32.904797>,  <33.844837, 33.635002, 32.504768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390396, 33.222305, 32.904797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735558, 33.243462, 33.105835>,  <33.942654, 33.256157, 33.226460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735558, 33.243462, 33.105835>,  <33.390396, 33.222305, 32.904797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735558, 33.243462, 33.105835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493330, 0.303955, 0.815007,
		-0.109659, -0.951217, 0.288377,
		0.862902, 0.052893, 0.502595,
		33.994427, 33.259331, 33.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196705, 33.022602, 33.539265>,  <33.390396, 33.222305, 32.904797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196705, 33.022602, 33.539265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552700, 33.191299, 33.608608>,  <33.766296, 33.292519, 33.650215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552700, 33.191299, 33.608608>,  <33.196705, 33.022602, 33.539265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552700, 33.191299, 33.608608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322566, 0.313596, 0.893089,
		0.322317, -0.850746, 0.415142,
		0.889979, 0.421769, 0.173345,
		33.819695, 33.317825, 33.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377304, 32.908318, 34.167133>,  <33.196705, 33.022602, 33.539265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377304, 32.908318, 34.167133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606945, 33.227623, 34.094273>,  <33.744728, 33.419209, 34.050556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606945, 33.227623, 34.094273>,  <33.377304, 32.908318, 34.167133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606945, 33.227623, 34.094273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240814, 0.377240, 0.894259,
		0.782571, -0.469530, 0.408808,
		0.574099, 0.798268, -0.182147,
		33.779175, 33.467102, 34.039627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806767, 33.090496, 34.710464>,  <33.377304, 32.908318, 34.167133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806767, 33.090496, 34.710464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848881, 33.454262, 34.549526>,  <33.874149, 33.672520, 34.452965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848881, 33.454262, 34.549526>,  <33.806767, 33.090496, 34.710464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848881, 33.454262, 34.549526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108478, 0.412685, 0.904391,
		0.988507, -0.051577, 0.142102,
		0.105289, 0.909412, -0.402347,
		33.880466, 33.727085, 34.428822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132004, 33.459866, 35.200310>,  <33.806767, 33.090496, 34.710464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132004, 33.459866, 35.200310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032509, 33.776314, 34.976791>,  <33.972813, 33.966183, 34.842682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032509, 33.776314, 34.976791>,  <34.132004, 33.459866, 35.200310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032509, 33.776314, 34.976791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003213, 0.577599, 0.816315,
		0.968565, 0.201253, -0.146213,
		-0.248739, 0.791124, -0.558796,
		33.957886, 34.013649, 34.809155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538692, 33.849697, 35.413040>,  <34.132004, 33.459866, 35.200310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538692, 33.849697, 35.413040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233814, 34.073002, 35.281952>,  <34.050888, 34.206985, 35.203297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233814, 34.073002, 35.281952>,  <34.538692, 33.849697, 35.413040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233814, 34.073002, 35.281952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002973, 0.509271, 0.860601,
		0.647340, 0.654972, -0.389823,
		-0.762196, 0.558261, -0.327724,
		34.005157, 34.240479, 35.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723164, 34.617851, 35.488331>,  <34.538692, 33.849697, 35.413040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723164, 34.617851, 35.488331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323547, 34.604355, 35.477192>,  <34.083778, 34.596256, 35.470509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323547, 34.604355, 35.477192>,  <34.723164, 34.617851, 35.488331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323547, 34.604355, 35.477192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041494, 0.529183, 0.847493,
		-0.013860, 0.847837, -0.530077,
		-0.999043, -0.033741, -0.027845,
		34.023834, 34.594231, 35.468838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517235, 35.316910, 35.591728>,  <34.723164, 34.617851, 35.488331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517235, 35.316910, 35.591728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180004, 35.115429, 35.667103>,  <33.977665, 34.994541, 35.712326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180004, 35.115429, 35.667103>,  <34.517235, 35.316910, 35.591728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180004, 35.115429, 35.667103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114011, 0.509817, 0.852695,
		-0.525571, 0.697402, -0.487242,
		-0.843076, -0.503703, 0.188433,
		33.927082, 34.964317, 35.723633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081474, 35.723938, 35.927952>,  <34.517235, 35.316910, 35.591728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081474, 35.723938, 35.927952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892895, 35.381851, 36.014050>,  <33.779747, 35.176598, 36.065708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892895, 35.381851, 36.014050>,  <34.081474, 35.723938, 35.927952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892895, 35.381851, 36.014050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249221, 0.363329, 0.897709,
		-0.845945, 0.369582, -0.384431,
		-0.471452, -0.855220, 0.215248,
		33.751461, 35.125286, 36.078625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293091, 35.946526, 36.051632>,  <34.081474, 35.723938, 35.927952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293091, 35.946526, 36.051632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402107, 35.616253, 36.249207>,  <33.467518, 35.418091, 36.367752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402107, 35.616253, 36.249207>,  <33.293091, 35.946526, 36.051632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402107, 35.616253, 36.249207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337033, 0.398920, 0.852803,
		-0.901184, -0.398895, -0.169560,
		0.272538, -0.825679, 0.493940,
		33.483868, 35.368549, 36.397388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286297, 36.287743, 35.293877>,  <33.293091, 35.946526, 36.051632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286297, 36.287743, 35.293877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399899, 36.652378, 35.174984>,  <33.468060, 36.871159, 35.103649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399899, 36.652378, 35.174984>,  <33.286297, 36.287743, 35.293877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399899, 36.652378, 35.174984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074076, -0.329932, -0.941094,
		-0.955956, 0.245260, -0.161230,
		0.284008, 0.911588, -0.297233,
		33.485100, 36.925854, 35.085815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976021, 36.359337, 34.707409>,  <33.286297, 36.287743, 35.293877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976021, 36.359337, 34.707409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236454, 36.658363, 34.654881>,  <33.392712, 36.837776, 34.623363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236454, 36.658363, 34.654881>,  <32.976021, 36.359337, 34.707409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236454, 36.658363, 34.654881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108106, -0.079918, -0.990922,
		-0.751270, 0.659367, 0.028783,
		0.651081, 0.747561, -0.131321,
		33.431778, 36.882633, 34.615482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846760, 36.919380, 34.166840>,  <32.976021, 36.359337, 34.707409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846760, 36.919380, 34.166840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244186, 36.890980, 34.202122>,  <33.482643, 36.873940, 34.223293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244186, 36.890980, 34.202122>,  <32.846760, 36.919380, 34.166840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244186, 36.890980, 34.202122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068389, -0.244595, -0.967210,
		0.090248, 0.967022, -0.238167,
		0.993568, -0.071001, 0.088208,
		33.542255, 36.869678, 34.228584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120991, 37.339844, 33.650955>,  <32.846760, 36.919380, 34.166840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120991, 37.339844, 33.650955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408047, 37.077740, 33.745296>,  <33.580280, 36.920479, 33.801903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408047, 37.077740, 33.745296>,  <33.120991, 37.339844, 33.650955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408047, 37.077740, 33.745296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150591, -0.184644, -0.971200,
		0.679933, 0.732493, -0.033832,
		0.717644, -0.655256, 0.235853,
		33.623341, 36.881165, 33.816051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525780, 37.361553, 33.105400>,  <33.120991, 37.339844, 33.650955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525780, 37.361553, 33.105400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645084, 37.017132, 33.270142>,  <33.716667, 36.810478, 33.368988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645084, 37.017132, 33.270142>,  <33.525780, 37.361553, 33.105400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645084, 37.017132, 33.270142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131982, -0.390143, -0.911246,
		0.945314, 0.326151, -0.002723,
		0.298266, -0.861054, 0.411854,
		33.734566, 36.758816, 33.393700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141571, 37.155704, 32.683254>,  <33.525780, 37.361553, 33.105400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141571, 37.155704, 32.683254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031887, 36.817024, 32.865643>,  <33.966076, 36.613815, 32.975075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031887, 36.817024, 32.865643>,  <34.141571, 37.155704, 32.683254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031887, 36.817024, 32.865643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182014, -0.511270, -0.839925,
		0.944287, -0.147325, 0.294307,
		-0.274212, -0.846699, 0.455971,
		33.949623, 36.563015, 33.002434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691120, 36.699635, 32.568012>,  <34.141571, 37.155704, 32.683254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691120, 36.699635, 32.568012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384533, 36.457642, 32.654285>,  <34.200581, 36.312447, 32.706051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384533, 36.457642, 32.654285>,  <34.691120, 36.699635, 32.568012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384533, 36.457642, 32.654285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205907, -0.549544, -0.809694,
		0.608378, -0.576195, 0.545779,
		-0.766472, -0.604980, 0.215687,
		34.154591, 36.276146, 32.718990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877972, 36.001617, 32.536022>,  <34.691120, 36.699635, 32.568012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877972, 36.001617, 32.536022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479134, 35.996761, 32.505920>,  <34.239830, 35.993847, 32.487858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479134, 35.996761, 32.505920>,  <34.877972, 36.001617, 32.536022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479134, 35.996761, 32.505920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066324, -0.624824, -0.777944,
		-0.037573, -0.780671, 0.623811,
		-0.997090, -0.012144, -0.075254,
		34.180008, 35.993118, 32.483345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662029, 35.336784, 32.509155>,  <34.877972, 36.001617, 32.536022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662029, 35.336784, 32.509155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354122, 35.519325, 32.330631>,  <34.169376, 35.628849, 32.223518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354122, 35.519325, 32.330631>,  <34.662029, 35.336784, 32.509155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354122, 35.519325, 32.330631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094767, -0.609740, -0.786916,
		-0.631244, -0.648042, 0.426114,
		-0.769773, 0.456354, -0.446307,
		34.123192, 35.656231, 32.196739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308128, 34.818085, 32.140343>,  <34.662029, 35.336784, 32.509155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308128, 34.818085, 32.140343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163357, 35.146507, 31.963760>,  <34.076492, 35.343559, 31.857811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163357, 35.146507, 31.963760>,  <34.308128, 34.818085, 32.140343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163357, 35.146507, 31.963760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050605, -0.455554, -0.888769,
		-0.930831, -0.344012, 0.123330,
		-0.361931, 0.821052, -0.441452,
		34.054779, 35.392822, 31.831326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858856, 34.563499, 31.680822>,  <34.308128, 34.818085, 32.140343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858856, 34.563499, 31.680822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942478, 34.930172, 31.544590>,  <33.992653, 35.150177, 31.462851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942478, 34.930172, 31.544590>,  <33.858856, 34.563499, 31.680822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942478, 34.930172, 31.544590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044633, -0.356857, -0.933092,
		-0.976885, 0.179865, -0.115517,
		0.209054, 0.916680, -0.340580,
		34.005196, 35.205177, 31.442415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553871, 34.591881, 30.973381>,  <33.858856, 34.563499, 31.680822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553871, 34.591881, 30.973381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806496, 34.901157, 30.950386>,  <33.958069, 35.086723, 30.936588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806496, 34.901157, 30.950386>,  <33.553871, 34.591881, 30.973381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806496, 34.901157, 30.950386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089404, -0.146281, -0.985195,
		-0.770153, 0.617072, -0.161512,
		0.631562, 0.773191, -0.057490,
		33.995964, 35.133114, 30.933140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388981, 34.868984, 30.256763>,  <33.553871, 34.591881, 30.973381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388981, 34.868984, 30.256763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746883, 35.021366, 30.349953>,  <33.961624, 35.112797, 30.405867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746883, 35.021366, 30.349953>,  <33.388981, 34.868984, 30.256763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746883, 35.021366, 30.349953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371149, -0.344355, -0.862362,
		-0.248297, 0.858075, -0.449507,
		0.894761, 0.380956, 0.232972,
		34.015312, 35.135654, 30.419844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545013, 35.169048, 29.704960>,  <33.388981, 34.868984, 30.256763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545013, 35.169048, 29.704960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903305, 35.089188, 29.863857>,  <34.118282, 35.041271, 29.959196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903305, 35.089188, 29.863857>,  <33.545013, 35.169048, 29.704960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903305, 35.089188, 29.863857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295768, -0.399504, -0.867709,
		0.331941, 0.894726, -0.298797,
		0.895732, -0.199654, 0.397243,
		34.172024, 35.029293, 29.983030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069767, 35.403664, 29.137871>,  <33.545013, 35.169048, 29.704960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069767, 35.403664, 29.137871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295910, 35.194721, 29.393221>,  <34.431595, 35.069355, 29.546431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295910, 35.194721, 29.393221>,  <34.069767, 35.403664, 29.137871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295910, 35.194721, 29.393221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603034, -0.266296, -0.751955,
		0.562783, 0.810082, 0.164445,
		0.565354, -0.522353, 0.638374,
		34.465515, 35.038013, 29.584734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831505, 35.657047, 29.202276>,  <34.069767, 35.403664, 29.137871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831505, 35.657047, 29.202276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791355, 35.269703, 29.293661>,  <34.767265, 35.037296, 29.348492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791355, 35.269703, 29.293661>,  <34.831505, 35.657047, 29.202276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791355, 35.269703, 29.293661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671408, -0.235380, -0.702714,
		0.734259, 0.082860, 0.673793,
		-0.100371, -0.968365, 0.228463,
		34.761246, 34.979195, 29.362200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578033, 35.408260, 29.227819>,  <34.831505, 35.657047, 29.202276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578033, 35.408260, 29.227819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348602, 35.081856, 29.199190>,  <35.210941, 34.886013, 29.182013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348602, 35.081856, 29.199190>,  <35.578033, 35.408260, 29.227819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348602, 35.081856, 29.199190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652098, -0.401984, -0.642788,
		0.495754, -0.415363, 0.762693,
		-0.573581, -0.816016, -0.071573,
		35.176529, 34.837051, 29.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162235, 34.893551, 29.323626>,  <35.578033, 35.408260, 29.227819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162235, 34.893551, 29.323626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825195, 34.740486, 29.172047>,  <35.622971, 34.648647, 29.081099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825195, 34.740486, 29.172047>,  <36.162235, 34.893551, 29.323626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825195, 34.740486, 29.172047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535108, -0.515549, -0.669230,
		0.060721, -0.766670, 0.639164,
		-0.842598, -0.382658, -0.378947,
		35.572414, 34.625690, 29.058363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350559, 34.169643, 29.201170>,  <36.162235, 34.893551, 29.323626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350559, 34.169643, 29.201170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033958, 34.273636, 28.979927>,  <35.843998, 34.336033, 28.847181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033958, 34.273636, 28.979927>,  <36.350559, 34.169643, 29.201170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033958, 34.273636, 28.979927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386952, -0.487336, -0.782797,
		-0.473050, -0.833619, 0.285138,
		-0.791513, 0.259968, -0.553104,
		35.796509, 34.351631, 28.813995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485847, 33.635338, 28.765799>,  <36.350559, 34.169643, 29.201170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485847, 33.635338, 28.765799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206116, 33.879528, 28.617069>,  <36.038277, 34.026043, 28.527832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206116, 33.879528, 28.617069>,  <36.485847, 33.635338, 28.765799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206116, 33.879528, 28.617069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303234, -0.217677, -0.927721,
		-0.647289, -0.761535, -0.032888,
		-0.699333, 0.610476, -0.371823,
		35.996315, 34.062672, 28.505522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847027, 33.194569, 28.275558>,  <36.485847, 33.635338, 28.765799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847027, 33.194569, 28.275558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895565, 33.575100, 28.162249>,  <35.924686, 33.803421, 28.094263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895565, 33.575100, 28.162249>,  <35.847027, 33.194569, 28.275558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895565, 33.575100, 28.162249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344739, -0.308010, -0.886727,
		-0.930823, 0.009942, -0.365336,
		0.121343, 0.951331, -0.283275,
		35.931969, 33.860500, 28.077267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822399, 33.151367, 27.595129>,  <35.847027, 33.194569, 28.275558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822399, 33.151367, 27.595129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935501, 33.534966, 27.602962>,  <36.003365, 33.765125, 27.607662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935501, 33.534966, 27.602962>,  <35.822399, 33.151367, 27.595129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935501, 33.534966, 27.602962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318093, -0.074491, -0.945128,
		-0.904911, 0.273473, -0.326112,
		0.282759, 0.958991, 0.019582,
		36.020329, 33.822662, 27.608837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691025, 33.428112, 26.984053>,  <35.822399, 33.151367, 27.595129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691025, 33.428112, 26.984053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964725, 33.687786, 27.116934>,  <36.128944, 33.843590, 27.196663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964725, 33.687786, 27.116934>,  <35.691025, 33.428112, 26.984053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964725, 33.687786, 27.116934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392319, 0.056302, -0.918105,
		-0.614723, 0.758544, -0.216162,
		0.684253, 0.649184, 0.332201,
		36.170002, 33.882542, 27.216595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696030, 34.040016, 26.522209>,  <35.691025, 33.428112, 26.984053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696030, 34.040016, 26.522209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050945, 34.039932, 26.706697>,  <36.263893, 34.039883, 26.817390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050945, 34.039932, 26.706697>,  <35.696030, 34.040016, 26.522209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050945, 34.039932, 26.706697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452723, 0.191477, -0.870849,
		-0.088133, 0.981497, 0.169989,
		0.887285, -0.000207, 0.461222,
		36.317131, 34.039871, 26.845064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026016, 34.601746, 26.211275>,  <35.696030, 34.040016, 26.522209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026016, 34.601746, 26.211275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296982, 34.335308, 26.336132>,  <36.459560, 34.175446, 26.411045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296982, 34.335308, 26.336132>,  <36.026016, 34.601746, 26.211275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296982, 34.335308, 26.336132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479415, 0.077936, -0.874121,
		0.557920, 0.741785, 0.372130,
		0.677412, -0.666094, 0.312141,
		36.500206, 34.135479, 26.429775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561623, 34.789753, 25.864967>,  <36.026016, 34.601746, 26.211275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561623, 34.789753, 25.864967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659237, 34.429634, 26.009136>,  <36.717804, 34.213562, 26.095638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659237, 34.429634, 26.009136>,  <36.561623, 34.789753, 25.864967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659237, 34.429634, 26.009136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664500, -0.115456, -0.738315,
		0.706319, 0.419675, 0.570075,
		0.244034, -0.900301, 0.360423,
		36.732449, 34.159542, 26.117264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320568, 34.798756, 25.867668>,  <36.561623, 34.789753, 25.864967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320568, 34.798756, 25.867668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.154663, 34.436096, 25.836784>,  <37.055119, 34.218502, 25.818254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.154663, 34.436096, 25.836784>,  <37.320568, 34.798756, 25.867668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154663, 34.436096, 25.836784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482775, -0.147343, -0.863261,
		0.771297, -0.395324, 0.498819,
		-0.414765, -0.906647, -0.077208,
		37.030235, 34.164101, 25.813622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844048, 34.306797, 25.560631>,  <37.320568, 34.798756, 25.867668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844048, 34.306797, 25.560631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506866, 34.103760, 25.489325>,  <37.304558, 33.981937, 25.446541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506866, 34.103760, 25.489325>,  <37.844048, 34.306797, 25.560631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506866, 34.103760, 25.489325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272837, -0.117762, -0.954826,
		0.463673, -0.853509, 0.237759,
		-0.842952, -0.507596, -0.178266,
		37.253983, 33.951481, 25.435844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513958, 34.006603, 25.722231>,  <37.844048, 34.306797, 25.560631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513958, 34.006603, 25.722231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801720, 34.269066, 25.631088>,  <38.974377, 34.426544, 25.576403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801720, 34.269066, 25.631088>,  <38.513958, 34.006603, 25.722231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801720, 34.269066, 25.631088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140970, 0.459139, 0.877108,
		0.680140, -0.598872, 0.422804,
		0.719401, 0.656159, -0.227856,
		39.017540, 34.465912, 25.562731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950062, 34.023724, 26.315269>,  <38.513958, 34.006603, 25.722231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950062, 34.023724, 26.315269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984413, 34.365562, 26.110411>,  <39.005024, 34.570663, 25.987495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984413, 34.365562, 26.110411>,  <38.950062, 34.023724, 26.315269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984413, 34.365562, 26.110411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303495, 0.512052, 0.803551,
		0.948955, 0.086427, 0.303339,
		0.085877, 0.854595, -0.512145,
		39.010178, 34.621941, 25.956768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463741, 34.410477, 26.674774>,  <38.950062, 34.023724, 26.315269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463741, 34.410477, 26.674774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.241383, 34.672626, 26.470243>,  <39.107967, 34.829918, 26.347525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.241383, 34.672626, 26.470243>,  <39.463741, 34.410477, 26.674774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241383, 34.672626, 26.470243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285697, 0.427022, 0.857922,
		0.780610, 0.623004, -0.050142,
		-0.555900, 0.655377, -0.511328,
		39.074612, 34.869240, 26.316845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640823, 35.027569, 26.945379>,  <39.463741, 34.410477, 26.674774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640823, 35.027569, 26.945379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288204, 35.070129, 26.761400>,  <39.076633, 35.095665, 26.651012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288204, 35.070129, 26.761400>,  <39.640823, 35.027569, 26.945379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288204, 35.070129, 26.761400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375655, 0.431980, 0.819925,
		0.285930, 0.895585, -0.340840,
		-0.881548, 0.106403, -0.459946,
		39.023739, 35.102051, 26.623417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503246, 35.694019, 26.913616>,  <39.640823, 35.027569, 26.945379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503246, 35.694019, 26.913616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133930, 35.551586, 26.856016>,  <38.912338, 35.466125, 26.821457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133930, 35.551586, 26.856016>,  <39.503246, 35.694019, 26.913616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133930, 35.551586, 26.856016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320627, 0.508089, 0.799402,
		-0.211488, 0.784253, -0.583284,
		-0.923294, -0.356081, -0.143998,
		38.856941, 35.444763, 26.812817>
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
