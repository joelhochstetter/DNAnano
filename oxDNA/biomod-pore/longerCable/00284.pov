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
	<24.086102, 35.146938, 34.742943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.371693, 34.877056, 34.817787>,  <24.543047, 34.715126, 34.862694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.371693, 34.877056, 34.817787>,  <24.086102, 35.146938, 34.742943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371693, 34.877056, 34.817787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214645, 0.465291, 0.858739,
		-0.666456, -0.572957, 0.477029,
		0.713977, -0.674704, 0.187114,
		24.585886, 34.674644, 34.873920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106646, 35.025017, 35.459141>,  <24.086102, 35.146938, 34.742943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106646, 35.025017, 35.459141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478048, 34.932945, 35.342590>,  <24.700890, 34.877705, 35.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478048, 34.932945, 35.342590>,  <24.106646, 35.025017, 35.459141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478048, 34.932945, 35.342590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371106, 0.548532, 0.749262,
		-0.012633, -0.803824, 0.594734,
		0.928505, -0.230174, -0.291374,
		24.756599, 34.863892, 35.255177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615885, 34.611374, 35.925713>,  <24.106646, 35.025017, 35.459141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615885, 34.611374, 35.925713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781771, 34.899113, 35.702805>,  <24.881302, 35.071754, 35.569057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781771, 34.899113, 35.702805>,  <24.615885, 34.611374, 35.925713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781771, 34.899113, 35.702805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294678, 0.473249, 0.830181,
		0.860917, -0.508503, -0.015714,
		0.414713, 0.719347, -0.557273,
		24.906185, 35.114918, 35.535622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203735, 34.753304, 36.255550>,  <24.615885, 34.611374, 35.925713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203735, 34.753304, 36.255550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174662, 35.073616, 36.017738>,  <25.157217, 35.265804, 35.875050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174662, 35.073616, 36.017738>,  <25.203735, 34.753304, 36.255550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174662, 35.073616, 36.017738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435700, 0.561714, 0.703309,
		0.897153, -0.207919, -0.389727,
		-0.072684, 0.800779, -0.594534,
		25.152857, 35.313850, 35.839378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868607, 35.122112, 36.267307>,  <25.203735, 34.753304, 36.255550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868607, 35.122112, 36.267307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601931, 35.394306, 36.145672>,  <25.441925, 35.557621, 36.072693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601931, 35.394306, 36.145672>,  <25.868607, 35.122112, 36.267307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601931, 35.394306, 36.145672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237406, 0.580612, 0.778799,
		0.706516, 0.447024, -0.548639,
		-0.666688, 0.680484, -0.304086,
		25.401924, 35.598450, 36.054447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339239, 35.837914, 36.288776>,  <25.868607, 35.122112, 36.267307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339239, 35.837914, 36.288776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943039, 35.885326, 36.316666>,  <25.705318, 35.913773, 36.333397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943039, 35.885326, 36.316666>,  <26.339239, 35.837914, 36.288776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943039, 35.885326, 36.316666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131770, 0.673070, 0.727745,
		0.039334, 0.730019, -0.682295,
		-0.990500, 0.118531, 0.069720,
		25.645889, 35.920887, 36.337582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037840, 36.454300, 35.963818>,  <26.339239, 35.837914, 36.288776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037840, 36.454300, 35.963818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841068, 36.358559, 36.298653>,  <25.723005, 36.301113, 36.499554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841068, 36.358559, 36.298653>,  <26.037840, 36.454300, 35.963818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841068, 36.358559, 36.298653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419627, 0.777240, 0.468840,
		-0.762837, 0.581901, -0.281906,
		-0.491927, -0.239353, 0.837089,
		25.693491, 36.286755, 36.549778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653704, 37.064087, 36.185226>,  <26.037840, 36.454300, 35.963818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653704, 37.064087, 36.185226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732290, 36.813641, 36.487053>,  <25.779442, 36.663372, 36.668148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732290, 36.813641, 36.487053>,  <25.653704, 37.064087, 36.185226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732290, 36.813641, 36.487053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417021, 0.749854, 0.513627,
		-0.887409, 0.213760, 0.408427,
		0.196468, -0.626120, 0.754569,
		25.791231, 36.625805, 36.713425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305826, 37.358379, 36.856499>,  <25.653704, 37.064087, 36.185226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305826, 37.358379, 36.856499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601828, 37.114628, 36.970379>,  <25.779428, 36.968376, 37.038708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601828, 37.114628, 36.970379>,  <25.305826, 37.358379, 36.856499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601828, 37.114628, 36.970379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463009, 0.768542, 0.441549,
		-0.487872, -0.194931, 0.850872,
		0.740002, -0.609381, 0.284696,
		25.823828, 36.931812, 37.055786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345150, 37.465527, 37.614017>,  <25.305826, 37.358379, 36.856499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345150, 37.465527, 37.614017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689558, 37.300186, 37.495506>,  <25.896204, 37.200981, 37.424400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689558, 37.300186, 37.495506>,  <25.345150, 37.465527, 37.614017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689558, 37.300186, 37.495506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507905, 0.728680, 0.459411,
		0.025992, -0.546043, 0.837354,
		0.861021, -0.413355, -0.296278,
		25.947865, 37.176178, 37.406624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669725, 37.407024, 38.261177>,  <25.345150, 37.465527, 37.614017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669725, 37.407024, 38.261177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913837, 37.396263, 37.944485>,  <26.060305, 37.389805, 37.754471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913837, 37.396263, 37.944485>,  <25.669725, 37.407024, 38.261177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913837, 37.396263, 37.944485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495411, 0.792838, 0.354932,
		0.618162, -0.608838, 0.497183,
		0.610281, -0.026904, -0.791728,
		26.096922, 37.388191, 37.706966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474154, 37.520580, 38.357258>,  <25.669725, 37.407024, 38.261177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474154, 37.520580, 38.357258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255398, 37.185738, 38.352154>,  <26.124146, 36.984833, 38.349091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255398, 37.185738, 38.352154>,  <26.474154, 37.520580, 38.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255398, 37.185738, 38.352154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615125, 0.391431, 0.684399,
		-0.567922, 0.382140, -0.728995,
		-0.546888, -0.837108, -0.012761,
		26.091331, 36.934605, 38.348324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108990, 37.758636, 38.623959>,  <26.474154, 37.520580, 38.357258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108990, 37.758636, 38.623959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265583, 37.396194, 38.688107>,  <27.359539, 37.178730, 38.726597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265583, 37.396194, 38.688107>,  <27.108990, 37.758636, 38.623959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265583, 37.396194, 38.688107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286511, -0.045590, -0.956992,
		0.874443, 0.420596, 0.241760,
		0.391485, -0.906102, 0.160371,
		27.383028, 37.124363, 38.736217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691591, 38.395847, 38.216541>,  <27.108990, 37.758636, 38.623959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691591, 38.395847, 38.216541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932905, 38.372475, 37.898388>,  <27.077694, 38.358452, 37.707497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932905, 38.372475, 37.898388>,  <26.691591, 38.395847, 38.216541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932905, 38.372475, 37.898388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274877, -0.951438, -0.138593,
		-0.748658, 0.302243, -0.590051,
		0.603286, -0.058432, -0.795382,
		27.113892, 38.354946, 37.659775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368149, 38.333233, 37.527409>,  <26.691591, 38.395847, 38.216541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368149, 38.333233, 37.527409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721880, 38.149918, 37.563042>,  <26.934118, 38.039928, 37.584423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721880, 38.149918, 37.563042>,  <26.368149, 38.333233, 37.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721880, 38.149918, 37.563042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455666, -0.888800, -0.049029,
		0.101647, 0.002765, -0.994817,
		0.884328, -0.458288, 0.089084,
		26.987179, 38.012432, 37.589767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474613, 37.903889, 36.876354>,  <26.368149, 38.333233, 37.527409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474613, 37.903889, 36.876354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606346, 37.767059, 37.228382>,  <26.685387, 37.684963, 37.439598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606346, 37.767059, 37.228382>,  <26.474613, 37.903889, 36.876354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606346, 37.767059, 37.228382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490607, -0.858366, -0.150042,
		0.806749, -0.382356, -0.450511,
		0.329334, -0.342070, 0.880072,
		26.705147, 37.664440, 37.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024187, 37.444248, 36.721729>,  <26.474613, 37.903889, 36.876354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024187, 37.444248, 36.721729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768383, 37.408073, 37.027107>,  <26.614901, 37.386368, 37.210335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768383, 37.408073, 37.027107>,  <27.024187, 37.444248, 36.721729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768383, 37.408073, 37.027107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408513, -0.801277, -0.437118,
		0.651262, -0.591419, 0.475481,
		-0.639512, -0.090438, 0.763443,
		26.576530, 37.380943, 37.256142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116869, 36.777145, 36.949158>,  <27.024187, 37.444248, 36.721729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116869, 36.777145, 36.949158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758667, 36.890450, 37.086464>,  <26.543745, 36.958431, 37.168850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758667, 36.890450, 37.086464>,  <27.116869, 36.777145, 36.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758667, 36.890450, 37.086464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428083, -0.759169, -0.490313,
		0.121714, -0.586026, 0.801099,
		-0.895506, 0.283259, 0.343270,
		26.490015, 36.975426, 37.189445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853058, 36.183224, 37.391640>,  <27.116869, 36.777145, 36.949158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853058, 36.183224, 37.391640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539686, 36.415344, 37.302654>,  <26.351664, 36.554619, 37.249264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539686, 36.415344, 37.302654>,  <26.853058, 36.183224, 37.391640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539686, 36.415344, 37.302654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500850, -0.801456, -0.326829,
		-0.367956, -0.144626, 0.918527,
		-0.783427, 0.580303, -0.222465,
		26.304659, 36.589436, 37.235916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339792, 35.684868, 37.476833>,  <26.853058, 36.183224, 37.391640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339792, 35.684868, 37.476833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167267, 35.956631, 37.239388>,  <26.063751, 36.119690, 37.096920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167267, 35.956631, 37.239388>,  <26.339792, 35.684868, 37.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167267, 35.956631, 37.239388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655198, -0.688198, -0.311607,
		-0.620230, 0.254533, 0.741975,
		-0.431312, 0.679409, -0.593611,
		26.037874, 36.160454, 37.061306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551035, 35.656223, 37.571991>,  <26.339792, 35.684868, 37.476833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551035, 35.656223, 37.571991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605793, 35.784832, 37.197208>,  <25.638649, 35.861996, 36.972340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605793, 35.784832, 37.197208>,  <25.551035, 35.656223, 37.571991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605793, 35.784832, 37.197208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675274, -0.661738, -0.325743,
		-0.724751, 0.677294, 0.126525,
		0.136897, 0.321522, -0.936954,
		25.646862, 35.881290, 36.916122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121819, 36.182503, 37.504921>,  <25.551035, 35.656223, 37.571991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121819, 36.182503, 37.504921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230696, 36.417831, 37.200344>,  <25.296022, 36.559029, 37.017597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230696, 36.417831, 37.200344>,  <25.121819, 36.182503, 37.504921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230696, 36.417831, 37.200344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510948, -0.582174, -0.632460,
		-0.815380, 0.561206, 0.142139,
		0.272191, 0.588321, -0.761440,
		25.312353, 36.594326, 36.971912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611448, 36.084801, 36.947128>,  <25.121819, 36.182503, 37.504921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611448, 36.084801, 36.947128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917446, 36.262768, 36.760868>,  <25.101044, 36.369549, 36.649113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917446, 36.262768, 36.760868>,  <24.611448, 36.084801, 36.947128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917446, 36.262768, 36.760868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214408, -0.505837, -0.835559,
		-0.607301, 0.739036, -0.291567,
		0.764993, 0.444922, -0.465650,
		25.146944, 36.396244, 36.621174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447521, 36.490097, 36.354256>,  <24.611448, 36.084801, 36.947128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447521, 36.490097, 36.354256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811831, 36.330215, 36.312817>,  <25.030416, 36.234287, 36.287952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811831, 36.330215, 36.312817>,  <24.447521, 36.490097, 36.354256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811831, 36.330215, 36.312817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269375, -0.385021, -0.882721,
		0.312942, 0.831863, -0.458336,
		0.910771, -0.399704, -0.103594,
		25.085062, 36.210304, 36.281738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644745, 36.589970, 35.711746>,  <24.447521, 36.490097, 36.354256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644745, 36.589970, 35.711746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861519, 36.270546, 35.816521>,  <24.991583, 36.078892, 35.879383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861519, 36.270546, 35.816521>,  <24.644745, 36.589970, 35.711746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861519, 36.270546, 35.816521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263369, -0.457340, -0.849398,
		0.798088, 0.391333, -0.458164,
		0.541934, -0.798561, 0.261932,
		25.024099, 36.030979, 35.895100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036161, 36.418541, 35.052391>,  <24.644745, 36.589970, 35.711746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036161, 36.418541, 35.052391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040447, 36.099186, 35.293209>,  <25.043018, 35.907574, 35.437698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040447, 36.099186, 35.293209>,  <25.036161, 36.418541, 35.052391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040447, 36.099186, 35.293209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282091, -0.580037, -0.764187,
		0.959328, -0.161644, -0.231434,
		0.010715, -0.798391, 0.602044,
		25.043661, 35.859669, 35.473824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533318, 35.893761, 34.728809>,  <25.036161, 36.418541, 35.052391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533318, 35.893761, 34.728809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301414, 35.687370, 34.981045>,  <25.162273, 35.563534, 35.132385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301414, 35.687370, 34.981045>,  <25.533318, 35.893761, 34.728809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301414, 35.687370, 34.981045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152693, -0.691420, -0.706133,
		0.800354, -0.505673, 0.322069,
		-0.579757, -0.515979, 0.630593,
		25.127487, 35.532578, 35.170223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758030, 35.239483, 34.643536>,  <25.533318, 35.893761, 34.728809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758030, 35.239483, 34.643536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400763, 35.203350, 34.819759>,  <25.186403, 35.181671, 34.925495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400763, 35.203350, 34.819759>,  <25.758030, 35.239483, 34.643536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400763, 35.203350, 34.819759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243344, -0.726744, -0.642360,
		0.378201, -0.680942, 0.627122,
		-0.893167, -0.090335, 0.440558,
		25.132812, 35.176250, 34.951927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769823, 34.514980, 34.655460>,  <25.758030, 35.239483, 34.643536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769823, 34.514980, 34.655460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400095, 34.645901, 34.733952>,  <25.178259, 34.724453, 34.781048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400095, 34.645901, 34.733952>,  <25.769823, 34.514980, 34.655460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400095, 34.645901, 34.733952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373764, -0.672680, -0.638593,
		-0.077014, -0.663608, 0.744106,
		-0.924321, 0.327301, 0.196227,
		25.122799, 34.744091, 34.792820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413860, 33.874119, 34.879101>,  <25.769823, 34.514980, 34.655460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413860, 33.874119, 34.879101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207382, 34.172321, 34.710449>,  <25.083496, 34.351242, 34.609261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207382, 34.172321, 34.710449>,  <25.413860, 33.874119, 34.879101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207382, 34.172321, 34.710449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158948, -0.567117, -0.808155,
		-0.841593, -0.350149, 0.411239,
		-0.516195, 0.745502, -0.421626,
		25.052525, 34.395973, 34.583961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727108, 33.655499, 34.608463>,  <25.413860, 33.874119, 34.879101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727108, 33.655499, 34.608463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893379, 33.965073, 34.417366>,  <24.993141, 34.150818, 34.302708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893379, 33.965073, 34.417366>,  <24.727108, 33.655499, 34.608463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893379, 33.965073, 34.417366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141623, -0.463786, -0.874555,
		-0.898419, 0.431191, -0.083178,
		0.415677, 0.773936, -0.477740,
		25.018082, 34.197254, 34.274044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251163, 33.943478, 34.054245>,  <24.727108, 33.655499, 34.608463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251163, 33.943478, 34.054245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643574, 33.969700, 33.981262>,  <24.879021, 33.985432, 33.937473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643574, 33.969700, 33.981262>,  <24.251163, 33.943478, 34.054245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643574, 33.969700, 33.981262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135862, -0.438922, -0.888194,
		-0.138311, 0.896131, -0.421687,
		0.981026, 0.065556, -0.182458,
		24.937881, 33.989368, 33.926525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.376249, 34.275986, 33.329094>,  <24.251163, 33.943478, 34.054245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.376249, 34.275986, 33.329094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675116, 34.022675, 33.409790>,  <24.854435, 33.870686, 33.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675116, 34.022675, 33.409790>,  <24.376249, 34.275986, 33.329094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675116, 34.022675, 33.409790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179839, -0.484837, -0.855915,
		0.639845, 0.603231, -0.476142,
		0.747166, -0.633282, 0.201736,
		24.899265, 33.832691, 33.470310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670507, 34.200207, 32.687130>,  <24.376249, 34.275986, 33.329094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670507, 34.200207, 32.687130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775038, 33.894127, 32.922478>,  <24.837755, 33.710480, 33.063686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775038, 33.894127, 32.922478>,  <24.670507, 34.200207, 32.687130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775038, 33.894127, 32.922478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077614, -0.624236, -0.777371,
		0.962125, 0.157481, -0.222519,
		0.261326, -0.765198, 0.588371,
		24.853436, 33.664566, 33.098988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027809, 33.695312, 32.256592>,  <24.670507, 34.200207, 32.687130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027809, 33.695312, 32.256592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886856, 33.480370, 32.563076>,  <24.802284, 33.351406, 32.746967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886856, 33.480370, 32.563076>,  <25.027809, 33.695312, 32.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886856, 33.480370, 32.563076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357417, -0.679391, -0.640844,
		0.864917, -0.499677, 0.047344,
		-0.352381, -0.537355, 0.766210,
		24.781141, 33.319164, 32.792938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204340, 33.010082, 32.085102>,  <25.027809, 33.695312, 32.256592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204340, 33.010082, 32.085102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886135, 33.016998, 32.327377>,  <24.695211, 33.021149, 32.472744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886135, 33.016998, 32.327377>,  <25.204340, 33.010082, 32.085102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886135, 33.016998, 32.327377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485895, -0.615429, -0.620607,
		0.362029, -0.788003, 0.497983,
		-0.795513, 0.017290, 0.605690,
		24.647482, 33.022186, 32.509083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874449, 32.839909, 32.229721>,  <25.204340, 33.010082, 32.085102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874449, 32.839909, 32.229721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531620, 32.756493, 32.418163>,  <25.325922, 32.706444, 32.531227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531620, 32.756493, 32.418163>,  <25.874449, 32.839909, 32.229721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531620, 32.756493, 32.418163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316131, -0.509159, -0.800511,
		0.406803, -0.835027, 0.370461,
		-0.857072, -0.208537, 0.471105,
		25.274498, 32.693932, 32.559494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807772, 32.159092, 32.348122>,  <25.874449, 32.839909, 32.229721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807772, 32.159092, 32.348122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426987, 32.277637, 32.378944>,  <25.198517, 32.348766, 32.397438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426987, 32.277637, 32.378944>,  <25.807772, 32.159092, 32.348122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426987, 32.277637, 32.378944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286268, -0.771940, -0.567592,
		-0.108729, -0.562385, 0.819696,
		-0.951961, 0.296366, 0.077060,
		25.141399, 32.366547, 32.402061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403971, 31.563848, 32.594833>,  <25.807772, 32.159092, 32.348122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403971, 31.563848, 32.594833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195335, 31.835066, 32.387680>,  <25.070154, 31.997795, 32.263386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195335, 31.835066, 32.387680>,  <25.403971, 31.563848, 32.594833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195335, 31.835066, 32.387680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320664, -0.718282, -0.617452,
		-0.790647, -0.155987, 0.592069,
		-0.521587, 0.678041, -0.517887,
		25.038860, 32.038479, 32.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085407, 31.239397, 32.042770>,  <25.403971, 31.563848, 32.594833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085407, 31.239397, 32.042770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839354, 31.357426, 31.750322>,  <24.691721, 31.428244, 31.574852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839354, 31.357426, 31.750322>,  <25.085407, 31.239397, 32.042770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839354, 31.357426, 31.750322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210933, 0.831929, 0.513226,
		0.759683, 0.469921, -0.449507,
		-0.615134, 0.295073, -0.731124,
		24.654814, 31.445948, 31.530985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323477, 31.938742, 31.819761>,  <25.085407, 31.239397, 32.042770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323477, 31.938742, 31.819761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938669, 31.835228, 31.785000>,  <24.707785, 31.773121, 31.764143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938669, 31.835228, 31.785000>,  <25.323477, 31.938742, 31.819761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938669, 31.835228, 31.785000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256424, 0.747447, 0.612837,
		-0.093636, 0.611844, -0.785416,
		-0.962018, -0.258783, -0.086903,
		24.650064, 31.757593, 31.758928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825506, 32.416645, 31.554623>,  <25.323477, 31.938742, 31.819761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825506, 32.416645, 31.554623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672581, 32.167282, 31.827442>,  <24.580826, 32.017662, 31.991135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672581, 32.167282, 31.827442>,  <24.825506, 32.416645, 31.554623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672581, 32.167282, 31.827442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042723, 0.749261, 0.660895,
		-0.923044, 0.223531, -0.313088,
		-0.382316, -0.623411, 0.682051,
		24.557886, 31.980259, 32.032059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114191, 32.620125, 31.869799>,  <24.825506, 32.416645, 31.554623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.114191, 32.620125, 31.869799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324816, 32.398136, 32.127399>,  <24.451191, 32.264942, 32.281960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324816, 32.398136, 32.127399>,  <24.114191, 32.620125, 31.869799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324816, 32.398136, 32.127399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183712, 0.813909, 0.551183,
		-0.830051, -0.171920, 0.530527,
		0.526560, -0.554974, 0.644002,
		24.482784, 32.231644, 32.320599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999142, 32.910633, 32.508389>,  <24.114191, 32.620125, 31.869799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999142, 32.910633, 32.508389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339968, 32.704350, 32.544243>,  <24.544464, 32.580582, 32.565758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339968, 32.704350, 32.544243>,  <23.999142, 32.910633, 32.508389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339968, 32.704350, 32.544243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349207, 0.687620, 0.636579,
		-0.389924, -0.511104, 0.765984,
		0.852064, -0.515704, 0.089639,
		24.595587, 32.549637, 32.571133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.118727, 32.587696, 33.195652>,  <23.999142, 32.910633, 32.508389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.118727, 32.587696, 33.195652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461096, 32.657776, 33.001045>,  <24.666517, 32.699821, 32.884281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461096, 32.657776, 33.001045>,  <24.118727, 32.587696, 33.195652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461096, 32.657776, 33.001045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279172, 0.635399, 0.719952,
		0.435265, -0.752047, 0.494944,
		0.855925, 0.175196, -0.486518,
		24.717873, 32.710335, 32.855091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.697514, 32.499905, 33.697166>,  <24.118727, 32.587696, 33.195652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.697514, 32.499905, 33.697166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802330, 32.744896, 33.398849>,  <24.865219, 32.891891, 33.219860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802330, 32.744896, 33.398849>,  <24.697514, 32.499905, 33.697166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802330, 32.744896, 33.398849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390547, 0.639387, 0.662312,
		0.882501, -0.464820, -0.071655,
		0.262041, 0.612476, -0.745794,
		24.880941, 32.928638, 33.175110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383545, 32.668602, 33.712875>,  <24.697514, 32.499905, 33.697166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383545, 32.668602, 33.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201408, 32.978813, 33.537956>,  <25.092127, 33.164940, 33.433006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201408, 32.978813, 33.537956>,  <25.383545, 32.668602, 33.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201408, 32.978813, 33.537956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420822, 0.620311, 0.661909,
		0.784585, 0.117373, -0.608811,
		-0.455342, 0.775525, -0.437293,
		25.064806, 33.211472, 33.406769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942398, 33.111538, 33.716640>,  <25.383545, 32.668602, 33.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942398, 33.111538, 33.716640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619158, 33.337624, 33.650303>,  <25.425215, 33.473274, 33.610500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619158, 33.337624, 33.650303>,  <25.942398, 33.111538, 33.716640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619158, 33.337624, 33.650303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377930, 0.713461, 0.590036,
		0.451824, 0.414129, -0.790160,
		-0.808099, 0.565217, -0.165847,
		25.376728, 33.507191, 33.600548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264988, 33.678444, 33.569763>,  <25.942398, 33.111538, 33.716640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264988, 33.678444, 33.569763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884981, 33.749393, 33.672531>,  <25.656977, 33.791962, 33.734192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884981, 33.749393, 33.672531>,  <26.264988, 33.678444, 33.569763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884981, 33.749393, 33.672531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295403, 0.776998, 0.555888,
		-0.101024, 0.603997, -0.790558,
		-0.950016, 0.177375, 0.256918,
		25.599976, 33.802605, 33.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209238, 34.254150, 34.114525>,  <26.264988, 33.678444, 33.569763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209238, 34.254150, 34.114525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817560, 34.221798, 34.040077>,  <25.582554, 34.202389, 33.995407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817560, 34.221798, 34.040077>,  <26.209238, 34.254150, 34.114525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817560, 34.221798, 34.040077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165811, 0.847633, 0.504008,
		0.117000, 0.524382, -0.843406,
		-0.979192, -0.080877, -0.186122,
		25.523802, 34.197536, 33.984241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873119, 33.959732, 34.481457>,  <26.209238, 34.254150, 34.114525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873119, 33.959732, 34.481457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122738, 34.259293, 34.392269>,  <27.272509, 34.439030, 34.338757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122738, 34.259293, 34.392269>,  <26.873119, 33.959732, 34.481457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122738, 34.259293, 34.392269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769043, 0.639173, -0.005561,
		0.138350, 0.174942, 0.974810,
		0.624045, 0.748902, -0.222967,
		27.309952, 34.483963, 34.325378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703369, 34.530338, 34.941010>,  <26.873119, 33.959732, 34.481457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703369, 34.530338, 34.941010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878477, 34.708298, 34.628490>,  <26.983541, 34.815071, 34.440979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878477, 34.708298, 34.628490>,  <26.703369, 34.530338, 34.941010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878477, 34.708298, 34.628490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650437, 0.756651, 0.066416,
		0.620718, 0.479110, 0.620615,
		0.437768, 0.444897, -0.781298,
		27.009808, 34.841766, 34.394100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833746, 35.303104, 34.998005>,  <26.703369, 34.530338, 34.941010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833746, 35.303104, 34.998005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789019, 35.223984, 34.608467>,  <26.762182, 35.176510, 34.374744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789019, 35.223984, 34.608467>,  <26.833746, 35.303104, 34.998005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789019, 35.223984, 34.608467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814802, 0.579239, -0.024093,
		0.568854, 0.790795, -0.225938,
		-0.111819, -0.197801, -0.973844,
		26.755472, 35.164642, 34.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851084, 35.935219, 34.657997>,  <26.833746, 35.303104, 34.998005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851084, 35.935219, 34.657997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625406, 35.649555, 34.492271>,  <26.490000, 35.478157, 34.392834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625406, 35.649555, 34.492271>,  <26.851084, 35.935219, 34.657997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625406, 35.649555, 34.492271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787828, 0.615790, 0.011372,
		0.247011, 0.332827, -0.910061,
		-0.564191, -0.714163, -0.414318,
		26.456148, 35.435307, 34.367977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515579, 36.280560, 34.098377>,  <26.851084, 35.935219, 34.657997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515579, 36.280560, 34.098377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314373, 35.952171, 34.206436>,  <26.193649, 35.755138, 34.271271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314373, 35.952171, 34.206436>,  <26.515579, 36.280560, 34.098377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314373, 35.952171, 34.206436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804263, 0.559075, 0.201485,
		-0.316446, -0.115918, -0.941502,
		-0.503014, -0.820974, 0.270145,
		26.163469, 35.705879, 34.287479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671146, 36.807743, 34.600777>,  <26.515579, 36.280560, 34.098377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671146, 36.807743, 34.600777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751173, 37.105331, 34.345753>,  <26.799189, 37.283882, 34.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751173, 37.105331, 34.345753>,  <26.671146, 36.807743, 34.600777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751173, 37.105331, 34.345753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093229, 0.633312, 0.768261,
		0.975337, -0.213143, 0.057346,
		0.200067, 0.743967, -0.637563,
		26.811193, 37.328522, 34.154484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181356, 37.190689, 34.900459>,  <26.671146, 36.807743, 34.600777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181356, 37.190689, 34.900459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020172, 37.460472, 34.653000>,  <26.923462, 37.622341, 34.504524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020172, 37.460472, 34.653000>,  <27.181356, 37.190689, 34.900459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020172, 37.460472, 34.653000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062970, 0.694792, 0.716449,
		0.913049, 0.249745, -0.322444,
		-0.402961, 0.674457, -0.618652,
		26.899284, 37.662807, 34.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599174, 37.807552, 34.894646>,  <27.181356, 37.190689, 34.900459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599174, 37.807552, 34.894646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228331, 37.898373, 34.775372>,  <27.005825, 37.952866, 34.703808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228331, 37.898373, 34.775372>,  <27.599174, 37.807552, 34.894646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228331, 37.898373, 34.775372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099606, 0.617738, 0.780050,
		0.361310, 0.752894, -0.550096,
		-0.927110, 0.227048, -0.298188,
		26.950197, 37.966488, 34.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605217, 38.405972, 34.987556>,  <27.599174, 37.807552, 34.894646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605217, 38.405972, 34.987556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216690, 38.311089, 34.980881>,  <26.983574, 38.254158, 34.976875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216690, 38.311089, 34.980881>,  <27.605217, 38.405972, 34.987556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216690, 38.311089, 34.980881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185278, 0.710963, 0.678383,
		-0.149054, 0.662016, -0.734518,
		-0.971316, -0.237206, -0.016685,
		26.925295, 38.239925, 34.975876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071806, 38.922176, 35.116066>,  <27.605217, 38.405972, 34.987556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071806, 38.922176, 35.116066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886009, 38.595509, 35.253059>,  <26.774530, 38.399506, 35.335255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886009, 38.595509, 35.253059>,  <27.071806, 38.922176, 35.116066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886009, 38.595509, 35.253059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272248, 0.499687, 0.822310,
		-0.842691, 0.288717, -0.454439,
		-0.464493, -0.816673, 0.342479,
		26.746662, 38.350506, 35.355804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372690, 39.064552, 35.185860>,  <27.071806, 38.922176, 35.116066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372690, 39.064552, 35.185860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472055, 38.775181, 35.443523>,  <26.531675, 38.601559, 35.598122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472055, 38.775181, 35.443523>,  <26.372690, 39.064552, 35.185860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472055, 38.775181, 35.443523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531062, 0.454440, 0.715163,
		-0.810101, -0.519744, -0.271298,
		0.248413, -0.723430, 0.644159,
		26.546579, 38.558151, 35.636772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897749, 38.512814, 34.915565>,  <26.372690, 39.064552, 35.185860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897749, 38.512814, 34.915565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270256, 38.575584, 34.784042>,  <26.493759, 38.613247, 34.705128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270256, 38.575584, 34.784042>,  <25.897749, 38.512814, 34.915565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270256, 38.575584, 34.784042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132738, -0.694315, -0.707324,
		-0.339298, 0.702352, -0.625762,
		0.931267, 0.156931, -0.328808,
		26.549637, 38.622665, 34.685398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942196, 38.425232, 34.199837>,  <25.897749, 38.512814, 34.915565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942196, 38.425232, 34.199837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323944, 38.361378, 34.300785>,  <26.552994, 38.323063, 34.361355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323944, 38.361378, 34.300785>,  <25.942196, 38.425232, 34.199837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323944, 38.361378, 34.300785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085189, -0.664454, -0.742458,
		0.286213, 0.730080, -0.620536,
		0.954372, -0.159638, 0.252370,
		26.610256, 38.313488, 34.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427002, 38.564533, 33.602039>,  <25.942196, 38.425232, 34.199837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427002, 38.564533, 33.602039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555334, 38.290989, 33.864155>,  <26.632334, 38.126862, 34.021423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555334, 38.290989, 33.864155>,  <26.427002, 38.564533, 33.602039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555334, 38.290989, 33.864155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157095, -0.643856, -0.748846,
		0.934017, 0.343196, -0.099138,
		0.320831, -0.683861, 0.655287,
		26.651583, 38.085831, 34.060741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971071, 38.236923, 33.225124>,  <26.427002, 38.564533, 33.602039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971071, 38.236923, 33.225124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913176, 37.963642, 33.511421>,  <26.878439, 37.799671, 33.683197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913176, 37.963642, 33.511421>,  <26.971071, 38.236923, 33.225124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913176, 37.963642, 33.511421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383661, -0.705516, -0.595862,
		0.912061, 0.188358, 0.364234,
		-0.144738, -0.683205, 0.715739,
		26.869755, 37.758682, 33.726143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571354, 37.906330, 33.418163>,  <26.971071, 38.236923, 33.225124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571354, 37.906330, 33.418163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259567, 37.660229, 33.465309>,  <27.072495, 37.512569, 33.493595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259567, 37.660229, 33.465309>,  <27.571354, 37.906330, 33.418163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259567, 37.660229, 33.465309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371046, -0.605033, -0.704457,
		0.504733, -0.505368, 0.699891,
		-0.779467, -0.615255, 0.117865,
		27.025726, 37.475651, 33.500668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759979, 37.116642, 33.457317>,  <27.571354, 37.906330, 33.418163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759979, 37.116642, 33.457317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404999, 37.156059, 33.277222>,  <27.192011, 37.179710, 33.169163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404999, 37.156059, 33.277222>,  <27.759979, 37.116642, 33.457317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404999, 37.156059, 33.277222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301896, -0.613860, -0.729407,
		-0.348260, -0.783241, 0.515023,
		-0.887453, 0.098539, -0.450240,
		27.138763, 37.185619, 33.142151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287106, 36.429749, 33.332115>,  <27.759979, 37.116642, 33.457317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287106, 36.429749, 33.332115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262722, 36.730106, 33.069073>,  <27.248093, 36.910320, 32.911247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262722, 36.730106, 33.069073>,  <27.287106, 36.429749, 33.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262722, 36.730106, 33.069073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254153, -0.625439, -0.737721,
		-0.965241, -0.212102, -0.152717,
		-0.060957, 0.750892, -0.657606,
		27.244434, 36.955376, 32.871792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112270, 36.057323, 32.783722>,  <27.287106, 36.429749, 33.332115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112270, 36.057323, 32.783722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252821, 36.394844, 32.621475>,  <27.337152, 36.597359, 32.524128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252821, 36.394844, 32.621475>,  <27.112270, 36.057323, 32.783722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252821, 36.394844, 32.621475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275934, -0.507337, -0.816376,
		-0.894647, 0.174934, -0.411102,
		0.351379, 0.843805, -0.405618,
		27.358234, 36.647987, 32.499790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001888, 35.961758, 32.131268>,  <27.112270, 36.057323, 32.783722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001888, 35.961758, 32.131268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279078, 36.250095, 32.136364>,  <27.445391, 36.423100, 32.139423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279078, 36.250095, 32.136364>,  <27.001888, 35.961758, 32.131268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279078, 36.250095, 32.136364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442062, -0.410875, -0.797347,
		-0.569532, 0.558174, -0.603386,
		0.692975, 0.720849, 0.012742,
		27.486971, 36.466351, 32.140186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933382, 36.386093, 31.442139>,  <27.001888, 35.961758, 32.131268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933382, 36.386093, 31.442139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299072, 36.396149, 31.603909>,  <27.518486, 36.402184, 31.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299072, 36.396149, 31.603909>,  <26.933382, 36.386093, 31.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299072, 36.396149, 31.603909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358833, -0.513853, -0.779227,
		0.188227, 0.857510, -0.478798,
		0.914226, 0.025137, 0.404423,
		27.573339, 36.403690, 31.725235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321138, 36.636936, 30.936747>,  <26.933382, 36.386093, 31.442139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321138, 36.636936, 30.936747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591415, 36.447750, 31.162930>,  <27.753582, 36.334240, 31.298639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591415, 36.447750, 31.162930>,  <27.321138, 36.636936, 30.936747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591415, 36.447750, 31.162930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431273, -0.368473, -0.823548,
		0.597863, 0.800334, -0.045000,
		0.675694, -0.472962, 0.565459,
		27.794125, 36.305862, 31.332567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909412, 36.752991, 30.525627>,  <27.321138, 36.636936, 30.936747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909412, 36.752991, 30.525627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004879, 36.471462, 30.793261>,  <28.062159, 36.302544, 30.953840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004879, 36.471462, 30.793261>,  <27.909412, 36.752991, 30.525627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004879, 36.471462, 30.793261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601412, -0.433833, -0.670889,
		0.762457, 0.562514, 0.319745,
		0.238668, -0.703823, 0.669082,
		28.076479, 36.260315, 30.993986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584688, 36.771843, 30.494993>,  <27.909412, 36.752991, 30.525627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584688, 36.771843, 30.494993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505018, 36.407799, 30.640339>,  <28.457216, 36.189373, 30.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505018, 36.407799, 30.640339>,  <28.584688, 36.771843, 30.494993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505018, 36.407799, 30.640339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733697, -0.384293, -0.560364,
		0.649629, 0.154989, 0.744285,
		-0.199173, -0.910109, 0.363363,
		28.445267, 36.134766, 30.749348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205582, 36.498993, 30.755377>,  <28.584688, 36.771843, 30.494993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205582, 36.498993, 30.755377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999084, 36.158741, 30.715517>,  <28.875187, 35.954590, 30.691601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999084, 36.158741, 30.715517>,  <29.205582, 36.498993, 30.755377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999084, 36.158741, 30.715517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723942, -0.371243, -0.581452,
		0.457605, -0.372310, 0.807455,
		-0.516242, -0.850626, -0.099648,
		28.844212, 35.903553, 30.685623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686996, 35.943306, 30.860559>,  <29.205582, 36.498993, 30.755377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686996, 35.943306, 30.860559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367769, 35.786594, 30.677435>,  <29.176233, 35.692566, 30.567560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367769, 35.786594, 30.677435>,  <29.686996, 35.943306, 30.860559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367769, 35.786594, 30.677435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597068, -0.616570, -0.513178,
		-0.081219, -0.682896, 0.725986,
		-0.798069, -0.391783, -0.457812,
		29.128349, 35.669060, 30.540091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693583, 35.171101, 30.994944>,  <29.686996, 35.943306, 30.860559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693583, 35.171101, 30.994944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478416, 35.241486, 30.665173>,  <29.349318, 35.283718, 30.467310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478416, 35.241486, 30.665173>,  <29.693583, 35.171101, 30.994944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478416, 35.241486, 30.665173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516743, -0.703866, -0.487390,
		-0.666051, -0.688193, 0.287693,
		-0.537916, 0.175963, -0.824430,
		29.317041, 35.294273, 30.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597277, 34.526627, 30.638462>,  <29.693583, 35.171101, 30.994944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597277, 34.526627, 30.638462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537058, 34.789112, 30.342701>,  <29.500927, 34.946606, 30.165245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537058, 34.789112, 30.342701>,  <29.597277, 34.526627, 30.638462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537058, 34.789112, 30.342701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510004, -0.589166, -0.626721,
		-0.846895, -0.471449, -0.245975,
		-0.150547, 0.656215, -0.739403,
		29.491894, 34.985977, 30.120880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745039, 34.124268, 30.063608>,  <29.597277, 34.526627, 30.638462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745039, 34.124268, 30.063608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711933, 34.472534, 29.869665>,  <29.692070, 34.681496, 29.753300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711933, 34.472534, 29.869665>,  <29.745039, 34.124268, 30.063608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711933, 34.472534, 29.869665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638730, -0.327115, -0.696433,
		-0.764966, -0.367332, -0.529049,
		-0.082762, 0.870668, -0.484858,
		29.687105, 34.733734, 29.724207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568335, 34.017124, 29.366386>,  <29.745039, 34.124268, 30.063608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568335, 34.017124, 29.366386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722204, 34.385975, 29.349865>,  <29.814526, 34.607285, 29.339952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722204, 34.385975, 29.349865>,  <29.568335, 34.017124, 29.366386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722204, 34.385975, 29.349865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624935, -0.293107, -0.723564,
		-0.679326, 0.252522, -0.689020,
		0.384673, 0.922128, -0.041305,
		29.837606, 34.662613, 29.337473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475822, 34.316727, 28.615480>,  <29.568335, 34.017124, 29.366386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475822, 34.316727, 28.615480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766701, 34.538986, 28.776695>,  <29.941227, 34.672344, 28.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766701, 34.538986, 28.776695>,  <29.475822, 34.316727, 28.615480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766701, 34.538986, 28.776695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556676, -0.133850, -0.819876,
		-0.401618, 0.820571, -0.406653,
		0.727196, 0.555651, 0.403036,
		29.984859, 34.705681, 28.897606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594725, 34.918915, 28.156155>,  <29.475822, 34.316727, 28.615480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594725, 34.918915, 28.156155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924307, 34.857830, 28.374432>,  <30.122057, 34.821178, 28.505398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924307, 34.857830, 28.374432>,  <29.594725, 34.918915, 28.156155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924307, 34.857830, 28.374432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526609, -0.149231, -0.836907,
		0.209237, 0.976939, -0.042542,
		0.823955, -0.152709, 0.545690,
		30.171494, 34.812016, 28.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144930, 35.446217, 27.927599>,  <29.594725, 34.918915, 28.156155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144930, 35.446217, 27.927599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332947, 35.130074, 28.084774>,  <30.445757, 34.940388, 28.179079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332947, 35.130074, 28.084774>,  <30.144930, 35.446217, 27.927599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332947, 35.130074, 28.084774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443863, -0.173139, -0.879209,
		0.762919, 0.587676, 0.269426,
		0.470042, -0.790354, 0.392939,
		30.473959, 34.892967, 28.202656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831259, 35.532822, 27.759079>,  <30.144930, 35.446217, 27.927599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831259, 35.532822, 27.759079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752735, 35.147717, 27.833424>,  <30.705622, 34.916653, 27.878031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752735, 35.147717, 27.833424>,  <30.831259, 35.532822, 27.759079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752735, 35.147717, 27.833424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464658, -0.258254, -0.846993,
		0.863455, -0.079912, 0.498055,
		-0.196310, -0.962766, 0.185859,
		30.693842, 34.858887, 27.889181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445980, 35.145573, 27.563055>,  <30.831259, 35.532822, 27.759079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445980, 35.145573, 27.563055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182135, 34.844933, 27.562189>,  <31.023829, 34.664547, 27.561670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182135, 34.844933, 27.562189>,  <31.445980, 35.145573, 27.563055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182135, 34.844933, 27.562189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397209, -0.346147, -0.849946,
		0.638073, -0.561494, 0.526866,
		-0.659612, -0.751603, -0.002164,
		30.984251, 34.619453, 27.561541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846218, 34.540165, 27.406677>,  <31.445980, 35.145573, 27.563055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846218, 34.540165, 27.406677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466513, 34.457943, 27.311476>,  <31.238689, 34.408611, 27.254354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466513, 34.457943, 27.311476>,  <31.846218, 34.540165, 27.406677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466513, 34.457943, 27.311476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309642, -0.478653, -0.821592,
		0.054961, -0.853603, 0.518017,
		-0.949264, -0.205555, -0.238004,
		31.181734, 34.396278, 27.240074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730621, 33.690140, 27.350843>,  <31.846218, 34.540165, 27.406677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730621, 33.690140, 27.350843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414770, 33.856297, 27.170206>,  <31.225260, 33.955990, 27.061825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414770, 33.856297, 27.170206>,  <31.730621, 33.690140, 27.350843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414770, 33.856297, 27.170206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047017, -0.692864, -0.719534,
		-0.611779, -0.589399, 0.527576,
		-0.789631, 0.415391, -0.451591,
		31.177881, 33.980915, 27.034729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318453, 33.125549, 27.144644>,  <31.730621, 33.690140, 27.350843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318453, 33.125549, 27.144644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220543, 33.440884, 26.918859>,  <31.161797, 33.630085, 26.783388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220543, 33.440884, 26.918859>,  <31.318453, 33.125549, 27.144644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220543, 33.440884, 26.918859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111278, -0.555483, -0.824048,
		-0.963173, -0.264520, 0.048245,
		-0.244776, 0.788332, -0.564462,
		31.147110, 33.677383, 26.749521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925453, 32.905064, 26.536396>,  <31.318453, 33.125549, 27.144644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925453, 32.905064, 26.536396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085251, 33.251408, 26.415939>,  <31.181129, 33.459213, 26.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085251, 33.251408, 26.415939>,  <30.925453, 32.905064, 26.536396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085251, 33.251408, 26.415939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198450, -0.402384, -0.893703,
		-0.894999, 0.297267, -0.332580,
		0.399493, 0.865864, -0.301140,
		31.205099, 33.511166, 26.325598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674158, 32.995125, 25.837177>,  <30.925453, 32.905064, 26.536396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674158, 32.995125, 25.837177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971460, 33.262726, 25.836409>,  <31.149841, 33.423286, 25.835947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971460, 33.262726, 25.836409>,  <30.674158, 32.995125, 25.837177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971460, 33.262726, 25.836409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263861, -0.295783, -0.918090,
		-0.614772, 0.681871, -0.396367,
		0.743258, 0.669002, -0.001920,
		31.194437, 33.463425, 25.835833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581547, 33.353092, 25.190491>,  <30.674158, 32.995125, 25.837177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581547, 33.353092, 25.190491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957672, 33.414772, 25.311840>,  <31.183348, 33.451778, 25.384649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957672, 33.414772, 25.311840>,  <30.581547, 33.353092, 25.190491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957672, 33.414772, 25.311840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329574, -0.190424, -0.924727,
		-0.084824, 0.969516, -0.229879,
		0.940312, 0.154201, 0.303374,
		31.239765, 33.461033, 25.402853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733849, 33.656998, 24.587212>,  <30.581547, 33.353092, 25.190491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733849, 33.656998, 24.587212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066814, 33.523750, 24.764351>,  <31.266594, 33.443802, 24.870634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066814, 33.523750, 24.764351>,  <30.733849, 33.656998, 24.587212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066814, 33.523750, 24.764351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374291, -0.251332, -0.892602,
		0.408642, 0.908772, -0.084531,
		0.832417, -0.333115, 0.442851,
		31.316540, 33.423817, 24.897205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260605, 33.959156, 24.293718>,  <30.733849, 33.656998, 24.587212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260605, 33.959156, 24.293718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453815, 33.664524, 24.483088>,  <31.569742, 33.487743, 24.596708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453815, 33.664524, 24.483088>,  <31.260605, 33.959156, 24.293718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453815, 33.664524, 24.483088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580545, -0.135345, -0.802900,
		0.655479, 0.662665, 0.362245,
		0.483026, -0.736584, 0.473423,
		31.598722, 33.443550, 24.625114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971981, 34.136810, 24.368547>,  <31.260605, 33.959156, 24.293718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971981, 34.136810, 24.368547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941753, 33.738026, 24.376123>,  <31.923616, 33.498756, 24.380669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941753, 33.738026, 24.376123>,  <31.971981, 34.136810, 24.368547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941753, 33.738026, 24.376123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727786, -0.068131, -0.682412,
		0.681628, -0.037783, 0.730723,
		-0.075568, -0.996961, 0.018942,
		31.919083, 33.438938, 24.381805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688950, 33.852253, 24.289328>,  <31.971981, 34.136810, 24.368547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688950, 33.852253, 24.289328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453148, 33.550194, 24.174622>,  <32.311668, 33.368958, 24.105797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453148, 33.550194, 24.174622>,  <32.688950, 33.852253, 24.289328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453148, 33.550194, 24.174622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652128, -0.235423, -0.720628,
		0.476670, -0.611822, 0.631236,
		-0.589503, -0.755149, -0.286767,
		32.276299, 33.323650, 24.088591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135799, 33.348354, 24.118778>,  <32.688950, 33.852253, 24.289328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135799, 33.348354, 24.118778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789928, 33.223537, 23.961317>,  <32.582405, 33.148647, 23.866840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789928, 33.223537, 23.961317>,  <33.135799, 33.348354, 24.118778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789928, 33.223537, 23.961317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473522, -0.244775, -0.846087,
		0.167662, -0.917994, 0.359412,
		-0.864677, -0.312046, -0.393651,
		32.530525, 33.129925, 23.843222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337067, 32.745487, 23.758032>,  <33.135799, 33.348354, 24.118778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337067, 32.745487, 23.758032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976860, 32.848156, 23.617640>,  <32.760735, 32.909756, 23.533403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976860, 32.848156, 23.617640>,  <33.337067, 32.745487, 23.758032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976860, 32.848156, 23.617640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286336, -0.257414, -0.922903,
		-0.327230, -0.931589, 0.158312,
		-0.900517, 0.256671, -0.350981,
		32.706703, 32.925156, 23.512344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137283, 32.207424, 23.374029>,  <33.337067, 32.745487, 23.758032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137283, 32.207424, 23.374029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923702, 32.509441, 23.221815>,  <32.795555, 32.690651, 23.130487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923702, 32.509441, 23.221815>,  <33.137283, 32.207424, 23.374029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923702, 32.509441, 23.221815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408444, -0.163728, -0.897979,
		-0.740315, -0.634907, -0.220969,
		-0.533954, 0.755041, -0.380534,
		32.763515, 32.735954, 23.107655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035656, 31.970442, 22.797791>,  <33.137283, 32.207424, 23.374029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035656, 31.970442, 22.797791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963085, 32.363232, 22.776590>,  <32.919544, 32.598907, 22.763870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963085, 32.363232, 22.776590>,  <33.035656, 31.970442, 22.797791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963085, 32.363232, 22.776590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409149, 0.026362, -0.912087,
		-0.894250, -0.187160, -0.406557,
		-0.181424, 0.981976, -0.053002,
		32.908657, 32.657825, 22.760691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828396, 32.077946, 22.095385>,  <33.035656, 31.970442, 22.797791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828396, 32.077946, 22.095385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974121, 32.425915, 22.228357>,  <33.061554, 32.634697, 22.308142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974121, 32.425915, 22.228357>,  <32.828396, 32.077946, 22.095385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974121, 32.425915, 22.228357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507902, 0.113605, -0.853891,
		-0.780586, 0.479923, -0.400449,
		0.364308, 0.869924, 0.332433,
		33.083412, 32.686893, 22.328087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849209, 32.481800, 21.511971>,  <32.828396, 32.077946, 22.095385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849209, 32.481800, 21.511971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063637, 32.715343, 21.755852>,  <33.192295, 32.855469, 21.902180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063637, 32.715343, 21.755852>,  <32.849209, 32.481800, 21.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063637, 32.715343, 21.755852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567824, 0.285052, -0.772219,
		-0.624662, 0.760169, -0.178719,
		0.536072, 0.583857, 0.609703,
		33.224457, 32.890499, 21.938763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942078, 33.082329, 21.119989>,  <32.849209, 32.481800, 21.511971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942078, 33.082329, 21.119989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227394, 33.077152, 21.400288>,  <33.398586, 33.074047, 21.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227394, 33.077152, 21.400288>,  <32.942078, 33.082329, 21.119989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227394, 33.077152, 21.400288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697097, -0.090413, -0.711254,
		0.072562, 0.995820, -0.055469,
		0.713296, -0.012943, 0.700743,
		33.441383, 33.073269, 21.610510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402721, 33.649387, 21.134125>,  <32.942078, 33.082329, 21.119989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402721, 33.649387, 21.134125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637276, 33.393166, 21.332455>,  <33.778008, 33.239433, 21.451452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637276, 33.393166, 21.332455>,  <33.402721, 33.649387, 21.134125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637276, 33.393166, 21.332455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740066, 0.174796, -0.649422,
		0.329319, 0.747758, 0.576548,
		0.586389, -0.640550, 0.495826,
		33.813194, 33.201000, 21.481203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051758, 33.980450, 21.409847>,  <33.402721, 33.649387, 21.134125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051758, 33.980450, 21.409847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157391, 33.595020, 21.392965>,  <34.220772, 33.363762, 21.382835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157391, 33.595020, 21.392965>,  <34.051758, 33.980450, 21.409847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157391, 33.595020, 21.392965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783174, 0.239770, -0.573715,
		0.562938, 0.118453, 0.817967,
		0.264082, -0.963576, -0.042207,
		34.236614, 33.305946, 21.380302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804424, 33.941444, 21.553896>,  <34.051758, 33.980450, 21.409847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804424, 33.941444, 21.553896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712585, 33.591228, 21.383852>,  <34.657482, 33.381100, 21.281826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712585, 33.591228, 21.383852>,  <34.804424, 33.941444, 21.553896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712585, 33.591228, 21.383852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891103, -0.013438, -0.453601,
		0.391432, -0.482965, 0.783279,
		-0.229600, -0.875537, -0.425112,
		34.643707, 33.328568, 21.256319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440193, 33.640800, 21.561743>,  <34.804424, 33.941444, 21.553896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440193, 33.640800, 21.561743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231113, 33.439602, 21.286417>,  <35.105663, 33.318882, 21.121222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231113, 33.439602, 21.286417>,  <35.440193, 33.640800, 21.561743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231113, 33.439602, 21.286417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824009, -0.091053, -0.559212,
		0.218608, -0.859479, 0.462067,
		-0.522704, -0.502996, -0.688314,
		35.074303, 33.288704, 21.079924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914333, 33.073452, 21.295391>,  <35.440193, 33.640800, 21.561743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914333, 33.073452, 21.295391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632179, 33.151447, 21.022799>,  <35.462887, 33.198242, 20.859243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632179, 33.151447, 21.022799>,  <35.914333, 33.073452, 21.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632179, 33.151447, 21.022799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681075, -0.079956, -0.727836,
		-0.196407, -0.977541, -0.076401,
		-0.705381, 0.194987, -0.681482,
		35.420567, 33.209942, 20.818354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995144, 32.588268, 20.774651>,  <35.914333, 33.073452, 21.295391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995144, 32.588268, 20.774651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818756, 32.910793, 20.616968>,  <35.712925, 33.104309, 20.522358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818756, 32.910793, 20.616968>,  <35.995144, 32.588268, 20.774651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818756, 32.910793, 20.616968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756489, 0.097554, -0.646689,
		-0.482980, -0.583384, -0.652988,
		-0.440970, 0.806317, -0.394207,
		35.686466, 33.152687, 20.498707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381992, 32.759739, 20.089748>,  <35.995144, 32.588268, 20.774651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381992, 32.759739, 20.089748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178192, 33.094055, 20.171593>,  <36.055912, 33.294643, 20.220699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178192, 33.094055, 20.171593>,  <36.381992, 32.759739, 20.089748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178192, 33.094055, 20.171593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574625, 0.507483, -0.642080,
		-0.640482, -0.209564, -0.738828,
		-0.509499, 0.835790, 0.204613,
		36.025341, 33.344791, 20.232977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882996, 33.082344, 19.485680>,  <36.381992, 32.759739, 20.089748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882996, 33.082344, 19.485680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065098, 33.314281, 19.755947>,  <36.174358, 33.453445, 19.918108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065098, 33.314281, 19.755947>,  <35.882996, 33.082344, 19.485680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065098, 33.314281, 19.755947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421329, 0.528230, -0.737194,
		-0.784365, 0.620287, -0.003827,
		0.455251, 0.579842, 0.675670,
		36.201672, 33.488235, 19.958649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745369, 33.904999, 19.373077>,  <35.882996, 33.082344, 19.485680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745369, 33.904999, 19.373077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833221, 34.193790, 19.110624>,  <35.885933, 34.367065, 18.953154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833221, 34.193790, 19.110624>,  <35.745369, 33.904999, 19.373077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833221, 34.193790, 19.110624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229331, -0.615498, -0.754035,
		-0.948246, 0.316080, 0.030391,
		0.219630, 0.721980, -0.656131,
		35.899109, 34.410385, 18.913786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189129, 33.945179, 18.812494>,  <35.745369, 33.904999, 19.373077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189129, 33.945179, 18.812494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513103, 34.104675, 18.640446>,  <35.707489, 34.200375, 18.537216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513103, 34.104675, 18.640446>,  <35.189129, 33.945179, 18.812494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513103, 34.104675, 18.640446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217234, -0.477254, -0.851492,
		-0.544802, 0.783093, -0.299926,
		0.809938, 0.398740, -0.430123,
		35.756084, 34.224297, 18.511408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956116, 33.923748, 18.162983>,  <35.189129, 33.945179, 18.812494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956116, 33.923748, 18.162983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351425, 33.971481, 18.124861>,  <35.588612, 34.000122, 18.101988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351425, 33.971481, 18.124861>,  <34.956116, 33.923748, 18.162983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351425, 33.971481, 18.124861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009461, -0.575009, -0.818093,
		-0.152429, 0.809397, -0.567134,
		0.988269, 0.119336, -0.095306,
		35.647907, 34.007282, 18.096270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095154, 34.101257, 17.465937>,  <34.956116, 33.923748, 18.162983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095154, 34.101257, 17.465937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408535, 33.905613, 17.619284>,  <35.596565, 33.788227, 17.711292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408535, 33.905613, 17.619284>,  <35.095154, 34.101257, 17.465937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408535, 33.905613, 17.619284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009106, -0.607795, -0.794042,
		0.621380, 0.625588, -0.471727,
		0.783456, -0.489106, 0.383369,
		35.643574, 33.758881, 17.734295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325962, 33.542675, 16.965006>,  <35.095154, 34.101257, 17.465937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325962, 33.542675, 16.965006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545013, 33.455395, 17.288113>,  <35.676445, 33.403027, 17.481977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545013, 33.455395, 17.288113>,  <35.325962, 33.542675, 16.965006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545013, 33.455395, 17.288113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298150, -0.851141, -0.432049,
		0.781798, 0.477439, -0.401054,
		0.547630, -0.218201, 0.807769,
		35.709301, 33.389935, 17.530443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095284, 33.466164, 16.856697>,  <35.325962, 33.542675, 16.965006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095284, 33.466164, 16.856697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995983, 33.248848, 17.177498>,  <35.936401, 33.118458, 17.369978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995983, 33.248848, 17.177498>,  <36.095284, 33.466164, 16.856697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995983, 33.248848, 17.177498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389456, -0.814037, -0.430891,
		0.886958, 0.205374, 0.413676,
		-0.248253, -0.543291, 0.802001,
		35.921509, 33.085861, 17.418098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660580, 33.114918, 17.351589>,  <36.095284, 33.466164, 16.856697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660580, 33.114918, 17.351589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315338, 32.930279, 17.269636>,  <36.108192, 32.819496, 17.220465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315338, 32.930279, 17.269636>,  <36.660580, 33.114918, 17.351589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315338, 32.930279, 17.269636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491520, -0.674591, -0.550759,
		0.116021, -0.576065, 0.809128,
		-0.863103, -0.461602, -0.204881,
		36.056408, 32.791798, 17.208172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759758, 33.519394, 18.058624>,  <36.660580, 33.114918, 17.351589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759758, 33.519394, 18.058624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466858, 33.702648, 17.857065>,  <36.291119, 33.812603, 17.736130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466858, 33.702648, 17.857065>,  <36.759758, 33.519394, 18.058624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466858, 33.702648, 17.857065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028639, 0.759964, 0.649334,
		0.680432, 0.461045, -0.569605,
		-0.732252, 0.458140, -0.503900,
		36.247181, 33.840092, 17.705894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905342, 34.230892, 18.003824>,  <36.759758, 33.519394, 18.058624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905342, 34.230892, 18.003824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508808, 34.178741, 18.010260>,  <36.270889, 34.147453, 18.014122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508808, 34.178741, 18.010260>,  <36.905342, 34.230892, 18.003824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508808, 34.178741, 18.010260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083393, 0.719237, 0.689742,
		-0.101496, 0.682423, -0.723877,
		-0.991334, -0.130373, 0.016090,
		36.211407, 34.139629, 18.015087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695351, 34.883717, 17.987677>,  <36.905342, 34.230892, 18.003824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695351, 34.883717, 17.987677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400223, 34.660339, 18.139341>,  <36.223145, 34.526314, 18.230339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400223, 34.660339, 18.139341>,  <36.695351, 34.883717, 17.987677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400223, 34.660339, 18.139341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071072, 0.622868, 0.779092,
		-0.671247, 0.547881, -0.499253,
		-0.737818, -0.558446, 0.379160,
		36.178879, 34.492805, 18.253090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192402, 35.410194, 18.104803>,  <36.695351, 34.883717, 17.987677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192402, 35.410194, 18.104803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131557, 35.088718, 18.334913>,  <36.095051, 34.895832, 18.472980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131557, 35.088718, 18.334913>,  <36.192402, 35.410194, 18.104803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131557, 35.088718, 18.334913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144551, 0.593880, 0.791461,
		-0.977736, 0.037230, -0.206508,
		-0.152108, -0.803692, 0.575277,
		36.085926, 34.847610, 18.507496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569645, 35.545811, 18.451046>,  <36.192402, 35.410194, 18.104803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569645, 35.545811, 18.451046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763950, 35.295780, 18.695442>,  <35.880535, 35.145760, 18.842079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763950, 35.295780, 18.695442>,  <35.569645, 35.545811, 18.451046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763950, 35.295780, 18.695442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145140, 0.631617, 0.761574,
		-0.861955, -0.458625, 0.216094,
		0.485765, -0.625079, 0.610990,
		35.909679, 35.108257, 18.878738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178364, 35.488472, 19.098232>,  <35.569645, 35.545811, 18.451046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178364, 35.488472, 19.098232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565853, 35.416363, 19.166443>,  <35.798347, 35.373096, 19.207369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565853, 35.416363, 19.166443>,  <35.178364, 35.488472, 19.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565853, 35.416363, 19.166443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037390, 0.573321, 0.818477,
		-0.245313, -0.799254, 0.548648,
		0.968723, -0.180269, 0.170527,
		35.856468, 35.362282, 19.217602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143021, 35.375336, 19.821522>,  <35.178364, 35.488472, 19.098232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143021, 35.375336, 19.821522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539902, 35.409958, 19.785656>,  <35.778030, 35.430729, 19.764135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539902, 35.409958, 19.785656>,  <35.143021, 35.375336, 19.821522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539902, 35.409958, 19.785656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001814, 0.729439, 0.684044,
		0.124611, -0.678548, 0.723909,
		0.992204, 0.086553, -0.089666,
		35.837563, 35.435925, 19.758757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402920, 35.389999, 20.500372>,  <35.143021, 35.375336, 19.821522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402920, 35.389999, 20.500372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694542, 35.568718, 20.292971>,  <35.869514, 35.675949, 20.168530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694542, 35.568718, 20.292971>,  <35.402920, 35.389999, 20.500372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694542, 35.568718, 20.292971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190076, 0.595582, 0.780483,
		0.657530, -0.667572, 0.349287,
		0.729057, 0.446800, -0.518503,
		35.913258, 35.702759, 20.137421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933430, 35.329758, 20.917459>,  <35.402920, 35.389999, 20.500372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933430, 35.329758, 20.917459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026810, 35.621178, 20.659868>,  <36.082836, 35.796032, 20.505314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026810, 35.621178, 20.659868>,  <35.933430, 35.329758, 20.917459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026810, 35.621178, 20.659868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239988, 0.598622, 0.764237,
		0.942288, -0.332957, -0.035098,
		0.233448, 0.728554, -0.643980,
		36.096844, 35.839745, 20.466675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599689, 35.738827, 21.229719>,  <35.933430, 35.329758, 20.917459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599689, 35.738827, 21.229719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439526, 35.990753, 20.963484>,  <36.343426, 36.141911, 20.803743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439526, 35.990753, 20.963484>,  <36.599689, 35.738827, 21.229719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439526, 35.990753, 20.963484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050541, 0.740430, 0.670230,
		0.914941, 0.234727, -0.328308,
		-0.400410, 0.629815, -0.665586,
		36.319401, 36.179699, 20.763807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003330, 36.323879, 21.303696>,  <36.599689, 35.738827, 21.229719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003330, 36.323879, 21.303696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655403, 36.412113, 21.127169>,  <36.446648, 36.465054, 21.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655403, 36.412113, 21.127169>,  <37.003330, 36.323879, 21.303696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655403, 36.412113, 21.127169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100930, 0.796019, 0.596797,
		0.482938, 0.563647, -0.670129,
		-0.869818, 0.220580, -0.441317,
		36.394459, 36.478287, 20.994774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926636, 37.109890, 21.263048>,  <37.003330, 36.323879, 21.303696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926636, 37.109890, 21.263048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547882, 37.003281, 21.191065>,  <36.320629, 36.939316, 21.147875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547882, 37.003281, 21.191065>,  <36.926636, 37.109890, 21.263048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547882, 37.003281, 21.191065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321550, 0.776270, 0.542227,
		-0.004817, 0.571290, -0.820734,
		-0.946880, -0.266519, -0.179959,
		36.263817, 36.923325, 21.137077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558563, 37.732513, 21.201908>,  <36.926636, 37.109890, 21.263048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558563, 37.732513, 21.201908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269478, 37.465305, 21.272837>,  <36.096027, 37.304981, 21.315393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269478, 37.465305, 21.272837>,  <36.558563, 37.732513, 21.201908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269478, 37.465305, 21.272837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460202, 0.656526, 0.597652,
		-0.515657, 0.350326, -0.781901,
		-0.722711, -0.668016, 0.177321,
		36.052666, 37.264900, 21.326033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923031, 38.094711, 21.149330>,  <36.558563, 37.732513, 21.201908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923031, 38.094711, 21.149330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811989, 37.767891, 21.351465>,  <35.745365, 37.571800, 21.472746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811989, 37.767891, 21.351465>,  <35.923031, 38.094711, 21.149330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811989, 37.767891, 21.351465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379666, 0.576499, 0.723535,
		-0.882490, 0.008997, -0.470245,
		-0.277605, -0.817048, 0.505339,
		35.728706, 37.522778, 21.503067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274532, 38.263039, 21.304508>,  <35.923031, 38.094711, 21.149330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274532, 38.263039, 21.304508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343586, 37.983742, 21.582401>,  <35.385017, 37.816162, 21.749136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343586, 37.983742, 21.582401>,  <35.274532, 38.263039, 21.304508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343586, 37.983742, 21.582401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465844, 0.563575, 0.682182,
		-0.867864, -0.441404, -0.227982,
		0.172633, -0.698245, 0.694731,
		35.395374, 37.774269, 21.790821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807728, 38.325809, 21.718262>,  <35.274532, 38.263039, 21.304508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807728, 38.325809, 21.718262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060532, 38.112484, 21.943167>,  <35.212215, 37.984489, 22.078110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060532, 38.112484, 21.943167>,  <34.807728, 38.325809, 21.718262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060532, 38.112484, 21.943167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528824, 0.233565, 0.815961,
		-0.566489, -0.813033, -0.134415,
		0.632008, -0.533315, 0.562264,
		35.250134, 37.952488, 22.111845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429321, 37.813709, 22.150118>,  <34.807728, 38.325809, 21.718262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429321, 37.813709, 22.150118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770611, 37.894413, 22.342495>,  <34.975384, 37.942833, 22.457922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770611, 37.894413, 22.342495>,  <34.429321, 37.813709, 22.150118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770611, 37.894413, 22.342495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495413, 0.025281, 0.868290,
		0.163024, -0.979109, 0.121523,
		0.853223, 0.201756, 0.480942,
		35.026577, 37.954941, 22.486778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469486, 37.328674, 22.677010>,  <34.429321, 37.813709, 22.150118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469486, 37.328674, 22.677010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679539, 37.648148, 22.794542>,  <34.805569, 37.839832, 22.865061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679539, 37.648148, 22.794542>,  <34.469486, 37.328674, 22.677010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679539, 37.648148, 22.794542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419940, -0.057111, 0.905753,
		0.740194, -0.599031, 0.305410,
		0.525132, 0.798687, 0.293830,
		34.837078, 37.887753, 22.882690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755272, 37.168873, 23.357054>,  <34.469486, 37.328674, 22.677010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755272, 37.168873, 23.357054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737350, 37.567806, 23.333994>,  <34.726597, 37.807167, 23.320158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737350, 37.567806, 23.333994>,  <34.755272, 37.168873, 23.357054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737350, 37.567806, 23.333994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590251, 0.020131, 0.806969,
		0.805976, 0.070179, 0.587774,
		-0.044800, 0.997331, -0.057649,
		34.723911, 37.867004, 23.316700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915413, 37.452747, 24.044525>,  <34.755272, 37.168873, 23.357054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915413, 37.452747, 24.044525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736134, 37.749542, 23.845098>,  <34.628567, 37.927620, 23.725443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736134, 37.749542, 23.845098>,  <34.915413, 37.452747, 24.044525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736134, 37.749542, 23.845098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543727, 0.216416, 0.810880,
		0.709562, 0.634520, 0.306442,
		-0.448200, 0.741990, -0.498566,
		34.601673, 37.972137, 23.695528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907875, 37.892929, 24.589209>,  <34.915413, 37.452747, 24.044525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907875, 37.892929, 24.589209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640774, 38.052719, 24.337965>,  <34.480511, 38.148594, 24.187220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640774, 38.052719, 24.337965>,  <34.907875, 37.892929, 24.589209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640774, 38.052719, 24.337965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626657, 0.153727, 0.763982,
		0.401748, 0.903764, 0.147681,
		-0.667757, 0.399474, -0.628110,
		34.440445, 38.172562, 24.149532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516861, 38.386318, 24.963902>,  <34.907875, 37.892929, 24.589209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516861, 38.386318, 24.963902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264294, 38.318787, 24.661165>,  <34.112755, 38.278267, 24.479523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264294, 38.318787, 24.661165>,  <34.516861, 38.386318, 24.963902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264294, 38.318787, 24.661165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774980, 0.171102, 0.608384,
		0.026785, 0.970681, -0.238876,
		-0.631418, -0.168828, -0.756841,
		34.074867, 38.268139, 24.434113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088543, 38.976337, 24.931946>,  <34.516861, 38.386318, 24.963902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088543, 38.976337, 24.931946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895966, 38.672665, 24.756741>,  <33.780418, 38.490459, 24.651617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895966, 38.672665, 24.756741>,  <34.088543, 38.976337, 24.931946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895966, 38.672665, 24.756741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811955, 0.198121, 0.549069,
		-0.330063, 0.619993, -0.711805,
		-0.481442, -0.759182, -0.438014,
		33.751534, 38.444912, 24.625336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462902, 39.217335, 24.725313>,  <34.088543, 38.976337, 24.931946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462902, 39.217335, 24.725313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393211, 38.823502, 24.719021>,  <33.351398, 38.587204, 24.715246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393211, 38.823502, 24.719021>,  <33.462902, 39.217335, 24.725313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393211, 38.823502, 24.719021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832584, 0.138759, 0.536237,
		-0.525786, 0.106522, -0.843921,
		-0.174222, -0.984581, -0.015731,
		33.340946, 38.528126, 24.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673244, 39.164341, 24.672766>,  <33.462902, 39.217335, 24.725313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673244, 39.164341, 24.672766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788895, 38.805424, 24.806192>,  <32.858284, 38.590073, 24.886248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788895, 38.805424, 24.806192>,  <32.673244, 39.164341, 24.672766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788895, 38.805424, 24.806192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713762, 0.030137, 0.699740,
		-0.637926, -0.440402, -0.631741,
		0.289128, -0.897295, 0.333567,
		32.875633, 38.536236, 24.906263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090618, 38.864002, 24.773603>,  <32.673244, 39.164341, 24.672766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090618, 38.864002, 24.773603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335114, 38.647728, 25.004787>,  <32.481812, 38.517963, 25.143497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335114, 38.647728, 25.004787>,  <32.090618, 38.864002, 24.773603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335114, 38.647728, 25.004787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675088, 0.024965, 0.737314,
		-0.413087, -0.840851, -0.349754,
		0.611240, -0.540690, 0.577961,
		32.518486, 38.485519, 25.178177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670830, 38.335899, 25.162519>,  <32.090618, 38.864002, 24.773603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670830, 38.335899, 25.162519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003796, 38.334595, 25.384178>,  <32.203575, 38.333813, 25.517174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003796, 38.334595, 25.384178>,  <31.670830, 38.335899, 25.162519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003796, 38.334595, 25.384178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553766, 0.032642, 0.832033,
		-0.020807, -0.999462, 0.025362,
		0.832413, -0.003267, 0.554147,
		32.253521, 38.333614, 25.550423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547798, 37.811008, 25.776096>,  <31.670830, 38.335899, 25.162519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547798, 37.811008, 25.776096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846035, 38.045265, 25.903292>,  <32.024979, 38.185818, 25.979609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846035, 38.045265, 25.903292>,  <31.547798, 37.811008, 25.776096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846035, 38.045265, 25.903292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500563, 0.177173, 0.847376,
		0.439918, -0.790971, 0.425249,
		0.745592, 0.585640, 0.317989,
		32.069714, 38.220959, 25.998690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634031, 37.539906, 26.427538>,  <31.547798, 37.811008, 25.776096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634031, 37.539906, 26.427538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785238, 37.909847, 26.444281>,  <31.875961, 38.131813, 26.454327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785238, 37.909847, 26.444281>,  <31.634031, 37.539906, 26.427538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785238, 37.909847, 26.444281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490656, 0.161798, 0.856200,
		0.785086, -0.344194, 0.514947,
		0.378016, 0.924852, 0.041855,
		31.898643, 38.187302, 26.456837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094063, 37.632004, 26.975002>,  <31.634031, 37.539906, 26.427538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094063, 37.632004, 26.975002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979671, 38.007206, 26.896654>,  <31.911037, 38.232327, 26.849646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979671, 38.007206, 26.896654>,  <32.094063, 37.632004, 26.975002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979671, 38.007206, 26.896654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326359, 0.096845, 0.940272,
		0.900949, 0.332818, 0.278431,
		-0.285975, 0.938005, -0.195871,
		31.893879, 38.288609, 26.837893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424004, 37.979305, 27.526752>,  <32.094063, 37.632004, 26.975002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424004, 37.979305, 27.526752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155930, 38.230370, 27.368309>,  <31.995085, 38.381008, 27.273243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155930, 38.230370, 27.368309>,  <32.424004, 37.979305, 27.526752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155930, 38.230370, 27.368309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255065, 0.306416, 0.917088,
		0.696991, 0.715650, -0.045261,
		-0.670183, 0.627657, -0.396107,
		31.954874, 38.418667, 27.249477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575668, 38.647011, 27.748592>,  <32.424004, 37.979305, 27.526752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575668, 38.647011, 27.748592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179638, 38.680820, 27.703676>,  <31.942020, 38.701107, 27.676725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179638, 38.680820, 27.703676>,  <32.575668, 38.647011, 27.748592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179638, 38.680820, 27.703676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100177, 0.135999, 0.985631,
		0.098584, 0.987097, -0.126181,
		-0.990074, 0.084527, -0.112292,
		31.882616, 38.706181, 27.669989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430584, 39.125980, 28.247738>,  <32.575668, 38.647011, 27.748592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430584, 39.125980, 28.247738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066319, 38.989475, 28.154581>,  <31.847759, 38.907574, 28.098686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066319, 38.989475, 28.154581>,  <32.430584, 39.125980, 28.247738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066319, 38.989475, 28.154581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304435, 0.173163, 0.936661,
		-0.279317, 0.923881, -0.261584,
		-0.910660, -0.341261, -0.232894,
		31.793121, 38.887096, 28.084713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955978, 39.558239, 28.612818>,  <32.430584, 39.125980, 28.247738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955978, 39.558239, 28.612818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768888, 39.209648, 28.553818>,  <31.656635, 39.000492, 28.518417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768888, 39.209648, 28.553818>,  <31.955978, 39.558239, 28.612818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768888, 39.209648, 28.553818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368005, 0.040282, 0.928951,
		-0.803621, 0.488774, -0.339550,
		-0.467724, -0.871480, -0.147500,
		31.628571, 38.948204, 28.509567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384892, 39.690792, 28.866898>,  <31.955978, 39.558239, 28.612818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384892, 39.690792, 28.866898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402363, 39.291187, 28.863430>,  <31.412846, 39.051426, 28.861349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402363, 39.291187, 28.863430>,  <31.384892, 39.690792, 28.866898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402363, 39.291187, 28.863430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236855, -0.018787, 0.971363,
		-0.970563, -0.040374, -0.237441,
		0.043678, -0.999008, -0.008671,
		31.415466, 38.991486, 28.860828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637270, 39.541206, 29.023609>,  <31.384892, 39.690792, 28.866898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637270, 39.541206, 29.023609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838165, 39.204556, 29.103035>,  <30.958702, 39.002567, 29.150690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838165, 39.204556, 29.103035>,  <30.637270, 39.541206, 29.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838165, 39.204556, 29.103035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581792, -0.158994, 0.797646,
		-0.639748, -0.516130, -0.569502,
		0.502237, -0.841624, 0.198564,
		30.988836, 38.952068, 29.162603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102146, 38.952976, 29.168945>,  <30.637270, 39.541206, 29.023609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102146, 38.952976, 29.168945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441317, 38.833881, 29.344387>,  <30.644819, 38.762424, 29.449652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441317, 38.833881, 29.344387>,  <30.102146, 38.952976, 29.168945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441317, 38.833881, 29.344387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522957, -0.334307, 0.784063,
		-0.086816, -0.894199, -0.439171,
		0.847926, -0.297737, 0.438604,
		30.695694, 38.744560, 29.475967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945099, 38.366661, 29.421118>,  <30.102146, 38.952976, 29.168945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945099, 38.366661, 29.421118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270956, 38.443199, 29.640114>,  <30.466471, 38.489120, 29.771511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270956, 38.443199, 29.640114>,  <29.945099, 38.366661, 29.421118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270956, 38.443199, 29.640114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435899, -0.420687, 0.795622,
		0.382558, -0.886798, -0.259304,
		0.814642, 0.191341, 0.547492,
		30.515348, 38.500603, 29.804361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045355, 37.804333, 29.896244>,  <29.945099, 38.366661, 29.421118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045355, 37.804333, 29.896244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261724, 38.081390, 30.087093>,  <30.391546, 38.247623, 30.201603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261724, 38.081390, 30.087093>,  <30.045355, 37.804333, 29.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261724, 38.081390, 30.087093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370926, -0.312674, 0.874442,
		0.754860, -0.649985, 0.087785,
		0.540926, 0.692643, 0.477122,
		30.424002, 38.289185, 30.230230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295383, 37.471844, 30.420063>,  <30.045355, 37.804333, 29.896244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295383, 37.471844, 30.420063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357414, 37.846676, 30.545179>,  <30.394632, 38.071575, 30.620249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357414, 37.846676, 30.545179>,  <30.295383, 37.471844, 30.420063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357414, 37.846676, 30.545179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261466, -0.266398, 0.927722,
		0.952673, -0.225653, 0.203702,
		0.155077, 0.937077, 0.312791,
		30.403938, 38.127800, 30.639017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851767, 37.514671, 30.960739>,  <30.295383, 37.471844, 30.420063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851767, 37.514671, 30.960739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622778, 37.839046, 31.009167>,  <30.485384, 38.033672, 31.038223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622778, 37.839046, 31.009167>,  <30.851767, 37.514671, 30.960739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622778, 37.839046, 31.009167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114142, -0.225040, 0.967641,
		0.811940, 0.540129, 0.221391,
		-0.572472, 0.810936, 0.121067,
		30.451036, 38.082329, 31.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028095, 37.823025, 31.588440>,  <30.851767, 37.514671, 30.960739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028095, 37.823025, 31.588440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670738, 37.990650, 31.523651>,  <30.456324, 38.091225, 31.484777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670738, 37.990650, 31.523651>,  <31.028095, 37.823025, 31.588440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670738, 37.990650, 31.523651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218851, -0.091066, 0.971499,
		0.392374, 0.903376, 0.173071,
		-0.893391, 0.419068, -0.161973,
		30.402721, 38.116371, 31.475060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474524, 38.287617, 31.403198>,  <31.028095, 37.823025, 31.588440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474524, 38.287617, 31.403198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716185, 38.262054, 31.720921>,  <31.861181, 38.246719, 31.911554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716185, 38.262054, 31.720921>,  <31.474524, 38.287617, 31.403198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716185, 38.262054, 31.720921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548232, 0.756721, -0.356110,
		-0.578311, 0.650607, 0.492206,
		0.604151, -0.063901, 0.794304,
		31.897430, 38.242886, 31.959211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716951, 39.008118, 31.427628>,  <31.474524, 38.287617, 31.403198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716951, 39.008118, 31.427628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982796, 38.797077, 31.639259>,  <32.142303, 38.670452, 31.766239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982796, 38.797077, 31.639259>,  <31.716951, 39.008118, 31.427628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982796, 38.797077, 31.639259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746629, 0.441480, -0.497636,
		0.028977, 0.725760, 0.687337,
		0.664610, -0.527606, 0.529081,
		32.182178, 38.638794, 31.797983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267094, 39.459110, 31.541409>,  <31.716951, 39.008118, 31.427628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267094, 39.459110, 31.541409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428539, 39.094757, 31.575781>,  <32.525406, 38.876144, 31.596403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428539, 39.094757, 31.575781>,  <32.267094, 39.459110, 31.541409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428539, 39.094757, 31.575781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860674, 0.346145, -0.373394,
		0.310375, 0.224665, 0.923684,
		0.403617, -0.910884, 0.085929,
		32.549625, 38.821491, 31.601559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987106, 39.596775, 31.644958>,  <32.267094, 39.459110, 31.541409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987106, 39.596775, 31.644958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963364, 39.210361, 31.544357>,  <32.949120, 38.978512, 31.483995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963364, 39.210361, 31.544357>,  <32.987106, 39.596775, 31.644958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963364, 39.210361, 31.544357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831772, 0.091443, -0.547534,
		0.551935, -0.241693, 0.798093,
		-0.059355, -0.966034, -0.251505,
		32.945557, 38.920551, 31.468906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669136, 39.487324, 31.671471>,  <32.987106, 39.596775, 31.644958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669136, 39.487324, 31.671471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482014, 39.192730, 31.476025>,  <33.369740, 39.015972, 31.358757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482014, 39.192730, 31.476025>,  <33.669136, 39.487324, 31.671471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482014, 39.192730, 31.476025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782044, -0.087358, -0.617070,
		0.411780, -0.670787, 0.616832,
		-0.467808, -0.736487, -0.488613,
		33.341671, 38.971783, 31.329441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124516, 38.966282, 31.611837>,  <33.669136, 39.487324, 31.671471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124516, 38.966282, 31.611837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857681, 38.916386, 31.318052>,  <33.697582, 38.886448, 31.141781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857681, 38.916386, 31.318052>,  <34.124516, 38.966282, 31.611837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857681, 38.916386, 31.318052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744956, -0.119679, -0.656291,
		-0.006033, -0.984945, 0.172764,
		-0.667087, -0.124742, -0.734462,
		33.657555, 38.878963, 31.097713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446232, 38.440632, 31.236328>,  <34.124516, 38.966282, 31.611837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446232, 38.440632, 31.236328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166821, 38.592999, 30.994020>,  <33.999172, 38.684418, 30.848637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166821, 38.592999, 30.994020>,  <34.446232, 38.440632, 31.236328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166821, 38.592999, 30.994020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636684, -0.055562, -0.769120,
		-0.326628, -0.922938, -0.203712,
		-0.698532, 0.380917, -0.605769,
		33.957260, 38.707272, 30.812290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439396, 37.868916, 30.639431>,  <34.446232, 38.440632, 31.236328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439396, 37.868916, 30.639431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312012, 38.228855, 30.520197>,  <34.235580, 38.444820, 30.448656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312012, 38.228855, 30.520197>,  <34.439396, 37.868916, 30.639431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312012, 38.228855, 30.520197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658693, -0.016076, -0.752240,
		-0.681696, -0.435901, -0.587606,
		-0.318456, 0.899851, -0.298084,
		34.216476, 38.498810, 30.430771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336716, 37.783943, 29.953569>,  <34.439396, 37.868916, 30.639431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336716, 37.783943, 29.953569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380981, 38.180439, 29.982420>,  <34.407543, 38.418335, 29.999731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380981, 38.180439, 29.982420>,  <34.336716, 37.783943, 29.953569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380981, 38.180439, 29.982420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306772, 0.034959, -0.951141,
		-0.945327, 0.127386, -0.300215,
		0.110667, 0.991237, 0.072126,
		34.414181, 38.477810, 30.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983864, 38.076748, 29.367527>,  <34.336716, 37.783943, 29.953569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983864, 38.076748, 29.367527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213955, 38.371605, 29.509361>,  <34.352009, 38.548519, 29.594461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213955, 38.371605, 29.509361>,  <33.983864, 38.076748, 29.367527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213955, 38.371605, 29.509361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266535, 0.240919, -0.933229,
		-0.773352, 0.631328, -0.057892,
		0.575226, 0.737145, 0.354587,
		34.386524, 38.592747, 29.615738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824123, 38.647148, 28.993235>,  <33.983864, 38.076748, 29.367527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824123, 38.647148, 28.993235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185722, 38.752110, 29.128248>,  <34.402683, 38.815086, 29.209257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185722, 38.752110, 29.128248>,  <33.824123, 38.647148, 28.993235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185722, 38.752110, 29.128248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247493, 0.322573, -0.913616,
		-0.348613, 0.909446, 0.226664,
		0.904000, 0.262400, 0.337535,
		34.456921, 38.830830, 29.229509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012253, 39.250557, 28.655743>,  <33.824123, 38.647148, 28.993235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012253, 39.250557, 28.655743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375458, 39.110004, 28.746996>,  <34.593380, 39.025673, 28.801748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375458, 39.110004, 28.746996>,  <34.012253, 39.250557, 28.655743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375458, 39.110004, 28.746996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324763, 0.246374, -0.913143,
		0.264651, 0.903236, 0.337825,
		0.908014, -0.351377, 0.228134,
		34.647861, 39.004593, 28.815435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444901, 39.672443, 28.315268>,  <34.012253, 39.250557, 28.655743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444901, 39.672443, 28.315268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683956, 39.373363, 28.431044>,  <34.827389, 39.193916, 28.500509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683956, 39.373363, 28.431044>,  <34.444901, 39.672443, 28.315268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683956, 39.373363, 28.431044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570045, 0.142399, -0.809179,
		0.563805, 0.648591, 0.511325,
		0.597638, -0.747698, 0.289441,
		34.863247, 39.149055, 28.517876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188393, 39.907253, 28.271601>,  <34.444901, 39.672443, 28.315268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188393, 39.907253, 28.271601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182293, 39.508282, 28.243582>,  <35.178635, 39.268898, 28.226770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182293, 39.508282, 28.243582>,  <35.188393, 39.907253, 28.271601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182293, 39.508282, 28.243582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597792, 0.047062, -0.800269,
		0.801507, -0.054076, 0.595536,
		-0.015248, -0.997427, -0.070047,
		35.177719, 39.209053, 28.222569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750977, 39.740124, 27.970976>,  <35.188393, 39.907253, 28.271601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750977, 39.740124, 27.970976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567146, 39.388893, 27.917658>,  <35.456848, 39.178154, 27.885668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567146, 39.388893, 27.917658>,  <35.750977, 39.740124, 27.970976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567146, 39.388893, 27.917658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450291, -0.101004, -0.887150,
		0.765526, -0.467731, 0.441810,
		-0.459573, -0.878080, -0.133294,
		35.429276, 39.125469, 27.877670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265747, 39.263031, 27.744736>,  <35.750977, 39.740124, 27.970976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265747, 39.263031, 27.744736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920471, 39.092178, 27.637062>,  <35.713306, 38.989666, 27.572458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920471, 39.092178, 27.637062>,  <36.265747, 39.263031, 27.744736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920471, 39.092178, 27.637062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417883, -0.305231, -0.855691,
		0.283333, -0.851111, 0.441965,
		-0.863189, -0.427135, -0.269183,
		35.661514, 38.964039, 27.556307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360813, 38.559013, 27.557640>,  <36.265747, 39.263031, 27.744736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360813, 38.559013, 27.557640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019161, 38.634411, 27.363764>,  <35.814171, 38.679649, 27.247438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019161, 38.634411, 27.363764>,  <36.360813, 38.559013, 27.557640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019161, 38.634411, 27.363764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386290, -0.394043, -0.833972,
		-0.348187, -0.899556, 0.263753,
		-0.854135, 0.188493, -0.484690,
		35.762920, 38.690960, 27.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235737, 37.990261, 27.117666>,  <36.360813, 38.559013, 27.557640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235737, 37.990261, 27.117666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047291, 38.308567, 26.965452>,  <35.934223, 38.499550, 26.874123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047291, 38.308567, 26.965452>,  <36.235737, 37.990261, 27.117666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047291, 38.308567, 26.965452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511832, -0.104735, -0.852677,
		-0.718389, -0.596476, -0.357957,
		-0.471111, 0.795768, -0.380536,
		35.905956, 38.547298, 26.851292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925343, 37.754623, 26.426687>,  <36.235737, 37.990261, 27.117666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925343, 37.754623, 26.426687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917675, 38.154266, 26.411612>,  <35.913074, 38.394051, 26.402567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917675, 38.154266, 26.411612>,  <35.925343, 37.754623, 26.426687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917675, 38.154266, 26.411612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366908, -0.028035, -0.929835,
		-0.930060, -0.031657, -0.366043,
		-0.019173, 0.999106, -0.037690,
		35.911922, 38.453999, 26.400305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467243, 37.916958, 25.884903>,  <35.925343, 37.754623, 26.426687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467243, 37.916958, 25.884903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701851, 38.237316, 25.933174>,  <35.842613, 38.429531, 25.962137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701851, 38.237316, 25.933174>,  <35.467243, 37.916958, 25.884903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701851, 38.237316, 25.933174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238694, -0.028545, -0.970675,
		-0.773965, 0.598123, -0.207911,
		0.586518, 0.800896, 0.120676,
		35.877808, 38.477585, 25.969378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348751, 38.292099, 25.281458>,  <35.467243, 37.916958, 25.884903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348751, 38.292099, 25.281458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695789, 38.420692, 25.433207>,  <35.904015, 38.497849, 25.524256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695789, 38.420692, 25.433207>,  <35.348751, 38.292099, 25.281458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695789, 38.420692, 25.433207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435346, -0.122377, -0.891907,
		-0.240305, 0.938975, -0.246130,
		0.867599, 0.321481, 0.379371,
		35.956070, 38.517136, 25.547018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544991, 38.842907, 24.889393>,  <35.348751, 38.292099, 25.281458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544991, 38.842907, 24.889393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875431, 38.694324, 25.058901>,  <36.073696, 38.605175, 25.160604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875431, 38.694324, 25.058901>,  <35.544991, 38.842907, 24.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875431, 38.694324, 25.058901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396636, -0.150907, -0.905487,
		0.400296, 0.916106, 0.022667,
		0.826101, -0.371453, 0.423768,
		36.123260, 38.582890, 25.186031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121723, 39.158863, 24.478010>,  <35.544991, 38.842907, 24.889393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121723, 39.158863, 24.478010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249573, 38.826416, 24.660034>,  <36.326283, 38.626945, 24.769249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249573, 38.826416, 24.660034>,  <36.121723, 39.158863, 24.478010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249573, 38.826416, 24.660034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648846, -0.158017, -0.744332,
		0.690537, 0.533169, 0.488763,
		0.319622, -0.831121, 0.455061,
		36.345459, 38.577080, 24.796553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824429, 39.113468, 24.320415>,  <36.121723, 39.158863, 24.478010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824429, 39.113468, 24.320415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746601, 38.731152, 24.408609>,  <36.699905, 38.501762, 24.461525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746601, 38.731152, 24.408609>,  <36.824429, 39.113468, 24.320415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746601, 38.731152, 24.408609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553891, -0.292571, -0.779492,
		0.809536, -0.029540, 0.586327,
		-0.194568, -0.955787, 0.220485,
		36.688232, 38.444416, 24.474754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480881, 38.750217, 24.324940>,  <36.824429, 39.113468, 24.320415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480881, 38.750217, 24.324940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210911, 38.457954, 24.283737>,  <37.048927, 38.282597, 24.259016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210911, 38.457954, 24.283737>,  <37.480881, 38.750217, 24.324940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210911, 38.457954, 24.283737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573645, -0.431759, -0.696072,
		0.464117, -0.528888, 0.710544,
		-0.674928, -0.730659, -0.103007,
		37.008434, 38.238758, 24.252834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892288, 38.181206, 24.329369>,  <37.480881, 38.750217, 24.324940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892288, 38.181206, 24.329369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560795, 38.041954, 24.154093>,  <37.361900, 37.958405, 24.048927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560795, 38.041954, 24.154093>,  <37.892288, 38.181206, 24.329369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560795, 38.041954, 24.154093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559286, -0.487085, -0.670781,
		0.020084, -0.800970, 0.598367,
		-0.828732, -0.348130, -0.438188,
		37.312176, 37.937515, 24.022636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912766, 37.426758, 24.335598>,  <37.892288, 38.181206, 24.329369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912766, 37.426758, 24.335598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658222, 37.495438, 24.034782>,  <37.505497, 37.536644, 23.854292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658222, 37.495438, 24.034782>,  <37.912766, 37.426758, 24.335598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658222, 37.495438, 24.034782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554831, -0.575436, -0.600863,
		-0.535915, -0.799622, 0.270925,
		-0.636362, 0.171694, -0.752040,
		37.467316, 37.546947, 23.809170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644516, 36.785873, 24.105440>,  <37.912766, 37.426758, 24.335598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644516, 36.785873, 24.105440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591869, 37.019932, 23.785370>,  <37.560284, 37.160366, 23.593327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591869, 37.019932, 23.785370>,  <37.644516, 36.785873, 24.105440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591869, 37.019932, 23.785370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486462, -0.665197, -0.566451,
		-0.863732, -0.463808, -0.197104,
		-0.131612, 0.585146, -0.800177,
		37.552387, 37.195477, 23.545317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418346, 36.400890, 23.551140>,  <37.644516, 36.785873, 24.105440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418346, 36.400890, 23.551140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555523, 36.710743, 23.338594>,  <37.637829, 36.896652, 23.211067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555523, 36.710743, 23.338594>,  <37.418346, 36.400890, 23.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555523, 36.710743, 23.338594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593494, -0.617135, -0.516633,
		-0.728120, -0.138187, -0.671376,
		0.342937, 0.774628, -0.531361,
		37.658405, 36.943130, 23.179186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505997, 36.155334, 22.933487>,  <37.418346, 36.400890, 23.551140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505997, 36.155334, 22.933487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714672, 36.493069, 22.884604>,  <37.839878, 36.695709, 22.855274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714672, 36.493069, 22.884604>,  <37.505997, 36.155334, 22.933487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714672, 36.493069, 22.884604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651266, -0.486667, -0.582244,
		-0.551086, 0.224158, -0.803777,
		0.521687, 0.844339, -0.122209,
		37.871178, 36.746372, 22.847940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470188, 36.284103, 22.162424>,  <37.505997, 36.155334, 22.933487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470188, 36.284103, 22.162424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781841, 36.455437, 22.345501>,  <37.968834, 36.558235, 22.455347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781841, 36.455437, 22.345501>,  <37.470188, 36.284103, 22.162424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781841, 36.455437, 22.345501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621468, -0.432267, -0.653393,
		-0.082024, 0.793522, -0.602988,
		0.779134, 0.428332, 0.457693,
		38.015583, 36.583935, 22.482809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834408, 36.502052, 21.609634>,  <37.470188, 36.284103, 22.162424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834408, 36.502052, 21.609634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103279, 36.479191, 21.904905>,  <38.264603, 36.465473, 22.082067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103279, 36.479191, 21.904905>,  <37.834408, 36.502052, 21.609634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103279, 36.479191, 21.904905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673777, -0.366077, -0.641881,
		0.306917, 0.928828, -0.207560,
		0.672180, -0.057155, 0.738178,
		38.304932, 36.462044, 22.126358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491215, 36.650970, 21.251764>,  <37.834408, 36.502052, 21.609634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491215, 36.650970, 21.251764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593105, 36.488800, 21.602934>,  <38.654240, 36.391499, 21.813635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593105, 36.488800, 21.602934>,  <38.491215, 36.650970, 21.251764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593105, 36.488800, 21.602934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690526, -0.559306, -0.458640,
		0.676970, 0.723056, 0.137485,
		0.254726, -0.405423, 0.877922,
		38.669521, 36.367172, 21.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152626, 36.563908, 21.265270>,  <38.491215, 36.650970, 21.251764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152626, 36.563908, 21.265270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046867, 36.296444, 21.543261>,  <38.983414, 36.135967, 21.710054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046867, 36.296444, 21.543261>,  <39.152626, 36.563908, 21.265270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046867, 36.296444, 21.543261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637520, -0.661894, -0.394289,
		0.723646, 0.338814, 0.601284,
		-0.264396, -0.668656, 0.694978,
		38.967548, 36.095848, 21.751755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711193, 36.193123, 21.341373>,  <39.152626, 36.563908, 21.265270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711193, 36.193123, 21.341373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439522, 35.945808, 21.499578>,  <39.276520, 35.797421, 21.594501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439522, 35.945808, 21.499578>,  <39.711193, 36.193123, 21.341373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439522, 35.945808, 21.499578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406345, -0.765500, -0.498892,
		0.611225, -0.178124, 0.771152,
		-0.679181, -0.618289, 0.395513,
		39.235767, 35.760323, 21.618233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106182, 35.572517, 21.570141>,  <39.711193, 36.193123, 21.341373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106182, 35.572517, 21.570141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724270, 35.458344, 21.536875>,  <39.495121, 35.389839, 21.516914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724270, 35.458344, 21.536875>,  <40.106182, 35.572517, 21.570141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724270, 35.458344, 21.536875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289795, -0.831063, -0.474714,
		0.066383, -0.477350, 0.876202,
		-0.954784, -0.285431, -0.083165,
		39.437836, 35.372715, 21.511925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236721, 34.988327, 21.769018>,  <40.106182, 35.572517, 21.570141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236721, 34.988327, 21.769018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889580, 34.964268, 21.571753>,  <39.681293, 34.949833, 21.453394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889580, 34.964268, 21.571753>,  <40.236721, 34.988327, 21.769018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889580, 34.964268, 21.571753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311201, -0.839590, -0.445244,
		-0.387274, -0.539880, 0.747361,
		-0.867855, -0.060148, -0.493163,
		39.629223, 34.946224, 21.423803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935818, 34.322182, 21.802523>,  <40.236721, 34.988327, 21.769018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935818, 34.322182, 21.802523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745480, 34.460823, 21.479181>,  <39.631279, 34.544010, 21.285175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745480, 34.460823, 21.479181>,  <39.935818, 34.322182, 21.802523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745480, 34.460823, 21.479181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235300, -0.835408, -0.496717,
		-0.847476, -0.426562, 0.315959,
		-0.475835, 0.346611, -0.808357,
		39.602726, 34.564804, 21.236675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060017, 33.873596, 21.273979>,  <39.935818, 34.322182, 21.802523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060017, 33.873596, 21.273979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095486, 33.480793, 21.340679>,  <40.116768, 33.245113, 21.380699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095486, 33.480793, 21.340679>,  <40.060017, 33.873596, 21.273979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095486, 33.480793, 21.340679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601399, 0.080668, 0.794866,
		-0.794013, -0.170765, -0.583424,
		0.088672, -0.982004, 0.166749,
		40.122086, 33.186192, 21.390703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358509, 33.579189, 21.201105>,  <40.060017, 33.873596, 21.273979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358509, 33.579189, 21.201105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569824, 33.313198, 21.412275>,  <39.696613, 33.153603, 21.538979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569824, 33.313198, 21.412275>,  <39.358509, 33.579189, 21.201105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569824, 33.313198, 21.412275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626414, 0.114473, 0.771039,
		-0.573160, -0.738035, -0.356079,
		0.528292, -0.664981, 0.527927,
		39.728313, 33.113705, 21.570654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883072, 33.038464, 21.361307>,  <39.358509, 33.579189, 21.201105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883072, 33.038464, 21.361307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189552, 33.060493, 21.617403>,  <39.373440, 33.073711, 21.771061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189552, 33.060493, 21.617403>,  <38.883072, 33.038464, 21.361307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189552, 33.060493, 21.617403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640243, 0.150786, 0.753228,
		-0.055056, -0.987031, 0.150793,
		0.766197, 0.055074, 0.640241,
		39.419411, 33.077015, 21.809475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630863, 32.740955, 22.040277>,  <38.883072, 33.038464, 21.361307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630863, 32.740955, 22.040277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953602, 32.950008, 22.150450>,  <39.147243, 33.075439, 22.216553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953602, 32.950008, 22.150450>,  <38.630863, 32.740955, 22.040277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953602, 32.950008, 22.150450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460525, 0.264400, 0.847354,
		0.370032, -0.810523, 0.454014,
		0.806842, 0.522633, 0.275430,
		39.195656, 33.106796, 22.233078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739288, 32.504234, 22.782606>,  <38.630863, 32.740955, 22.040277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739288, 32.504234, 22.782606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937195, 32.849506, 22.742363>,  <39.055939, 33.056671, 22.718218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937195, 32.849506, 22.742363>,  <38.739288, 32.504234, 22.782606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937195, 32.849506, 22.742363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352099, 0.304955, 0.884889,
		0.794504, -0.402386, 0.454807,
		0.494763, 0.863185, -0.100608,
		39.085625, 33.108463, 22.712181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162907, 32.741100, 23.403288>,  <38.739288, 32.504234, 22.782606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162907, 32.741100, 23.403288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081367, 33.084698, 23.215425>,  <39.032444, 33.290855, 23.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081367, 33.084698, 23.215425>,  <39.162907, 32.741100, 23.403288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081367, 33.084698, 23.215425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156213, 0.445044, 0.881778,
		0.966460, 0.253113, 0.043466,
		-0.203845, 0.858993, -0.469657,
		39.020214, 33.342396, 23.074528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237755, 33.150192, 23.914885>,  <39.162907, 32.741100, 23.403288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237755, 33.150192, 23.914885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080971, 33.395576, 23.640648>,  <38.986900, 33.542805, 23.476107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080971, 33.395576, 23.640648>,  <39.237755, 33.150192, 23.914885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080971, 33.395576, 23.640648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327109, 0.603593, 0.727100,
		0.859863, 0.509260, -0.035919,
		-0.391963, 0.613458, -0.685591,
		38.963383, 33.579613, 23.434971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428764, 33.870319, 24.089384>,  <39.237755, 33.150192, 23.914885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428764, 33.870319, 24.089384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100044, 33.900543, 23.863485>,  <38.902813, 33.918678, 23.727945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100044, 33.900543, 23.863485>,  <39.428764, 33.870319, 24.089384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100044, 33.900543, 23.863485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364989, 0.691294, 0.623615,
		0.437528, 0.718612, -0.540524,
		-0.821798, 0.075564, -0.564746,
		38.853504, 33.923214, 23.694061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191750, 34.591431, 23.992327>,  <39.428764, 33.870319, 24.089384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191750, 34.591431, 23.992327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865044, 34.386185, 23.886793>,  <38.669018, 34.263039, 23.823473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865044, 34.386185, 23.886793>,  <39.191750, 34.591431, 23.992327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865044, 34.386185, 23.886793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542532, 0.527407, 0.653835,
		-0.196343, 0.677169, -0.709148,
		-0.816767, -0.513112, -0.263834,
		38.620014, 34.232250, 23.807644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649456, 35.070755, 23.829639>,  <39.191750, 34.591431, 23.992327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649456, 35.070755, 23.829639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465279, 34.731014, 23.932861>,  <38.354771, 34.527168, 23.994795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465279, 34.731014, 23.932861>,  <38.649456, 35.070755, 23.829639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465279, 34.731014, 23.932861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534682, 0.497417, 0.683148,
		-0.708593, 0.176576, -0.683167,
		-0.460446, -0.849351, 0.258054,
		38.327145, 34.476208, 24.010277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989609, 35.237442, 23.961784>,  <38.649456, 35.070755, 23.829639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989609, 35.237442, 23.961784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993549, 34.868538, 24.116364>,  <37.995914, 34.647198, 24.209110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993549, 34.868538, 24.116364>,  <37.989609, 35.237442, 23.961784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993549, 34.868538, 24.116364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473819, 0.336021, 0.813993,
		-0.880567, -0.191126, -0.433673,
		0.009852, -0.922258, 0.386448,
		37.996506, 34.591862, 24.232298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323803, 35.104969, 24.129189>,  <37.989609, 35.237442, 23.961784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323803, 35.104969, 24.129189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576859, 34.884869, 24.347179>,  <37.728691, 34.752808, 24.477974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576859, 34.884869, 24.347179>,  <37.323803, 35.104969, 24.129189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576859, 34.884869, 24.347179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434926, 0.329817, 0.837890,
		-0.640790, -0.767104, -0.030663,
		0.632636, -0.550248, 0.544977,
		37.766647, 34.719795, 24.510672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908287, 34.622742, 24.519329>,  <37.323803, 35.104969, 24.129189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908287, 34.622742, 24.519329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244911, 34.689224, 24.724915>,  <37.446884, 34.729115, 24.848267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244911, 34.689224, 24.724915>,  <36.908287, 34.622742, 24.519329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244911, 34.689224, 24.724915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538459, 0.333736, 0.773745,
		-0.042931, -0.927899, 0.370351,
		0.841558, 0.166201, 0.513963,
		37.497379, 34.739086, 24.879103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927731, 34.252117, 25.148758>,  <36.908287, 34.622742, 24.519329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927731, 34.252117, 25.148758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205379, 34.521385, 25.250769>,  <37.371967, 34.682945, 25.311975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205379, 34.521385, 25.250769>,  <36.927731, 34.252117, 25.148758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205379, 34.521385, 25.250769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399614, 0.065667, 0.914329,
		0.598751, -0.736568, 0.314588,
		0.694123, 0.673168, 0.255024,
		37.413616, 34.723335, 25.327276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114101, 34.103527, 25.813591>,  <36.927731, 34.252117, 25.148758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114101, 34.103527, 25.813591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271263, 34.468903, 25.771151>,  <37.365562, 34.688126, 25.745687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271263, 34.468903, 25.771151>,  <37.114101, 34.103527, 25.813591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271263, 34.468903, 25.771151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279310, 0.228471, 0.932624,
		0.876134, -0.336799, 0.344899,
		0.392906, 0.913437, -0.106100,
		37.389133, 34.742935, 25.739321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388039, 34.157360, 26.475183>,  <37.114101, 34.103527, 25.813591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388039, 34.157360, 26.475183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342892, 34.518902, 26.310110>,  <37.315804, 34.735828, 26.211065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342892, 34.518902, 26.310110>,  <37.388039, 34.157360, 26.475183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342892, 34.518902, 26.310110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238619, 0.378526, 0.894303,
		0.964532, 0.199411, 0.172954,
		-0.112866, 0.903854, -0.412684,
		37.309032, 34.790058, 26.186304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707336, 34.609653, 26.924093>,  <37.388039, 34.157360, 26.475183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707336, 34.609653, 26.924093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475483, 34.859825, 26.715147>,  <37.336372, 35.009930, 26.589779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475483, 34.859825, 26.715147>,  <37.707336, 34.609653, 26.924093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475483, 34.859825, 26.715147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135670, 0.558023, 0.818660,
		0.803506, 0.545390, -0.238595,
		-0.579631, 0.625428, -0.522368,
		37.301594, 35.047455, 26.558437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888508, 35.243774, 27.052319>,  <37.707336, 34.609653, 26.924093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888508, 35.243774, 27.052319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512894, 35.292942, 26.923874>,  <37.287525, 35.322441, 26.846807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512894, 35.292942, 26.923874>,  <37.888508, 35.243774, 27.052319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512894, 35.292942, 26.923874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149650, 0.694709, 0.703552,
		0.309556, 0.708711, -0.633959,
		-0.939031, 0.122917, -0.321110,
		37.231186, 35.329819, 26.827541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781166, 35.963665, 27.008957>,  <37.888508, 35.243774, 27.052319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781166, 35.963665, 27.008957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404251, 35.830494, 26.994810>,  <37.178101, 35.750591, 26.986322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404251, 35.830494, 26.994810>,  <37.781166, 35.963665, 27.008957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404251, 35.830494, 26.994810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273642, 0.704976, 0.654316,
		-0.192909, 0.626231, -0.755394,
		-0.942288, -0.332931, -0.035366,
		37.121563, 35.730614, 26.984200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401489, 36.630642, 26.908644>,  <37.781166, 35.963665, 27.008957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401489, 36.630642, 26.908644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145386, 36.351292, 27.036608>,  <36.991726, 36.183681, 27.113386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145386, 36.351292, 27.036608>,  <37.401489, 36.630642, 26.908644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145386, 36.351292, 27.036608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375323, 0.647775, 0.662963,
		-0.670227, 0.304397, -0.676859,
		-0.640256, -0.698377, 0.319909,
		36.953308, 36.141777, 27.132580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715366, 36.978580, 26.880802>,  <37.401489, 36.630642, 26.908644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715366, 36.978580, 26.880802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729755, 36.678394, 27.144773>,  <36.738388, 36.498283, 27.303156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729755, 36.678394, 27.144773>,  <36.715366, 36.978580, 26.880802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729755, 36.678394, 27.144773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323636, 0.616021, 0.718176,
		-0.945498, -0.239410, -0.220720,
		0.035971, -0.750467, 0.659929,
		36.740547, 36.453255, 27.342752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101933, 37.109474, 27.174776>,  <36.715366, 36.978580, 26.880802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101933, 37.109474, 27.174776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321514, 36.877544, 27.415590>,  <36.453262, 36.738384, 27.560080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321514, 36.877544, 27.415590>,  <36.101933, 37.109474, 27.174776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321514, 36.877544, 27.415590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212589, 0.599729, 0.771447,
		-0.808366, -0.551476, 0.205959,
		0.548955, -0.579827, 0.602038,
		36.486202, 36.703598, 27.596201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714802, 36.936264, 27.826389>,  <36.101933, 37.109474, 27.174776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714802, 36.936264, 27.826389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095215, 36.859329, 27.923178>,  <36.323463, 36.813168, 27.981251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095215, 36.859329, 27.923178>,  <35.714802, 36.936264, 27.826389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095215, 36.859329, 27.923178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174346, 0.312626, 0.933739,
		-0.255243, -0.930199, 0.263782,
		0.951028, -0.192341, 0.241972,
		36.380524, 36.801628, 27.995770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684597, 36.556389, 28.450718>,  <35.714802, 36.936264, 27.826389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684597, 36.556389, 28.450718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054058, 36.708908, 28.435387>,  <36.275734, 36.800419, 28.426188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054058, 36.708908, 28.435387>,  <35.684597, 36.556389, 28.450718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054058, 36.708908, 28.435387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119587, 0.381811, 0.916471,
		0.364075, -0.841925, 0.398262,
		0.923660, 0.381291, -0.038325,
		36.331154, 36.823299, 28.423887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013725, 36.252121, 29.001383>,  <35.684597, 36.556389, 28.450718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013725, 36.252121, 29.001383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205204, 36.595337, 28.926966>,  <36.320091, 36.801266, 28.882317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205204, 36.595337, 28.926966>,  <36.013725, 36.252121, 29.001383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205204, 36.595337, 28.926966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157710, 0.292485, 0.943176,
		0.863700, -0.422155, 0.275334,
		0.478697, 0.858043, -0.186041,
		36.348812, 36.852749, 28.871153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729809, 36.375885, 29.464140>,  <36.013725, 36.252121, 29.001383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729809, 36.375885, 29.464140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614944, 36.740009, 29.344894>,  <36.546024, 36.958485, 29.273348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614944, 36.740009, 29.344894>,  <36.729809, 36.375885, 29.464140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614944, 36.740009, 29.344894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141600, 0.348144, 0.926685,
		0.947358, 0.223898, -0.228874,
		-0.287164, 0.910311, -0.298113,
		36.528793, 37.013103, 29.255461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287125, 36.762947, 29.733000>,  <36.729809, 36.375885, 29.464140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287125, 36.762947, 29.733000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958965, 36.987190, 29.687981>,  <36.762070, 37.121735, 29.660969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958965, 36.987190, 29.687981>,  <37.287125, 36.762947, 29.733000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958965, 36.987190, 29.687981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087263, 0.317284, 0.944307,
		0.565097, 0.764885, -0.309219,
		-0.820396, 0.560609, -0.112550,
		36.712845, 37.155373, 29.654215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398205, 37.403896, 30.036993>,  <37.287125, 36.762947, 29.733000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398205, 37.403896, 30.036993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999016, 37.394016, 30.013559>,  <36.759502, 37.388088, 29.999498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999016, 37.394016, 30.013559>,  <37.398205, 37.403896, 30.036993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999016, 37.394016, 30.013559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063159, 0.279296, 0.958126,
		-0.007304, 0.959887, -0.280291,
		-0.997977, -0.024701, -0.058586,
		36.699623, 37.386604, 29.995983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157970, 38.111881, 30.372986>,  <37.398205, 37.403896, 30.036993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157970, 38.111881, 30.372986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826244, 37.888382, 30.375526>,  <36.627209, 37.754284, 30.377050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826244, 37.888382, 30.375526>,  <37.157970, 38.111881, 30.372986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826244, 37.888382, 30.375526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168136, 0.260359, 0.950760,
		-0.532886, 0.787411, -0.309865,
		-0.829314, -0.558746, 0.006350,
		36.577450, 37.720757, 30.377432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738869, 38.613930, 30.645048>,  <37.157970, 38.111881, 30.372986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738869, 38.613930, 30.645048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603840, 38.240288, 30.691521>,  <36.522823, 38.016102, 30.719404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603840, 38.240288, 30.691521>,  <36.738869, 38.613930, 30.645048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603840, 38.240288, 30.691521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185286, 0.186954, 0.964737,
		-0.922882, 0.304145, -0.236187,
		-0.337576, -0.934100, 0.116183,
		36.502567, 37.960056, 30.726376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090801, 38.655300, 30.936668>,  <36.738869, 38.613930, 30.645048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090801, 38.655300, 30.936668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208008, 38.285660, 31.034796>,  <36.278332, 38.063877, 31.093672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208008, 38.285660, 31.034796>,  <36.090801, 38.655300, 30.936668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208008, 38.285660, 31.034796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194553, 0.193586, 0.961600,
		-0.936103, -0.329494, -0.123062,
		0.293018, -0.924098, 0.245320,
		36.295914, 38.008430, 31.108393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643997, 38.509453, 31.396490>,  <36.090801, 38.655300, 30.936668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643997, 38.509453, 31.396490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950470, 38.263950, 31.472675>,  <36.134354, 38.116650, 31.518387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950470, 38.263950, 31.472675>,  <35.643997, 38.509453, 31.396490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950470, 38.263950, 31.472675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136000, 0.134811, 0.981494,
		-0.628071, -0.777904, 0.019819,
		0.766180, -0.613753, 0.190465,
		36.180325, 38.079826, 31.529816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476017, 38.141026, 32.113750>,  <35.643997, 38.509453, 31.396490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476017, 38.141026, 32.113750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868965, 38.099018, 32.051899>,  <36.104736, 38.073814, 32.014790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868965, 38.099018, 32.051899>,  <35.476017, 38.141026, 32.113750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868965, 38.099018, 32.051899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161822, 0.063801, 0.984755,
		-0.093557, -0.992421, 0.079672,
		0.982375, -0.105024, -0.154627,
		36.163677, 38.067513, 32.005512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660812, 37.665283, 32.566170>,  <35.476017, 38.141026, 32.113750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660812, 37.665283, 32.566170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000782, 37.852673, 32.469704>,  <36.204765, 37.965107, 32.411823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000782, 37.852673, 32.469704>,  <35.660812, 37.665283, 32.566170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000782, 37.852673, 32.469704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203286, 0.130709, 0.970356,
		0.486104, -0.873757, 0.015860,
		0.849928, 0.468470, -0.241161,
		36.255760, 37.993214, 32.397354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239426, 37.320942, 33.005211>,  <35.660812, 37.665283, 32.566170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239426, 37.320942, 33.005211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406612, 37.670353, 32.905407>,  <36.506924, 37.880001, 32.845524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406612, 37.670353, 32.905407>,  <36.239426, 37.320942, 33.005211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406612, 37.670353, 32.905407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363267, 0.091032, 0.927227,
		0.832672, -0.478187, -0.279276,
		0.417964, 0.873528, -0.249510,
		36.532001, 37.932411, 32.830555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863277, 37.365997, 33.361687>,  <36.239426, 37.320942, 33.005211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863277, 37.365997, 33.361687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803181, 37.749203, 33.264000>,  <36.767120, 37.979126, 33.205387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803181, 37.749203, 33.264000>,  <36.863277, 37.365997, 33.361687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803181, 37.749203, 33.264000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347711, 0.282443, 0.894048,
		0.925485, 0.049409, -0.375547,
		-0.150245, 0.958011, -0.244217,
		36.758106, 38.036606, 33.190735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527004, 37.633770, 33.386383>,  <36.863277, 37.365997, 33.361687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527004, 37.633770, 33.386383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269180, 37.934544, 33.441730>,  <37.114487, 38.115005, 33.474937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269180, 37.934544, 33.441730>,  <37.527004, 37.633770, 33.386383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269180, 37.934544, 33.441730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489997, 0.267345, 0.829717,
		0.586896, 0.602601, -0.540763,
		-0.644559, 0.751930, 0.138368,
		37.075813, 38.160122, 33.483242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948555, 38.333210, 33.442013>,  <37.527004, 37.633770, 33.386383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948555, 38.333210, 33.442013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590149, 38.392181, 33.609543>,  <37.375103, 38.427563, 33.710060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590149, 38.392181, 33.609543>,  <37.948555, 38.333210, 33.442013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590149, 38.392181, 33.609543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443665, 0.259847, 0.857695,
		0.017614, 0.954330, -0.298234,
		-0.896019, 0.147424, 0.418826,
		37.321342, 38.436409, 33.735191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953991, 38.946461, 33.724747>,  <37.948555, 38.333210, 33.442013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953991, 38.946461, 33.724747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650185, 38.763641, 33.909893>,  <37.467903, 38.653950, 34.020981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650185, 38.763641, 33.909893>,  <37.953991, 38.946461, 33.724747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650185, 38.763641, 33.909893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276874, 0.416742, 0.865833,
		-0.588626, 0.785766, -0.189975,
		-0.759513, -0.457053, 0.462864,
		37.422329, 38.626526, 34.048752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747066, 39.397480, 34.294491>,  <37.953991, 38.946461, 33.724747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747066, 39.397480, 34.294491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595001, 39.044632, 34.405735>,  <37.503761, 38.832924, 34.472481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595001, 39.044632, 34.405735>,  <37.747066, 39.397480, 34.294491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595001, 39.044632, 34.405735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170117, 0.228872, 0.958477,
		-0.909140, 0.411689, 0.063054,
		-0.380163, -0.882117, 0.278112,
		37.480953, 38.779999, 34.489170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273258, 39.507050, 34.885139>,  <37.747066, 39.397480, 34.294491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273258, 39.507050, 34.885139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430817, 39.139400, 34.882118>,  <37.525352, 38.918812, 34.880306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430817, 39.139400, 34.882118>,  <37.273258, 39.507050, 34.885139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430817, 39.139400, 34.882118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255745, 0.101704, 0.961380,
		-0.882858, -0.380619, 0.275122,
		0.393900, -0.919122, -0.007551,
		37.548988, 38.863663, 34.879852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850689, 39.226257, 35.415791>,  <37.273258, 39.507050, 34.885139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850689, 39.226257, 35.415791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169865, 38.995064, 35.347408>,  <37.361370, 38.856350, 35.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169865, 38.995064, 35.347408>,  <36.850689, 39.226257, 35.415791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169865, 38.995064, 35.347408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186985, -0.032259, 0.981833,
		-0.572997, -0.815412, 0.082333,
		0.797942, -0.577982, -0.170954,
		37.409248, 38.821671, 35.296124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679237, 38.576298, 35.766766>,  <36.850689, 39.226257, 35.415791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679237, 38.576298, 35.766766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077415, 38.606598, 35.743603>,  <37.316322, 38.624779, 35.729706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077415, 38.606598, 35.743603>,  <36.679237, 38.576298, 35.766766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077415, 38.606598, 35.743603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066470, -0.115863, 0.991039,
		0.068365, -0.990372, -0.120371,
		0.995444, 0.075753, -0.057909,
		37.376049, 38.629322, 35.726231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019073, 37.930012, 35.915039>,  <36.679237, 38.576298, 35.766766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019073, 37.930012, 35.915039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269753, 38.221153, 36.026379>,  <37.420158, 38.395840, 36.093182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269753, 38.221153, 36.026379>,  <37.019073, 37.930012, 35.915039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269753, 38.221153, 36.026379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045823, -0.322155, 0.945577,
		0.777914, -0.605345, -0.168541,
		0.626697, 0.727855, 0.278348,
		37.457764, 38.439510, 36.109882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087505, 37.784199, 36.603863>,  <37.019073, 37.930012, 35.915039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087505, 37.784199, 36.603863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265533, 38.136719, 36.540340>,  <37.372353, 38.348232, 36.502228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265533, 38.136719, 36.540340>,  <37.087505, 37.784199, 36.603863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265533, 38.136719, 36.540340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039190, 0.196333, 0.979754,
		0.894637, -0.429838, 0.121920,
		0.445072, 0.881302, -0.158801,
		37.399055, 38.401108, 36.492699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654884, 37.760956, 37.053303>,  <37.087505, 37.784199, 36.603863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654884, 37.760956, 37.053303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635574, 38.155022, 36.987427>,  <37.623989, 38.391460, 36.947899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635574, 38.155022, 36.987427>,  <37.654884, 37.760956, 37.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635574, 38.155022, 36.987427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057976, 0.161844, 0.985112,
		0.997150, 0.057102, 0.049303,
		-0.048272, 0.985163, -0.164693,
		37.621094, 38.450569, 36.938019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230160, 38.119686, 37.389969>,  <37.654884, 37.760956, 37.053303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230160, 38.119686, 37.389969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939346, 38.392185, 37.355736>,  <37.764858, 38.555687, 37.335197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939346, 38.392185, 37.355736>,  <38.230160, 38.119686, 37.389969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939346, 38.392185, 37.355736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160003, 0.289314, 0.943767,
		0.667703, 0.672453, -0.319342,
		-0.727029, 0.681252, -0.085581,
		37.721237, 38.596561, 37.330063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498039, 38.775326, 37.731941>,  <38.230160, 38.119686, 37.389969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498039, 38.775326, 37.731941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100315, 38.812038, 37.710289>,  <37.861683, 38.834068, 37.697300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100315, 38.812038, 37.710289>,  <38.498039, 38.775326, 37.731941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100315, 38.812038, 37.710289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022123, 0.319068, 0.947474,
		0.104235, 0.943277, -0.315221,
		-0.994307, 0.091786, -0.054126,
		37.802025, 38.839573, 37.694050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295036, 39.205116, 38.314758>,  <38.498039, 38.775326, 37.731941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295036, 39.205116, 38.314758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936722, 39.094440, 38.175613>,  <37.721733, 39.028034, 38.092129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936722, 39.094440, 38.175613>,  <38.295036, 39.205116, 38.314758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936722, 39.094440, 38.175613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417631, 0.256059, 0.871790,
		-0.152142, 0.926217, -0.344928,
		-0.895789, -0.276688, -0.347859,
		37.667984, 39.011433, 38.071255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796680, 39.787434, 38.153496>,  <38.295036, 39.205116, 38.314758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796680, 39.787434, 38.153496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649620, 39.437862, 38.280666>,  <37.561386, 39.228119, 38.356968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649620, 39.437862, 38.280666>,  <37.796680, 39.787434, 38.153496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649620, 39.437862, 38.280666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196951, 0.407287, 0.891812,
		-0.908871, 0.265255, -0.321859,
		-0.367646, -0.873932, 0.317929,
		37.539326, 39.175682, 38.376045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258533, 39.975922, 38.560772>,  <37.796680, 39.787434, 38.153496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258533, 39.975922, 38.560772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315228, 39.590126, 38.649925>,  <37.349243, 39.358650, 38.703419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315228, 39.590126, 38.649925>,  <37.258533, 39.975922, 38.560772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315228, 39.590126, 38.649925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275877, 0.177753, 0.944614,
		-0.950685, -0.195378, -0.240885,
		0.141739, -0.964485, 0.222887,
		37.357750, 39.300781, 38.716793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781975, 39.955746, 38.979443>,  <37.258533, 39.975922, 38.560772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781975, 39.955746, 38.979443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975075, 39.609711, 39.033962>,  <37.090935, 39.402088, 39.066673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975075, 39.609711, 39.033962>,  <36.781975, 39.955746, 38.979443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975075, 39.609711, 39.033962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327146, -0.033766, 0.944370,
		-0.812362, -0.500481, -0.299311,
		0.482746, -0.865089, 0.136300,
		37.119900, 39.350185, 39.074852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353088, 39.481525, 39.183010>,  <36.781975, 39.955746, 38.979443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353088, 39.481525, 39.183010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715626, 39.425850, 39.342598>,  <36.933147, 39.392445, 39.438351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715626, 39.425850, 39.342598>,  <36.353088, 39.481525, 39.183010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715626, 39.425850, 39.342598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384692, 0.118835, 0.915363,
		-0.174818, -0.983110, 0.054161,
		0.906339, -0.139187, 0.398969,
		36.987526, 39.384094, 39.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096317, 39.081619, 39.717388>,  <36.353088, 39.481525, 39.183010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096317, 39.081619, 39.717388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469158, 39.201664, 39.798508>,  <36.692863, 39.273689, 39.847179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469158, 39.201664, 39.798508>,  <36.096317, 39.081619, 39.717388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469158, 39.201664, 39.798508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215912, 0.010813, 0.976353,
		0.290818, -0.953844, 0.074876,
		0.932098, 0.300108, 0.202802,
		36.748787, 39.291695, 39.859348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382175, 38.594170, 40.235546>,  <36.096317, 39.081619, 39.717388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382175, 38.594170, 40.235546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530937, 38.963280, 40.275906>,  <36.620193, 39.184746, 40.300121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530937, 38.963280, 40.275906>,  <36.382175, 38.594170, 40.235546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530937, 38.963280, 40.275906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073240, -0.137522, 0.987787,
		0.925378, -0.359972, -0.118729,
		0.371904, 0.922772, 0.100895,
		36.642509, 39.240112, 40.306175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938110, 38.596748, 40.763580>,  <36.382175, 38.594170, 40.235546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938110, 38.596748, 40.763580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753857, 38.951736, 40.757755>,  <36.643303, 39.164730, 40.754261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753857, 38.951736, 40.757755>,  <36.938110, 38.596748, 40.763580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753857, 38.951736, 40.757755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008491, 0.012001, 0.999892,
		0.887548, 0.460712, 0.002007,
		-0.460638, 0.887469, -0.014564,
		36.615665, 39.217976, 40.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171734, 38.851852, 41.397400>,  <36.938110, 38.596748, 40.763580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171734, 38.851852, 41.397400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837513, 39.053661, 41.310402>,  <36.636978, 39.174747, 41.258202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837513, 39.053661, 41.310402>,  <37.171734, 38.851852, 41.397400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837513, 39.053661, 41.310402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182359, 0.118753, 0.976034,
		0.518258, 0.855194, -0.007220,
		-0.835556, 0.504521, -0.217497,
		36.586845, 39.205017, 41.245152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203094, 39.488361, 41.753433>,  <37.171734, 38.851852, 41.397400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203094, 39.488361, 41.753433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811569, 39.432327, 41.693687>,  <36.576656, 39.398705, 41.657841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811569, 39.432327, 41.693687>,  <37.203094, 39.488361, 41.753433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811569, 39.432327, 41.693687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174467, 0.188625, 0.966427,
		-0.107211, 0.972006, -0.209068,
		-0.978809, -0.140088, -0.149361,
		36.517925, 39.390301, 41.648880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854038, 40.016483, 42.039696>,  <37.203094, 39.488361, 41.753433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854038, 40.016483, 42.039696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566761, 39.738194, 42.034496>,  <36.394394, 39.571220, 42.031376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566761, 39.738194, 42.034496>,  <36.854038, 40.016483, 42.039696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566761, 39.738194, 42.034496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075411, 0.059248, 0.995391,
		-0.691747, 0.715862, -0.095016,
		-0.718192, -0.695724, -0.012999,
		36.351303, 39.529476, 42.030598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281631, 40.144650, 42.600784>,  <36.854038, 40.016483, 42.039696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281631, 40.144650, 42.600784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251480, 39.755852, 42.511753>,  <36.233387, 39.522572, 42.458336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251480, 39.755852, 42.511753>,  <36.281631, 40.144650, 42.600784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251480, 39.755852, 42.511753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093393, -0.215350, 0.972061,
		-0.992772, 0.094063, -0.074545,
		-0.075381, -0.971996, -0.222578,
		36.228867, 39.464252, 42.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808243, 39.862206, 43.050953>,  <36.281631, 40.144650, 42.600784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808243, 39.862206, 43.050953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001671, 39.540031, 42.913883>,  <36.117729, 39.346725, 42.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001671, 39.540031, 42.913883>,  <35.808243, 39.862206, 43.050953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001671, 39.540031, 42.913883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039771, -0.411310, 0.910627,
		-0.874402, -0.426723, -0.230930,
		0.483570, -0.805439, -0.342679,
		36.146744, 39.298401, 42.811081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821285, 39.402378, 43.537655>,  <35.808243, 39.862206, 43.050953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821285, 39.402378, 43.537655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145317, 39.248184, 43.360943>,  <36.339737, 39.155670, 43.254917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145317, 39.248184, 43.360943>,  <35.821285, 39.402378, 43.537655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145317, 39.248184, 43.360943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332375, -0.318788, 0.887638,
		-0.483003, -0.865897, -0.130120,
		0.810083, -0.385483, -0.441778,
		36.388344, 39.132538, 43.228409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881935, 38.642879, 43.627441>,  <35.821285, 39.402378, 43.537655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881935, 38.642879, 43.627441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246960, 38.784878, 43.546242>,  <36.465973, 38.870079, 43.497520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246960, 38.784878, 43.546242>,  <35.881935, 38.642879, 43.627441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246960, 38.784878, 43.546242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386575, -0.586935, 0.711383,
		0.133390, -0.727656, -0.672848,
		0.912560, 0.354998, -0.203003,
		36.520729, 38.891376, 43.485340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306728, 38.090706, 43.530983>,  <35.881935, 38.642879, 43.627441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306728, 38.090706, 43.530983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505863, 38.405495, 43.676773>,  <36.625343, 38.594368, 43.764248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505863, 38.405495, 43.676773>,  <36.306728, 38.090706, 43.530983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505863, 38.405495, 43.676773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307877, -0.553248, 0.774034,
		0.810785, -0.273127, -0.517715,
		0.497834, 0.786968, 0.364476,
		36.655212, 38.641586, 43.786118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371429, 38.337639, 42.725380>,  <36.306728, 38.090706, 43.530983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371429, 38.337639, 42.725380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117500, 38.646698, 42.723831>,  <35.965141, 38.832134, 42.722904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117500, 38.646698, 42.723831>,  <36.371429, 38.337639, 42.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117500, 38.646698, 42.723831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070037, 0.052556, -0.996159,
		-0.769478, -0.632655, -0.087478,
		-0.634822, 0.772649, -0.003869,
		35.927055, 38.878494, 42.722672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811508, 38.298809, 42.215038>,  <36.371429, 38.337639, 42.725380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811508, 38.298809, 42.215038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869778, 38.689327, 42.279060>,  <35.904739, 38.923637, 42.317474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869778, 38.689327, 42.279060>,  <35.811508, 38.298809, 42.215038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869778, 38.689327, 42.279060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032187, 0.157020, -0.987071,
		-0.988810, 0.148938, -0.008551,
		0.145670, 0.976300, 0.160057,
		35.913479, 38.982216, 42.327076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413399, 38.622952, 41.774464>,  <35.811508, 38.298809, 42.215038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413399, 38.622952, 41.774464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688885, 38.905704, 41.838955>,  <35.854176, 39.075356, 41.877647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688885, 38.905704, 41.838955>,  <35.413399, 38.622952, 41.774464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688885, 38.905704, 41.838955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021907, 0.201976, -0.979145,
		-0.724706, 0.677880, 0.123617,
		0.688710, 0.706884, 0.161224,
		35.895496, 39.117771, 41.887321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274391, 39.205204, 41.279881>,  <35.413399, 38.622952, 41.774464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274391, 39.205204, 41.279881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653912, 39.238136, 41.401859>,  <35.881626, 39.257896, 41.475044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653912, 39.238136, 41.401859>,  <35.274391, 39.205204, 41.279881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653912, 39.238136, 41.401859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293041, 0.130874, -0.947100,
		-0.117882, 0.987975, 0.100048,
		0.948805, 0.082328, 0.304945,
		35.938553, 39.262836, 41.493343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442814, 39.797321, 41.009712>,  <35.274391, 39.205204, 41.279881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442814, 39.797321, 41.009712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791477, 39.615952, 41.084141>,  <36.000675, 39.507130, 41.128799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791477, 39.615952, 41.084141>,  <35.442814, 39.797321, 41.009712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791477, 39.615952, 41.084141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312752, 0.222258, -0.923465,
		0.377366, 0.863138, 0.335541,
		0.871654, -0.453426, 0.186075,
		36.052975, 39.479923, 41.139965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037365, 40.246269, 40.909824>,  <35.442814, 39.797321, 41.009712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037365, 40.246269, 40.909824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140343, 39.867039, 40.835117>,  <36.202129, 39.639500, 40.790295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140343, 39.867039, 40.835117>,  <36.037365, 40.246269, 40.909824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140343, 39.867039, 40.835117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447850, 0.288333, -0.846342,
		0.856245, 0.134240, 0.498824,
		0.257440, -0.948074, -0.186765,
		36.217575, 39.582615, 40.779087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720291, 40.195263, 40.675674>,  <36.037365, 40.246269, 40.909824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720291, 40.195263, 40.675674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511997, 39.898254, 40.507149>,  <36.387020, 39.720051, 40.406033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511997, 39.898254, 40.507149>,  <36.720291, 40.195263, 40.675674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511997, 39.898254, 40.507149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385280, 0.235996, -0.892113,
		0.761838, -0.626876, 0.163186,
		-0.520732, -0.742518, -0.421314,
		36.355778, 39.675499, 40.380756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317333, 40.234711, 40.274807>,  <36.720291, 40.195263, 40.675674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317333, 40.234711, 40.274807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196632, 39.858974, 40.340027>,  <37.124214, 39.633533, 40.379158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196632, 39.858974, 40.340027>,  <37.317333, 40.234711, 40.274807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196632, 39.858974, 40.340027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446805, -0.290413, -0.846183,
		0.842207, -0.182482, 0.507334,
		-0.301749, -0.939341, 0.163054,
		37.106106, 39.577171, 40.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951397, 39.801956, 40.183319>,  <37.317333, 40.234711, 40.274807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951397, 39.801956, 40.183319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613041, 39.603046, 40.106186>,  <37.410027, 39.483700, 40.059906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613041, 39.603046, 40.106186>,  <37.951397, 39.801956, 40.183319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613041, 39.603046, 40.106186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402302, -0.357506, -0.842818,
		0.350172, -0.790511, 0.502466,
		-0.845891, -0.497274, -0.192836,
		37.359272, 39.453865, 40.048336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123142, 39.101036, 39.972370>,  <37.951397, 39.801956, 40.183319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123142, 39.101036, 39.972370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763912, 39.177452, 39.813892>,  <37.548374, 39.223301, 39.718803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763912, 39.177452, 39.813892>,  <38.123142, 39.101036, 39.972370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763912, 39.177452, 39.813892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219792, -0.585324, -0.780441,
		-0.380998, -0.787972, 0.483674,
		-0.898071, 0.191039, -0.396197,
		37.494492, 39.234764, 39.695034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005600, 38.538696, 39.566814>,  <38.123142, 39.101036, 39.972370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005600, 38.538696, 39.566814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715527, 38.760872, 39.404037>,  <37.541485, 38.894176, 39.306374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715527, 38.760872, 39.404037>,  <38.005600, 38.538696, 39.566814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715527, 38.760872, 39.404037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082114, -0.517022, -0.852024,
		-0.683646, -0.651286, 0.329324,
		-0.725179, 0.555441, -0.406940,
		37.497974, 38.927505, 39.281956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486832, 38.083515, 39.168228>,  <38.005600, 38.538696, 39.566814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486832, 38.083515, 39.168228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485340, 38.456100, 39.022701>,  <37.484444, 38.679653, 38.935383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485340, 38.456100, 39.022701>,  <37.486832, 38.083515, 39.168228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485340, 38.456100, 39.022701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053333, -0.363118, -0.930215,
		-0.998570, -0.022876, -0.048322,
		-0.003733, 0.931462, -0.363819,
		37.484219, 38.735538, 38.913555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981510, 38.041725, 38.657215>,  <37.486832, 38.083515, 39.168228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981510, 38.041725, 38.657215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182938, 38.380852, 38.590733>,  <37.303795, 38.584328, 38.550842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182938, 38.380852, 38.590733>,  <36.981510, 38.041725, 38.657215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182938, 38.380852, 38.590733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111327, -0.127100, -0.985622,
		-0.856751, 0.514835, 0.030381,
		0.503571, 0.847815, -0.166209,
		37.334007, 38.635197, 38.540871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682140, 38.298950, 38.108227>,  <36.981510, 38.041725, 38.657215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682140, 38.298950, 38.108227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001278, 38.539818, 38.096645>,  <37.192760, 38.684338, 38.089695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001278, 38.539818, 38.096645>,  <36.682140, 38.298950, 38.108227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001278, 38.539818, 38.096645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197096, 0.215149, -0.956485,
		-0.569733, 0.768835, 0.290341,
		0.797846, 0.602166, -0.028957,
		37.240631, 38.720467, 38.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496193, 38.851418, 37.749123>,  <36.682140, 38.298950, 38.108227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496193, 38.851418, 37.749123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894871, 38.848167, 37.716774>,  <37.134075, 38.846218, 37.697365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894871, 38.848167, 37.716774>,  <36.496193, 38.851418, 37.749123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894871, 38.848167, 37.716774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081176, -0.050444, -0.995423,
		0.004011, 0.998694, -0.050937,
		0.996692, -0.008128, -0.080867,
		37.193878, 38.845730, 37.692513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731808, 39.449162, 37.309887>,  <36.496193, 38.851418, 37.749123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731808, 39.449162, 37.309887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033062, 39.186031, 37.312847>,  <37.213814, 39.028152, 37.314621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033062, 39.186031, 37.312847>,  <36.731808, 39.449162, 37.309887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033062, 39.186031, 37.312847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041956, 0.036809, -0.998441,
		0.656525, 0.752273, 0.055322,
		0.753137, -0.657822, 0.007396,
		37.259003, 38.988686, 37.315067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252029, 39.655788, 36.817802>,  <36.731808, 39.449162, 37.309887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252029, 39.655788, 36.817802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347271, 39.268715, 36.851032>,  <37.404415, 39.036472, 36.870968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347271, 39.268715, 36.851032>,  <37.252029, 39.655788, 36.817802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347271, 39.268715, 36.851032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224570, -0.028362, -0.974045,
		0.944921, 0.250580, 0.210559,
		0.238104, -0.967680, 0.083073,
		37.418701, 38.978413, 36.875954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898388, 39.595924, 36.435402>,  <37.252029, 39.655788, 36.817802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898388, 39.595924, 36.435402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744469, 39.226871, 36.445885>,  <37.652119, 39.005440, 36.452175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744469, 39.226871, 36.445885>,  <37.898388, 39.595924, 36.435402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744469, 39.226871, 36.445885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360852, -0.176513, -0.915767,
		0.849541, -0.342923, 0.400854,
		-0.384794, -0.922630, 0.026211,
		37.629032, 38.950081, 36.453747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386471, 39.272617, 35.945518>,  <37.898388, 39.595924, 36.435402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386471, 39.272617, 35.945518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127487, 38.973660, 36.005123>,  <37.972099, 38.794285, 36.040886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127487, 38.973660, 36.005123>,  <38.386471, 39.272617, 35.945518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127487, 38.973660, 36.005123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035413, -0.165815, -0.985521,
		0.761279, -0.643359, 0.080891,
		-0.647456, -0.747392, 0.149014,
		37.933250, 38.749443, 36.049828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672382, 38.630470, 35.610401>,  <38.386471, 39.272617, 35.945518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672382, 38.630470, 35.610401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272995, 38.624485, 35.631710>,  <38.033363, 38.620895, 35.644493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272995, 38.624485, 35.631710>,  <38.672382, 38.630470, 35.610401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272995, 38.624485, 35.631710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046400, -0.298026, -0.953429,
		0.030139, -0.954440, 0.296876,
		-0.998468, -0.014960, 0.053268,
		37.973454, 38.619999, 35.647690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552307, 38.042496, 35.181385>,  <38.672382, 38.630470, 35.610401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552307, 38.042496, 35.181385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212143, 38.250114, 35.215794>,  <38.008045, 38.374683, 35.236439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212143, 38.250114, 35.215794>,  <38.552307, 38.042496, 35.181385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212143, 38.250114, 35.215794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173388, -0.122123, -0.977252,
		-0.496731, -0.845979, 0.193851,
		-0.850409, 0.519044, 0.086020,
		37.957020, 38.405827, 35.241600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973816, 37.667759, 34.776623>,  <38.552307, 38.042496, 35.181385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973816, 37.667759, 34.776623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879288, 38.054287, 34.817360>,  <37.822571, 38.286205, 34.841801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879288, 38.054287, 34.817360>,  <37.973816, 37.667759, 34.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879288, 38.054287, 34.817360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089432, 0.082731, -0.992551,
		-0.967550, -0.243671, 0.066869,
		-0.236324, 0.966323, 0.101838,
		37.808392, 38.344185, 34.847912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554653, 37.613651, 34.236843>,  <37.973816, 37.667759, 34.776623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554653, 37.613651, 34.236843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883659, 37.512585, 34.440655>,  <39.081062, 37.451946, 34.562943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883659, 37.512585, 34.440655>,  <38.554653, 37.613651, 34.236843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883659, 37.512585, 34.440655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436733, 0.854484, -0.281285,
		-0.364316, 0.453891, 0.813177,
		0.822519, -0.252664, 0.509532,
		39.130417, 37.436787, 34.593513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485107, 37.443760, 33.535828>,  <38.554653, 37.613651, 34.236843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485107, 37.443760, 33.535828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748184, 37.709667, 33.677540>,  <38.906033, 37.869213, 33.762569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748184, 37.709667, 33.677540>,  <38.485107, 37.443760, 33.535828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748184, 37.709667, 33.677540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651812, -0.737983, 0.174708,
		0.377596, 0.116022, -0.918673,
		0.657695, 0.664771, 0.354284,
		38.945492, 37.909100, 33.783825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093174, 37.362762, 33.231411>,  <38.485107, 37.443760, 33.535828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093174, 37.362762, 33.231411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170479, 37.526043, 33.588291>,  <39.216862, 37.624012, 33.802418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170479, 37.526043, 33.588291>,  <39.093174, 37.362762, 33.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170479, 37.526043, 33.588291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708372, -0.687236, 0.160980,
		0.678864, 0.600897, -0.421978,
		0.193266, 0.408202, 0.892199,
		39.228458, 37.648502, 33.855949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170906, 36.661514, 33.547935>,  <39.093174, 37.362762, 33.231411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170906, 36.661514, 33.547935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255215, 36.936916, 33.825508>,  <39.305798, 37.102158, 33.992050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255215, 36.936916, 33.825508>,  <39.170906, 36.661514, 33.547935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255215, 36.936916, 33.825508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493329, -0.687766, 0.532545,
		0.843921, 0.230092, -0.484618,
		0.210770, 0.688502, 0.693932,
		39.318447, 37.143467, 34.033688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933681, 36.704739, 33.692139>,  <39.170906, 36.661514, 33.547935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933681, 36.704739, 33.692139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721066, 36.793053, 34.019238>,  <39.593494, 36.846043, 34.215496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721066, 36.793053, 34.019238>,  <39.933681, 36.704739, 33.692139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721066, 36.793053, 34.019238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466529, -0.729486, 0.500201,
		0.706975, 0.647382, 0.284750,
		-0.531542, 0.220786, 0.817751,
		39.561604, 36.859287, 34.264565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416538, 36.880104, 34.303398>,  <39.933681, 36.704739, 33.692139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416538, 36.880104, 34.303398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065525, 36.720581, 34.409901>,  <39.854919, 36.624866, 34.473801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065525, 36.720581, 34.409901>,  <40.416538, 36.880104, 34.303398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065525, 36.720581, 34.409901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467903, -0.833626, 0.293485,
		0.104912, 0.382124, 0.918137,
		-0.877530, -0.398809, 0.266254,
		39.802265, 36.600937, 34.489777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100708, 36.536034, 34.442680>,  <40.416538, 36.880104, 34.303398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100708, 36.536034, 34.442680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423286, 36.516468, 34.678394>,  <41.616833, 36.504726, 34.819820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423286, 36.516468, 34.678394>,  <41.100708, 36.536034, 34.442680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423286, 36.516468, 34.678394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025064, 0.998504, 0.048588,
		-0.590777, -0.024413, 0.806466,
		0.806446, -0.048918, 0.589281,
		41.665218, 36.501793, 34.855179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973969, 36.841522, 35.161343>,  <41.100708, 36.536034, 34.442680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973969, 36.841522, 35.161343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354095, 36.884644, 35.044540>,  <41.582172, 36.910515, 34.974461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354095, 36.884644, 35.044540>,  <40.973969, 36.841522, 35.161343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354095, 36.884644, 35.044540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059102, 0.983539, 0.170756,
		0.305608, -0.145015, 0.941050,
		0.950322, 0.107802, -0.292006,
		41.639191, 36.916985, 34.956940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321350, 37.252190, 35.646179>,  <40.973969, 36.841522, 35.161343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321350, 37.252190, 35.646179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510757, 37.288513, 35.295742>,  <41.624401, 37.310307, 35.085480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510757, 37.288513, 35.295742>,  <41.321350, 37.252190, 35.646179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510757, 37.288513, 35.295742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017320, 0.995439, 0.093817,
		0.880615, -0.029250, 0.472928,
		0.473515, 0.090808, -0.876092,
		41.652813, 37.315754, 35.032913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945473, 36.900635, 35.897495>,  <41.321350, 37.252190, 35.646179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945473, 36.900635, 35.897495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838924, 37.249443, 36.061749>,  <41.774994, 37.458729, 36.160301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838924, 37.249443, 36.061749>,  <41.945473, 36.900635, 35.897495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838924, 37.249443, 36.061749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504182, 0.489151, -0.711711,
		-0.821491, 0.017456, -0.569954,
		-0.266370, 0.872024, 0.410634,
		41.759014, 37.511051, 36.184940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893223, 36.236477, 35.539455>,  <41.945473, 36.900635, 35.897495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893223, 36.236477, 35.539455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015041, 36.509640, 35.273857>,  <42.088131, 36.673538, 35.114498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015041, 36.509640, 35.273857>,  <41.893223, 36.236477, 35.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015041, 36.509640, 35.273857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726976, 0.617075, 0.301207,
		0.615428, 0.390971, 0.684390,
		0.304557, 0.682906, -0.663991,
		42.106407, 36.714512, 35.074657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566490, 36.390965, 35.978027>,  <41.893223, 36.236477, 35.539455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566490, 36.390965, 35.978027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544090, 36.137066, 36.286304>,  <42.530651, 35.984726, 36.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544090, 36.137066, 36.286304>,  <42.566490, 36.390965, 35.978027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544090, 36.137066, 36.286304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719703, -0.509346, -0.471799,
		0.692020, -0.581088, -0.428305,
		-0.056001, -0.634747, 0.770689,
		42.527290, 35.946644, 36.517509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330940, 36.256851, 36.333473>,  <42.566490, 36.390965, 35.978027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330940, 36.256851, 36.333473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339966, 35.875679, 36.212536>,  <43.345383, 35.646976, 36.139973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339966, 35.875679, 36.212536>,  <43.330940, 36.256851, 36.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339966, 35.875679, 36.212536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316044, -0.280113, 0.906451,
		-0.948476, -0.116008, 0.294847,
		0.022565, -0.952932, -0.302344,
		43.346737, 35.589798, 36.121834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800591, 36.181194, 35.631458>,  <43.330940, 36.256851, 36.333473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800591, 36.181194, 35.631458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989471, 35.829708, 35.659401>,  <44.102798, 35.618816, 35.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989471, 35.829708, 35.659401>,  <43.800591, 36.181194, 35.631458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989471, 35.829708, 35.659401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684611, 0.315663, -0.657011,
		0.555277, 0.358066, 0.750637,
		0.472202, -0.878718, 0.069855,
		44.131130, 35.566093, 35.680359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447124, 36.371662, 35.334358>,  <43.800591, 36.181194, 35.631458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447124, 36.371662, 35.334358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501373, 35.983746, 35.415455>,  <44.533920, 35.750996, 35.464115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501373, 35.983746, 35.415455>,  <44.447124, 36.371662, 35.334358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501373, 35.983746, 35.415455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893284, 0.031175, -0.448411,
		0.428546, 0.241920, 0.870530,
		0.135618, -0.969795, 0.202744,
		44.542057, 35.692806, 35.476276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167591, 36.294979, 35.652416>,  <44.447124, 36.371662, 35.334358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167591, 36.294979, 35.652416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036961, 35.950333, 35.496998>,  <44.958584, 35.743546, 35.403748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036961, 35.950333, 35.496998>,  <45.167591, 36.294979, 35.652416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036961, 35.950333, 35.496998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884472, -0.133646, -0.447044,
		0.333254, -0.489648, 0.805721,
		-0.326576, -0.861617, -0.388542,
		44.938988, 35.691849, 35.380436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624805, 35.737503, 35.906204>,  <45.167591, 36.294979, 35.652416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624805, 35.737503, 35.906204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452522, 35.673805, 35.550873>,  <45.349152, 35.635586, 35.337673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452522, 35.673805, 35.550873>,  <45.624805, 35.737503, 35.906204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452522, 35.673805, 35.550873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899837, -0.151212, -0.409181,
		-0.069165, -0.975589, 0.208426,
		-0.430709, -0.159248, -0.888330,
		45.323311, 35.626030, 35.284374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920982, 35.065838, 35.645958>,  <45.624805, 35.737503, 35.906204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920982, 35.065838, 35.645958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789413, 35.299515, 35.349167>,  <45.710472, 35.439720, 35.171093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789413, 35.299515, 35.349167>,  <45.920982, 35.065838, 35.645958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789413, 35.299515, 35.349167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902495, -0.036884, -0.429119,
		-0.278056, -0.810775, -0.515101,
		-0.328920, 0.584195, -0.741975,
		45.690739, 35.474773, 35.126575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329662, 34.960987, 35.118916>,  <45.920982, 35.065838, 35.645958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329662, 34.960987, 35.118916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216957, 35.320000, 34.983238>,  <46.149334, 35.535408, 34.901833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216957, 35.320000, 34.983238>,  <46.329662, 34.960987, 35.118916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216957, 35.320000, 34.983238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875004, 0.095310, -0.474642,
		-0.393677, -0.430531, -0.812196,
		-0.281758, 0.897529, -0.339195,
		46.132431, 35.589260, 34.881481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078224, 35.095142, 35.461613>,  <46.329662, 34.960987, 35.118916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078224, 35.095142, 35.461613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424934, 35.001030, 35.637493>,  <47.632961, 34.944561, 35.743023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424934, 35.001030, 35.637493>,  <47.078224, 35.095142, 35.461613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.424934, 35.001030, 35.637493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137412, -0.734891, -0.664119,
		0.479388, 0.636064, -0.604657,
		0.866779, -0.235284, 0.439700,
		47.684967, 34.930447, 35.769402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681812, 35.364738, 35.019917>,  <47.078224, 35.095142, 35.461613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681812, 35.364738, 35.019917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632454, 34.998997, 35.174175>,  <47.602837, 34.779552, 35.266731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632454, 34.998997, 35.174175>,  <47.681812, 35.364738, 35.019917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632454, 34.998997, 35.174175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125139, -0.399850, -0.907998,
		0.984436, -0.063785, 0.163763,
		-0.123397, -0.914359, 0.385644,
		47.595436, 34.724689, 35.289867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.304852, 32.393848, 27.560955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960629, 32.456661, 27.367140>,  <33.754093, 32.494347, 27.250851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960629, 32.456661, 27.367140>,  <34.304852, 32.393848, 27.560955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960629, 32.456661, 27.367140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282117, 0.645094, 0.710115,
		0.424081, 0.747794, -0.510842,
		-0.860561, 0.157029, -0.484538,
		33.702461, 32.503769, 27.221779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337769, 33.128872, 27.639662>,  <34.304852, 32.393848, 27.560955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337769, 33.128872, 27.639662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978374, 33.003586, 27.516619>,  <33.762737, 32.928413, 27.442793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978374, 33.003586, 27.516619>,  <34.337769, 33.128872, 27.639662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978374, 33.003586, 27.516619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439004, 0.638348, 0.632288,
		-0.001680, 0.703142, -0.711048,
		-0.898484, -0.313215, -0.307610,
		33.708828, 32.909622, 27.424335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919449, 33.698994, 27.484045>,  <34.337769, 33.128872, 27.639662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919449, 33.698994, 27.484045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630520, 33.428860, 27.543615>,  <33.457165, 33.266781, 27.579357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630520, 33.428860, 27.543615>,  <33.919449, 33.698994, 27.484045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630520, 33.428860, 27.543615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381616, 0.568831, 0.728560,
		-0.576735, 0.469420, -0.668596,
		-0.722319, -0.675333, 0.148927,
		33.413822, 33.226261, 27.588293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318825, 34.136150, 27.674109>,  <33.919449, 33.698994, 27.484045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318825, 34.136150, 27.674109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233917, 33.755791, 27.764196>,  <33.182972, 33.527573, 27.818249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233917, 33.755791, 27.764196>,  <33.318825, 34.136150, 27.674109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233917, 33.755791, 27.764196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647877, 0.309485, 0.696042,
		-0.731570, 0.001837, -0.681764,
		-0.212274, -0.950903, 0.225220,
		33.170235, 33.470520, 27.831762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565388, 34.024746, 27.684858>,  <33.318825, 34.136150, 27.674109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565388, 34.024746, 27.684858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.759689, 33.759262, 27.912376>,  <32.876270, 33.599972, 28.048887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.759689, 33.759262, 27.912376>,  <32.565388, 34.024746, 27.684858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759689, 33.759262, 27.912376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555251, 0.268270, 0.787227,
		-0.675084, -0.698223, -0.238214,
		0.485755, -0.663713, 0.568794,
		32.905415, 33.560146, 28.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009106, 33.752136, 28.034489>,  <32.565388, 34.024746, 27.684858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009106, 33.752136, 28.034489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341194, 33.662613, 28.238703>,  <32.540447, 33.608898, 28.361231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341194, 33.662613, 28.238703>,  <32.009106, 33.752136, 28.034489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341194, 33.662613, 28.238703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446117, 0.282383, 0.849258,
		-0.334234, -0.932830, 0.134598,
		0.830221, -0.223804, 0.510533,
		32.590260, 33.595470, 28.391863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824547, 33.304672, 28.769630>,  <32.009106, 33.752136, 28.034489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824547, 33.304672, 28.769630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197277, 33.443069, 28.813437>,  <32.420914, 33.526108, 28.839720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197277, 33.443069, 28.813437>,  <31.824547, 33.304672, 28.769630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197277, 33.443069, 28.813437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077064, -0.106238, 0.991350,
		0.354636, -0.932203, -0.072332,
		0.931823, 0.345994, 0.109515,
		32.476826, 33.546867, 28.846291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969769, 33.006882, 29.382727>,  <31.824547, 33.304672, 28.769630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969769, 33.006882, 29.382727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233089, 33.300667, 29.316751>,  <32.391083, 33.476936, 29.277166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233089, 33.300667, 29.316751>,  <31.969769, 33.006882, 29.382727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233089, 33.300667, 29.316751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133596, 0.329627, 0.934611,
		0.740802, -0.593224, 0.315116,
		0.658304, 0.734460, -0.164936,
		32.430580, 33.521004, 29.267271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206596, 33.001091, 30.084877>,  <31.969769, 33.006882, 29.382727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206596, 33.001091, 30.084877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.337666, 33.323338, 29.887449>,  <32.416309, 33.516685, 29.768993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.337666, 33.323338, 29.887449>,  <32.206596, 33.001091, 30.084877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337666, 33.323338, 29.887449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133478, 0.477699, 0.868325,
		0.935314, -0.350410, 0.048998,
		0.327676, 0.805616, -0.493570,
		32.435970, 33.565022, 29.739378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800823, 33.269802, 30.438351>,  <32.206596, 33.001091, 30.084877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800823, 33.269802, 30.438351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.641438, 33.581837, 30.245399>,  <32.545807, 33.769058, 30.129629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.641438, 33.581837, 30.245399>,  <32.800823, 33.269802, 30.438351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641438, 33.581837, 30.245399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038021, 0.511432, 0.858482,
		0.916395, 0.360416, -0.174129,
		-0.398466, 0.780088, -0.482377,
		32.521896, 33.815865, 30.100687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184177, 33.830971, 30.634459>,  <32.800823, 33.269802, 30.438351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184177, 33.830971, 30.634459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839172, 33.997688, 30.519672>,  <32.632168, 34.097721, 30.450800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839172, 33.997688, 30.519672>,  <33.184177, 33.830971, 30.634459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839172, 33.997688, 30.519672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049951, 0.634447, 0.771351,
		0.503561, 0.650967, -0.568039,
		-0.862514, 0.416797, -0.286966,
		32.580418, 34.122726, 30.433582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192486, 34.471191, 30.769272>,  <33.184177, 33.830971, 30.634459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192486, 34.471191, 30.769272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794296, 34.453541, 30.735588>,  <32.555382, 34.442951, 30.715378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794296, 34.453541, 30.735588>,  <33.192486, 34.471191, 30.769272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794296, 34.453541, 30.735588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094084, 0.584384, 0.806005,
		0.013648, 0.810277, -0.585888,
		-0.995471, -0.044122, -0.084210,
		32.495655, 34.440304, 30.710325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067345, 35.135098, 31.056870>,  <33.192486, 34.471191, 30.769272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067345, 35.135098, 31.056870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.714870, 34.946079, 31.051062>,  <32.503387, 34.832668, 31.047577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.714870, 34.946079, 31.051062>,  <33.067345, 35.135098, 31.056870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714870, 34.946079, 31.051062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253199, 0.445780, 0.858586,
		-0.399249, 0.760251, -0.512463,
		-0.881187, -0.472545, -0.014518,
		32.450516, 34.804317, 31.046707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616940, 35.640110, 31.182762>,  <33.067345, 35.135098, 31.056870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616940, 35.640110, 31.182762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459206, 35.286800, 31.284210>,  <32.364567, 35.074814, 31.345079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459206, 35.286800, 31.284210>,  <32.616940, 35.640110, 31.182762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459206, 35.286800, 31.284210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269387, 0.374968, 0.887034,
		-0.878596, 0.281466, -0.385806,
		-0.394335, -0.883276, 0.253622,
		32.340904, 35.021816, 31.360296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951134, 35.882008, 31.526367>,  <32.616940, 35.640110, 31.182762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951134, 35.882008, 31.526367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.000881, 35.497379, 31.624283>,  <32.030731, 35.266602, 31.683033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.000881, 35.497379, 31.624283>,  <31.951134, 35.882008, 31.526367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000881, 35.497379, 31.624283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456928, 0.163488, 0.874351,
		-0.880766, -0.220594, -0.419033,
		0.124369, -0.961566, 0.244790,
		32.038193, 35.208908, 31.697720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332123, 35.573494, 31.792347>,  <31.951134, 35.882008, 31.526367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332123, 35.573494, 31.792347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619431, 35.334942, 31.935692>,  <31.791815, 35.191811, 32.021698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619431, 35.334942, 31.935692>,  <31.332123, 35.573494, 31.792347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619431, 35.334942, 31.935692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243051, 0.267547, 0.932387,
		-0.651933, -0.756805, 0.047220,
		0.718268, -0.596377, 0.358365,
		31.834911, 35.156029, 32.043201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116594, 35.262657, 32.439457>,  <31.332123, 35.573494, 31.792347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116594, 35.262657, 32.439457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515213, 35.230183, 32.446392>,  <31.754385, 35.210697, 32.450554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515213, 35.230183, 32.446392>,  <31.116594, 35.262657, 32.439457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515213, 35.230183, 32.446392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010780, 0.333668, 0.942629,
		-0.082312, -0.939188, 0.333391,
		0.996548, -0.081183, 0.017340,
		31.814178, 35.205830, 32.451595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237726, 35.124432, 33.156372>,  <31.116594, 35.262657, 32.439457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237726, 35.124432, 33.156372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.604172, 35.221794, 33.028942>,  <31.824039, 35.280212, 32.952484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.604172, 35.221794, 33.028942>,  <31.237726, 35.124432, 33.156372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604172, 35.221794, 33.028942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168985, 0.486156, 0.857377,
		0.363565, -0.839290, 0.404244,
		0.916114, 0.243401, -0.318576,
		31.879005, 35.294815, 32.933369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678303, 35.084724, 33.709770>,  <31.237726, 35.124432, 33.156372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678303, 35.084724, 33.709770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884470, 35.324451, 33.464767>,  <32.008171, 35.468288, 33.317764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884470, 35.324451, 33.464767>,  <31.678303, 35.084724, 33.709770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884470, 35.324451, 33.464767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124556, 0.654779, 0.745487,
		0.847840, -0.460528, 0.262835,
		0.515416, 0.599316, -0.612509,
		32.039097, 35.504246, 33.281013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361225, 35.252651, 34.052715>,  <31.678303, 35.084724, 33.709770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361225, 35.252651, 34.052715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289173, 35.548622, 33.793468>,  <32.245941, 35.726204, 33.637920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289173, 35.548622, 33.793468>,  <32.361225, 35.252651, 34.052715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289173, 35.548622, 33.793468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045909, 0.664504, 0.745874,
		0.982570, 0.104603, -0.153669,
		-0.180134, 0.739928, -0.648119,
		32.235134, 35.770599, 33.599033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832294, 35.741764, 34.288120>,  <32.361225, 35.252651, 34.052715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832294, 35.741764, 34.288120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.556629, 35.944721, 34.081196>,  <32.391232, 36.066494, 33.957043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.556629, 35.944721, 34.081196>,  <32.832294, 35.741764, 34.288120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556629, 35.944721, 34.081196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016049, 0.724430, 0.689162,
		0.724430, 0.466642, -0.507392,
		-0.689162, 0.507392, -0.517309,
		32.349880, 36.096939, 33.926003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026451, 36.511730, 34.271370>,  <32.832294, 35.741764, 34.288120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026451, 36.511730, 34.271370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.632706, 36.451370, 34.235027>,  <32.396458, 36.415154, 34.213223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.632706, 36.451370, 34.235027>,  <33.026451, 36.511730, 34.271370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632706, 36.451370, 34.235027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156945, 0.517217, 0.841341,
		-0.079966, 0.842446, -0.532813,
		-0.984365, -0.150901, -0.090858,
		32.337395, 36.406101, 34.207771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571793, 37.084526, 34.521126>,  <33.026451, 36.511730, 34.271370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571793, 37.084526, 34.521126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960636, 37.084057, 34.614933>,  <34.193943, 37.083775, 34.671219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960636, 37.084057, 34.614933>,  <33.571793, 37.084526, 34.521126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960636, 37.084057, 34.614933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094036, -0.914127, -0.394372,
		0.214845, 0.405426, -0.888522,
		0.972110, -0.001176, 0.234521,
		34.252270, 37.083706, 34.685287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926277, 36.983986, 33.954025>,  <33.571793, 37.084526, 34.521126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926277, 36.983986, 33.954025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209988, 36.862247, 34.208366>,  <34.380215, 36.789204, 34.360970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209988, 36.862247, 34.208366>,  <33.926277, 36.983986, 33.954025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209988, 36.862247, 34.208366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158741, -0.809878, -0.564712,
		0.686828, 0.501470, -0.526113,
		0.709274, -0.304344, 0.635850,
		34.422771, 36.770943, 34.399120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472561, 36.743122, 33.555660>,  <33.926277, 36.983986, 33.954025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472561, 36.743122, 33.555660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552502, 36.573441, 33.908955>,  <34.600464, 36.471630, 34.120934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552502, 36.573441, 33.908955>,  <34.472561, 36.743122, 33.555660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552502, 36.573441, 33.908955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235241, -0.854285, -0.463528,
		0.951169, 0.300410, -0.070938,
		0.199850, -0.424206, 0.883238,
		34.612457, 36.446178, 34.173927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192039, 36.550949, 33.605469>,  <34.472561, 36.743122, 33.555660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192039, 36.550949, 33.605469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021751, 36.308552, 33.874256>,  <34.919579, 36.163113, 34.035526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021751, 36.308552, 33.874256>,  <35.192039, 36.550949, 33.605469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021751, 36.308552, 33.874256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231761, -0.790876, -0.566394,
		0.874670, -0.085391, 0.477139,
		-0.425722, -0.605990, 0.671965,
		34.894035, 36.126755, 34.075844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716103, 36.048237, 33.704681>,  <35.192039, 36.550949, 33.605469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716103, 36.048237, 33.704681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355206, 35.890392, 33.774239>,  <35.138668, 35.795685, 33.815971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355206, 35.890392, 33.774239>,  <35.716103, 36.048237, 33.704681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355206, 35.890392, 33.774239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262579, -0.822609, -0.504348,
		0.342070, -0.409383, 0.845810,
		-0.902242, -0.394614, 0.173894,
		35.084534, 35.772007, 33.826408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868027, 35.351234, 33.622005>,  <35.716103, 36.048237, 33.704681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868027, 35.351234, 33.622005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.468121, 35.343918, 33.617352>,  <35.228176, 35.339527, 33.614559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.468121, 35.343918, 33.617352>,  <35.868027, 35.351234, 33.622005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468121, 35.343918, 33.617352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021655, -0.817914, -0.574933,
		0.001002, -0.575050, 0.818118,
		-0.999765, -0.018293, -0.011633,
		35.168190, 35.338428, 33.613861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730152, 34.620132, 33.783020>,  <35.868027, 35.351234, 33.622005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730152, 34.620132, 33.783020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420101, 34.792191, 33.597916>,  <35.234070, 34.895424, 33.486851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420101, 34.792191, 33.597916>,  <35.730152, 34.620132, 33.783020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420101, 34.792191, 33.597916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032590, -0.758695, -0.650631,
		-0.630961, -0.489242, 0.602105,
		-0.775130, 0.430145, -0.462762,
		35.187561, 34.921234, 33.459087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440132, 34.075504, 33.562298>,  <35.730152, 34.620132, 33.783020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440132, 34.075504, 33.562298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264374, 34.365265, 33.349815>,  <35.158920, 34.539120, 33.222328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264374, 34.365265, 33.349815>,  <35.440132, 34.075504, 33.562298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264374, 34.365265, 33.349815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081897, -0.621189, -0.779370,
		-0.894553, -0.298948, 0.332274,
		-0.439396, 0.724399, -0.531203,
		35.132553, 34.582584, 33.190453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924606, 33.708015, 33.182281>,  <35.440132, 34.075504, 33.562298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924606, 33.708015, 33.182281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026993, 34.031757, 32.970837>,  <35.088425, 34.226002, 32.843971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026993, 34.031757, 32.970837>,  <34.924606, 33.708015, 33.182281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026993, 34.031757, 32.970837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110331, -0.518794, -0.847750,
		-0.960370, 0.275315, -0.043496,
		0.255964, 0.809354, -0.528610,
		35.103783, 34.274563, 32.812252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865601, 33.476730, 32.526859>,  <34.924606, 33.708015, 33.182281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865601, 33.476730, 32.526859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002300, 33.836021, 32.416298>,  <35.084320, 34.051594, 32.349960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002300, 33.836021, 32.416298>,  <34.865601, 33.476730, 32.526859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002300, 33.836021, 32.416298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155076, -0.343977, -0.926083,
		-0.926906, 0.273629, -0.256849,
		0.341754, 0.898224, -0.276401,
		35.104828, 34.105488, 32.333378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507286, 33.727676, 31.972124>,  <34.865601, 33.476730, 32.526859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507286, 33.727676, 31.972124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856781, 33.922070, 31.964146>,  <35.066479, 34.038708, 31.959358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856781, 33.922070, 31.964146>,  <34.507286, 33.727676, 31.972124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856781, 33.922070, 31.964146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083769, -0.190746, -0.978059,
		-0.479126, 0.852898, -0.207373,
		0.873740, 0.485985, -0.019945,
		35.118904, 34.067863, 31.958162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437901, 34.194698, 31.427906>,  <34.507286, 33.727676, 31.972124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437901, 34.194698, 31.427906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835598, 34.183220, 31.469200>,  <35.074215, 34.176334, 31.493977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835598, 34.183220, 31.469200>,  <34.437901, 34.194698, 31.427906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835598, 34.183220, 31.469200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103007, -0.009273, -0.994637,
		0.029499, 0.999545, -0.006264,
		0.994243, -0.028696, 0.103234,
		35.133869, 34.174610, 31.500170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788082, 34.832588, 31.128382>,  <34.437901, 34.194698, 31.427906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788082, 34.832588, 31.128382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040718, 34.522778, 31.142288>,  <35.192299, 34.336891, 31.150631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040718, 34.522778, 31.142288>,  <34.788082, 34.832588, 31.128382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040718, 34.522778, 31.142288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060465, 0.004503, -0.998160,
		0.772943, 0.632527, 0.049675,
		0.631587, -0.774525, 0.034765,
		35.230194, 34.290421, 31.152718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366501, 35.046364, 30.668407>,  <34.788082, 34.832588, 31.128382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366501, 35.046364, 30.668407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386787, 34.648273, 30.701777>,  <35.398960, 34.409420, 30.721798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386787, 34.648273, 30.701777>,  <35.366501, 35.046364, 30.668407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386787, 34.648273, 30.701777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148548, -0.075085, -0.986051,
		0.987604, 0.062405, 0.144030,
		0.050720, -0.995223, 0.083424,
		35.402004, 34.349709, 30.726805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059582, 34.828545, 30.354671>,  <35.366501, 35.046364, 30.668407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059582, 34.828545, 30.354671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847866, 34.489613, 30.372044>,  <35.720837, 34.286255, 30.382467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847866, 34.489613, 30.372044>,  <36.059582, 34.828545, 30.354671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847866, 34.489613, 30.372044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238990, -0.198010, -0.950619,
		0.814084, -0.492776, 0.307307,
		-0.529292, -0.847327, 0.043428,
		35.689079, 34.235413, 30.385073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491989, 34.320911, 29.985678>,  <36.059582, 34.828545, 30.354671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491989, 34.320911, 29.985678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131157, 34.148289, 29.986084>,  <35.914658, 34.044716, 29.986328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131157, 34.148289, 29.986084>,  <36.491989, 34.320911, 29.985678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131157, 34.148289, 29.986084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172579, -0.362898, -0.915708,
		0.395553, -0.825870, 0.401843,
		-0.902084, -0.431560, 0.001018,
		35.860531, 34.018822, 29.986389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625656, 33.611008, 29.871325>,  <36.491989, 34.320911, 29.985678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625656, 33.611008, 29.871325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237190, 33.658443, 29.788595>,  <36.004112, 33.686905, 29.738958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237190, 33.658443, 29.788595>,  <36.625656, 33.611008, 29.871325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237190, 33.658443, 29.788595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125013, -0.485374, -0.865323,
		-0.203003, -0.866227, 0.456554,
		-0.971165, 0.118588, -0.206822,
		35.945839, 33.694019, 29.726549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339561, 32.943798, 29.828934>,  <36.625656, 33.611008, 29.871325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339561, 32.943798, 29.828934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101986, 33.184612, 29.615475>,  <35.959438, 33.329102, 29.487400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101986, 33.184612, 29.615475>,  <36.339561, 32.943798, 29.828934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101986, 33.184612, 29.615475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126514, -0.585175, -0.800977,
		-0.794498, -0.543248, 0.271394,
		-0.593943, 0.602040, -0.533648,
		35.923801, 33.365223, 29.455379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.768116, 32.489174, 29.272566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811077, 32.868576, 29.153360>,  <35.836853, 33.096218, 29.081837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811077, 32.868576, 29.153360>,  <35.768116, 32.489174, 29.272566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811077, 32.868576, 29.153360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229127, -0.315289, -0.920920,
		-0.967454, 0.030623, -0.251188,
		0.107399, 0.948501, -0.298011,
		35.843296, 33.153126, 29.063957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449928, 32.486492, 28.548475>,  <35.768116, 32.489174, 29.272566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449928, 32.486492, 28.548475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663898, 32.824413, 28.543234>,  <35.792278, 33.027164, 28.540089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663898, 32.824413, 28.543234>,  <35.449928, 32.486492, 28.548475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663898, 32.824413, 28.543234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352460, -0.237217, -0.905263,
		-0.767875, 0.479625, -0.424651,
		0.534921, 0.844801, -0.013104,
		35.824375, 33.077854, 28.539303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333580, 32.687313, 27.869291>,  <35.449928, 32.486492, 28.548475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333580, 32.687313, 27.869291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629025, 32.924580, 27.997419>,  <35.806293, 33.066940, 28.074297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629025, 32.924580, 27.997419>,  <35.333580, 32.687313, 27.869291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629025, 32.924580, 27.997419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436540, -0.058776, -0.897763,
		-0.513692, 0.802934, -0.302352,
		0.738616, 0.593162, 0.320320,
		35.850609, 33.102528, 28.093515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390102, 33.341541, 27.418364>,  <35.333580, 32.687313, 27.869291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390102, 33.341541, 27.418364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734337, 33.241493, 27.595829>,  <35.940876, 33.181465, 27.702309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734337, 33.241493, 27.595829>,  <35.390102, 33.341541, 27.418364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734337, 33.241493, 27.595829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397531, -0.214669, -0.892125,
		0.318381, 0.944116, -0.085309,
		0.860583, -0.250122, 0.443662,
		35.992512, 33.166458, 27.728928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965843, 33.708954, 27.050905>,  <35.390102, 33.341541, 27.418364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965843, 33.708954, 27.050905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137512, 33.398090, 27.235010>,  <36.240513, 33.211575, 27.345472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137512, 33.398090, 27.235010>,  <35.965843, 33.708954, 27.050905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137512, 33.398090, 27.235010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507746, -0.213852, -0.834543,
		0.746998, 0.591857, 0.302819,
		0.429172, -0.777156, 0.460260,
		36.266262, 33.164944, 27.373089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548695, 33.714073, 26.792027>,  <35.965843, 33.708954, 27.050905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548695, 33.714073, 26.792027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516048, 33.342945, 26.937624>,  <36.496460, 33.120270, 27.024982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516048, 33.342945, 26.937624>,  <36.548695, 33.714073, 26.792027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516048, 33.342945, 26.937624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444283, -0.360787, -0.820028,
		0.892162, 0.094793, 0.441658,
		-0.081612, -0.927818, 0.363995,
		36.491566, 33.064598, 27.046824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173332, 33.400513, 26.590006>,  <36.548695, 33.714073, 26.792027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173332, 33.400513, 26.590006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948509, 33.078621, 26.666428>,  <36.813614, 32.885487, 26.712280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948509, 33.078621, 26.666428>,  <37.173332, 33.400513, 26.590006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948509, 33.078621, 26.666428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389071, -0.461085, -0.797511,
		0.729873, -0.373915, 0.572253,
		-0.562059, -0.804729, 0.191054,
		36.779892, 32.837204, 26.723743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647060, 32.798977, 26.505951>,  <37.173332, 33.400513, 26.590006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647060, 32.798977, 26.505951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280483, 32.638908, 26.506823>,  <37.060539, 32.542866, 26.507345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280483, 32.638908, 26.506823>,  <37.647060, 32.798977, 26.505951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280483, 32.638908, 26.506823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284791, -0.656010, -0.698960,
		0.281132, -0.639933, 0.715158,
		-0.916438, -0.400170, 0.002178,
		37.005550, 32.518856, 26.507477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738647, 32.171879, 26.521358>,  <37.647060, 32.798977, 26.505951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738647, 32.171879, 26.521358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367878, 32.165359, 26.371399>,  <37.145416, 32.161449, 26.281424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367878, 32.165359, 26.371399>,  <37.738647, 32.171879, 26.521358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367878, 32.165359, 26.371399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252121, -0.767021, -0.590012,
		-0.277939, -0.641415, 0.715078,
		-0.926923, -0.016299, -0.374899,
		37.089802, 32.160469, 26.258928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493645, 31.471581, 26.418367>,  <37.738647, 32.171879, 26.521358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493645, 31.471581, 26.418367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272743, 31.672293, 26.152065>,  <37.140202, 31.792721, 25.992283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272743, 31.672293, 26.152065>,  <37.493645, 31.471581, 26.418367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272743, 31.672293, 26.152065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219912, -0.682613, -0.696907,
		-0.804148, -0.531277, 0.266627,
		-0.552254, 0.501781, -0.665756,
		37.107067, 31.822826, 25.952339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249165, 30.906532, 26.026745>,  <37.493645, 31.471581, 26.418367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249165, 30.906532, 26.026745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180557, 31.231747, 25.804193>,  <37.139393, 31.426874, 25.670662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180557, 31.231747, 25.804193>,  <37.249165, 30.906532, 26.026745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180557, 31.231747, 25.804193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140873, -0.538703, -0.830634,
		-0.975057, -0.220848, -0.022137,
		-0.171518, 0.813035, -0.556378,
		37.129101, 31.475657, 25.637280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994484, 30.700825, 25.463306>,  <37.249165, 30.906532, 26.026745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994484, 30.700825, 25.463306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090336, 31.066792, 25.333380>,  <37.147846, 31.286371, 25.255424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090336, 31.066792, 25.333380>,  <36.994484, 30.700825, 25.463306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090336, 31.066792, 25.333380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137139, -0.363109, -0.921599,
		-0.961129, 0.176301, -0.212484,
		0.239634, 0.914915, -0.324817,
		37.162228, 31.341267, 25.235935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808823, 30.676624, 24.740692>,  <36.994484, 30.700825, 25.463306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808823, 30.676624, 24.740692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068230, 30.981106, 24.741211>,  <37.223873, 31.163794, 24.741522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068230, 30.981106, 24.741211>,  <36.808823, 30.676624, 24.740692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068230, 30.981106, 24.741211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315443, -0.267195, -0.910551,
		-0.692767, 0.590913, -0.413396,
		0.648513, 0.761202, 0.001295,
		37.262783, 31.209467, 24.741600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799137, 30.830000, 24.077934>,  <36.808823, 30.676624, 24.740692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799137, 30.830000, 24.077934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120937, 31.024065, 24.214987>,  <37.314018, 31.140505, 24.297218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120937, 31.024065, 24.214987>,  <36.799137, 30.830000, 24.077934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120937, 31.024065, 24.214987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469637, -0.166444, -0.867028,
		-0.363620, 0.858437, -0.361754,
		0.804501, 0.485162, 0.342631,
		37.362289, 31.169613, 24.317776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035271, 31.467825, 23.593658>,  <36.799137, 30.830000, 24.077934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035271, 31.467825, 23.593658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360901, 31.325304, 23.777105>,  <37.556278, 31.239792, 23.887175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360901, 31.325304, 23.777105>,  <37.035271, 31.467825, 23.593658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360901, 31.325304, 23.777105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466490, -0.069207, -0.881815,
		0.345931, 0.931805, 0.109871,
		0.814075, -0.356301, 0.458619,
		37.605122, 31.218414, 23.914690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556465, 31.804026, 23.242702>,  <37.035271, 31.467825, 23.593658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556465, 31.804026, 23.242702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723625, 31.506269, 23.451029>,  <37.823921, 31.327616, 23.576025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723625, 31.506269, 23.451029>,  <37.556465, 31.804026, 23.242702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723625, 31.506269, 23.451029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579502, -0.223089, -0.783842,
		0.699672, 0.629377, 0.338148,
		0.417896, -0.744389, 0.520814,
		37.848995, 31.282953, 23.607273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248470, 31.899416, 23.151592>,  <37.556465, 31.804026, 23.242702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248470, 31.899416, 23.151592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191097, 31.517279, 23.254932>,  <38.156673, 31.287996, 23.316936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191097, 31.517279, 23.254932>,  <38.248470, 31.899416, 23.151592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191097, 31.517279, 23.254932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645294, -0.288203, -0.707485,
		0.750349, 0.065235, 0.657816,
		-0.143432, -0.955344, 0.258349,
		38.148067, 31.230675, 23.332438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918461, 31.653759, 23.188925>,  <38.248470, 31.899416, 23.151592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918461, 31.653759, 23.188925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.688427, 31.330475, 23.138208>,  <38.550407, 31.136505, 23.107779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.688427, 31.330475, 23.138208>,  <38.918461, 31.653759, 23.188925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688427, 31.330475, 23.138208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651848, -0.359029, -0.667976,
		0.494344, -0.466789, 0.733302,
		-0.575081, -0.808211, -0.126792,
		38.515903, 31.088011, 23.100170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384144, 31.175636, 22.952028>,  <38.918461, 31.653759, 23.188925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384144, 31.175636, 22.952028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028080, 31.035381, 22.835640>,  <38.814442, 30.951229, 22.765808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028080, 31.035381, 22.835640>,  <39.384144, 31.175636, 22.952028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028080, 31.035381, 22.835640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401822, -0.303030, -0.864125,
		0.214823, -0.886129, 0.410640,
		-0.890163, -0.350639, -0.290969,
		38.761032, 30.930189, 22.748350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509064, 30.499323, 22.684986>,  <39.384144, 31.175636, 22.952028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509064, 30.499323, 22.684986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167103, 30.618002, 22.514755>,  <38.961926, 30.689209, 22.412617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167103, 30.618002, 22.514755>,  <39.509064, 30.499323, 22.684986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167103, 30.618002, 22.514755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352013, -0.270851, -0.895950,
		-0.381093, -0.915757, 0.127110,
		-0.854901, 0.296696, -0.425578,
		38.910633, 30.707010, 22.387081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493484, 30.035666, 22.122116>,  <39.509064, 30.499323, 22.684986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493484, 30.035666, 22.122116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208797, 30.301992, 22.032549>,  <39.037983, 30.461788, 21.978807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208797, 30.301992, 22.032549>,  <39.493484, 30.035666, 22.122116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208797, 30.301992, 22.032549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001341, -0.320051, -0.947399,
		-0.702461, -0.673983, 0.228680,
		-0.711721, 0.665818, -0.223920,
		38.995281, 30.501738, 21.965374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829109, 29.711231, 21.837931>,  <39.493484, 30.035666, 22.122116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829109, 29.711231, 21.837931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878014, 30.085756, 21.706255>,  <38.907356, 30.310472, 21.627249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878014, 30.085756, 21.706255>,  <38.829109, 29.711231, 21.837931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878014, 30.085756, 21.706255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105195, -0.342036, -0.933780,
		-0.986907, 0.079539, -0.140315,
		0.122264, 0.936314, -0.329191,
		38.914692, 30.366652, 21.607498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403984, 30.001564, 21.259268>,  <38.829109, 29.711231, 21.837931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403984, 30.001564, 21.259268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707405, 30.253664, 21.193083>,  <38.889458, 30.404924, 21.153372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707405, 30.253664, 21.193083>,  <38.403984, 30.001564, 21.259268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707405, 30.253664, 21.193083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064369, -0.180208, -0.981520,
		-0.648422, 0.755188, -0.096129,
		0.758555, 0.630251, -0.165462,
		38.934971, 30.442739, 21.143444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678066, 29.735813, 21.213411>,  <38.403984, 30.001564, 21.259268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678066, 29.735813, 21.213411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693600, 29.503353, 21.538559>,  <37.702919, 29.363878, 21.733648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693600, 29.503353, 21.538559>,  <37.678066, 29.735813, 21.213411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693600, 29.503353, 21.538559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100622, 0.811624, 0.575450,
		-0.994167, 0.059447, 0.089993,
		0.038832, -0.581148, 0.812871,
		37.705250, 29.329008, 21.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472294, 30.394705, 20.839155>,  <37.678066, 29.735813, 21.213411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472294, 30.394705, 20.839155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122009, 30.283533, 20.681225>,  <36.911839, 30.216831, 20.586468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122009, 30.283533, 20.681225>,  <37.472294, 30.394705, 20.839155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122009, 30.283533, 20.681225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480019, 0.412938, 0.773992,
		-0.052076, 0.867316, -0.495025,
		-0.875711, -0.277928, -0.394824,
		36.859295, 30.200155, 20.562777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096172, 30.970144, 20.949205>,  <37.472294, 30.394705, 20.839155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096172, 30.970144, 20.949205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805328, 30.705145, 20.877199>,  <36.630821, 30.546144, 20.833996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805328, 30.705145, 20.877199>,  <37.096172, 30.970144, 20.949205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805328, 30.705145, 20.877199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568235, 0.433630, 0.699338,
		-0.385250, 0.610788, -0.691752,
		-0.727112, -0.662498, -0.180015,
		36.587196, 30.506395, 20.823195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564251, 31.424250, 20.887154>,  <37.096172, 30.970144, 20.949205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564251, 31.424250, 20.887154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388626, 31.073275, 20.964436>,  <36.283249, 30.862690, 21.010805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388626, 31.073275, 20.964436>,  <36.564251, 31.424250, 20.887154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388626, 31.073275, 20.964436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632561, 0.454602, 0.627059,
		-0.638035, 0.153107, -0.754632,
		-0.439065, -0.877436, 0.193202,
		36.256908, 30.810043, 21.022396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820084, 31.565189, 20.877018>,  <36.564251, 31.424250, 20.887154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820084, 31.565189, 20.877018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846336, 31.212162, 21.063251>,  <35.862087, 31.000345, 21.174992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846336, 31.212162, 21.063251>,  <35.820084, 31.565189, 20.877018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846336, 31.212162, 21.063251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729217, 0.276070, 0.626122,
		-0.681128, -0.380607, -0.625463,
		0.065635, -0.882567, 0.465584,
		35.866028, 30.947392, 21.202927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149742, 31.392204, 20.884130>,  <35.820084, 31.565189, 20.877018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149742, 31.392204, 20.884130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321487, 31.178835, 21.175638>,  <35.424534, 31.050814, 21.350542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321487, 31.178835, 21.175638>,  <35.149742, 31.392204, 20.884130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321487, 31.178835, 21.175638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642216, 0.387016, 0.661647,
		-0.634984, -0.752116, -0.176402,
		0.429365, -0.533423, 0.728770,
		35.450298, 31.018808, 21.394270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576736, 31.022614, 21.265841>,  <35.149742, 31.392204, 20.884130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576736, 31.022614, 21.265841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905685, 31.046064, 21.492210>,  <35.103054, 31.060135, 21.628033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905685, 31.046064, 21.492210>,  <34.576736, 31.022614, 21.265841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905685, 31.046064, 21.492210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515138, 0.498995, 0.696876,
		-0.241538, -0.864619, 0.440559,
		0.822369, 0.058627, 0.565925,
		35.152397, 31.063652, 21.661987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356323, 30.769468, 21.899136>,  <34.576736, 31.022614, 21.265841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356323, 30.769468, 21.899136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686550, 30.982815, 21.972851>,  <34.884686, 31.110823, 22.017080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686550, 30.982815, 21.972851>,  <34.356323, 30.769468, 21.899136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686550, 30.982815, 21.972851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464523, 0.456904, 0.758589,
		0.320403, -0.711872, 0.624965,
		0.825567, 0.533364, 0.184287,
		34.934219, 31.142824, 22.028137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521252, 30.627314, 22.624504>,  <34.356323, 30.769468, 21.899136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521252, 30.627314, 22.624504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737614, 30.960798, 22.580065>,  <34.867432, 31.160889, 22.553400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737614, 30.960798, 22.580065>,  <34.521252, 30.627314, 22.624504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737614, 30.960798, 22.580065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380954, 0.360613, 0.851371,
		0.749862, -0.418189, 0.512664,
		0.540907, 0.833713, -0.111099,
		34.899887, 31.210913, 22.546736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992493, 30.747684, 23.112761>,  <34.521252, 30.627314, 22.624504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992493, 30.747684, 23.112761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943481, 31.125736, 22.991623>,  <34.914074, 31.352568, 22.918940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943481, 31.125736, 22.991623>,  <34.992493, 30.747684, 23.112761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943481, 31.125736, 22.991623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154847, 0.283200, 0.946478,
		0.980311, 0.162865, 0.111650,
		-0.122529, 0.945131, -0.302843,
		34.906723, 31.409275, 22.900770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541523, 31.156124, 23.505913>,  <34.992493, 30.747684, 23.112761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541523, 31.156124, 23.505913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261406, 31.407873, 23.371168>,  <35.093334, 31.558922, 23.290321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261406, 31.407873, 23.371168>,  <35.541523, 31.156124, 23.505913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261406, 31.407873, 23.371168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121708, 0.359717, 0.925090,
		0.703401, 0.688836, -0.175309,
		-0.700296, 0.629372, -0.336862,
		35.051315, 31.596685, 23.270109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787899, 31.790674, 23.690767>,  <35.541523, 31.156124, 23.505913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787899, 31.790674, 23.690767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401833, 31.854790, 23.608044>,  <35.170193, 31.893259, 23.558409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401833, 31.854790, 23.608044>,  <35.787899, 31.790674, 23.690767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401833, 31.854790, 23.608044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123733, 0.416841, 0.900519,
		0.230549, 0.894736, -0.382486,
		-0.965162, 0.160288, -0.206811,
		35.112286, 31.902876, 23.546000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582489, 32.570568, 23.888506>,  <35.787899, 31.790674, 23.690767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582489, 32.570568, 23.888506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265076, 32.327164, 23.886879>,  <35.074627, 32.181122, 23.885902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265076, 32.327164, 23.886879>,  <35.582489, 32.570568, 23.888506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265076, 32.327164, 23.886879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259139, 0.331869, 0.907034,
		-0.550592, 0.720815, -0.421039,
		-0.793533, -0.608513, -0.004067,
		35.027016, 32.144611, 23.885658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158615, 32.836758, 24.390606>,  <35.582489, 32.570568, 23.888506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158615, 32.836758, 24.390606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997406, 32.473598, 24.344498>,  <34.900681, 32.255703, 24.316833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997406, 32.473598, 24.344498>,  <35.158615, 32.836758, 24.390606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997406, 32.473598, 24.344498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273205, -0.000854, 0.961956,
		-0.873459, 0.419182, -0.247699,
		-0.403023, -0.907902, -0.115269,
		34.876499, 32.201229, 24.309917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544689, 32.931725, 24.667616>,  <35.158615, 32.836758, 24.390606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544689, 32.931725, 24.667616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603653, 32.536602, 24.687660>,  <34.639030, 32.299530, 24.699686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603653, 32.536602, 24.687660>,  <34.544689, 32.931725, 24.667616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603653, 32.536602, 24.687660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407551, -0.014501, 0.913067,
		-0.901206, -0.155017, -0.404719,
		0.147409, -0.987806, 0.050109,
		34.647877, 32.240261, 24.702692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945839, 32.653301, 24.926479>,  <34.544689, 32.931725, 24.667616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945839, 32.653301, 24.926479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211533, 32.364998, 25.005774>,  <34.370949, 32.192017, 25.053350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211533, 32.364998, 25.005774>,  <33.945839, 32.653301, 24.926479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211533, 32.364998, 25.005774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469605, -0.196014, 0.860842,
		-0.581603, -0.664895, -0.468672,
		0.664236, -0.720759, 0.198236,
		34.410805, 32.148769, 25.065245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490582, 32.051346, 24.993048>,  <33.945839, 32.653301, 24.926479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490582, 32.051346, 24.993048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.832661, 31.961002, 25.179646>,  <34.037910, 31.906796, 25.291605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.832661, 31.961002, 25.179646>,  <33.490582, 32.051346, 24.993048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832661, 31.961002, 25.179646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489534, -0.056330, 0.870163,
		-0.170257, -0.972530, -0.158739,
		0.855202, -0.225859, 0.466495,
		34.089222, 31.893244, 25.319593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385201, 31.503370, 25.392126>,  <33.490582, 32.051346, 24.993048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385201, 31.503370, 25.392126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720608, 31.654119, 25.549532>,  <33.921852, 31.744568, 25.643974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720608, 31.654119, 25.549532>,  <33.385201, 31.503370, 25.392126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720608, 31.654119, 25.549532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393917, -0.079677, 0.915686,
		0.376451, -0.922832, 0.081646,
		0.838519, 0.376872, 0.393514,
		33.972164, 31.767181, 25.667585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474392, 31.171389, 26.083244>,  <33.385201, 31.503370, 25.392126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474392, 31.171389, 26.083244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687153, 31.509335, 26.106176>,  <33.814808, 31.712103, 26.119936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687153, 31.509335, 26.106176>,  <33.474392, 31.171389, 26.083244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687153, 31.509335, 26.106176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273668, 0.107431, 0.955806,
		0.801368, -0.524081, 0.288355,
		0.531898, 0.844866, 0.057332,
		33.846722, 31.762794, 26.123377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883492, 31.195673, 26.785715>,  <33.474392, 31.171389, 26.083244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883492, 31.195673, 26.785715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900490, 31.573507, 26.655512>,  <33.910690, 31.800207, 26.577391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900490, 31.573507, 26.655512>,  <33.883492, 31.195673, 26.785715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900490, 31.573507, 26.655512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373796, 0.317171, 0.871596,
		0.926537, 0.084633, 0.366561,
		0.042497, 0.944584, -0.325506,
		33.913239, 31.856882, 26.557859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154949, 31.663801, 27.364027>,  <33.883492, 31.195673, 26.785715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154949, 31.663801, 27.364027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960552, 31.924959, 27.131634>,  <33.843914, 32.081654, 26.992197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960552, 31.924959, 27.131634>,  <34.154949, 31.663801, 27.364027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960552, 31.924959, 27.131634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465765, 0.369011, 0.804297,
		0.739511, 0.661482, 0.124760,
		-0.485990, 0.652895, -0.580983,
		33.814754, 32.120827, 26.957338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.383644, 33.879089, 31.650686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999546, 33.982422, 31.608376>,  <35.769089, 34.044422, 31.582989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999546, 33.982422, 31.608376>,  <36.383644, 33.879089, 31.650686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999546, 33.982422, 31.608376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050118, 0.213225, 0.975717,
		0.274617, 0.942230, -0.191801,
		-0.960247, 0.258336, -0.105778,
		35.711472, 34.059921, 31.576643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270794, 34.617107, 31.899843>,  <36.383644, 33.879089, 31.650686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270794, 34.617107, 31.899843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.911259, 34.442307, 31.913240>,  <35.695538, 34.337425, 31.921278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.911259, 34.442307, 31.913240>,  <36.270794, 34.617107, 31.899843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911259, 34.442307, 31.913240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172665, 0.423304, 0.889382,
		-0.402840, 0.793626, -0.455936,
		-0.898836, -0.437003, 0.033493,
		35.641609, 34.311207, 31.923288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939186, 35.111778, 32.057037>,  <36.270794, 34.617107, 31.899843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939186, 35.111778, 32.057037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.687092, 34.811325, 32.135624>,  <35.535835, 34.631054, 32.182774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.687092, 34.811325, 32.135624>,  <35.939186, 35.111778, 32.057037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687092, 34.811325, 32.135624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310718, 0.475908, 0.822779,
		-0.711516, 0.457502, -0.533326,
		-0.630238, -0.751135, 0.196462,
		35.498020, 34.585983, 32.194561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257050, 35.356331, 32.092251>,  <35.939186, 35.111778, 32.057037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257050, 35.356331, 32.092251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.237122, 35.035637, 32.330490>,  <35.225163, 34.843220, 32.473434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.237122, 35.035637, 32.330490>,  <35.257050, 35.356331, 32.092251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237122, 35.035637, 32.330490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434644, 0.554313, 0.709804,
		-0.899223, -0.223507, -0.376088,
		-0.049824, -0.801737, 0.595597,
		35.222176, 34.795116, 32.509171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640442, 35.457336, 32.402618>,  <35.257050, 35.356331, 32.092251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640442, 35.457336, 32.402618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.806736, 35.197716, 32.657455>,  <34.906513, 35.041943, 32.810360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.806736, 35.197716, 32.657455>,  <34.640442, 35.457336, 32.402618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806736, 35.197716, 32.657455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238514, 0.598177, 0.765046,
		-0.877651, -0.470017, 0.093878,
		0.415740, -0.649053, 0.637096,
		34.931458, 35.002998, 32.848583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172848, 35.457016, 32.933838>,  <34.640442, 35.457336, 32.402618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172848, 35.457016, 32.933838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505543, 35.293324, 33.083897>,  <34.705162, 35.195107, 33.173931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505543, 35.293324, 33.083897>,  <34.172848, 35.457016, 32.933838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505543, 35.293324, 33.083897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023052, 0.649700, 0.759841,
		-0.554687, -0.640638, 0.530947,
		0.831740, -0.409234, 0.375148,
		34.755066, 35.170555, 33.196442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900429, 35.346302, 33.578014>,  <34.172848, 35.457016, 32.933838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900429, 35.346302, 33.578014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300411, 35.346649, 33.581795>,  <34.540401, 35.346859, 33.584061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300411, 35.346649, 33.581795>,  <33.900429, 35.346302, 33.578014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300411, 35.346649, 33.581795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007795, 0.642863, 0.765941,
		-0.005410, -0.765980, 0.642841,
		0.999955, 0.000867, 0.009448,
		34.600399, 35.346909, 33.584629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052113, 35.228672, 34.258987>,  <33.900429, 35.346302, 33.578014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052113, 35.228672, 34.258987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.374352, 35.408058, 34.104126>,  <34.567696, 35.515690, 34.011208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.374352, 35.408058, 34.104126>,  <34.052113, 35.228672, 34.258987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374352, 35.408058, 34.104126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018367, 0.634254, 0.772907,
		0.592171, -0.629766, 0.502720,
		0.805603, 0.448460, -0.387154,
		34.616032, 35.542599, 33.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455727, 35.295662, 34.959293>,  <34.052113, 35.228672, 34.258987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455727, 35.295662, 34.959293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.573433, 35.558659, 34.681843>,  <34.644058, 35.716457, 34.515373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.573433, 35.558659, 34.681843>,  <34.455727, 35.295662, 34.959293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573433, 35.558659, 34.681843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015907, 0.729026, 0.684301,
		0.955592, -0.190332, 0.224985,
		0.294265, 0.657491, -0.693623,
		34.661713, 35.755905, 34.473755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862183, 35.814514, 35.347408>,  <34.455727, 35.295662, 34.959293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862183, 35.814514, 35.347408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.780228, 36.001564, 35.003468>,  <34.731056, 36.113792, 34.797104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.780228, 36.001564, 35.003468>,  <34.862183, 35.814514, 35.347408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780228, 36.001564, 35.003468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054782, 0.871635, 0.487085,
		0.977251, 0.146903, -0.152970,
		-0.204889, 0.467625, -0.859853,
		34.718761, 36.141853, 34.745510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277111, 36.441151, 35.323486>,  <34.862183, 35.814514, 35.347408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277111, 36.441151, 35.323486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019615, 36.540165, 35.033844>,  <34.865120, 36.599575, 34.860058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019615, 36.540165, 35.033844>,  <35.277111, 36.441151, 35.323486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019615, 36.540165, 35.033844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074394, 0.961999, 0.262724,
		0.761623, 0.115256, -0.637689,
		-0.643736, 0.247537, -0.724106,
		34.826496, 36.614426, 34.816612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504532, 37.041706, 34.846123>,  <35.277111, 36.441151, 35.323486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504532, 37.041706, 34.846123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105499, 37.052273, 34.820377>,  <34.866081, 37.058613, 34.804932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105499, 37.052273, 34.820377>,  <35.504532, 37.041706, 34.846123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105499, 37.052273, 34.820377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021222, 0.996558, 0.080134,
		0.066256, 0.078574, -0.994704,
		-0.997577, 0.026419, -0.064360,
		34.806225, 37.060200, 34.801067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110771, 37.055870, 35.291210>,  <35.504532, 37.041706, 34.846123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110771, 37.055870, 35.291210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.929966, 37.226414, 35.604618>,  <35.821484, 37.328739, 35.792664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.929966, 37.226414, 35.604618>,  <36.110771, 37.055870, 35.291210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929966, 37.226414, 35.604618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873226, 0.032167, 0.486254,
		0.182113, 0.903984, -0.386844,
		-0.452009, 0.426355, 0.783523,
		35.794365, 37.354321, 35.839676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529636, 37.526463, 35.496204>,  <36.110771, 37.055870, 35.291210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529636, 37.526463, 35.496204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.296558, 37.537239, 35.821102>,  <36.156712, 37.543705, 36.016041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.296558, 37.537239, 35.821102>,  <36.529636, 37.526463, 35.496204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296558, 37.537239, 35.821102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806383, 0.143448, 0.573732,
		-0.101058, 0.989291, -0.105310,
		-0.582695, 0.026940, 0.812244,
		36.121750, 37.545322, 36.064777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915798, 37.768688, 34.851734>,  <36.529636, 37.526463, 35.496204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915798, 37.768688, 34.851734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977642, 38.145618, 34.732990>,  <37.014748, 38.371777, 34.661743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977642, 38.145618, 34.732990>,  <36.915798, 37.768688, 34.851734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977642, 38.145618, 34.732990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599364, -0.149408, -0.786410,
		-0.785404, 0.299511, 0.541695,
		0.154605, 0.942322, -0.296862,
		37.024025, 38.428314, 34.643932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280304, 38.018017, 34.480305>,  <36.915798, 37.768688, 34.851734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280304, 38.018017, 34.480305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.593857, 38.249691, 34.390789>,  <36.781990, 38.388695, 34.337082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.593857, 38.249691, 34.390789>,  <36.280304, 38.018017, 34.480305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593857, 38.249691, 34.390789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342464, 0.102656, -0.933906,
		-0.517928, 0.808709, 0.278819,
		0.783881, 0.579181, -0.223786,
		36.829021, 38.423447, 34.323654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092640, 38.693390, 34.111378>,  <36.280304, 38.018017, 34.480305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092640, 38.693390, 34.111378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470722, 38.624966, 34.000149>,  <36.697571, 38.583912, 33.933411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470722, 38.624966, 34.000149>,  <36.092640, 38.693390, 34.111378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470722, 38.624966, 34.000149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264317, 0.099004, -0.959341,
		0.191640, 0.980273, 0.048363,
		0.945204, -0.171064, -0.278076,
		36.754284, 38.573647, 33.916725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370335, 39.212727, 33.560749>,  <36.092640, 38.693390, 34.111378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370335, 39.212727, 33.560749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570805, 38.869293, 33.517555>,  <36.691086, 38.663235, 33.491638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570805, 38.869293, 33.517555>,  <36.370335, 39.212727, 33.560749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570805, 38.869293, 33.517555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091541, 0.071480, -0.993233,
		0.860489, 0.507671, -0.042771,
		0.501178, -0.858581, -0.107980,
		36.721157, 38.611717, 33.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566399, 39.268681, 32.853104>,  <36.370335, 39.212727, 33.560749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566399, 39.268681, 32.853104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.631561, 38.885540, 32.947754>,  <36.670658, 38.655655, 33.004543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.631561, 38.885540, 32.947754>,  <36.566399, 39.268681, 32.853104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631561, 38.885540, 32.947754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009242, -0.238334, -0.971139,
		0.986599, 0.160388, -0.029973,
		0.162903, -0.957848, 0.236622,
		36.680431, 38.598186, 33.018742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108864, 39.034191, 32.415646>,  <36.566399, 39.268681, 32.853104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108864, 39.034191, 32.415646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936230, 38.692966, 32.532963>,  <36.832649, 38.488232, 32.603352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936230, 38.692966, 32.532963>,  <37.108864, 39.034191, 32.415646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936230, 38.692966, 32.532963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041159, -0.306168, -0.951087,
		0.901134, -0.422545, 0.097026,
		-0.431583, -0.853063, 0.293290,
		36.806755, 38.437046, 32.620949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433121, 38.559196, 32.133327>,  <37.108864, 39.034191, 32.415646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433121, 38.559196, 32.133327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.100185, 38.352718, 32.214081>,  <36.900425, 38.228832, 32.262531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.100185, 38.352718, 32.214081>,  <37.433121, 38.559196, 32.133327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100185, 38.352718, 32.214081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063499, -0.273032, -0.959907,
		0.550619, -0.811786, 0.194477,
		-0.832338, -0.516194, 0.201884,
		36.850483, 38.197861, 32.274647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427608, 37.831318, 31.798071>,  <37.433121, 38.559196, 32.133327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427608, 37.831318, 31.798071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044926, 37.931801, 31.856857>,  <36.815315, 37.992092, 31.892130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044926, 37.931801, 31.856857>,  <37.427608, 37.831318, 31.798071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044926, 37.931801, 31.856857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237297, -0.380910, -0.893643,
		-0.168511, -0.889832, 0.424031,
		-0.956710, 0.251210, 0.146967,
		36.757912, 38.007164, 31.900948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107155, 37.182217, 31.731586>,  <37.427608, 37.831318, 31.798071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107155, 37.182217, 31.731586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844986, 37.480648, 31.684620>,  <36.687687, 37.659706, 31.656441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844986, 37.480648, 31.684620>,  <37.107155, 37.182217, 31.731586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844986, 37.480648, 31.684620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202401, -0.323286, -0.924402,
		-0.727639, -0.582106, 0.362896,
		-0.655419, 0.746082, -0.117417,
		36.648361, 37.704472, 31.649395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594040, 36.785179, 31.417212>,  <37.107155, 37.182217, 31.731586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594040, 36.785179, 31.417212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505428, 37.164425, 31.325989>,  <36.452259, 37.391972, 31.271255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505428, 37.164425, 31.325989>,  <36.594040, 36.785179, 31.417212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505428, 37.164425, 31.325989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060408, -0.246762, -0.967191,
		-0.973280, -0.200489, 0.111939,
		-0.221534, 0.948110, -0.228057,
		36.438969, 37.448856, 31.257572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060463, 36.718979, 31.026552>,  <36.594040, 36.785179, 31.417212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060463, 36.718979, 31.026552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198437, 37.082642, 30.933210>,  <36.281219, 37.300838, 30.877205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198437, 37.082642, 30.933210>,  <36.060463, 36.718979, 31.026552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198437, 37.082642, 30.933210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021885, -0.240756, -0.970339,
		-0.938372, 0.339809, -0.063148,
		0.344933, 0.909157, -0.233356,
		36.301918, 37.355389, 30.863203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582661, 37.005653, 30.500969>,  <36.060463, 36.718979, 31.026552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582661, 37.005653, 30.500969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.925640, 37.207817, 30.462309>,  <36.131428, 37.329117, 30.439112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.925640, 37.207817, 30.462309>,  <35.582661, 37.005653, 30.500969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925640, 37.207817, 30.462309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057742, -0.281152, -0.957925,
		-0.511317, 0.815791, -0.270257,
		0.857450, 0.505409, -0.096652,
		36.182877, 37.359440, 30.433313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422153, 37.477539, 30.029057>,  <35.582661, 37.005653, 30.500969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422153, 37.477539, 30.029057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.818832, 37.427681, 30.016357>,  <36.056839, 37.397766, 30.008738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.818832, 37.427681, 30.016357>,  <35.422153, 37.477539, 30.029057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818832, 37.427681, 30.016357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036904, -0.039275, -0.998547,
		0.123221, 0.991423, -0.043549,
		0.991693, -0.124649, -0.031748,
		36.116341, 37.390285, 30.006832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673969, 37.950375, 29.560215>,  <35.422153, 37.477539, 30.029057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673969, 37.950375, 29.560215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.977497, 37.690899, 29.583532>,  <36.159615, 37.535213, 29.597523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.977497, 37.690899, 29.583532>,  <35.673969, 37.950375, 29.560215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977497, 37.690899, 29.583532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013342, -0.073998, -0.997169,
		0.651168, 0.757446, -0.047496,
		0.758817, -0.648690, 0.058291,
		36.205143, 37.496292, 29.601019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786541, 38.693817, 29.370096>,  <35.673969, 37.950375, 29.560215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786541, 38.693817, 29.370096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.442371, 38.810352, 29.202866>,  <35.235870, 38.880276, 29.102528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.442371, 38.810352, 29.202866>,  <35.786541, 38.693817, 29.370096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442371, 38.810352, 29.202866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476508, -0.169273, 0.862721,
		0.180577, 0.941524, 0.284473,
		-0.860426, 0.291341, -0.418077,
		35.184242, 38.897755, 29.077442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611130, 39.220779, 29.802708>,  <35.786541, 38.693817, 29.370096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611130, 39.220779, 29.802708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.278111, 39.075565, 29.635342>,  <35.078300, 38.988438, 29.534922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.278111, 39.075565, 29.635342>,  <35.611130, 39.220779, 29.802708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278111, 39.075565, 29.635342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466174, 0.051125, 0.883215,
		-0.299248, 0.930371, -0.211802,
		-0.832546, -0.363037, -0.418416,
		35.028347, 38.966656, 29.509817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100426, 39.661182, 29.976746>,  <35.611130, 39.220779, 29.802708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100426, 39.661182, 29.976746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920654, 39.320988, 29.867435>,  <34.812790, 39.116871, 29.801849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920654, 39.320988, 29.867435>,  <35.100426, 39.661182, 29.976746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920654, 39.320988, 29.867435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510874, -0.006246, 0.859632,
		-0.732815, 0.525956, -0.431686,
		-0.449433, -0.850489, -0.273274,
		34.785824, 39.065842, 29.785454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409756, 39.759781, 30.249550>,  <35.100426, 39.661182, 29.976746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409756, 39.759781, 30.249550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409458, 39.372421, 30.149794>,  <34.409279, 39.140003, 30.089939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409458, 39.372421, 30.149794>,  <34.409756, 39.759781, 30.249550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409458, 39.372421, 30.149794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777427, -0.156298, 0.609244,
		-0.628973, 0.194338, -0.752745,
		-0.000747, -0.968403, -0.249391,
		34.409233, 39.081902, 30.074976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767265, 39.737465, 30.071465>,  <34.409756, 39.759781, 30.249550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767265, 39.737465, 30.071465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877686, 39.364922, 30.166428>,  <33.943939, 39.141396, 30.223406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877686, 39.364922, 30.166428>,  <33.767265, 39.737465, 30.071465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877686, 39.364922, 30.166428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815610, -0.096314, 0.570529,
		-0.508503, -0.351130, -0.786214,
		0.276053, -0.931360, 0.237409,
		33.960503, 39.085514, 30.237650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197979, 39.268078, 29.987509>,  <33.767265, 39.737465, 30.071465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197979, 39.268078, 29.987509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420109, 39.055016, 30.242977>,  <33.553387, 38.927177, 30.396257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420109, 39.055016, 30.242977>,  <33.197979, 39.268078, 29.987509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420109, 39.055016, 30.242977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782912, -0.075832, 0.617493,
		-0.280479, -0.842928, -0.459133,
		0.555320, -0.532655, 0.638669,
		33.586704, 38.895218, 30.434578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029449, 38.484940, 30.064598>,  <33.197979, 39.268078, 29.987509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029449, 38.484940, 30.064598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.193863, 38.609833, 30.407190>,  <33.292511, 38.684769, 30.612745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.193863, 38.609833, 30.407190>,  <33.029449, 38.484940, 30.064598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193863, 38.609833, 30.407190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745085, -0.426271, 0.512974,
		0.525259, -0.849002, 0.057426,
		0.411037, 0.312231, 0.856481,
		33.317173, 38.703503, 30.664135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755146, 38.124031, 30.542543>,  <33.029449, 38.484940, 30.064598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755146, 38.124031, 30.542543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.981174, 38.333755, 30.797350>,  <33.116791, 38.459591, 30.950233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.981174, 38.333755, 30.797350>,  <32.755146, 38.124031, 30.542543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981174, 38.333755, 30.797350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516158, -0.377685, 0.768723,
		0.643641, -0.763187, 0.057207,
		0.565073, 0.524309, 0.637018,
		33.150696, 38.491047, 30.988455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946426, 37.623466, 31.187397>,  <32.755146, 38.124031, 30.542543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946426, 37.623466, 31.187397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.929794, 38.016350, 31.260654>,  <32.919815, 38.252079, 31.304609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.929794, 38.016350, 31.260654>,  <32.946426, 37.623466, 31.187397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929794, 38.016350, 31.260654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685680, -0.161374, 0.709789,
		0.726714, -0.096064, 0.680190,
		-0.041580, 0.982207, 0.183142,
		32.917320, 38.311012, 31.315598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156811, 37.718582, 31.900118>,  <32.946426, 37.623466, 31.187397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156811, 37.718582, 31.900118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.958294, 38.056007, 31.818054>,  <32.839184, 38.258461, 31.768816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.958294, 38.056007, 31.818054>,  <33.156811, 37.718582, 31.900118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958294, 38.056007, 31.818054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689409, -0.239324, 0.683695,
		0.527640, 0.480755, 0.700336,
		-0.496297, 0.843563, -0.205160,
		32.809406, 38.309078, 31.756506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037327, 37.968269, 32.472439>,  <33.156811, 37.718582, 31.900118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037327, 37.968269, 32.472439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.761253, 38.157593, 32.253490>,  <32.595608, 38.271187, 32.122120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.761253, 38.157593, 32.253490>,  <33.037327, 37.968269, 32.472439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761253, 38.157593, 32.253490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699901, -0.244505, 0.671086,
		0.183795, 0.846283, 0.500024,
		-0.690187, 0.473310, -0.547375,
		32.554195, 38.299587, 32.089279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785290, 38.511723, 32.933609>,  <33.037327, 37.968269, 32.472439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785290, 38.511723, 32.933609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.532887, 38.391174, 32.647671>,  <32.381443, 38.318848, 32.476109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.532887, 38.391174, 32.647671>,  <32.785290, 38.511723, 32.933609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532887, 38.391174, 32.647671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696272, -0.186338, 0.693169,
		-0.342101, 0.935124, -0.092252,
		-0.631009, -0.301366, -0.714847,
		32.343582, 38.300766, 32.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.045265, 39.097630, 25.956753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705036, 38.920731, 25.842947>,  <36.500900, 38.814590, 25.774664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705036, 38.920731, 25.842947>,  <37.045265, 39.097630, 25.956753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705036, 38.920731, 25.842947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451843, 0.337860, 0.825644,
		-0.269011, 0.830825, -0.487199,
		-0.850571, -0.442245, -0.284514,
		36.449863, 38.788055, 25.757593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603661, 39.540646, 26.198172>,  <37.045265, 39.097630, 25.956753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603661, 39.540646, 26.198172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379059, 39.219109, 26.119642>,  <36.244297, 39.026184, 26.072525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379059, 39.219109, 26.119642>,  <36.603661, 39.540646, 26.198172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379059, 39.219109, 26.119642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476660, 0.120280, 0.870820,
		-0.676391, 0.582551, -0.450699,
		-0.561508, -0.803845, -0.196323,
		36.210606, 38.977955, 26.060745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856510, 39.732723, 26.293299>,  <36.603661, 39.540646, 26.198172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856510, 39.732723, 26.293299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873718, 39.335381, 26.335987>,  <35.884041, 39.096973, 26.361601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873718, 39.335381, 26.335987>,  <35.856510, 39.732723, 26.293299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873718, 39.335381, 26.335987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557999, 0.064720, 0.827314,
		-0.828726, -0.095140, -0.551509,
		0.043017, -0.993358, 0.106723,
		35.886623, 39.037373, 26.368004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232666, 39.414238, 26.254473>,  <35.856510, 39.732723, 26.293299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232666, 39.414238, 26.254473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460484, 39.162518, 26.465979>,  <35.597176, 39.011486, 26.592882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460484, 39.162518, 26.465979>,  <35.232666, 39.414238, 26.254473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460484, 39.162518, 26.465979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683577, -0.005412, 0.729859,
		-0.456442, -0.777139, -0.433261,
		0.569546, -0.629305, 0.528764,
		35.631348, 38.973724, 26.624607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770760, 38.893127, 26.503328>,  <35.232666, 39.414238, 26.254473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770760, 38.893127, 26.503328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087090, 38.864056, 26.746414>,  <35.276886, 38.846615, 26.892265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087090, 38.864056, 26.746414>,  <34.770760, 38.893127, 26.503328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087090, 38.864056, 26.746414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610998, -0.035749, 0.790824,
		-0.035749, -0.996715, -0.072677,
		-0.790824, 0.072677, -0.607713,
		35.324337, 38.842251, 26.928728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543598, 38.472122, 27.022284>,  <34.770760, 38.893127, 26.503328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543598, 38.472122, 27.022284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880547, 38.606319, 27.190975>,  <35.082714, 38.686836, 27.292191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880547, 38.606319, 27.190975>,  <34.543598, 38.472122, 27.022284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880547, 38.606319, 27.190975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447066, -0.001914, 0.894499,
		0.300902, -0.942042, 0.148373,
		0.842372, 0.335489, 0.421731,
		35.133259, 38.706966, 27.317495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633713, 38.083317, 27.602217>,  <34.543598, 38.472122, 27.022284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633713, 38.083317, 27.602217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888069, 38.380505, 27.685778>,  <35.040684, 38.558819, 27.735914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888069, 38.380505, 27.685778>,  <34.633713, 38.083317, 27.602217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888069, 38.380505, 27.685778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296300, -0.014917, 0.954978,
		0.712637, -0.669158, 0.210657,
		0.635889, 0.742971, 0.208902,
		35.078835, 38.603397, 27.748447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081558, 37.904911, 28.236961>,  <34.633713, 38.083317, 27.602217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081558, 37.904911, 28.236961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098373, 38.304447, 28.227571>,  <35.108463, 38.544170, 28.221937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098373, 38.304447, 28.227571>,  <35.081558, 37.904911, 28.236961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098373, 38.304447, 28.227571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068717, 0.020547, 0.997425,
		0.996750, -0.043545, -0.067774,
		0.042041, 0.998840, -0.023473,
		35.110985, 38.604099, 28.220530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598984, 38.090111, 28.720360>,  <35.081558, 37.904911, 28.236961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598984, 38.090111, 28.720360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394054, 38.430046, 28.670868>,  <35.271099, 38.634007, 28.641172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394054, 38.430046, 28.670868>,  <35.598984, 38.090111, 28.720360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394054, 38.430046, 28.670868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230065, 0.002994, 0.973171,
		0.827405, 0.527039, 0.193984,
		-0.512319, 0.849835, -0.123730,
		35.240360, 38.684998, 28.633749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395668, 38.198387, 28.856823>,  <35.598984, 38.090111, 28.720360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395668, 38.198387, 28.856823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417564, 37.822704, 28.992405>,  <36.430702, 37.597294, 29.073753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417564, 37.822704, 28.992405>,  <36.395668, 38.198387, 28.856823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417564, 37.822704, 28.992405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391088, -0.292172, -0.872746,
		0.918724, 0.180336, 0.351319,
		0.054742, -0.939209, 0.338953,
		36.433987, 37.540943, 29.094091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098625, 37.932499, 28.709724>,  <36.395668, 38.198387, 28.856823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098625, 37.932499, 28.709724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861649, 37.612743, 28.749689>,  <36.719463, 37.420891, 28.773668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861649, 37.612743, 28.749689>,  <37.098625, 37.932499, 28.709724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861649, 37.612743, 28.749689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462073, -0.438774, -0.770692,
		0.659925, -0.410424, 0.629326,
		-0.592443, -0.799393, 0.099912,
		36.683914, 37.372925, 28.779663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484150, 37.436089, 28.422386>,  <37.098625, 37.932499, 28.709724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484150, 37.436089, 28.422386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122608, 37.264969, 28.420235>,  <36.905682, 37.162296, 28.418943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122608, 37.264969, 28.420235>,  <37.484150, 37.436089, 28.422386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122608, 37.264969, 28.420235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223841, -0.462141, -0.858091,
		0.364603, -0.776797, 0.513469,
		-0.903858, -0.427798, -0.005381,
		36.851452, 37.136631, 28.418621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600620, 36.619698, 28.353655>,  <37.484150, 37.436089, 28.422386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600620, 36.619698, 28.353655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221161, 36.666729, 28.236189>,  <36.993484, 36.694946, 28.165709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221161, 36.666729, 28.236189>,  <37.600620, 36.619698, 28.353655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221161, 36.666729, 28.236189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180547, -0.561033, -0.807865,
		-0.259742, -0.819401, 0.510996,
		-0.948650, 0.117577, -0.293664,
		36.936565, 36.702003, 28.148090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301891, 35.903069, 28.285013>,  <37.600620, 36.619698, 28.353655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301891, 35.903069, 28.285013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063110, 36.151600, 28.081995>,  <36.919842, 36.300720, 27.960184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063110, 36.151600, 28.081995>,  <37.301891, 35.903069, 28.285013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063110, 36.151600, 28.081995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272578, -0.752066, -0.600082,
		-0.754586, -0.219841, 0.618279,
		-0.596909, 0.621343, -0.507575,
		36.884026, 36.337997, 27.929731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681843, 35.523418, 28.239477>,  <37.301891, 35.903069, 28.285013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681843, 35.523418, 28.239477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703148, 35.790264, 27.942259>,  <36.715931, 35.950371, 27.763927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703148, 35.790264, 27.942259>,  <36.681843, 35.523418, 28.239477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703148, 35.790264, 27.942259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078719, -0.738983, -0.669110,
		-0.995473, 0.094131, 0.013153,
		0.053264, 0.667116, -0.743047,
		36.719128, 35.990398, 27.719345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192226, 35.308182, 27.739468>,  <36.681843, 35.523418, 28.239477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192226, 35.308182, 27.739468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433399, 35.559780, 27.543165>,  <36.578102, 35.710739, 27.425383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433399, 35.559780, 27.543165>,  <36.192226, 35.308182, 27.739468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433399, 35.559780, 27.543165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023316, -0.600987, -0.798919,
		-0.797454, 0.493134, -0.347687,
		0.602930, 0.628994, -0.490757,
		36.614277, 35.748478, 27.395939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920444, 35.333038, 26.949043>,  <36.192226, 35.308182, 27.739468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920444, 35.333038, 26.949043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297157, 35.466610, 26.964737>,  <36.523186, 35.546753, 26.974154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297157, 35.466610, 26.964737>,  <35.920444, 35.333038, 26.949043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297157, 35.466610, 26.964737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175011, -0.387240, -0.905216,
		-0.287081, 0.859383, -0.423136,
		0.941783, 0.333924, 0.039232,
		36.579693, 35.566788, 26.976507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102070, 35.663010, 26.348307>,  <35.920444, 35.333038, 26.949043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102070, 35.663010, 26.348307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447006, 35.535709, 26.505825>,  <36.653969, 35.459328, 26.600336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447006, 35.535709, 26.505825>,  <36.102070, 35.663010, 26.348307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447006, 35.535709, 26.505825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255952, -0.397060, -0.881381,
		0.436863, 0.860847, -0.260945,
		0.862345, -0.318253, 0.393796,
		36.705711, 35.440235, 26.623964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652039, 35.926830, 25.899513>,  <36.102070, 35.663010, 26.348307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652039, 35.926830, 25.899513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835590, 35.636436, 26.104401>,  <36.945721, 35.462200, 26.227333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835590, 35.636436, 26.104401>,  <36.652039, 35.926830, 25.899513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835590, 35.636436, 26.104401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502586, -0.263312, -0.823453,
		0.732690, 0.635302, 0.244042,
		0.458882, -0.725987, 0.512220,
		36.973255, 35.418640, 26.258066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332306, 36.033031, 25.771173>,  <36.652039, 35.926830, 25.899513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332306, 36.033031, 25.771173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300896, 35.651611, 25.887505>,  <37.282051, 35.422760, 25.957302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300896, 35.651611, 25.887505>,  <37.332306, 36.033031, 25.771173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300896, 35.651611, 25.887505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619098, -0.275299, -0.735478,
		0.781378, 0.122296, 0.611957,
		-0.078525, -0.953548, 0.290826,
		37.277340, 35.365547, 25.974752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966599, 35.867878, 25.659096>,  <37.332306, 36.033031, 25.771173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966599, 35.867878, 25.659096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758591, 35.527672, 25.690611>,  <37.633785, 35.323547, 25.709520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758591, 35.527672, 25.690611>,  <37.966599, 35.867878, 25.659096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758591, 35.527672, 25.690611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331231, -0.285821, -0.899218,
		0.787317, -0.441510, 0.430349,
		-0.520017, -0.850515, 0.078790,
		37.602585, 35.272518, 25.714249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454197, 35.339314, 25.588665>,  <37.966599, 35.867878, 25.659096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454197, 35.339314, 25.588665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114799, 35.148232, 25.497581>,  <37.911160, 35.033581, 25.442932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114799, 35.148232, 25.497581>,  <38.454197, 35.339314, 25.588665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114799, 35.148232, 25.497581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451973, -0.430332, -0.781367,
		0.275277, -0.765903, 0.581047,
		-0.848494, -0.477710, -0.227707,
		37.860252, 35.004917, 25.429270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632965, 34.682503, 25.474371>,  <38.454197, 35.339314, 25.588665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632965, 34.682503, 25.474371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278488, 34.710495, 25.291166>,  <38.065804, 34.727291, 25.181244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278488, 34.710495, 25.291166>,  <38.632965, 34.682503, 25.474371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278488, 34.710495, 25.291166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346695, -0.555616, -0.755707,
		-0.307365, -0.828488, 0.468118,
		-0.886188, 0.069984, -0.458010,
		38.012630, 34.731491, 25.153763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.568556, 32.263096, 23.897997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.769802, 32.604164, 23.954319>,  <31.890551, 32.808804, 23.988113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.769802, 32.604164, 23.954319>,  <31.568556, 32.263096, 23.897997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769802, 32.604164, 23.954319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418744, 0.097993, 0.902802,
		0.755995, -0.513176, 0.406353,
		0.503116, 0.852671, 0.140807,
		31.920736, 32.859966, 23.996561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887793, 32.178360, 24.510757>,  <31.568556, 32.263096, 23.897997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887793, 32.178360, 24.510757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.858469, 32.575352, 24.471550>,  <31.840876, 32.813545, 24.448025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.858469, 32.575352, 24.471550>,  <31.887793, 32.178360, 24.510757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858469, 32.575352, 24.471550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285744, 0.073260, 0.955502,
		0.955498, 0.098054, 0.278225,
		-0.073308, 0.992481, -0.098019,
		31.836477, 32.873096, 24.442144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166481, 32.426567, 25.192532>,  <31.887793, 32.178360, 24.510757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166481, 32.426567, 25.192532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.985142, 32.739708, 25.022068>,  <31.876337, 32.927593, 24.919790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.985142, 32.739708, 25.022068>,  <32.166481, 32.426567, 25.192532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985142, 32.739708, 25.022068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277137, 0.330613, 0.902158,
		0.847152, 0.527100, 0.067074,
		-0.453352, 0.782854, -0.426159,
		31.849136, 32.974564, 24.894220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409634, 33.003941, 25.575111>,  <32.166481, 32.426567, 25.192532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409634, 33.003941, 25.575111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.085300, 33.147186, 25.389940>,  <31.890699, 33.233135, 25.278837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.085300, 33.147186, 25.389940>,  <32.409634, 33.003941, 25.575111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085300, 33.147186, 25.389940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171361, 0.611032, 0.772836,
		0.559628, 0.705969, -0.434078,
		-0.810834, 0.358117, -0.462926,
		31.842051, 33.254620, 25.251062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450317, 33.697361, 25.689842>,  <32.409634, 33.003941, 25.575111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450317, 33.697361, 25.689842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.066860, 33.620476, 25.605877>,  <31.836786, 33.574345, 25.555498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.066860, 33.620476, 25.605877>,  <32.450317, 33.697361, 25.689842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066860, 33.620476, 25.605877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281247, 0.526497, 0.802310,
		-0.043694, 0.828164, -0.558780,
		-0.958640, -0.192211, -0.209914,
		31.779268, 33.562813, 25.542902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122585, 34.312904, 25.703520>,  <32.450317, 33.697361, 25.689842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122585, 34.312904, 25.703520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.826012, 34.051060, 25.762539>,  <31.648069, 33.893955, 25.797951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.826012, 34.051060, 25.762539>,  <32.122585, 34.312904, 25.703520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826012, 34.051060, 25.762539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328792, 0.546072, 0.770520,
		-0.584960, 0.522774, -0.620104,
		-0.741430, -0.654608, 0.147546,
		31.603582, 33.854675, 25.806803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578661, 34.731556, 25.983980>,  <32.122585, 34.312904, 25.703520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578661, 34.731556, 25.983980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478338, 34.356857, 26.081635>,  <31.418144, 34.132038, 26.140228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478338, 34.356857, 26.081635>,  <31.578661, 34.731556, 25.983980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478338, 34.356857, 26.081635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375500, 0.326595, 0.867373,
		-0.892242, 0.125871, -0.433661,
		-0.250808, -0.936746, 0.244137,
		31.403095, 34.075832, 26.154875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883125, 34.712849, 26.060879>,  <31.578661, 34.731556, 25.983980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883125, 34.712849, 26.060879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.993095, 34.390766, 26.271046>,  <31.059078, 34.197517, 26.397146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.993095, 34.390766, 26.271046>,  <30.883125, 34.712849, 26.060879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993095, 34.390766, 26.271046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449074, 0.375663, 0.810685,
		-0.850146, -0.458828, -0.258318,
		0.274925, -0.805204, 0.525417,
		31.075573, 34.149204, 26.428671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201559, 34.665104, 26.529703>,  <30.883125, 34.712849, 26.060879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201559, 34.665104, 26.529703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.507841, 34.448982, 26.669285>,  <30.691610, 34.319309, 26.753035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.507841, 34.448982, 26.669285>,  <30.201559, 34.665104, 26.529703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507841, 34.448982, 26.669285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344236, 0.114045, 0.931931,
		-0.543320, -0.833707, -0.098666,
		0.765705, -0.540302, 0.348955,
		30.737553, 34.286892, 26.773972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919733, 34.122856, 27.074694>,  <30.201559, 34.665104, 26.529703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919733, 34.122856, 27.074694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.303402, 34.200191, 27.157265>,  <30.533604, 34.246593, 27.206808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.303402, 34.200191, 27.157265>,  <29.919733, 34.122856, 27.074694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303402, 34.200191, 27.157265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226152, 0.085978, 0.970290,
		0.169846, -0.977358, 0.126192,
		0.959170, 0.193339, 0.206428,
		30.591154, 34.258190, 27.219193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202921, 33.549133, 27.582232>,  <29.919733, 34.122856, 27.074694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202921, 33.549133, 27.582232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.411272, 33.890583, 27.583313>,  <30.536283, 34.095455, 27.583961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.411272, 33.890583, 27.583313>,  <30.202921, 33.549133, 27.582232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411272, 33.890583, 27.583313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162400, 0.095984, 0.982045,
		0.838041, -0.511964, 0.188625,
		0.520877, 0.853627, 0.002705,
		30.567535, 34.146671, 27.584124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798418, 33.590607, 28.115217>,  <30.202921, 33.549133, 27.582232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798418, 33.590607, 28.115217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.737801, 33.980686, 28.050684>,  <30.701431, 34.214733, 28.011965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.737801, 33.980686, 28.050684>,  <30.798418, 33.590607, 28.115217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737801, 33.980686, 28.050684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104477, 0.146501, 0.983678,
		0.982914, 0.165925, 0.079685,
		-0.151543, 0.975196, -0.161333,
		30.692337, 34.273247, 28.002283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240652, 34.017437, 28.677753>,  <30.798418, 33.590607, 28.115217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240652, 34.017437, 28.677753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.964659, 34.261112, 28.521391>,  <30.799063, 34.407318, 28.427574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.964659, 34.261112, 28.521391>,  <31.240652, 34.017437, 28.677753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964659, 34.261112, 28.521391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269346, 0.285182, 0.919850,
		0.671844, 0.739971, -0.032688,
		-0.689984, 0.609192, -0.390906,
		30.757664, 34.443871, 28.404119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332220, 34.527328, 29.105637>,  <31.240652, 34.017437, 28.677753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332220, 34.527328, 29.105637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.974842, 34.620564, 28.952053>,  <30.760416, 34.676506, 28.859903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.974842, 34.620564, 28.952053>,  <31.332220, 34.527328, 29.105637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974842, 34.620564, 28.952053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255243, 0.439920, 0.861000,
		0.369603, 0.867259, -0.333549,
		-0.893445, 0.233092, -0.383958,
		30.706808, 34.690491, 28.836866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960892, 34.778809, 29.450129>,  <31.332220, 34.527328, 29.105637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960892, 34.778809, 29.450129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.141476, 34.490662, 29.660749>,  <32.249825, 34.317776, 29.787123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.141476, 34.490662, 29.660749>,  <31.960892, 34.778809, 29.450129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141476, 34.490662, 29.660749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328962, -0.414177, -0.848670,
		0.829439, 0.556356, 0.049989,
		0.451458, -0.720365, 0.526554,
		32.276913, 34.274551, 29.818716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632099, 34.816200, 29.197681>,  <31.960892, 34.778809, 29.450129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632099, 34.816200, 29.197681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572182, 34.450756, 29.348883>,  <32.536232, 34.231491, 29.439604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572182, 34.450756, 29.348883>,  <32.632099, 34.816200, 29.197681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572182, 34.450756, 29.348883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477270, -0.401637, -0.781602,
		0.865896, 0.063333, 0.496198,
		-0.149791, -0.913606, 0.378003,
		32.527245, 34.176674, 29.462284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313118, 34.543533, 29.238874>,  <32.632099, 34.816200, 29.197681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313118, 34.543533, 29.238874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.041008, 34.250366, 29.235781>,  <32.877743, 34.074467, 29.233925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.041008, 34.250366, 29.235781>,  <33.313118, 34.543533, 29.238874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041008, 34.250366, 29.235781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410265, -0.372007, -0.832642,
		0.607381, -0.569598, 0.553757,
		-0.680273, -0.732918, -0.007736,
		32.836926, 34.030491, 29.233459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650330, 33.994720, 29.084066>,  <33.313118, 34.543533, 29.238874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650330, 33.994720, 29.084066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.272839, 33.894077, 28.998215>,  <33.046345, 33.833691, 28.946703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.272839, 33.894077, 28.998215>,  <33.650330, 33.994720, 29.084066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272839, 33.894077, 28.998215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318508, -0.516783, -0.794662,
		0.089028, -0.818308, 0.567843,
		-0.943730, -0.251610, -0.214630,
		32.989719, 33.818596, 28.933826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647701, 33.297882, 29.077923>,  <33.650330, 33.994720, 29.084066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647701, 33.297882, 29.077923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319389, 33.375935, 28.863169>,  <33.122402, 33.422768, 28.734316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319389, 33.375935, 28.863169>,  <33.647701, 33.297882, 29.077923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319389, 33.375935, 28.863169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310115, -0.637092, -0.705650,
		-0.479743, -0.745678, 0.462397,
		-0.820777, 0.195134, -0.536887,
		33.073154, 33.434475, 28.702103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397633, 32.666752, 28.799744>,  <33.647701, 33.297882, 29.077923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397633, 32.666752, 28.799744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249855, 32.960842, 28.572428>,  <33.161186, 33.137295, 28.436037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249855, 32.960842, 28.572428>,  <33.397633, 32.666752, 28.799744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249855, 32.960842, 28.572428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218781, -0.525547, -0.822153,
		-0.903130, -0.428073, 0.033309,
		-0.369447, 0.735224, -0.568291,
		33.139019, 33.181408, 28.401941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901325, 32.200768, 28.434658>,  <33.397633, 32.666752, 28.799744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901325, 32.200768, 28.434658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.981178, 32.550983, 28.258669>,  <33.029091, 32.761112, 28.153076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.981178, 32.550983, 28.258669>,  <32.901325, 32.200768, 28.434658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981178, 32.550983, 28.258669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302983, -0.482161, -0.822023,
		-0.931852, 0.030800, -0.361530,
		0.199634, 0.875541, -0.439971,
		33.041069, 32.813644, 28.126678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587498, 32.172844, 27.775501>,  <32.901325, 32.200768, 28.434658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587498, 32.172844, 27.775501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.828941, 32.487019, 27.720739>,  <32.973808, 32.675526, 27.687881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.828941, 32.487019, 27.720739>,  <32.587498, 32.172844, 27.775501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828941, 32.487019, 27.720739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283263, -0.371779, -0.884049,
		-0.745267, 0.494836, -0.446894,
		0.603605, 0.785441, -0.136906,
		33.010021, 32.722652, 27.679668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512772, 32.437355, 27.175592>,  <32.587498, 32.172844, 27.775501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512772, 32.437355, 27.175592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.878513, 32.585583, 27.240885>,  <33.097958, 32.674519, 27.280060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.878513, 32.585583, 27.240885>,  <32.512772, 32.437355, 27.175592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878513, 32.585583, 27.240885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248477, -0.195173, -0.948771,
		-0.319725, 0.908068, -0.270534,
		0.914350, 0.370567, 0.163232,
		33.152817, 32.696754, 27.289854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675198, 32.737354, 26.542053>,  <32.512772, 32.437355, 27.175592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675198, 32.737354, 26.542053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010963, 32.669491, 26.748589>,  <33.212421, 32.628773, 26.872509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010963, 32.669491, 26.748589>,  <32.675198, 32.737354, 26.542053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010963, 32.669491, 26.748589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415773, -0.411398, -0.811100,
		0.350033, 0.895526, -0.274792,
		0.839410, -0.169661, 0.516339,
		33.262787, 32.618591, 26.903490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300762, 32.967579, 26.142071>,  <32.675198, 32.737354, 26.542053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300762, 32.967579, 26.142071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462063, 32.705086, 26.397177>,  <33.558842, 32.547588, 26.550241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462063, 32.705086, 26.397177>,  <33.300762, 32.967579, 26.142071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462063, 32.705086, 26.397177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549171, -0.383942, -0.742294,
		0.731982, 0.649575, 0.205559,
		0.403253, -0.656233, 0.637766,
		33.583038, 32.508217, 26.588507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980236, 33.057499, 26.081001>,  <33.300762, 32.967579, 26.142071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980236, 33.057499, 26.081001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.957607, 32.694447, 26.247374>,  <33.944031, 32.476616, 26.347197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.957607, 32.694447, 26.247374>,  <33.980236, 33.057499, 26.081001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957607, 32.694447, 26.247374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555593, -0.374750, -0.742212,
		0.829528, 0.189103, 0.525475,
		-0.056567, -0.907636, 0.415930,
		33.940636, 32.422157, 26.372152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680962, 32.795292, 26.138762>,  <33.980236, 33.057499, 26.081001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680962, 32.795292, 26.138762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424431, 32.489071, 26.159264>,  <34.270512, 32.305336, 26.171566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424431, 32.489071, 26.159264>,  <34.680962, 32.795292, 26.138762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424431, 32.489071, 26.159264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441840, -0.423103, -0.791051,
		0.627280, -0.484673, 0.609599,
		-0.641325, -0.765556, 0.051256,
		34.232033, 32.259403, 26.174641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057899, 32.119690, 26.233530>,  <34.680962, 32.795292, 26.138762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057899, 32.119690, 26.233530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707253, 32.054192, 26.052538>,  <34.496864, 32.014893, 25.943943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707253, 32.054192, 26.052538>,  <35.057899, 32.119690, 26.233530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707253, 32.054192, 26.052538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474548, -0.449940, -0.756544,
		-0.079707, -0.877919, 0.472128,
		-0.876613, -0.163746, -0.452478,
		34.444267, 32.005066, 25.916794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794018, 31.928598, 26.401037>,  <35.057899, 32.119690, 26.233530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794018, 31.928598, 26.401037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142574, 32.121552, 26.436787>,  <36.351707, 32.237324, 26.458237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142574, 32.121552, 26.436787>,  <35.794018, 31.928598, 26.401037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142574, 32.121552, 26.436787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231375, 0.243452, 0.941911,
		0.432605, -0.841449, 0.323752,
		0.871389, 0.482384, 0.089372,
		36.403992, 32.266266, 26.463598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094685, 31.754377, 27.004250>,  <35.794018, 31.928598, 26.401037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094685, 31.754377, 27.004250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294563, 32.090645, 26.920748>,  <36.414490, 32.292404, 26.870646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294563, 32.090645, 26.920748>,  <36.094685, 31.754377, 27.004250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294563, 32.090645, 26.920748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079833, 0.284674, 0.955295,
		0.862513, -0.460694, 0.209364,
		0.499699, 0.840668, -0.208756,
		36.444473, 32.342846, 26.858122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600983, 31.858597, 27.515137>,  <36.094685, 31.754377, 27.004250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600983, 31.858597, 27.515137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554424, 32.225552, 27.362900>,  <36.526489, 32.445724, 27.271557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554424, 32.225552, 27.362900>,  <36.600983, 31.858597, 27.515137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554424, 32.225552, 27.362900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126736, 0.366348, 0.921807,
		0.985084, 0.155529, 0.073625,
		-0.116395, 0.917388, -0.380595,
		36.519505, 32.500767, 27.248722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051914, 32.285732, 27.876863>,  <36.600983, 31.858597, 27.515137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051914, 32.285732, 27.876863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.788647, 32.542343, 27.719248>,  <36.630688, 32.696308, 27.624678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.788647, 32.542343, 27.719248>,  <37.051914, 32.285732, 27.876863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788647, 32.542343, 27.719248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150243, 0.400936, 0.903702,
		0.737730, 0.653987, -0.167498,
		-0.658165, 0.641523, -0.394039,
		36.591198, 32.734798, 27.601036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115761, 32.923172, 28.300529>,  <37.051914, 32.285732, 27.876863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115761, 32.923172, 28.300529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761368, 32.974258, 28.122213>,  <36.548733, 33.004910, 28.015224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761368, 32.974258, 28.122213>,  <37.115761, 32.923172, 28.300529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761368, 32.974258, 28.122213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340863, 0.472425, 0.812790,
		0.314404, 0.872069, -0.375027,
		-0.885981, 0.127712, -0.445788,
		36.495575, 33.012573, 27.988478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943554, 33.557507, 28.667458>,  <37.115761, 32.923172, 28.300529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943554, 33.557507, 28.667458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615269, 33.416576, 28.487547>,  <36.418297, 33.332020, 28.379601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615269, 33.416576, 28.487547>,  <36.943554, 33.557507, 28.667458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615269, 33.416576, 28.487547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568693, 0.428034, 0.702407,
		-0.054955, 0.832259, -0.551656,
		-0.820712, -0.352323, -0.449777,
		36.369057, 33.310879, 28.352613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496216, 34.197403, 28.469397>,  <36.943554, 33.557507, 28.667458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496216, 34.197403, 28.469397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305603, 33.849510, 28.520748>,  <36.191235, 33.640774, 28.551559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305603, 33.849510, 28.520748>,  <36.496216, 34.197403, 28.469397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305603, 33.849510, 28.520748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516390, 0.395081, 0.759771,
		-0.711519, 0.295761, -0.637390,
		-0.476531, -0.869734, 0.128380,
		36.162643, 33.588589, 28.559261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826412, 34.370930, 28.544209>,  <36.496216, 34.197403, 28.469397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826412, 34.370930, 28.544209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861275, 34.008526, 28.709881>,  <35.882195, 33.791084, 28.809284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861275, 34.008526, 28.709881>,  <35.826412, 34.370930, 28.544209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861275, 34.008526, 28.709881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613548, 0.278731, 0.738829,
		-0.784832, -0.318518, -0.531587,
		0.087160, -0.906011, 0.414183,
		35.887424, 33.736721, 28.834135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157276, 34.289719, 28.871344>,  <35.826412, 34.370930, 28.544209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157276, 34.289719, 28.871344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.390137, 34.002666, 29.024240>,  <35.529854, 33.830437, 29.115978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.390137, 34.002666, 29.024240>,  <35.157276, 34.289719, 28.871344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390137, 34.002666, 29.024240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453199, 0.103926, 0.885331,
		-0.675064, -0.688628, -0.264728,
		0.582151, -0.717629, 0.382242,
		35.564781, 33.787376, 29.138914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704830, 33.957886, 29.372599>,  <35.157276, 34.289719, 28.871344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704830, 33.957886, 29.372599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078529, 33.846985, 29.462322>,  <35.302750, 33.780445, 29.516157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078529, 33.846985, 29.462322>,  <34.704830, 33.957886, 29.372599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078529, 33.846985, 29.462322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140226, 0.292728, 0.945858,
		-0.327903, -0.915118, 0.234602,
		0.934246, -0.277252, 0.224310,
		35.358803, 33.763809, 29.529615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644489, 33.592003, 29.980389>,  <34.704830, 33.957886, 29.372599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644489, 33.592003, 29.980389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030418, 33.697155, 29.979534>,  <35.261978, 33.760246, 29.979021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030418, 33.697155, 29.979534>,  <34.644489, 33.592003, 29.980389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030418, 33.697155, 29.979534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043303, 0.166943, 0.985015,
		0.259297, -0.950276, 0.172455,
		0.964826, 0.262879, -0.002138,
		35.319866, 33.776020, 29.978893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000351, 33.145084, 30.446802>,  <34.644489, 33.592003, 29.980389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000351, 33.145084, 30.446802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199139, 33.491524, 30.425312>,  <35.318413, 33.699387, 30.412418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199139, 33.491524, 30.425312>,  <35.000351, 33.145084, 30.446802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199139, 33.491524, 30.425312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121237, 0.130604, 0.983994,
		0.859256, -0.482504, 0.169910,
		0.496972, 0.866102, -0.053725,
		35.348228, 33.751354, 30.409195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471752, 33.055935, 30.913525>,  <35.000351, 33.145084, 30.446802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471752, 33.055935, 30.913525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467411, 33.451366, 30.853390>,  <35.464806, 33.688625, 30.817308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467411, 33.451366, 30.853390>,  <35.471752, 33.055935, 30.913525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467411, 33.451366, 30.853390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117579, 0.150563, 0.981583,
		0.993004, -0.007027, -0.117869,
		-0.010849, 0.988576, -0.150336,
		35.464157, 33.747940, 30.808289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085133, 33.344692, 31.236782>,  <35.471752, 33.055935, 30.913525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085133, 33.344692, 31.236782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831196, 33.653179, 31.218044>,  <35.678833, 33.838272, 31.206802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831196, 33.653179, 31.218044>,  <36.085133, 33.344692, 31.236782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831196, 33.653179, 31.218044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023409, 0.041401, 0.998868,
		0.772287, 0.635221, -0.008230,
		-0.634843, 0.771220, -0.046844,
		35.640743, 33.884544, 31.203991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.524193, 33.966084, 25.187546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281242, 34.199047, 24.971434>,  <38.135471, 34.338825, 24.841766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281242, 34.199047, 24.971434>,  <38.524193, 33.966084, 25.187546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281242, 34.199047, 24.971434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284894, -0.475173, -0.832493,
		-0.741576, -0.659556, 0.122683,
		-0.607372, 0.582405, -0.540281,
		38.099030, 34.373768, 24.809349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005341, 33.447166, 24.920233>,  <38.524193, 33.966084, 25.187546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005341, 33.447166, 24.920233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027386, 33.787582, 24.711353>,  <38.040615, 33.991833, 24.586025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027386, 33.787582, 24.711353>,  <38.005341, 33.447166, 24.920233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027386, 33.787582, 24.711353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280644, -0.515113, -0.809875,
		-0.958228, -0.101913, -0.267231,
		0.055117, 0.851042, -0.522197,
		38.043922, 34.042896, 24.554693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699966, 33.392208, 24.266085>,  <38.005341, 33.447166, 24.920233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699966, 33.392208, 24.266085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926811, 33.716084, 24.205700>,  <38.062920, 33.910408, 24.169470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926811, 33.716084, 24.205700>,  <37.699966, 33.392208, 24.266085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926811, 33.716084, 24.205700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366205, -0.412051, -0.834330,
		-0.737749, 0.417879, -0.530192,
		0.567115, 0.809686, -0.150961,
		38.096947, 33.958988, 24.160412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616367, 33.449223, 23.549820>,  <37.699966, 33.392208, 24.266085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616367, 33.449223, 23.549820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921516, 33.686539, 23.652613>,  <38.104607, 33.828926, 23.714289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921516, 33.686539, 23.652613>,  <37.616367, 33.449223, 23.549820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921516, 33.686539, 23.652613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469791, -0.235568, -0.850767,
		-0.444214, 0.769751, -0.458429,
		0.762870, 0.593288, 0.256980,
		38.150379, 33.864525, 23.729706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780422, 33.846230, 22.941942>,  <37.616367, 33.449223, 23.549820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780422, 33.846230, 22.941942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.101711, 33.861958, 23.179697>,  <38.294483, 33.871395, 23.322350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.101711, 33.861958, 23.179697>,  <37.780422, 33.846230, 22.941942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101711, 33.861958, 23.179697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580923, -0.272457, -0.767004,
		0.131789, 0.961364, -0.241682,
		0.803218, 0.039316, 0.594386,
		38.342678, 33.873753, 23.358013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345390, 34.309608, 22.619911>,  <37.780422, 33.846230, 22.941942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345390, 34.309608, 22.619911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560188, 34.095387, 22.880625>,  <38.689068, 33.966854, 23.037052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560188, 34.095387, 22.880625>,  <38.345390, 34.309608, 22.619911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560188, 34.095387, 22.880625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619069, -0.274674, -0.735736,
		0.573053, 0.798585, 0.184046,
		0.536995, -0.535553, 0.651782,
		38.721287, 33.934719, 23.076159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059429, 34.454464, 22.467150>,  <38.345390, 34.309608, 22.619911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059429, 34.454464, 22.467150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037388, 34.095284, 22.641804>,  <39.024162, 33.879776, 22.746595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037388, 34.095284, 22.641804>,  <39.059429, 34.454464, 22.467150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037388, 34.095284, 22.641804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745323, -0.327981, -0.580450,
		0.664423, 0.293449, 0.687335,
		-0.055100, -0.897951, 0.436633,
		39.020859, 33.825897, 22.772793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758244, 34.187630, 22.514540>,  <39.059429, 34.454464, 22.467150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758244, 34.187630, 22.514540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.559448, 33.844448, 22.566576>,  <39.440170, 33.638538, 22.597797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.559448, 33.844448, 22.566576>,  <39.758244, 34.187630, 22.514540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559448, 33.844448, 22.566576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591796, -0.444747, -0.672293,
		0.634652, -0.257133, 0.728765,
		-0.496985, -0.857953, 0.130089,
		39.410355, 33.587063, 22.605602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273609, 33.644924, 22.651382>,  <39.758244, 34.187630, 22.514540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273609, 33.644924, 22.651382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936409, 33.469986, 22.526115>,  <39.734089, 33.365025, 22.450954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936409, 33.469986, 22.526115>,  <40.273609, 33.644924, 22.651382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936409, 33.469986, 22.526115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513960, -0.483097, -0.708846,
		0.158721, -0.758515, 0.632031,
		-0.843002, -0.437347, -0.313169,
		39.683510, 33.338783, 22.432165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433037, 32.931641, 22.663773>,  <40.273609, 33.644924, 22.651382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433037, 32.931641, 22.663773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132351, 32.955341, 22.401045>,  <39.951939, 32.969563, 22.243408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132351, 32.955341, 22.401045>,  <40.433037, 32.931641, 22.663773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132351, 32.955341, 22.401045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573469, -0.433084, -0.695394,
		-0.325662, -0.899404, 0.291577,
		-0.751717, 0.059253, -0.656819,
		39.906837, 32.973118, 22.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590309, 32.371395, 22.167313>,  <40.433037, 32.931641, 22.663773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590309, 32.371395, 22.167313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.295330, 32.571739, 21.986069>,  <40.118343, 32.691944, 21.877321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.295330, 32.571739, 21.986069>,  <40.590309, 32.371395, 22.167313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295330, 32.571739, 21.986069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348449, -0.292563, -0.890500,
		-0.578580, -0.814583, 0.041225,
		-0.737448, 0.500861, -0.453111,
		40.074097, 32.721996, 21.850136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445271, 31.918671, 21.525671>,  <40.590309, 32.371395, 22.167313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445271, 31.918671, 21.525671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329174, 32.298756, 21.480312>,  <40.259518, 32.526806, 21.453096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329174, 32.298756, 21.480312>,  <40.445271, 31.918671, 21.525671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329174, 32.298756, 21.480312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471643, 0.038933, -0.880929,
		-0.832656, -0.309160, -0.459461,
		-0.290237, 0.950212, -0.113396,
		40.242104, 32.583820, 21.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853561, 31.532228, 21.200794>,  <40.445271, 31.918671, 21.525671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853561, 31.532228, 21.200794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809734, 31.524193, 21.598305>,  <39.783440, 31.519371, 21.836811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809734, 31.524193, 21.598305>,  <39.853561, 31.532228, 21.200794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809734, 31.524193, 21.598305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754528, -0.649163, -0.096311,
		0.647057, -0.760384, 0.055970,
		-0.109567, -0.020088, 0.993777,
		39.776863, 31.518166, 21.896439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410763, 32.076859, 20.907726>,  <39.853561, 31.532228, 21.200794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410763, 32.076859, 20.907726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761997, 32.244297, 21.000456>,  <39.972736, 32.344761, 21.056093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761997, 32.244297, 21.000456>,  <39.410763, 32.076859, 20.907726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761997, 32.244297, 21.000456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427460, -0.903939, 0.013124,
		0.215050, 0.087572, -0.972669,
		0.878084, 0.418600, 0.231826,
		40.025421, 32.369877, 21.070004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931492, 31.651035, 21.316515>,  <39.410763, 32.076859, 20.907726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931492, 31.651035, 21.316515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.927914, 31.262037, 21.409613>,  <38.925766, 31.028639, 21.465471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.927914, 31.262037, 21.409613>,  <38.931492, 31.651035, 21.316515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927914, 31.262037, 21.409613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187049, 0.230273, 0.954980,
		-0.982310, -0.034997, -0.183963,
		-0.008941, -0.972497, 0.232746,
		38.925232, 30.970289, 21.479437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277889, 31.532181, 21.699135>,  <38.931492, 31.651035, 21.316515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277889, 31.532181, 21.699135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482426, 31.194986, 21.765947>,  <38.605148, 30.992670, 21.806034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482426, 31.194986, 21.765947>,  <38.277889, 31.532181, 21.699135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482426, 31.194986, 21.765947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421506, -0.076640, 0.903581,
		-0.748907, -0.532444, -0.394514,
		0.511342, -0.842988, 0.167032,
		38.635830, 30.942089, 21.816057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756336, 30.972258, 21.883881>,  <38.277889, 31.532181, 21.699135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756336, 30.972258, 21.883881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121883, 30.912498, 22.034887>,  <38.341213, 30.876642, 22.125492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121883, 30.912498, 22.034887>,  <37.756336, 30.972258, 21.883881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121883, 30.912498, 22.034887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404272, -0.249033, 0.880084,
		-0.037466, -0.956903, -0.287980,
		0.913871, -0.149396, 0.377518,
		38.396046, 30.867680, 22.148142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642895, 30.400728, 22.351809>,  <37.756336, 30.972258, 21.883881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642895, 30.400728, 22.351809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.987061, 30.565901, 22.471256>,  <38.193562, 30.665005, 22.542925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.987061, 30.565901, 22.471256>,  <37.642895, 30.400728, 22.351809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987061, 30.565901, 22.471256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319604, -0.019154, 0.947358,
		0.396915, -0.910560, 0.115495,
		0.860413, 0.412933, 0.298621,
		38.245186, 30.689781, 22.560843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928177, 29.951786, 22.977095>,  <37.642895, 30.400728, 22.351809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928177, 29.951786, 22.977095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105938, 30.309319, 23.000999>,  <38.212593, 30.523838, 23.015343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105938, 30.309319, 23.000999>,  <37.928177, 29.951786, 22.977095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105938, 30.309319, 23.000999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298676, 0.084944, 0.950567,
		0.844570, -0.440284, 0.304715,
		0.444403, 0.893831, 0.059761,
		38.239258, 30.577469, 23.018929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123295, 29.998709, 23.745359>,  <37.928177, 29.951786, 22.977095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123295, 29.998709, 23.745359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136974, 30.376787, 23.615477>,  <38.145184, 30.603634, 23.537548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136974, 30.376787, 23.615477>,  <38.123295, 29.998709, 23.745359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136974, 30.376787, 23.615477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276976, 0.321133, 0.905626,
		0.960268, 0.058964, 0.272779,
		0.034199, 0.945197, -0.324705,
		38.147236, 30.660347, 23.518064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722851, 30.449568, 24.187426>,  <38.123295, 29.998709, 23.745359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722851, 30.449568, 24.187426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442104, 30.685188, 24.027225>,  <38.273655, 30.826561, 23.931107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442104, 30.685188, 24.027225>,  <38.722851, 30.449568, 24.187426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442104, 30.685188, 24.027225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290150, 0.277069, 0.915994,
		0.650532, 0.759113, -0.023554,
		-0.701870, 0.589049, -0.400499,
		38.231544, 30.861902, 23.907076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716881, 31.020395, 24.609360>,  <38.722851, 30.449568, 24.187426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716881, 31.020395, 24.609360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370037, 31.057224, 24.413546>,  <38.161930, 31.079321, 24.296057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370037, 31.057224, 24.413546>,  <38.716881, 31.020395, 24.609360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370037, 31.057224, 24.413546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391808, 0.480780, 0.784434,
		0.307583, 0.871994, -0.380814,
		-0.867110, 0.092073, -0.489534,
		38.109905, 31.084846, 24.266685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473038, 31.519810, 24.881947>,  <38.716881, 31.020395, 24.609360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473038, 31.519810, 24.881947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142986, 31.441166, 24.670095>,  <37.944954, 31.393980, 24.542986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142986, 31.441166, 24.670095>,  <38.473038, 31.519810, 24.881947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142986, 31.441166, 24.670095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509805, 0.663090, 0.548098,
		0.243429, 0.722259, -0.647368,
		-0.825131, -0.196609, -0.529626,
		37.895447, 31.382183, 24.511208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179874, 32.164627, 24.790754>,  <38.473038, 31.519810, 24.881947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179874, 32.164627, 24.790754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893799, 31.886942, 24.758324>,  <37.722153, 31.720331, 24.738865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893799, 31.886942, 24.758324>,  <38.179874, 32.164627, 24.790754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893799, 31.886942, 24.758324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570794, 0.513178, 0.640970,
		-0.403364, 0.504692, -0.763272,
		-0.715186, -0.694215, -0.081078,
		37.679241, 31.678677, 24.734001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570709, 32.543827, 24.860842>,  <38.179874, 32.164627, 24.790754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570709, 32.543827, 24.860842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.430859, 32.177498, 24.939859>,  <37.346947, 31.957701, 24.987270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.430859, 32.177498, 24.939859>,  <37.570709, 32.543827, 24.860842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430859, 32.177498, 24.939859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644603, 0.388158, 0.658651,
		-0.679887, 0.102947, -0.726055,
		-0.349630, -0.915825, 0.197544,
		37.325970, 31.902750, 24.999123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821762, 32.556534, 24.898684>,  <37.570709, 32.543827, 24.860842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821762, 32.556534, 24.898684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917927, 32.225281, 25.101227>,  <36.975624, 32.026527, 25.222754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917927, 32.225281, 25.101227>,  <36.821762, 32.556534, 24.898684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917927, 32.225281, 25.101227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499141, 0.341933, 0.796204,
		-0.832503, -0.444161, -0.331150,
		0.240412, -0.828132, 0.506359,
		36.990051, 31.976841, 25.253134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232426, 32.339169, 25.196524>,  <36.821762, 32.556534, 24.898684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232426, 32.339169, 25.196524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524632, 32.198120, 25.430450>,  <36.699955, 32.113491, 25.570807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524632, 32.198120, 25.430450>,  <36.232426, 32.339169, 25.196524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524632, 32.198120, 25.430450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468988, 0.363433, 0.804964,
		-0.496391, -0.862306, 0.100115,
		0.730511, -0.352624, 0.584817,
		36.743786, 32.092331, 25.605896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875698, 32.237099, 25.748413>,  <36.232426, 32.339169, 25.196524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875698, 32.237099, 25.748413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.239666, 32.188793, 25.907137>,  <36.458046, 32.159809, 26.002371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.239666, 32.188793, 25.907137>,  <35.875698, 32.237099, 25.748413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239666, 32.188793, 25.907137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311311, 0.433350, 0.845750,
		-0.274090, -0.893098, 0.356721,
		0.909923, -0.120761, 0.396808,
		36.512642, 32.152565, 26.026180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269672, 31.598963, 25.804605>,  <35.875698, 32.237099, 25.748413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269672, 31.598963, 25.804605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904476, 31.688242, 25.667997>,  <34.685360, 31.741810, 25.586033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904476, 31.688242, 25.667997>,  <35.269672, 31.598963, 25.804605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904476, 31.688242, 25.667997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261418, -0.322631, -0.909709,
		-0.313226, -0.919833, 0.236211,
		-0.912989, 0.223195, -0.341518,
		34.630581, 31.755201, 25.565542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245502, 31.208611, 25.303661>,  <35.269672, 31.598963, 25.804605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245502, 31.208611, 25.303661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957764, 31.474909, 25.224342>,  <34.785118, 31.634687, 25.176750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957764, 31.474909, 25.224342>,  <35.245502, 31.208611, 25.303661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957764, 31.474909, 25.224342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164791, -0.113766, -0.979745,
		-0.674819, -0.737457, -0.027871,
		-0.719349, 0.665744, -0.198298,
		34.741959, 31.674631, 25.164852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971027, 30.997185, 24.734415>,  <35.245502, 31.208611, 25.303661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971027, 30.997185, 24.734415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834595, 31.373095, 24.725599>,  <34.752735, 31.598640, 24.720310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834595, 31.373095, 24.725599>,  <34.971027, 30.997185, 24.734415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834595, 31.373095, 24.725599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081843, 0.006330, -0.996625,
		-0.936463, -0.341738, -0.079073,
		-0.341085, 0.939774, -0.022041,
		34.732269, 31.655027, 24.718987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404907, 30.986786, 24.181812>,  <34.971027, 30.997185, 24.734415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404907, 30.986786, 24.181812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.525341, 31.364971, 24.231529>,  <34.597603, 31.591883, 24.261360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.525341, 31.364971, 24.231529>,  <34.404907, 30.986786, 24.181812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525341, 31.364971, 24.231529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036060, 0.141538, -0.989276,
		-0.952914, 0.293378, 0.076709,
		0.301089, 0.945461, 0.124294,
		34.615669, 31.648609, 24.268818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893806, 31.537457, 23.840689>,  <34.404907, 30.986786, 24.181812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893806, 31.537457, 23.840689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.233292, 31.748417, 23.856369>,  <34.436981, 31.874992, 23.865776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.233292, 31.748417, 23.856369>,  <33.893806, 31.537457, 23.840689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233292, 31.748417, 23.856369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085355, 0.209751, -0.974022,
		-0.521923, 0.823318, 0.223034,
		0.848711, 0.527401, 0.039200,
		34.487904, 31.906637, 23.868130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837448, 32.063133, 23.378263>,  <33.893806, 31.537457, 23.840689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837448, 32.063133, 23.378263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225929, 31.989504, 23.438766>,  <34.459019, 31.945328, 23.475069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225929, 31.989504, 23.438766>,  <33.837448, 32.063133, 23.378263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225929, 31.989504, 23.438766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139879, -0.073392, -0.987445,
		0.192860, 0.980169, -0.045532,
		0.971205, -0.184069, 0.151259,
		34.517292, 31.934282, 23.484144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224792, 32.529884, 22.876680>,  <33.837448, 32.063133, 23.378263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224792, 32.529884, 22.876680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453686, 32.224899, 22.997471>,  <34.591022, 32.041908, 23.069946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453686, 32.224899, 22.997471>,  <34.224792, 32.529884, 22.876680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453686, 32.224899, 22.997471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457250, -0.009039, -0.889292,
		0.680785, 0.646965, 0.343465,
		0.572236, -0.762466, 0.301979,
		34.625355, 31.996159, 23.088064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377686, 33.163830, 22.527922>,  <34.224792, 32.529884, 22.876680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377686, 33.163830, 22.527922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.095028, 33.155067, 22.245029>,  <33.925434, 33.149811, 22.075294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.095028, 33.155067, 22.245029>,  <34.377686, 33.163830, 22.527922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095028, 33.155067, 22.245029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703498, 0.128852, 0.698919,
		0.075818, 0.991422, -0.106463,
		-0.706642, -0.021906, -0.707232,
		33.883034, 33.148495, 22.032860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998642, 33.698643, 22.666069>,  <34.377686, 33.163830, 22.527922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998642, 33.698643, 22.666069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772911, 33.448570, 22.450409>,  <33.637470, 33.298527, 22.321014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772911, 33.448570, 22.450409>,  <33.998642, 33.698643, 22.666069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772911, 33.448570, 22.450409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671209, -0.032758, 0.740544,
		-0.480636, 0.779792, -0.401141,
		-0.564330, -0.625181, -0.539148,
		33.603611, 33.261017, 22.288664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372761, 33.876087, 22.830292>,  <33.998642, 33.698643, 22.666069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372761, 33.876087, 22.830292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292774, 33.523952, 22.658234>,  <33.244781, 33.312672, 22.554998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292774, 33.523952, 22.658234>,  <33.372761, 33.876087, 22.830292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292774, 33.523952, 22.658234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839260, -0.072660, 0.538853,
		-0.505626, 0.468754, -0.724301,
		-0.199962, -0.880335, -0.430146,
		33.232784, 33.259853, 22.529190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739479, 33.954945, 22.736681>,  <33.372761, 33.876087, 22.830292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739479, 33.954945, 22.736681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796425, 33.559086, 22.744034>,  <32.830593, 33.321571, 22.748446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796425, 33.559086, 22.744034>,  <32.739479, 33.954945, 22.736681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796425, 33.559086, 22.744034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857101, -0.113963, 0.502385,
		-0.495087, -0.087274, -0.864449,
		0.142360, -0.989644, 0.018381,
		32.839134, 33.262192, 22.749548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053368, 33.666924, 22.613401>,  <32.739479, 33.954945, 22.736681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053368, 33.666924, 22.613401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263031, 33.379597, 22.796391>,  <32.388828, 33.207199, 22.906183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263031, 33.379597, 22.796391>,  <32.053368, 33.666924, 22.613401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263031, 33.379597, 22.796391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695335, -0.050823, 0.716887,
		-0.491703, -0.693855, -0.526111,
		0.524154, -0.718319, 0.457472,
		32.420277, 33.164101, 22.933632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579250, 33.290661, 22.972010>,  <32.053368, 33.666924, 22.613401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579250, 33.290661, 22.972010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924601, 33.186066, 23.144617>,  <32.131809, 33.123306, 23.248180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924601, 33.186066, 23.144617>,  <31.579250, 33.290661, 22.972010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924601, 33.186066, 23.144617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452557, -0.023165, 0.891434,
		-0.223106, -0.964928, -0.138339,
		0.863375, -0.261491, 0.431517,
		32.183613, 33.107620, 23.274073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393476, 32.747108, 23.397892>,  <31.579250, 33.290661, 22.972010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393476, 32.747108, 23.397892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747223, 32.879864, 23.529192>,  <31.959471, 32.959518, 23.607971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747223, 32.879864, 23.529192>,  <31.393476, 32.747108, 23.397892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747223, 32.879864, 23.529192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356432, 0.026053, 0.933958,
		0.301422, -0.942958, 0.141337,
		0.884365, 0.331892, 0.328247,
		32.012531, 32.979431, 23.627666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.976902, 34.854813, 20.314133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104588, 34.690727, 20.655853>,  <39.181198, 34.592278, 20.860886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104588, 34.690727, 20.655853>,  <38.976902, 34.854813, 20.314133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104588, 34.690727, 20.655853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190822, 0.855177, 0.481933,
		-0.928272, -0.316860, 0.194709,
		0.319216, -0.410210, 0.854300,
		39.200352, 34.567665, 20.912144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425373, 34.803978, 20.855316>,  <38.976902, 34.854813, 20.314133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425373, 34.803978, 20.855316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.778164, 34.854897, 21.036829>,  <38.989838, 34.885448, 21.145737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.778164, 34.854897, 21.036829>,  <38.425373, 34.803978, 20.855316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778164, 34.854897, 21.036829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435324, 0.588978, 0.680880,
		-0.180595, -0.798060, 0.574878,
		0.881975, 0.127295, 0.453781,
		39.042755, 34.893085, 21.172964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184834, 34.970791, 21.465652>,  <38.425373, 34.803978, 20.855316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184834, 34.970791, 21.465652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570957, 35.073215, 21.486071>,  <38.802631, 35.134670, 21.498322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570957, 35.073215, 21.486071>,  <38.184834, 34.970791, 21.465652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570957, 35.073215, 21.486071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217185, 0.678961, 0.701315,
		0.144921, -0.688074, 0.711021,
		0.965313, 0.256059, 0.051044,
		38.860550, 35.150032, 21.501383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302593, 35.038212, 22.152981>,  <38.184834, 34.970791, 21.465652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302593, 35.038212, 22.152981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607651, 35.246849, 21.999977>,  <38.790684, 35.372032, 21.908175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607651, 35.246849, 21.999977>,  <38.302593, 35.038212, 22.152981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607651, 35.246849, 21.999977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201581, 0.753582, 0.625683,
		0.614605, -0.400067, 0.679858,
		0.762644, 0.521594, -0.382510,
		38.836445, 35.403328, 21.885223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711796, 35.194836, 22.701651>,  <38.302593, 35.038212, 22.152981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711796, 35.194836, 22.701651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800991, 35.467373, 22.422781>,  <38.854507, 35.630894, 22.255459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800991, 35.467373, 22.422781>,  <38.711796, 35.194836, 22.701651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800991, 35.467373, 22.422781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284117, 0.729556, 0.622113,
		0.932500, 0.059358, 0.356260,
		0.222984, 0.681340, -0.697176,
		38.867886, 35.671776, 22.213629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951637, 35.766739, 23.032087>,  <38.711796, 35.194836, 22.701651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951637, 35.766739, 23.032087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883560, 35.956566, 22.686644>,  <38.842712, 36.070461, 22.479378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883560, 35.956566, 22.686644>,  <38.951637, 35.766739, 23.032087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883560, 35.956566, 22.686644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415327, 0.760204, 0.499592,
		0.893610, 0.443707, 0.067719,
		-0.170192, 0.474566, -0.863610,
		38.832504, 36.098934, 22.427561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129814, 36.484409, 23.153366>,  <38.951637, 35.766739, 23.032087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129814, 36.484409, 23.153366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.885342, 36.451439, 22.838491>,  <38.738659, 36.431656, 22.649567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.885342, 36.451439, 22.838491>,  <39.129814, 36.484409, 23.153366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885342, 36.451439, 22.838491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583663, 0.718693, 0.377912,
		0.534596, 0.690425, -0.487361,
		-0.611183, -0.082425, -0.787186,
		38.701988, 36.426712, 22.602335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035892, 37.151917, 23.056784>,  <39.129814, 36.484409, 23.153366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035892, 37.151917, 23.056784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729755, 37.017918, 22.836952>,  <38.546074, 36.937519, 22.705053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729755, 37.017918, 22.836952>,  <39.035892, 37.151917, 23.056784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729755, 37.017918, 22.836952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589160, 0.708405, 0.388654,
		0.259128, 0.621242, -0.739534,
		-0.765338, -0.334993, -0.549579,
		38.500153, 36.917419, 22.672079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639008, 37.792145, 22.814646>,  <39.035892, 37.151917, 23.056784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639008, 37.792145, 22.814646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.387821, 37.482285, 22.784777>,  <38.237110, 37.296368, 22.766855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.387821, 37.482285, 22.784777>,  <38.639008, 37.792145, 22.814646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387821, 37.482285, 22.784777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728406, 0.551254, 0.406871,
		-0.274019, 0.309893, -0.910428,
		-0.627964, -0.774652, -0.074674,
		38.199432, 37.249889, 22.762375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939426, 37.984272, 22.451981>,  <38.639008, 37.792145, 22.814646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939426, 37.984272, 22.451981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871330, 37.659649, 22.675550>,  <37.830475, 37.464874, 22.809692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871330, 37.659649, 22.675550>,  <37.939426, 37.984272, 22.451981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871330, 37.659649, 22.675550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785637, 0.454154, 0.420141,
		-0.594806, -0.367588, -0.714902,
		-0.170237, -0.811556, 0.558925,
		37.820259, 37.416183, 22.843227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321217, 37.858276, 22.423731>,  <37.939426, 37.984272, 22.451981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321217, 37.858276, 22.423731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415436, 37.679142, 22.768744>,  <37.471966, 37.571659, 22.975750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415436, 37.679142, 22.768744>,  <37.321217, 37.858276, 22.423731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415436, 37.679142, 22.768744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818958, 0.386397, 0.424271,
		-0.523284, -0.806312, -0.275746,
		0.235547, -0.447838, 0.862530,
		37.486099, 37.544792, 23.027502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695374, 37.835800, 22.853386>,  <37.321217, 37.858276, 22.423731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695374, 37.835800, 22.853386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.929253, 37.735661, 23.162050>,  <37.069580, 37.675579, 23.347248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.929253, 37.735661, 23.162050>,  <36.695374, 37.835800, 22.853386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929253, 37.735661, 23.162050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602587, 0.502832, 0.619717,
		-0.543160, -0.827336, 0.143147,
		0.584693, -0.250347, 0.771661,
		37.104660, 37.660557, 23.393549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185085, 37.262703, 22.729517>,  <36.695374, 37.835800, 22.853386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185085, 37.262703, 22.729517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871243, 37.465714, 22.587080>,  <35.682938, 37.587521, 22.501617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871243, 37.465714, 22.587080>,  <36.185085, 37.262703, 22.729517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871243, 37.465714, 22.587080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090753, -0.662183, -0.743826,
		-0.613308, -0.551299, 0.565617,
		-0.784612, 0.507526, -0.356091,
		35.635860, 37.617973, 22.480253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606075, 36.845188, 22.744770>,  <36.185085, 37.262703, 22.729517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606075, 36.845188, 22.744770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538544, 37.118557, 22.460676>,  <35.498024, 37.282578, 22.290220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538544, 37.118557, 22.460676>,  <35.606075, 36.845188, 22.744770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538544, 37.118557, 22.460676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048744, -0.725484, -0.686510,
		-0.984439, -0.081284, 0.155797,
		-0.168831, 0.683422, -0.710233,
		35.487896, 37.323582, 22.247606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472958, 36.415688, 22.208927>,  <35.606075, 36.845188, 22.744770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472958, 36.415688, 22.208927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.553097, 36.754406, 22.011826>,  <35.601181, 36.957638, 21.893564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.553097, 36.754406, 22.011826>,  <35.472958, 36.415688, 22.208927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553097, 36.754406, 22.011826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036715, -0.509086, -0.859932,
		-0.979037, 0.154190, -0.133082,
		0.200344, 0.846792, -0.492754,
		35.613201, 37.008442, 21.864000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141033, 36.405170, 21.621735>,  <35.472958, 36.415688, 22.208927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141033, 36.405170, 21.621735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424690, 36.668968, 21.521997>,  <35.594887, 36.827248, 21.462154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424690, 36.668968, 21.521997>,  <35.141033, 36.405170, 21.621735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424690, 36.668968, 21.521997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131152, -0.470864, -0.872403,
		-0.692755, 0.585960, -0.420406,
		0.709147, 0.659499, -0.249343,
		35.637436, 36.866817, 21.447195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012154, 36.583050, 20.894842>,  <35.141033, 36.405170, 21.621735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012154, 36.583050, 20.894842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.393082, 36.671841, 20.978565>,  <35.621639, 36.725117, 21.028799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.393082, 36.671841, 20.978565>,  <35.012154, 36.583050, 20.894842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393082, 36.671841, 20.978565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298615, -0.537490, -0.788627,
		-0.062560, 0.813529, -0.578150,
		0.952321, 0.221981, 0.209307,
		35.678780, 36.738434, 21.041357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265152, 36.813194, 20.317579>,  <35.012154, 36.583050, 20.894842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265152, 36.813194, 20.317579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.587475, 36.687817, 20.518549>,  <35.780869, 36.612591, 20.639132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.587475, 36.687817, 20.518549>,  <35.265152, 36.813194, 20.317579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587475, 36.687817, 20.518549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332709, -0.462231, -0.821977,
		0.489879, 0.829516, -0.268184,
		0.805806, -0.313442, 0.502425,
		35.829216, 36.593784, 20.669277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773003, 36.914799, 19.856302>,  <35.265152, 36.813194, 20.317579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773003, 36.914799, 19.856302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.922169, 36.665970, 20.131681>,  <36.011669, 36.516674, 20.296909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.922169, 36.665970, 20.131681>,  <35.773003, 36.914799, 19.856302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922169, 36.665970, 20.131681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350449, -0.592586, -0.725278,
		0.859140, 0.511731, -0.002978,
		0.372912, -0.622072, 0.688450,
		36.034042, 36.479347, 20.338217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397167, 36.813679, 19.595724>,  <35.773003, 36.914799, 19.856302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397167, 36.813679, 19.595724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311359, 36.519226, 19.852505>,  <36.259876, 36.342556, 20.006573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311359, 36.519226, 19.852505>,  <36.397167, 36.813679, 19.595724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311359, 36.519226, 19.852505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135882, -0.673351, -0.726728,
		0.967222, -0.068666, 0.244472,
		-0.214517, -0.736127, 0.641950,
		36.247005, 36.298389, 20.045090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812576, 36.272804, 19.426033>,  <36.397167, 36.813679, 19.595724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812576, 36.272804, 19.426033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.541725, 36.075909, 19.644831>,  <36.379215, 35.957771, 19.776110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.541725, 36.075909, 19.644831>,  <36.812576, 36.272804, 19.426033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541725, 36.075909, 19.644831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026669, -0.759257, -0.650244,
		0.735386, -0.425708, 0.527238,
		-0.677123, -0.492242, 0.546994,
		36.338589, 35.928238, 19.808929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064560, 35.652031, 19.441145>,  <36.812576, 36.272804, 19.426033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064560, 35.652031, 19.441145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.676445, 35.600117, 19.522831>,  <36.443577, 35.568970, 19.571842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.676445, 35.600117, 19.522831>,  <37.064560, 35.652031, 19.441145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676445, 35.600117, 19.522831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037943, -0.751921, -0.658161,
		0.238973, -0.646352, 0.724653,
		-0.970285, -0.129787, 0.204213,
		36.385361, 35.561180, 19.584095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029831, 34.990570, 19.528971>,  <37.064560, 35.652031, 19.441145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029831, 34.990570, 19.528971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.668488, 35.115974, 19.411909>,  <36.451679, 35.191219, 19.341673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.668488, 35.115974, 19.411909>,  <37.029831, 34.990570, 19.528971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668488, 35.115974, 19.411909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139761, -0.860316, -0.490227,
		-0.405466, -0.401952, 0.820994,
		-0.903363, 0.313514, -0.292652,
		36.397480, 35.210030, 19.324114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600414, 34.406513, 19.687590>,  <37.029831, 34.990570, 19.528971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600414, 34.406513, 19.687590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.368244, 34.609642, 19.432964>,  <36.228943, 34.731522, 19.280190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.368244, 34.609642, 19.432964>,  <36.600414, 34.406513, 19.687590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368244, 34.609642, 19.432964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120397, -0.826648, -0.549688,
		-0.805358, -0.242417, 0.540955,
		-0.580433, 0.507826, -0.636561,
		36.194115, 34.761990, 19.241995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804413, 33.960732, 20.208418>,  <36.600414, 34.406513, 19.687590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804413, 33.960732, 20.208418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537884, 33.906467, 19.915131>,  <36.377968, 33.873909, 19.739159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537884, 33.906467, 19.915131>,  <36.804413, 33.960732, 20.208418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537884, 33.906467, 19.915131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680615, -0.291021, 0.672362,
		-0.304593, 0.947050, 0.101584,
		-0.666324, -0.135657, -0.733219,
		36.337986, 33.865772, 19.695166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176022, 34.119431, 20.522793>,  <36.804413, 33.960732, 20.208418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176022, 34.119431, 20.522793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.069550, 33.918098, 20.193962>,  <36.005669, 33.797298, 19.996664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.069550, 33.918098, 20.193962>,  <36.176022, 34.119431, 20.522793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069550, 33.918098, 20.193962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842281, -0.293268, 0.452279,
		-0.468734, 0.812806, -0.345883,
		-0.266178, -0.503329, -0.822076,
		35.989697, 33.767101, 19.947340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499046, 34.291378, 20.326889>,  <36.176022, 34.119431, 20.522793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499046, 34.291378, 20.326889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.579838, 33.927860, 20.180845>,  <35.628315, 33.709751, 20.093220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.579838, 33.927860, 20.180845>,  <35.499046, 34.291378, 20.326889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579838, 33.927860, 20.180845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835657, -0.354332, 0.419674,
		-0.510765, 0.220340, -0.831005,
		0.201981, -0.908790, -0.365109,
		35.640430, 33.655224, 20.071312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900372, 34.017353, 19.967699>,  <35.499046, 34.291378, 20.326889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900372, 34.017353, 19.967699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.151749, 33.741898, 20.112385>,  <35.302574, 33.576626, 20.199196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.151749, 33.741898, 20.112385>,  <34.900372, 34.017353, 19.967699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151749, 33.741898, 20.112385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741542, -0.389968, 0.545931,
		-0.234888, -0.611317, -0.755724,
		0.628445, -0.688634, 0.361718,
		35.340282, 33.535305, 20.220900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561653, 33.471066, 19.881132>,  <34.900372, 34.017353, 19.967699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561653, 33.471066, 19.881132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.824627, 33.389664, 20.171335>,  <34.982410, 33.340820, 20.345457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.824627, 33.389664, 20.171335>,  <34.561653, 33.471066, 19.881132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824627, 33.389664, 20.171335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749449, -0.276412, 0.601600,
		0.078109, -0.939245, -0.334243,
		0.657438, -0.203507, 0.725506,
		35.021858, 33.328613, 20.388987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473293, 32.675907, 20.097689>,  <34.561653, 33.471066, 19.881132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473293, 32.675907, 20.097689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.638355, 32.892975, 20.390324>,  <34.737392, 33.023216, 20.565905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.638355, 32.892975, 20.390324>,  <34.473293, 32.675907, 20.097689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638355, 32.892975, 20.390324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628912, -0.411257, 0.659801,
		0.658927, -0.732375, 0.171586,
		0.412655, 0.542673, 0.731588,
		34.762154, 33.055779, 20.609800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502361, 32.231606, 20.591963>,  <34.473293, 32.675907, 20.097689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502361, 32.231606, 20.591963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.574768, 32.556732, 20.813437>,  <34.618214, 32.751808, 20.946320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.574768, 32.556732, 20.813437>,  <34.502361, 32.231606, 20.591963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574768, 32.556732, 20.813437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712298, -0.279836, 0.643679,
		0.678132, -0.510906, 0.528310,
		0.181019, 0.812814, 0.553683,
		34.629074, 32.800575, 20.979542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616787, 32.062805, 21.340569>,  <34.502361, 32.231606, 20.591963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616787, 32.062805, 21.340569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.501762, 32.445881, 21.335733>,  <34.432747, 32.675724, 21.332832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.501762, 32.445881, 21.335733>,  <34.616787, 32.062805, 21.340569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501762, 32.445881, 21.335733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512470, -0.143193, 0.846682,
		0.809125, 0.249667, 0.531962,
		-0.287562, 0.957686, -0.012086,
		34.415493, 32.733185, 21.332108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544987, 32.186241, 22.046276>,  <34.616787, 32.062805, 21.340569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544987, 32.186241, 22.046276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350189, 32.489807, 21.873358>,  <34.233311, 32.671947, 21.769608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350189, 32.489807, 21.873358>,  <34.544987, 32.186241, 22.046276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350189, 32.489807, 21.873358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750326, -0.110193, 0.651819,
		0.447041, 0.641796, 0.623099,
		-0.486996, 0.758917, -0.432296,
		34.204090, 32.717484, 21.743670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031811, 32.560684, 22.388412>,  <34.544987, 32.186241, 22.046276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031811, 32.560684, 22.388412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.999264, 32.202362, 22.563185>,  <34.979736, 31.987368, 22.668049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.999264, 32.202362, 22.563185>,  <35.031811, 32.560684, 22.388412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999264, 32.202362, 22.563185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294837, -0.440398, -0.848010,
		0.952077, 0.059824, 0.299950,
		-0.081366, -0.895807, 0.436931,
		34.974854, 31.933620, 22.694263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422474, 32.247616, 21.906797>,  <35.031811, 32.560684, 22.388412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422474, 32.247616, 21.906797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.303654, 31.959213, 22.157211>,  <35.232361, 31.786173, 22.307459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.303654, 31.959213, 22.157211>,  <35.422474, 32.247616, 21.906797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303654, 31.959213, 22.157211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441990, -0.684982, -0.579175,
		0.846409, 0.104659, 0.522148,
		-0.297047, -0.721003, 0.626033,
		35.214539, 31.742912, 22.345020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024353, 31.865393, 22.172405>,  <35.422474, 32.247616, 21.906797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024353, 31.865393, 22.172405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.700249, 31.630964, 22.173082>,  <35.505787, 31.490307, 22.173489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.700249, 31.630964, 22.173082>,  <36.024353, 31.865393, 22.172405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700249, 31.630964, 22.173082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487153, -0.675100, -0.554005,
		0.325828, -0.448063, 0.832512,
		-0.810258, -0.586071, 0.001692,
		35.457172, 31.455143, 22.173590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207314, 31.095369, 22.441854>,  <36.024353, 31.865393, 22.172405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207314, 31.095369, 22.441854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.884926, 31.063883, 22.207172>,  <35.691494, 31.044991, 22.066362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.884926, 31.063883, 22.207172>,  <36.207314, 31.095369, 22.441854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884926, 31.063883, 22.207172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516095, -0.578886, -0.631298,
		-0.289940, -0.811600, 0.507188,
		-0.805966, -0.078718, -0.586705,
		35.643135, 31.040268, 22.031160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023796, 30.384245, 22.424927>,  <36.207314, 31.095369, 22.441854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023796, 30.384245, 22.424927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.869553, 30.575041, 22.109007>,  <35.777004, 30.689518, 21.919455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.869553, 30.575041, 22.109007>,  <36.023796, 30.384245, 22.424927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869553, 30.575041, 22.109007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519848, -0.594883, -0.613084,
		-0.762275, -0.646988, -0.018570,
		-0.385611, 0.476992, -0.789799,
		35.753868, 30.718138, 21.872066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861694, 29.900593, 21.935818>,  <36.023796, 30.384245, 22.424927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861694, 29.900593, 21.935818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889160, 30.227205, 21.706537>,  <35.905640, 30.423174, 21.568968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889160, 30.227205, 21.706537>,  <35.861694, 29.900593, 21.935818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889160, 30.227205, 21.706537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512857, -0.521715, -0.681757,
		-0.855724, -0.247160, -0.454585,
		0.068661, 0.816532, -0.573202,
		35.909760, 30.472164, 21.534576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682674, 29.635490, 21.258263>,  <35.861694, 29.900593, 21.935818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682674, 29.635490, 21.258263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.859447, 29.986355, 21.183123>,  <35.965511, 30.196873, 21.138039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.859447, 29.986355, 21.183123>,  <35.682674, 29.635490, 21.258263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859447, 29.986355, 21.183123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430676, -0.391163, -0.813333,
		-0.786902, 0.278536, -0.550639,
		0.441932, 0.877160, -0.187848,
		35.992027, 30.249502, 21.126768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644779, 29.640509, 20.579594>,  <35.682674, 29.635490, 21.258263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644779, 29.640509, 20.579594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924580, 29.916792, 20.652943>,  <36.092461, 30.082561, 20.696953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924580, 29.916792, 20.652943>,  <35.644779, 29.640509, 20.579594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924580, 29.916792, 20.652943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493039, -0.280691, -0.823483,
		-0.517315, 0.666435, -0.536888,
		0.699498, 0.690707, 0.183373,
		36.134430, 30.124004, 20.707954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765629, 30.044191, 19.954754>,  <35.644779, 29.640509, 20.579594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765629, 30.044191, 19.954754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108932, 30.054735, 20.159769>,  <36.314915, 30.061062, 20.282778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108932, 30.054735, 20.159769>,  <35.765629, 30.044191, 19.954754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108932, 30.054735, 20.159769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490851, -0.333763, -0.804778,
		0.149851, 0.942288, -0.299395,
		0.858260, 0.026362, 0.512538,
		36.366409, 30.062643, 20.313530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.061876, 36.496643, 33.824287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.454802, 36.513912, 33.897163>,  <31.690557, 36.524273, 33.940887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.454802, 36.513912, 33.897163>,  <31.061876, 36.496643, 33.824287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454802, 36.513912, 33.897163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178143, -0.515036, -0.838453,
		0.057634, 0.856080, -0.513619,
		0.982315, 0.043175, 0.182188,
		31.749496, 36.526863, 33.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368111, 36.614780, 33.201153>,  <31.061876, 36.496643, 33.824287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368111, 36.614780, 33.201153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668194, 36.459000, 33.414886>,  <31.848244, 36.365532, 33.543125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668194, 36.459000, 33.414886>,  <31.368111, 36.614780, 33.201153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668194, 36.459000, 33.414886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297598, -0.522760, -0.798848,
		0.590442, 0.758319, -0.276278,
		0.750209, -0.389454, 0.534334,
		31.893257, 36.342163, 33.575188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004631, 36.765507, 32.786636>,  <31.368111, 36.614780, 33.201153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004631, 36.765507, 32.786636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069122, 36.454838, 33.030205>,  <32.107819, 36.268436, 33.176346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069122, 36.454838, 33.030205>,  <32.004631, 36.765507, 32.786636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069122, 36.454838, 33.030205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314986, -0.544232, -0.777557,
		0.935302, 0.317168, 0.156893,
		0.161229, -0.776670, 0.608925,
		32.117493, 36.221836, 33.212883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536770, 36.369354, 32.406593>,  <32.004631, 36.765507, 32.786636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536770, 36.369354, 32.406593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416992, 36.100060, 32.677025>,  <32.345127, 35.938480, 32.839283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416992, 36.100060, 32.677025>,  <32.536770, 36.369354, 32.406593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416992, 36.100060, 32.677025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045973, -0.717950, -0.694575,
		0.953007, -0.176902, 0.245934,
		-0.299440, -0.673241, 0.676079,
		32.327160, 35.898087, 32.879848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951019, 35.830116, 32.538628>,  <32.536770, 36.369354, 32.406593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951019, 35.830116, 32.538628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601776, 35.656406, 32.627243>,  <32.392231, 35.552181, 32.680412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601776, 35.656406, 32.627243>,  <32.951019, 35.830116, 32.538628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601776, 35.656406, 32.627243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089867, -0.589996, -0.802389,
		0.479165, -0.680667, 0.554160,
		-0.873112, -0.434277, 0.221536,
		32.339844, 35.526123, 32.693703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065685, 35.040165, 32.565861>,  <32.951019, 35.830116, 32.538628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065685, 35.040165, 32.565861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679089, 35.114265, 32.494774>,  <32.447132, 35.158726, 32.452122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679089, 35.114265, 32.494774>,  <33.065685, 35.040165, 32.565861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679089, 35.114265, 32.494774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019969, -0.744443, -0.667387,
		-0.255933, -0.641473, 0.723195,
		-0.966488, 0.185248, -0.177718,
		32.389141, 35.169842, 32.441460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864014, 34.416042, 32.260124>,  <33.065685, 35.040165, 32.565861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864014, 34.416042, 32.260124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540539, 34.646114, 32.210831>,  <32.346455, 34.784157, 32.181255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540539, 34.646114, 32.210831>,  <32.864014, 34.416042, 32.260124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540539, 34.646114, 32.210831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214935, -0.483940, -0.848295,
		-0.547564, -0.659519, 0.514984,
		-0.808688, 0.575184, -0.123235,
		32.297932, 34.818668, 32.173859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313019, 33.883923, 32.081219>,  <32.864014, 34.416042, 32.260124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313019, 33.883923, 32.081219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238808, 34.254730, 31.950855>,  <32.194279, 34.477215, 31.872637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238808, 34.254730, 31.950855>,  <32.313019, 33.883923, 32.081219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238808, 34.254730, 31.950855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156101, -0.355265, -0.921640,
		-0.970160, -0.120117, 0.210621,
		-0.185531, 0.927016, -0.325913,
		32.183147, 34.532837, 31.853081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723984, 33.909050, 31.590660>,  <32.313019, 33.883923, 32.081219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723984, 33.909050, 31.590660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918846, 34.248287, 31.507313>,  <32.035763, 34.451828, 31.457304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918846, 34.248287, 31.507313>,  <31.723984, 33.909050, 31.590660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918846, 34.248287, 31.507313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046207, -0.213230, -0.975909,
		-0.872092, 0.485047, -0.064688,
		0.487155, 0.848093, -0.208369,
		32.064991, 34.502716, 31.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293558, 34.259995, 31.144764>,  <31.723984, 33.909050, 31.590660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293558, 34.259995, 31.144764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.663130, 34.407623, 31.104490>,  <31.884872, 34.496201, 31.080326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.663130, 34.407623, 31.104490>,  <31.293558, 34.259995, 31.144764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663130, 34.407623, 31.104490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034292, -0.182229, -0.982658,
		-0.381020, 0.911361, -0.155710,
		0.923931, 0.369073, -0.100685,
		31.940310, 34.518345, 31.074286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213665, 34.554813, 30.620564>,  <31.293558, 34.259995, 31.144764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213665, 34.554813, 30.620564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611856, 34.523460, 30.642010>,  <31.850771, 34.504650, 30.654879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611856, 34.523460, 30.642010>,  <31.213665, 34.554813, 30.620564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611856, 34.523460, 30.642010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042536, -0.136768, -0.989689,
		0.084907, 0.987497, -0.132816,
		0.995480, -0.078382, 0.053617,
		31.910501, 34.499947, 30.658094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496689, 34.643181, 29.978645>,  <31.213665, 34.554813, 30.620564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496689, 34.643181, 29.978645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836494, 34.480358, 30.112885>,  <32.040379, 34.382664, 30.193428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836494, 34.480358, 30.112885>,  <31.496689, 34.643181, 29.978645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836494, 34.480358, 30.112885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206593, -0.328642, -0.921582,
		0.485429, 0.852231, -0.195091,
		0.849516, -0.407059, 0.335597,
		32.091351, 34.358242, 30.213564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046482, 35.110905, 29.419367>,  <31.496689, 34.643181, 29.978645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046482, 35.110905, 29.419367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.702963, 35.014385, 29.238594>,  <30.496851, 34.956474, 29.130131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.702963, 35.014385, 29.238594>,  <31.046482, 35.110905, 29.419367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702963, 35.014385, 29.238594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509972, 0.486892, 0.709129,
		0.048932, 0.839471, -0.541196,
		-0.858798, -0.241296, -0.451932,
		30.445324, 34.941998, 29.103014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608326, 35.726768, 29.498833>,  <31.046482, 35.110905, 29.419367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608326, 35.726768, 29.498833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370989, 35.415806, 29.415325>,  <30.228586, 35.229229, 29.365221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370989, 35.415806, 29.415325>,  <30.608326, 35.726768, 29.498833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370989, 35.415806, 29.415325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685756, 0.352374, 0.636845,
		-0.421523, 0.521031, -0.742189,
		-0.593344, -0.777406, -0.208767,
		30.192986, 35.182583, 29.352695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810658, 35.922379, 29.302134>,  <30.608326, 35.726768, 29.498833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810658, 35.922379, 29.302134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773186, 35.544769, 29.428650>,  <29.750702, 35.318203, 29.504559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773186, 35.544769, 29.428650>,  <29.810658, 35.922379, 29.302134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773186, 35.544769, 29.428650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807025, 0.258045, 0.531153,
		-0.583039, -0.205495, -0.786026,
		-0.093681, -0.944026, 0.316290,
		29.745081, 35.261562, 29.523537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110723, 35.769432, 29.154274>,  <29.810658, 35.922379, 29.302134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110723, 35.769432, 29.154274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255768, 35.542545, 29.450054>,  <29.342794, 35.406414, 29.627522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255768, 35.542545, 29.450054>,  <29.110723, 35.769432, 29.154274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255768, 35.542545, 29.450054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789123, 0.235229, 0.567408,
		-0.495781, -0.789263, -0.362304,
		0.362610, -0.567213, 0.739448,
		29.364552, 35.372383, 29.671888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548908, 35.457867, 29.368618>,  <29.110723, 35.769432, 29.154274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548908, 35.457867, 29.368618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.787621, 35.405514, 29.685282>,  <28.930847, 35.374104, 29.875280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.787621, 35.405514, 29.685282>,  <28.548908, 35.457867, 29.368618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787621, 35.405514, 29.685282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722787, 0.340785, 0.601203,
		-0.348470, -0.930987, 0.108776,
		0.596782, -0.130880, 0.791658,
		28.966656, 35.366249, 29.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093445, 35.138214, 29.913097>,  <28.548908, 35.457867, 29.368618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093445, 35.138214, 29.913097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.407454, 35.286991, 30.111250>,  <28.595858, 35.376259, 30.230141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.407454, 35.286991, 30.111250>,  <28.093445, 35.138214, 29.913097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407454, 35.286991, 30.111250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615650, 0.379777, 0.690466,
		0.068680, -0.847011, 0.527120,
		0.785021, 0.371943, 0.495379,
		28.642960, 35.398575, 30.259863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087715, 34.873959, 30.601562>,  <28.093445, 35.138214, 29.913097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087715, 34.873959, 30.601562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.304773, 35.209915, 30.606024>,  <28.435007, 35.411488, 30.608700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.304773, 35.209915, 30.606024>,  <28.087715, 34.873959, 30.601562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304773, 35.209915, 30.606024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535075, 0.335410, 0.775368,
		0.647482, -0.426717, 0.631411,
		0.542644, 0.839889, 0.011153,
		28.467567, 35.461884, 30.609369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327700, 34.956100, 31.320446>,  <28.087715, 34.873959, 30.601562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327700, 34.956100, 31.320446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.347475, 35.309460, 31.134045>,  <28.359341, 35.521477, 31.022203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.347475, 35.309460, 31.134045>,  <28.327700, 34.956100, 31.320446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347475, 35.309460, 31.134045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315260, 0.456526, 0.831983,
		0.947717, 0.105780, 0.301071,
		0.049439, 0.883400, -0.466006,
		28.362307, 35.574478, 30.994244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420025, 35.306370, 31.854370>,  <28.327700, 34.956100, 31.320446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420025, 35.306370, 31.854370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.358669, 35.606812, 31.597525>,  <28.321856, 35.787079, 31.443417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.358669, 35.606812, 31.597525>,  <28.420025, 35.306370, 31.854370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358669, 35.606812, 31.597525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180697, 0.617527, 0.765512,
		0.971504, 0.233451, 0.041000,
		-0.153391, 0.751107, -0.642114,
		28.312653, 35.832142, 31.404890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796408, 35.981651, 32.059330>,  <28.420025, 35.306370, 31.854370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796408, 35.981651, 32.059330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.483852, 36.080582, 31.830154>,  <28.296320, 36.139942, 31.692648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.483852, 36.080582, 31.830154>,  <28.796408, 35.981651, 32.059330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483852, 36.080582, 31.830154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268191, 0.695906, 0.666175,
		0.563477, 0.674199, -0.477441,
		-0.781388, 0.247329, -0.572941,
		28.249435, 36.154781, 31.658272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798674, 36.649979, 32.178162>,  <28.796408, 35.981651, 32.059330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798674, 36.649979, 32.178162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.427528, 36.579014, 32.046955>,  <28.204842, 36.536434, 31.968231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.427528, 36.579014, 32.046955>,  <28.798674, 36.649979, 32.178162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427528, 36.579014, 32.046955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367282, 0.587097, 0.721402,
		0.064590, 0.789837, -0.609906,
		-0.927864, -0.177413, -0.328014,
		28.149170, 36.525791, 31.948551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502619, 37.249760, 32.214108>,  <28.798674, 36.649979, 32.178162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502619, 37.249760, 32.214108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.190222, 37.001202, 32.189091>,  <28.002783, 36.852066, 32.174080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.190222, 37.001202, 32.189091>,  <28.502619, 37.249760, 32.214108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190222, 37.001202, 32.189091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544472, 0.628394, 0.555582,
		-0.305937, 0.467959, -0.829106,
		-0.780995, -0.621398, -0.062541,
		27.955923, 36.814781, 32.170330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979158, 37.741310, 32.060341>,  <28.502619, 37.249760, 32.214108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979158, 37.741310, 32.060341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.787981, 37.412045, 32.182957>,  <27.673275, 37.214485, 32.256527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.787981, 37.412045, 32.182957>,  <27.979158, 37.741310, 32.060341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787981, 37.412045, 32.182957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696859, 0.567785, 0.438187,
		-0.534751, -0.004188, -0.844999,
		-0.477943, -0.823166, 0.306542,
		27.644598, 37.165096, 32.274918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598076, 38.213551, 32.065910>,  <27.979158, 37.741310, 32.060341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598076, 38.213551, 32.065910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.992046, 38.282604, 32.061672>,  <29.228430, 38.324036, 32.059132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.992046, 38.282604, 32.061672>,  <28.598076, 38.213551, 32.065910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992046, 38.282604, 32.061672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074097, -0.365820, 0.927732,
		0.156288, -0.914534, -0.373098,
		0.984929, 0.172638, -0.010591,
		29.287525, 38.334396, 32.058495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125147, 37.592285, 32.200848>,  <28.598076, 38.213551, 32.065910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125147, 37.592285, 32.200848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.335831, 37.901463, 32.342350>,  <29.462240, 38.086967, 32.427250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.335831, 37.901463, 32.342350>,  <29.125147, 37.592285, 32.200848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335831, 37.901463, 32.342350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052056, -0.386045, 0.921010,
		0.848451, -0.503518, -0.163096,
		0.526708, 0.772942, 0.353751,
		29.493843, 38.133347, 32.448475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154535, 37.983047, 31.569458>,  <29.125147, 37.592285, 32.200848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154535, 37.983047, 31.569458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.511324, 38.122185, 31.684967>,  <29.725397, 38.205666, 31.754272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.511324, 38.122185, 31.684967>,  <29.154535, 37.983047, 31.569458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511324, 38.122185, 31.684967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177566, 0.317867, -0.931360,
		-0.415758, 0.882024, 0.221764,
		0.891973, 0.347843, 0.288773,
		29.778915, 38.226536, 31.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280609, 38.734619, 31.330414>,  <29.154535, 37.983047, 31.569458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280609, 38.734619, 31.330414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638021, 38.559006, 31.368050>,  <29.852468, 38.453640, 31.390631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638021, 38.559006, 31.368050>,  <29.280609, 38.734619, 31.330414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638021, 38.559006, 31.368050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316908, 0.468217, -0.824828,
		0.318070, 0.766829, 0.557499,
		0.893533, -0.439029, 0.094089,
		29.906082, 38.427296, 31.396276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791952, 39.197746, 31.285906>,  <29.280609, 38.734619, 31.330414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791952, 39.197746, 31.285906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.987789, 38.857582, 31.208860>,  <30.105291, 38.653484, 31.162632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.987789, 38.857582, 31.208860>,  <29.791952, 39.197746, 31.285906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987789, 38.857582, 31.208860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368184, 0.401868, -0.838417,
		0.790404, 0.339566, 0.509859,
		0.489594, -0.850410, -0.192615,
		30.134666, 38.602459, 31.151075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379335, 39.359158, 30.943018>,  <29.791952, 39.197746, 31.285906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379335, 39.359158, 30.943018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386885, 38.966885, 30.865145>,  <30.391415, 38.731522, 30.818420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386885, 38.966885, 30.865145>,  <30.379335, 39.359158, 30.943018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386885, 38.966885, 30.865145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505868, 0.177320, -0.844189,
		0.862404, -0.082550, 0.499444,
		0.018874, -0.980685, -0.194681,
		30.392548, 38.672680, 30.806740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140694, 39.245499, 30.741837>,  <30.379335, 39.359158, 30.943018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140694, 39.245499, 30.741837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916922, 38.951958, 30.587694>,  <30.782660, 38.775833, 30.495209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916922, 38.951958, 30.587694>,  <31.140694, 39.245499, 30.741837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916922, 38.951958, 30.587694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543880, 0.025837, -0.838765,
		0.625487, -0.678817, 0.384674,
		-0.559429, -0.733853, -0.385356,
		30.749092, 38.731800, 30.472088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590460, 38.881256, 30.388861>,  <31.140694, 39.245499, 30.741837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590460, 38.881256, 30.388861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.266991, 38.729931, 30.208672>,  <31.072908, 38.639137, 30.100557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.266991, 38.729931, 30.208672>,  <31.590460, 38.881256, 30.388861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266991, 38.729931, 30.208672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456286, 0.079929, -0.886236,
		0.371279, -0.922221, 0.107982,
		-0.808675, -0.378312, -0.450472,
		31.024387, 38.616436, 30.073530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782700, 38.283237, 30.001530>,  <31.590460, 38.881256, 30.388861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782700, 38.283237, 30.001530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447754, 38.420593, 29.831398>,  <31.246786, 38.503006, 29.729319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447754, 38.420593, 29.831398>,  <31.782700, 38.283237, 30.001530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447754, 38.420593, 29.831398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435651, -0.050773, -0.898682,
		-0.330192, -0.937820, -0.107082,
		-0.837366, 0.343388, -0.425328,
		31.196545, 38.523609, 29.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596382, 37.877094, 29.440010>,  <31.782700, 38.283237, 30.001530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596382, 37.877094, 29.440010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426733, 38.225796, 29.341898>,  <31.324944, 38.435017, 29.283031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426733, 38.225796, 29.341898>,  <31.596382, 37.877094, 29.440010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426733, 38.225796, 29.341898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443788, -0.036024, -0.895407,
		-0.789413, -0.488614, -0.371596,
		-0.424122, 0.871756, -0.245279,
		31.299496, 38.487324, 29.268314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421926, 37.675037, 28.780378>,  <31.596382, 37.877094, 29.440010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421926, 37.675037, 28.780378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399591, 38.072983, 28.814144>,  <31.386190, 38.311752, 28.834404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399591, 38.072983, 28.814144>,  <31.421926, 37.675037, 28.780378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399591, 38.072983, 28.814144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163255, 0.092505, -0.982238,
		-0.985003, -0.041066, -0.167582,
		-0.055839, 0.994865, 0.084413,
		31.382839, 38.371441, 28.839468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934898, 37.873802, 28.322359>,  <31.421926, 37.675037, 28.780378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934898, 37.873802, 28.322359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151020, 38.206371, 28.374210>,  <31.280693, 38.405914, 28.405321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151020, 38.206371, 28.374210>,  <30.934898, 37.873802, 28.322359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151020, 38.206371, 28.374210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101619, 0.088454, -0.990883,
		-0.835311, 0.548552, -0.036697,
		0.540305, 0.831425, 0.129630,
		31.313112, 38.455799, 28.413099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616903, 38.399307, 27.898003>,  <30.934898, 37.873802, 28.322359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616903, 38.399307, 27.898003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.991879, 38.529987, 27.946127>,  <31.216864, 38.608395, 27.975002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.991879, 38.529987, 27.946127>,  <30.616903, 38.399307, 27.898003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991879, 38.529987, 27.946127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085155, 0.119916, -0.989125,
		-0.337575, 0.937490, 0.084594,
		0.937439, 0.326701, 0.120312,
		31.273109, 38.627998, 27.982222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679918, 38.922440, 27.309221>,  <30.616903, 38.399307, 27.898003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679918, 38.922440, 27.309221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053892, 38.855457, 27.434349>,  <31.278276, 38.815266, 27.509426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053892, 38.855457, 27.434349>,  <30.679918, 38.922440, 27.309221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053892, 38.855457, 27.434349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318282, 0.006140, -0.947976,
		0.156825, 0.985860, 0.059040,
		0.934935, -0.167458, 0.312818,
		31.334373, 38.805222, 27.528194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022779, 39.272320, 26.833239>,  <30.679918, 38.922440, 27.309221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022779, 39.272320, 26.833239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.312317, 39.036236, 26.976181>,  <31.486040, 38.894585, 27.061947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.312317, 39.036236, 26.976181>,  <31.022779, 39.272320, 26.833239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312317, 39.036236, 26.976181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524856, 0.134824, -0.840446,
		0.447857, 0.795913, 0.407365,
		0.723844, -0.590208, 0.357358,
		31.529470, 38.859173, 27.083389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707125, 39.546093, 26.632725>,  <31.022779, 39.272320, 26.833239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707125, 39.546093, 26.632725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731577, 39.152184, 26.697830>,  <31.746248, 38.915840, 26.736893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731577, 39.152184, 26.697830>,  <31.707125, 39.546093, 26.632725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731577, 39.152184, 26.697830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614128, -0.091439, -0.783891,
		0.786835, 0.147876, 0.599185,
		0.061130, -0.984770, 0.162763,
		31.749916, 38.856754, 26.746658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427250, 39.417221, 26.342566>,  <31.707125, 39.546093, 26.632725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427250, 39.417221, 26.342566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265148, 39.054909, 26.392088>,  <32.167889, 38.837521, 26.421803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265148, 39.054909, 26.392088>,  <32.427250, 39.417221, 26.342566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265148, 39.054909, 26.392088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504900, -0.334653, -0.795665,
		0.762132, -0.259937, 0.592949,
		-0.405255, -0.905781, 0.123808,
		32.143570, 38.783173, 26.429230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018627, 39.008053, 26.376543>,  <32.427250, 39.417221, 26.342566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018627, 39.008053, 26.376543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728115, 38.763325, 26.251202>,  <32.553806, 38.616486, 26.175997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728115, 38.763325, 26.251202>,  <33.018627, 39.008053, 26.376543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728115, 38.763325, 26.251202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594374, -0.329962, -0.733379,
		0.345304, -0.718887, 0.603296,
		-0.726281, -0.611822, -0.313351,
		32.510231, 38.579777, 26.157196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382504, 38.378403, 26.197544>,  <33.018627, 39.008053, 26.376543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382504, 38.378403, 26.197544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032627, 38.381985, 26.003704>,  <32.822701, 38.384136, 25.887400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032627, 38.381985, 26.003704>,  <33.382504, 38.378403, 26.197544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032627, 38.381985, 26.003704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446801, -0.372604, -0.813348,
		-0.187851, -0.927947, 0.321910,
		-0.874689, 0.008959, -0.484601,
		32.770222, 38.384674, 25.858324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301384, 37.710232, 25.900526>,  <33.382504, 38.378403, 26.197544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301384, 37.710232, 25.900526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058750, 37.940624, 25.681326>,  <32.913170, 38.078861, 25.549807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058750, 37.940624, 25.681326>,  <33.301384, 37.710232, 25.900526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058750, 37.940624, 25.681326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362871, -0.412721, -0.835456,
		-0.707379, -0.705624, 0.041341,
		-0.606580, 0.575982, -0.548001,
		32.876778, 38.113419, 25.516926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103081, 37.325523, 25.400522>,  <33.301384, 37.710232, 25.900526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103081, 37.325523, 25.400522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047451, 37.685093, 25.234339>,  <33.014072, 37.900833, 25.134628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047451, 37.685093, 25.234339>,  <33.103081, 37.325523, 25.400522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047451, 37.685093, 25.234339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522981, -0.289588, -0.801641,
		-0.840922, -0.328760, -0.429845,
		-0.139070, 0.898919, -0.415456,
		33.005730, 37.954769, 25.109701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185490, 37.268135, 24.606152>,  <33.103081, 37.325523, 25.400522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185490, 37.268135, 24.606152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229603, 37.663681, 24.646112>,  <33.256069, 37.901009, 24.670090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229603, 37.663681, 24.646112>,  <33.185490, 37.268135, 24.606152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229603, 37.663681, 24.646112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632177, 0.007774, -0.774785,
		-0.766936, 0.148597, -0.624281,
		0.110278, 0.988867, 0.099902,
		33.262688, 37.960342, 24.676083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091728, 37.543198, 23.983898>,  <33.185490, 37.268135, 24.606152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091728, 37.543198, 23.983898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297329, 37.823429, 24.181883>,  <33.420689, 37.991570, 24.300674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297329, 37.823429, 24.181883>,  <33.091728, 37.543198, 23.983898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297329, 37.823429, 24.181883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718167, -0.035929, -0.694942,
		-0.469077, 0.712671, -0.521600,
		0.514006, 0.700578, 0.494963,
		33.451530, 38.033604, 24.330372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244926, 38.114780, 23.447426>,  <33.091728, 37.543198, 23.983898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244926, 38.114780, 23.447426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497150, 38.116905, 23.757875>,  <33.648483, 38.118179, 23.944145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497150, 38.116905, 23.757875>,  <33.244926, 38.114780, 23.447426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497150, 38.116905, 23.757875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766544, 0.152521, -0.623817,
		-0.121687, 0.988286, 0.092104,
		0.630557, 0.005309, 0.776125,
		33.686317, 38.118496, 23.990713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584518, 38.683613, 23.292648>,  <33.244926, 38.114780, 23.447426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584518, 38.683613, 23.292648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841320, 38.526241, 23.555874>,  <33.995399, 38.431820, 23.713810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841320, 38.526241, 23.555874>,  <33.584518, 38.683613, 23.292648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841320, 38.526241, 23.555874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713575, -0.007329, -0.700541,
		0.280434, 0.919327, 0.276034,
		0.642003, -0.393426, 0.658064,
		34.033920, 38.408215, 23.753292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071606, 38.988052, 23.144865>,  <33.584518, 38.683613, 23.292648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071606, 38.988052, 23.144865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230679, 38.666424, 23.321648>,  <34.326122, 38.473446, 23.427717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230679, 38.666424, 23.321648>,  <34.071606, 38.988052, 23.144865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230679, 38.666424, 23.321648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753312, 0.011144, -0.657568,
		0.523805, 0.594431, 0.610147,
		0.397679, -0.804069, 0.441955,
		34.349983, 38.425201, 23.454233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813675, 39.138474, 23.195580>,  <34.071606, 38.988052, 23.144865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813675, 39.138474, 23.195580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784431, 38.741478, 23.234816>,  <34.766888, 38.503281, 23.258358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784431, 38.741478, 23.234816>,  <34.813675, 39.138474, 23.195580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784431, 38.741478, 23.234816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751909, -0.119464, -0.648353,
		0.655201, 0.026357, 0.754995,
		-0.073106, -0.992489, 0.098091,
		34.762501, 38.443733, 23.264242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557377, 38.895344, 23.133535>,  <34.813675, 39.138474, 23.195580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557377, 38.895344, 23.133535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345646, 38.560993, 23.075401>,  <35.218605, 38.360382, 23.040522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345646, 38.560993, 23.075401>,  <35.557377, 38.895344, 23.133535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345646, 38.560993, 23.075401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584705, -0.235284, -0.776377,
		0.614759, -0.495938, 0.613283,
		-0.529331, -0.835875, -0.145335,
		35.186848, 38.310230, 23.031801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014767, 38.310165, 23.163279>,  <35.557377, 38.895344, 23.133535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014767, 38.310165, 23.163279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704456, 38.244648, 22.919527>,  <35.518269, 38.205338, 22.773275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704456, 38.244648, 22.919527>,  <36.014767, 38.310165, 23.163279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704456, 38.244648, 22.919527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630164, -0.251070, -0.734750,
		-0.032646, -0.954010, 0.297993,
		-0.775775, -0.163797, -0.609378,
		35.471725, 38.195507, 22.736713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162346, 37.646408, 23.574064>,  <36.014767, 38.310165, 23.163279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162346, 37.646408, 23.574064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529472, 37.739300, 23.702866>,  <36.749748, 37.795036, 23.780146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529472, 37.739300, 23.702866>,  <36.162346, 37.646408, 23.574064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529472, 37.739300, 23.702866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371370, 0.215444, 0.903143,
		0.140359, -0.948501, 0.283980,
		0.917815, 0.232226, 0.322005,
		36.804817, 37.808968, 23.799467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235615, 37.236752, 24.164059>,  <36.162346, 37.646408, 23.574064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235615, 37.236752, 24.164059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463776, 37.564781, 24.182482>,  <36.600674, 37.761600, 24.193535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463776, 37.564781, 24.182482>,  <36.235615, 37.236752, 24.164059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463776, 37.564781, 24.182482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410980, 0.236410, 0.880458,
		0.711152, -0.521144, 0.471882,
		0.570403, 0.820073, 0.046056,
		36.634895, 37.810802, 24.196299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364250, 37.274529, 24.910336>,  <36.235615, 37.236752, 24.164059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364250, 37.274529, 24.910336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445221, 37.635464, 24.758125>,  <36.493805, 37.852024, 24.666800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445221, 37.635464, 24.758125>,  <36.364250, 37.274529, 24.910336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445221, 37.635464, 24.758125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425012, 0.431020, 0.795982,
		0.882262, 0.000598, 0.470758,
		0.202430, 0.902342, -0.380527,
		36.505951, 37.906166, 24.643967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812725, 37.499969, 25.349619>,  <36.364250, 37.274529, 24.910336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812725, 37.499969, 25.349619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658932, 37.823212, 25.171122>,  <36.566654, 38.017159, 25.064024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658932, 37.823212, 25.171122>,  <36.812725, 37.499969, 25.349619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658932, 37.823212, 25.171122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259872, 0.369101, 0.892318,
		0.885798, 0.459048, 0.068091,
		-0.384484, 0.808109, -0.446243,
		36.543587, 38.065643, 25.037249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141842, 37.978912, 25.675543>,  <36.812725, 37.499969, 25.349619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141842, 37.978912, 25.675543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818439, 38.164719, 25.531023>,  <36.624397, 38.276203, 25.444311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818439, 38.164719, 25.531023>,  <37.141842, 37.978912, 25.675543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818439, 38.164719, 25.531023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201750, 0.357953, 0.911683,
		0.552820, 0.809997, -0.195692,
		-0.808509, 0.464516, -0.361301,
		36.575886, 38.304073, 25.422632>
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
