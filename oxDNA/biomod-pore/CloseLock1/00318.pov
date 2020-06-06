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
	<24.189537, 35.107784, 35.207428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440233, 34.868267, 35.007969>,  <24.590651, 34.724556, 34.888294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440233, 34.868267, 35.007969>,  <24.189537, 35.107784, 35.207428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440233, 34.868267, 35.007969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332126, -0.373613, 0.866087,
		-0.704905, -0.708424, -0.035284,
		0.626739, -0.598790, -0.498647,
		24.628256, 34.688629, 34.858376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171110, 34.397564, 35.404072>,  <24.189537, 35.107784, 35.207428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171110, 34.397564, 35.404072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539753, 34.474201, 35.269058>,  <24.760939, 34.520184, 35.188049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539753, 34.474201, 35.269058>,  <24.171110, 34.397564, 35.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539753, 34.474201, 35.269058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371338, -0.182288, 0.910428,
		0.112900, -0.964399, -0.239143,
		0.921608, 0.191590, -0.337537,
		24.816235, 34.531677, 35.167797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694706, 33.775875, 35.676807>,  <24.171110, 34.397564, 35.404072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694706, 33.775875, 35.676807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866045, 34.125999, 35.587059>,  <24.968849, 34.336075, 35.533211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866045, 34.125999, 35.587059>,  <24.694706, 33.775875, 35.676807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866045, 34.125999, 35.587059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496607, -0.020593, 0.867731,
		0.754917, -0.483115, -0.443508,
		0.428347, 0.875314, -0.224373,
		24.994549, 34.388596, 35.519749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439396, 33.705193, 35.620712>,  <24.694706, 33.775875, 35.676807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439396, 33.705193, 35.620712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318180, 34.070499, 35.729607>,  <25.245451, 34.289684, 35.794941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318180, 34.070499, 35.729607>,  <25.439396, 33.705193, 35.620712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318180, 34.070499, 35.729607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457906, -0.110984, 0.882046,
		0.835757, 0.391951, -0.384558,
		-0.303039, 0.913267, 0.272232,
		25.227268, 34.344479, 35.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850525, 33.797348, 36.191296>,  <25.439396, 33.705193, 35.620712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850525, 33.797348, 36.191296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556515, 34.068542, 36.194645>,  <25.380110, 34.231258, 36.196655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556515, 34.068542, 36.194645>,  <25.850525, 33.797348, 36.191296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556515, 34.068542, 36.194645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073818, 0.067746, 0.994968,
		0.674012, 0.731942, -0.099843,
		-0.735023, 0.677990, 0.008369,
		25.336008, 34.271938, 36.197155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404896, 34.282803, 35.810982>,  <25.850525, 33.797348, 36.191296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404896, 34.282803, 35.810982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641886, 34.194939, 36.121006>,  <26.784081, 34.142220, 36.307022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641886, 34.194939, 36.121006>,  <26.404896, 34.282803, 35.810982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641886, 34.194939, 36.121006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205169, 0.889236, 0.408858,
		-0.779023, -0.401258, 0.481784,
		0.592477, -0.219662, 0.775061,
		26.819630, 34.129040, 36.353523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061560, 34.538639, 36.324345>,  <26.404896, 34.282803, 35.810982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061560, 34.538639, 36.324345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430635, 34.498642, 36.473286>,  <26.652081, 34.474644, 36.562649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430635, 34.498642, 36.473286>,  <26.061560, 34.538639, 36.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430635, 34.498642, 36.473286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049757, 0.926821, 0.372193,
		-0.382317, -0.361946, 0.850193,
		0.922690, -0.099992, 0.372349,
		26.707443, 34.468643, 36.584991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031946, 34.710838, 36.983906>,  <26.061560, 34.538639, 36.324345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031946, 34.710838, 36.983906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408966, 34.756565, 36.858345>,  <26.635178, 34.784000, 36.783009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408966, 34.756565, 36.858345>,  <26.031946, 34.710838, 36.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408966, 34.756565, 36.858345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001678, 0.937992, 0.346653,
		0.334063, -0.327264, 0.883912,
		0.942549, 0.114320, -0.313898,
		26.691730, 34.790863, 36.764175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485693, 35.001663, 37.566296>,  <26.031946, 34.710838, 36.983906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485693, 35.001663, 37.566296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691206, 35.094273, 37.235859>,  <26.814514, 35.149837, 37.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691206, 35.094273, 37.235859>,  <26.485693, 35.001663, 37.566296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691206, 35.094273, 37.235859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104646, 0.938795, 0.328196,
		0.851514, -0.255068, 0.458109,
		0.513783, 0.231524, -0.826089,
		26.845341, 35.163731, 36.988033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233561, 35.251774, 37.798389>,  <26.485693, 35.001663, 37.566296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233561, 35.251774, 37.798389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183754, 35.405998, 37.432693>,  <27.153870, 35.498535, 37.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183754, 35.405998, 37.432693>,  <27.233561, 35.251774, 37.798389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183754, 35.405998, 37.432693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004321, 0.921613, 0.388086,
		0.992208, 0.044372, -0.116420,
		-0.124515, 0.385565, -0.914240,
		27.146400, 35.521667, 37.158421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764101, 35.684048, 37.745056>,  <27.233561, 35.251774, 37.798389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764101, 35.684048, 37.745056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484009, 35.779156, 37.475792>,  <27.315954, 35.836220, 37.314236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484009, 35.779156, 37.475792>,  <27.764101, 35.684048, 37.745056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484009, 35.779156, 37.475792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089623, 0.964725, 0.247535,
		0.708269, 0.113001, -0.696840,
		-0.700230, 0.237774, -0.673158,
		27.273939, 35.850487, 37.273846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039658, 36.233345, 37.363094>,  <27.764101, 35.684048, 37.745056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039658, 36.233345, 37.363094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655987, 36.286797, 37.263397>,  <27.425783, 36.318867, 37.203579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655987, 36.286797, 37.263397>,  <28.039658, 36.233345, 37.363094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655987, 36.286797, 37.263397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115876, 0.989651, 0.084637,
		0.257973, 0.052301, -0.964736,
		-0.959178, 0.133624, -0.249243,
		27.368233, 36.326885, 37.188625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054972, 36.654270, 36.916649>,  <28.039658, 36.233345, 37.363094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054972, 36.654270, 36.916649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676254, 36.678661, 37.043053>,  <27.449024, 36.693295, 37.118893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676254, 36.678661, 37.043053>,  <28.054972, 36.654270, 36.916649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676254, 36.678661, 37.043053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063492, 0.997980, -0.002350,
		-0.315511, 0.017839, -0.948754,
		-0.946796, 0.060979, 0.316006,
		27.392216, 36.696957, 37.137856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692652, 37.027000, 36.377666>,  <28.054972, 36.654270, 36.916649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692652, 37.027000, 36.377666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468138, 37.066181, 36.706390>,  <27.333429, 37.089691, 36.903625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468138, 37.066181, 36.706390>,  <27.692652, 37.027000, 36.377666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468138, 37.066181, 36.706390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035651, 0.989189, -0.142250,
		-0.826855, -0.109141, -0.551724,
		-0.561284, 0.097951, 0.821807,
		27.299753, 37.095566, 36.952930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308645, 37.604893, 36.331829>,  <27.692652, 37.027000, 36.377666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308645, 37.604893, 36.331829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272722, 37.566132, 36.728321>,  <27.251169, 37.542873, 36.966217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272722, 37.566132, 36.728321>,  <27.308645, 37.604893, 36.331829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272722, 37.566132, 36.728321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035635, 0.994305, 0.100435,
		-0.995322, 0.044342, -0.085841,
		-0.089806, -0.096906, 0.991234,
		27.245781, 37.537060, 37.025692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717833, 38.105667, 36.588562>,  <27.308645, 37.604893, 36.331829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717833, 38.105667, 36.588562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915165, 37.997364, 36.919212>,  <27.033564, 37.932381, 37.117603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915165, 37.997364, 36.919212>,  <26.717833, 38.105667, 36.588562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915165, 37.997364, 36.919212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238852, 0.871624, 0.428043,
		-0.836406, -0.408608, 0.365327,
		0.493330, -0.270759, 0.826629,
		27.063164, 37.916138, 37.167202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343355, 38.517906, 37.184341>,  <26.717833, 38.105667, 36.588562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343355, 38.517906, 37.184341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710358, 38.430546, 37.317299>,  <26.930559, 38.378132, 37.397072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710358, 38.430546, 37.317299>,  <26.343355, 38.517906, 37.184341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710358, 38.430546, 37.317299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032318, 0.873919, 0.484996,
		-0.396408, -0.434244, 0.808884,
		0.917505, -0.218398, 0.332395,
		26.985609, 38.365025, 37.417019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360918, 38.795830, 37.910503>,  <26.343355, 38.517906, 37.184341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360918, 38.795830, 37.910503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742523, 38.728775, 37.811096>,  <26.971487, 38.688541, 37.751453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742523, 38.728775, 37.811096>,  <26.360918, 38.795830, 37.910503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742523, 38.728775, 37.811096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257135, 0.883754, 0.390973,
		0.154084, -0.436894, 0.886217,
		0.954012, -0.167635, -0.248513,
		27.028727, 38.678486, 37.736542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735199, 38.838982, 38.506397>,  <26.360918, 38.795830, 37.910503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735199, 38.838982, 38.506397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003569, 38.888206, 38.213902>,  <27.164591, 38.917744, 38.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003569, 38.888206, 38.213902>,  <26.735199, 38.838982, 38.506397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003569, 38.888206, 38.213902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241371, 0.896183, 0.372285,
		0.701144, -0.426276, 0.571565,
		0.670923, 0.123066, -0.731244,
		27.204845, 38.925125, 37.994530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296860, 39.171379, 38.822144>,  <26.735199, 38.838982, 38.506397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296860, 39.171379, 38.822144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326830, 39.245625, 38.430237>,  <27.344812, 39.290173, 38.195095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326830, 39.245625, 38.430237>,  <27.296860, 39.171379, 38.822144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326830, 39.245625, 38.430237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216256, 0.956118, 0.197668,
		0.973458, -0.226689, 0.031497,
		0.074924, 0.185610, -0.979763,
		27.349308, 39.301308, 38.136307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951767, 39.382969, 38.767021>,  <27.296860, 39.171379, 38.822144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951767, 39.382969, 38.767021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742039, 39.540337, 38.464947>,  <27.616201, 39.634758, 38.283703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742039, 39.540337, 38.464947>,  <27.951767, 39.382969, 38.767021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742039, 39.540337, 38.464947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220364, 0.919349, 0.325941,
		0.822514, 0.004480, -0.568727,
		-0.524318, 0.393418, -0.755190,
		27.584743, 39.658363, 38.238388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383163, 39.951401, 38.451843>,  <27.951767, 39.382969, 38.767021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383163, 39.951401, 38.451843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014204, 40.035603, 38.322311>,  <27.792828, 40.086124, 38.244591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014204, 40.035603, 38.322311>,  <28.383163, 39.951401, 38.451843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014204, 40.035603, 38.322311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208981, 0.977106, 0.039894,
		0.324813, -0.030875, -0.945274,
		-0.922401, 0.210502, -0.323829,
		27.737484, 40.098755, 38.225163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486061, 40.344090, 37.803360>,  <28.383163, 39.951401, 38.451843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486061, 40.344090, 37.803360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110407, 40.394825, 37.931068>,  <27.885014, 40.425266, 38.007694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110407, 40.394825, 37.931068>,  <28.486061, 40.344090, 37.803360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110407, 40.394825, 37.931068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086865, 0.986821, -0.136523,
		-0.332381, -0.100481, -0.937777,
		-0.939136, 0.126838, 0.319273,
		27.828667, 40.432877, 38.026852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129023, 40.696922, 37.228390>,  <28.486061, 40.344090, 37.803360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129023, 40.696922, 37.228390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938652, 40.781960, 37.569752>,  <27.824430, 40.832981, 37.774570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938652, 40.781960, 37.569752>,  <28.129023, 40.696922, 37.228390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938652, 40.781960, 37.569752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033046, 0.973982, -0.224202,
		-0.878864, -0.078502, -0.470569,
		-0.475926, 0.212594, 0.853404,
		27.795874, 40.845737, 37.825771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712988, 41.150013, 37.043396>,  <28.129023, 40.696922, 37.228390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712988, 41.150013, 37.043396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737291, 41.195557, 37.440052>,  <27.751873, 41.222881, 37.678043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737291, 41.195557, 37.440052>,  <27.712988, 41.150013, 37.043396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737291, 41.195557, 37.440052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040136, 0.992948, -0.111548,
		-0.997345, -0.033022, 0.064900,
		0.060759, 0.113856, 0.991637,
		27.755520, 41.229713, 37.737545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096102, 41.365784, 37.326504>,  <27.712988, 41.150013, 37.043396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096102, 41.365784, 37.326504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428112, 41.494663, 37.508602>,  <27.627317, 41.571991, 37.617859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428112, 41.494663, 37.508602>,  <27.096102, 41.365784, 37.326504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428112, 41.494663, 37.508602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199568, 0.933785, -0.297017,
		-0.520797, 0.155679, 0.839365,
		0.830026, 0.322196, 0.455244,
		27.677120, 41.591324, 37.645176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872948, 41.894356, 37.710606>,  <27.096102, 41.365784, 37.326504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872948, 41.894356, 37.710606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268270, 41.916039, 37.653606>,  <27.505465, 41.929050, 37.619408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268270, 41.916039, 37.653606>,  <26.872948, 41.894356, 37.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268270, 41.916039, 37.653606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090693, 0.960342, -0.263662,
		0.122556, 0.273503, 0.954031,
		0.988309, 0.054211, -0.142501,
		27.564764, 41.932301, 37.610855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150595, 42.378880, 38.136288>,  <26.872948, 41.894356, 37.710606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150595, 42.378880, 38.136288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375525, 42.344872, 37.807274>,  <27.510483, 42.324467, 37.609867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375525, 42.344872, 37.807274>,  <27.150595, 42.378880, 38.136288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375525, 42.344872, 37.807274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116650, 0.976598, -0.180693,
		0.818648, 0.197557, 0.539246,
		0.562323, -0.085021, -0.822535,
		27.544222, 42.319366, 37.560513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560293, 43.029537, 38.048069>,  <27.150595, 42.378880, 38.136288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560293, 43.029537, 38.048069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570007, 42.860905, 37.685482>,  <27.575836, 42.759727, 37.467930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570007, 42.860905, 37.685482>,  <27.560293, 43.029537, 38.048069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570007, 42.860905, 37.685482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031435, 0.906609, -0.420801,
		0.999211, -0.018274, 0.035272,
		0.024288, -0.421577, -0.906467,
		27.577293, 42.734432, 37.413544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043320, 43.405087, 37.542683>,  <27.560293, 43.029537, 38.048069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043320, 43.405087, 37.542683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853041, 43.196804, 37.259113>,  <27.738873, 43.071835, 37.088970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853041, 43.196804, 37.259113>,  <28.043320, 43.405087, 37.542683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853041, 43.196804, 37.259113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085512, 0.829512, -0.551903,
		0.875442, -0.201918, -0.439124,
		-0.475698, -0.520709, -0.708924,
		27.710331, 43.040592, 37.046436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421494, 43.429035, 36.928318>,  <28.043320, 43.405087, 37.542683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421494, 43.429035, 36.928318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032709, 43.367439, 36.857235>,  <27.799438, 43.330482, 36.814583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032709, 43.367439, 36.857235>,  <28.421494, 43.429035, 36.928318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032709, 43.367439, 36.857235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021834, 0.693388, -0.720233,
		0.234127, -0.703918, -0.670584,
		-0.971961, -0.153985, -0.177710,
		27.741121, 43.321243, 36.803921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333399, 43.509918, 36.223225>,  <28.421494, 43.429035, 36.928318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333399, 43.509918, 36.223225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964472, 43.538784, 36.375076>,  <27.743114, 43.556103, 36.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964472, 43.538784, 36.375076>,  <28.333399, 43.509918, 36.223225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964472, 43.538784, 36.375076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258494, 0.615022, -0.744935,
		-0.287241, -0.785200, -0.548592,
		-0.922320, 0.072168, 0.379629,
		27.687777, 43.560436, 36.488964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064371, 43.247421, 36.312244>,  <28.333399, 43.509918, 36.223225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064371, 43.247421, 36.312244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005556, 43.061295, 36.661381>,  <28.970268, 42.949619, 36.870865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005556, 43.061295, 36.661381>,  <29.064371, 43.247421, 36.312244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005556, 43.061295, 36.661381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437436, -0.822043, -0.364548,
		0.887148, 0.328212, 0.324417,
		-0.147035, -0.465320, 0.872845,
		28.961445, 42.921700, 36.923233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725569, 42.779457, 36.404957>,  <29.064371, 43.247421, 36.312244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725569, 42.779457, 36.404957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422007, 42.639362, 36.624557>,  <29.239870, 42.555305, 36.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422007, 42.639362, 36.624557>,  <29.725569, 42.779457, 36.404957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422007, 42.639362, 36.624557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356486, -0.928951, -0.099842,
		0.544962, 0.119939, 0.829838,
		-0.758904, -0.350236, 0.548999,
		29.194336, 42.534290, 36.789257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090799, 42.259197, 36.884510>,  <29.725569, 42.779457, 36.404957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090799, 42.259197, 36.884510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703812, 42.164333, 36.849266>,  <29.471619, 42.107414, 36.828121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703812, 42.164333, 36.849266>,  <30.090799, 42.259197, 36.884510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703812, 42.164333, 36.849266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204556, -0.938189, 0.279210,
		-0.148878, 0.252104, 0.956179,
		-0.967467, -0.237160, -0.088106,
		29.413572, 42.093185, 36.822834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035833, 41.767952, 37.289974>,  <30.090799, 42.259197, 36.884510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035833, 41.767952, 37.289974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694954, 41.720024, 37.086246>,  <29.490427, 41.691269, 36.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694954, 41.720024, 37.086246>,  <30.035833, 41.767952, 37.289974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694954, 41.720024, 37.086246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089664, -0.992470, 0.083451,
		-0.515478, 0.025450, 0.856524,
		-0.852198, -0.119816, -0.509315,
		29.439295, 41.684078, 36.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657995, 41.162937, 37.642979>,  <30.035833, 41.767952, 37.289974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657995, 41.162937, 37.642979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517666, 41.168537, 37.268444>,  <29.433468, 41.171898, 37.043724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517666, 41.168537, 37.268444>,  <29.657995, 41.162937, 37.642979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517666, 41.168537, 37.268444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185231, -0.979094, -0.084045,
		-0.917939, -0.202924, 0.340897,
		-0.350825, 0.014004, -0.936336,
		29.412418, 41.172737, 36.987545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160372, 40.523945, 37.542500>,  <29.657995, 41.162937, 37.642979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160372, 40.523945, 37.542500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259954, 40.624065, 37.168255>,  <29.319704, 40.684139, 36.943707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259954, 40.624065, 37.168255>,  <29.160372, 40.523945, 37.542500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259954, 40.624065, 37.168255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211967, -0.956690, -0.199537,
		-0.945034, -0.148642, -0.291231,
		0.248958, 0.250301, -0.935612,
		29.334642, 40.699154, 36.887573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963169, 39.938538, 37.164768>,  <29.160372, 40.523945, 37.542500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963169, 39.938538, 37.164768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214817, 40.136513, 36.925018>,  <29.365805, 40.255299, 36.781170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214817, 40.136513, 36.925018>,  <28.963169, 39.938538, 37.164768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214817, 40.136513, 36.925018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350776, -0.868876, -0.349300,
		-0.693661, 0.009506, -0.720238,
		0.629118, 0.494939, -0.599371,
		29.403553, 40.284996, 36.745209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848719, 39.625137, 36.644638>,  <28.963169, 39.938538, 37.164768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848719, 39.625137, 36.644638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197054, 39.803909, 36.562767>,  <29.406055, 39.911175, 36.513645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197054, 39.803909, 36.562767>,  <28.848719, 39.625137, 36.644638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197054, 39.803909, 36.562767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344350, -0.851781, -0.394832,
		-0.350807, 0.273352, -0.895663,
		0.870837, 0.446932, -0.204682,
		29.458305, 39.937988, 36.501362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976856, 39.506233, 35.982151>,  <28.848719, 39.625137, 36.644638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976856, 39.506233, 35.982151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338230, 39.601570, 36.124699>,  <29.555054, 39.658772, 36.210228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338230, 39.601570, 36.124699>,  <28.976856, 39.506233, 35.982151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338230, 39.601570, 36.124699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389086, -0.804900, -0.448050,
		0.180053, 0.543442, -0.819910,
		0.903434, 0.238343, 0.356370,
		29.609261, 39.673073, 36.231609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507389, 39.403313, 35.450069>,  <28.976856, 39.506233, 35.982151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507389, 39.403313, 35.450069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713291, 39.374870, 35.791824>,  <29.836832, 39.357803, 35.996876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713291, 39.374870, 35.791824>,  <29.507389, 39.403313, 35.450069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713291, 39.374870, 35.791824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480623, -0.801299, -0.356261,
		0.709950, 0.594023, -0.378295,
		0.514755, -0.071110, 0.854383,
		29.867718, 39.353539, 36.048138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322472, 39.359150, 35.411079>,  <29.507389, 39.403313, 35.450069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322472, 39.359150, 35.411079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180801, 39.136902, 35.711971>,  <30.095798, 39.003551, 35.892506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180801, 39.136902, 35.711971>,  <30.322472, 39.359150, 35.411079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180801, 39.136902, 35.711971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223578, -0.831348, -0.508796,
		0.908059, -0.012023, 0.418669,
		-0.354177, -0.555622, 0.752225,
		30.074549, 38.970215, 35.937637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411617, 38.654179, 35.230862>,  <30.322472, 39.359150, 35.411079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411617, 38.654179, 35.230862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267496, 38.599728, 35.600002>,  <30.181023, 38.567059, 35.821487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267496, 38.599728, 35.600002>,  <30.411617, 38.654179, 35.230862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267496, 38.599728, 35.600002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048033, -0.985276, -0.164086,
		0.931597, -0.103448, 0.348461,
		-0.360304, -0.136125, 0.922849,
		30.159405, 38.558891, 35.876858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833632, 38.150093, 35.482964>,  <30.411617, 38.654179, 35.230862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833632, 38.150093, 35.482964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510927, 38.146626, 35.719288>,  <30.317305, 38.144547, 35.861084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510927, 38.146626, 35.719288>,  <30.833632, 38.150093, 35.482964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510927, 38.146626, 35.719288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061611, -0.995676, 0.069521,
		0.587656, 0.092487, 0.803807,
		-0.806761, -0.008669, 0.590814,
		30.268898, 38.144024, 35.896530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933649, 37.624821, 35.942890>,  <30.833632, 38.150093, 35.482964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933649, 37.624821, 35.942890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535000, 37.657570, 35.945538>,  <30.295811, 37.677219, 35.947128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535000, 37.657570, 35.945538>,  <30.933649, 37.624821, 35.942890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535000, 37.657570, 35.945538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081361, -0.995042, 0.057197,
		0.011272, 0.056465, 0.998341,
		-0.996621, 0.081871, 0.006622,
		30.236013, 37.682133, 35.947525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792221, 37.290264, 36.525719>,  <30.933649, 37.624821, 35.942890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792221, 37.290264, 36.525719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461237, 37.306870, 36.301723>,  <30.262646, 37.316833, 36.167328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461237, 37.306870, 36.301723>,  <30.792221, 37.290264, 36.525719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461237, 37.306870, 36.301723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103947, -0.991352, 0.080099,
		-0.551819, 0.124487, 0.824621,
		-0.827461, 0.041516, -0.559987,
		30.212999, 37.319324, 36.133728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298452, 37.219662, 36.927773>,  <30.792221, 37.290264, 36.525719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298452, 37.219662, 36.927773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140505, 37.134850, 36.570198>,  <30.045736, 37.083961, 36.355656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140505, 37.134850, 36.570198>,  <30.298452, 37.219662, 36.927773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140505, 37.134850, 36.570198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256315, -0.908946, 0.328815,
		-0.882258, 0.358968, 0.304569,
		-0.394871, -0.212034, -0.893934,
		30.022043, 37.071239, 36.302017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718163, 36.952312, 37.146111>,  <30.298452, 37.219662, 36.927773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718163, 36.952312, 37.146111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767513, 36.820576, 36.771664>,  <29.797125, 36.741535, 36.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767513, 36.820576, 36.771664>,  <29.718163, 36.952312, 37.146111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767513, 36.820576, 36.771664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232867, -0.926591, 0.295300,
		-0.964650, 0.181557, -0.191014,
		0.123378, -0.329343, -0.936115,
		29.804527, 36.721771, 36.490829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184160, 36.449162, 37.075420>,  <29.718163, 36.952312, 37.146111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184160, 36.449162, 37.075420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451296, 36.362583, 36.790565>,  <29.611578, 36.310635, 36.619652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451296, 36.362583, 36.790565>,  <29.184160, 36.449162, 37.075420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451296, 36.362583, 36.790565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218899, -0.971585, 0.090026,
		-0.711389, 0.095764, -0.696243,
		0.667839, -0.216451, -0.712138,
		29.651648, 36.297649, 36.576923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777138, 36.026794, 36.554329>,  <29.184160, 36.449162, 37.075420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777138, 36.026794, 36.554329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166464, 35.944862, 36.512951>,  <29.400061, 35.895702, 36.488125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166464, 35.944862, 36.512951>,  <28.777138, 36.026794, 36.554329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166464, 35.944862, 36.512951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209702, -0.977005, -0.038562,
		-0.093170, 0.059226, -0.993887,
		0.973316, -0.204827, -0.103448,
		29.458458, 35.883415, 36.481918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790565, 35.512188, 36.094101>,  <28.777138, 36.026794, 36.554329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790565, 35.512188, 36.094101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158758, 35.503017, 36.250145>,  <29.379675, 35.497513, 36.343773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158758, 35.503017, 36.250145>,  <28.790565, 35.512188, 36.094101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158758, 35.503017, 36.250145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061075, -0.994451, 0.085659,
		0.385981, -0.102674, -0.916775,
		0.920483, -0.022929, 0.390110,
		29.434902, 35.496140, 36.367180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104807, 34.991875, 35.752941>,  <28.790565, 35.512188, 36.094101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104807, 34.991875, 35.752941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319756, 35.034412, 36.087585>,  <29.448725, 35.059933, 36.288372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319756, 35.034412, 36.087585>,  <29.104807, 34.991875, 35.752941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319756, 35.034412, 36.087585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023501, -0.989745, 0.140901,
		0.843018, -0.095377, -0.529362,
		0.537372, 0.106342, 0.836614,
		29.480967, 35.066315, 36.338570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601851, 34.491394, 35.777287>,  <29.104807, 34.991875, 35.752941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601851, 34.491394, 35.777287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627960, 34.581635, 36.166100>,  <29.643625, 34.635780, 36.399387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627960, 34.581635, 36.166100>,  <29.601851, 34.491394, 35.777287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627960, 34.581635, 36.166100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073094, -0.970410, 0.230133,
		0.995187, -0.086071, -0.046851,
		0.065273, 0.225601, 0.972031,
		29.647543, 34.649315, 36.457710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896284, 33.958107, 35.987118>,  <29.601851, 34.491394, 35.777287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896284, 33.958107, 35.987118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750072, 34.099606, 36.331501>,  <29.662346, 34.184505, 36.538132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750072, 34.099606, 36.331501>,  <29.896284, 33.958107, 35.987118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750072, 34.099606, 36.331501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111690, -0.934955, 0.336726,
		0.924074, 0.026923, 0.381264,
		-0.365530, 0.353744, 0.860960,
		29.640413, 34.205730, 36.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382219, 33.818127, 36.438137>,  <29.896284, 33.958107, 35.987118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382219, 33.818127, 36.438137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023006, 33.863533, 36.608150>,  <29.807478, 33.890778, 36.710159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023006, 33.863533, 36.608150>,  <30.382219, 33.818127, 36.438137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023006, 33.863533, 36.608150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023971, -0.977329, 0.210363,
		0.439276, 0.178725, 0.880394,
		-0.898032, 0.113511, 0.425033,
		29.753597, 33.897587, 36.735661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423550, 33.326752, 36.982170>,  <30.382219, 33.818127, 36.438137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423550, 33.326752, 36.982170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025732, 33.362396, 36.960464>,  <29.787043, 33.383781, 36.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025732, 33.362396, 36.960464>,  <30.423550, 33.326752, 36.982170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025732, 33.362396, 36.960464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100230, -0.960434, 0.259846,
		-0.028966, 0.263868, 0.964124,
		-0.994543, 0.089107, -0.054268,
		29.727369, 33.389130, 36.944183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305256, 32.899788, 37.554604>,  <30.423550, 33.326752, 36.982170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305256, 32.899788, 37.554604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995611, 32.977959, 37.313751>,  <29.809824, 33.024860, 37.169239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995611, 32.977959, 37.313751>,  <30.305256, 32.899788, 37.554604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995611, 32.977959, 37.313751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503626, -0.766407, 0.398725,
		-0.383555, 0.611906, 0.691706,
		-0.774110, 0.195428, -0.602131,
		29.763378, 33.036587, 37.133110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902870, 32.719101, 37.271420>,  <30.305256, 32.899788, 37.554604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902870, 32.719101, 37.271420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746166, 32.359699, 37.192215>,  <30.652143, 32.144058, 37.144691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746166, 32.359699, 37.192215>,  <30.902870, 32.719101, 37.271420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746166, 32.359699, 37.192215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656083, -0.121929, -0.744774,
		0.645042, -0.421684, 0.637263,
		-0.391760, -0.898507, -0.198010,
		30.628637, 32.090145, 37.132812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500336, 32.209988, 37.215515>,  <30.902870, 32.719101, 37.271420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500336, 32.209988, 37.215515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172417, 32.123760, 37.003304>,  <30.975666, 32.072025, 36.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172417, 32.123760, 37.003304>,  <31.500336, 32.209988, 37.215515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172417, 32.123760, 37.003304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558136, -0.093487, -0.824466,
		0.128129, -0.972004, 0.196955,
		-0.819797, -0.215566, -0.530532,
		30.926477, 32.059090, 36.844143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669195, 31.542931, 37.553146>,  <31.500336, 32.209988, 37.215515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669195, 31.542931, 37.553146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810873, 31.174255, 37.489857>,  <31.895880, 30.953051, 37.451881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810873, 31.174255, 37.489857>,  <31.669195, 31.542931, 37.553146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810873, 31.174255, 37.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695769, 0.372774, -0.613958,
		0.624862, 0.107370, 0.773317,
		0.354193, -0.921689, -0.158227,
		31.917131, 30.897749, 37.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392002, 31.452862, 37.678768>,  <31.669195, 31.542931, 37.553146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392002, 31.452862, 37.678768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259079, 31.232788, 37.372341>,  <32.179325, 31.100744, 37.188484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259079, 31.232788, 37.372341>,  <32.392002, 31.452862, 37.678768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259079, 31.232788, 37.372341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583067, 0.518594, -0.625375,
		0.741351, -0.654491, 0.148459,
		-0.332312, -0.550184, -0.766072,
		32.159386, 31.067734, 37.142521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005844, 31.005877, 37.236881>,  <32.392002, 31.452862, 37.678768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005844, 31.005877, 37.236881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688961, 31.173559, 37.059490>,  <32.498829, 31.274168, 36.953056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688961, 31.173559, 37.059490>,  <33.005844, 31.005877, 37.236881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688961, 31.173559, 37.059490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610247, 0.545643, -0.574345,
		0.001209, -0.725630, -0.688084,
		-0.792210, 0.419207, -0.443473,
		32.451298, 31.299322, 36.926449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290260, 31.764559, 37.077812>,  <33.005844, 31.005877, 37.236881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290260, 31.764559, 37.077812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431519, 31.442816, 37.268936>,  <33.516273, 31.249771, 37.383610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431519, 31.442816, 37.268936>,  <33.290260, 31.764559, 37.077812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431519, 31.442816, 37.268936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070076, 0.532020, 0.843827,
		-0.932941, -0.264510, 0.244246,
		0.353144, -0.804357, 0.477807,
		33.537460, 31.201509, 37.412277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020546, 31.783651, 37.723331>,  <33.290260, 31.764559, 37.077812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020546, 31.783651, 37.723331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349033, 31.560289, 37.770306>,  <33.546124, 31.426271, 37.798492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349033, 31.560289, 37.770306>,  <33.020546, 31.783651, 37.723331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349033, 31.560289, 37.770306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209419, 0.486382, 0.848278,
		-0.530803, -0.672024, 0.516364,
		0.821214, -0.558405, 0.117439,
		33.595398, 31.392769, 37.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946175, 31.352827, 38.327541>,  <33.020546, 31.783651, 37.723331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946175, 31.352827, 38.327541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339954, 31.395699, 38.271881>,  <33.576221, 31.421421, 38.238483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339954, 31.395699, 38.271881>,  <32.946175, 31.352827, 38.327541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339954, 31.395699, 38.271881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089631, 0.374788, 0.922768,
		0.151053, -0.920895, 0.359355,
		0.984454, 0.107177, -0.139154,
		33.635292, 31.427853, 38.230133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263599, 31.080858, 39.024487>,  <32.946175, 31.352827, 38.327541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263599, 31.080858, 39.024487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562160, 31.284845, 38.853462>,  <33.741299, 31.407238, 38.750847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562160, 31.284845, 38.853462>,  <33.263599, 31.080858, 39.024487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562160, 31.284845, 38.853462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340038, 0.260023, 0.903749,
		0.572060, -0.819951, 0.020674,
		0.746406, 0.509969, -0.427563,
		33.786083, 31.437836, 38.725193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818356, 31.001125, 39.389912>,  <33.263599, 31.080858, 39.024487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818356, 31.001125, 39.389912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927895, 31.334551, 39.198006>,  <33.993618, 31.534607, 39.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927895, 31.334551, 39.198006>,  <33.818356, 31.001125, 39.389912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927895, 31.334551, 39.198006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326528, 0.388628, 0.861596,
		0.904648, -0.392603, -0.165758,
		0.273847, 0.833565, -0.479767,
		34.010048, 31.584621, 39.054077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484604, 31.092766, 39.554752>,  <33.818356, 31.001125, 39.389912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484604, 31.092766, 39.554752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348156, 31.451347, 39.441612>,  <34.266285, 31.666496, 39.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348156, 31.451347, 39.441612>,  <34.484604, 31.092766, 39.554752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348156, 31.451347, 39.441612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451774, 0.420212, 0.786971,
		0.824340, 0.140671, -0.548339,
		-0.341123, 0.896456, -0.282846,
		34.245819, 31.720284, 39.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097561, 31.644854, 39.406673>,  <34.484604, 31.092766, 39.554752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097561, 31.644854, 39.406673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781918, 31.875540, 39.491249>,  <34.592533, 32.013950, 39.541992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781918, 31.875540, 39.491249>,  <35.097561, 31.644854, 39.406673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781918, 31.875540, 39.491249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491879, 0.387110, 0.779872,
		0.367916, 0.719405, -0.589147,
		-0.789109, 0.576716, 0.211436,
		34.545185, 32.048553, 39.554680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353821, 32.402969, 39.641506>,  <35.097561, 31.644854, 39.406673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353821, 32.402969, 39.641506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998852, 32.333027, 39.812111>,  <34.785870, 32.291061, 39.914474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998852, 32.333027, 39.812111>,  <35.353821, 32.402969, 39.641506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998852, 32.333027, 39.812111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340233, 0.375824, 0.861973,
		-0.311012, 0.910046, -0.274023,
		-0.887419, -0.174853, 0.426514,
		34.732628, 32.280571, 39.940063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192135, 33.062935, 39.999928>,  <35.353821, 32.402969, 39.641506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192135, 33.062935, 39.999928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937668, 32.803665, 40.167336>,  <34.784988, 32.648106, 40.267780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937668, 32.803665, 40.167336>,  <35.192135, 33.062935, 39.999928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937668, 32.803665, 40.167336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166916, 0.413979, 0.894852,
		-0.753278, 0.639136, -0.155170,
		-0.636169, -0.648172, 0.418523,
		34.746819, 32.609215, 40.292892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806808, 33.441971, 40.457394>,  <35.192135, 33.062935, 39.999928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806808, 33.441971, 40.457394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740997, 33.070171, 40.589432>,  <34.701511, 32.847092, 40.668655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740997, 33.070171, 40.589432>,  <34.806808, 33.441971, 40.457394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740997, 33.070171, 40.589432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019556, 0.331512, 0.943248,
		-0.986179, 0.161642, -0.036364,
		-0.164524, -0.929501, 0.330092,
		34.691639, 32.791321, 40.688457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271988, 33.477150, 40.971951>,  <34.806808, 33.441971, 40.457394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271988, 33.477150, 40.971951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426193, 33.118458, 41.058907>,  <34.518715, 32.903244, 41.111080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426193, 33.118458, 41.058907>,  <34.271988, 33.477150, 40.971951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426193, 33.118458, 41.058907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125597, 0.182407, 0.975168,
		-0.914116, -0.403240, -0.042307,
		0.385510, -0.896730, 0.217387,
		34.541847, 32.849438, 41.124123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837067, 33.203426, 41.518639>,  <34.271988, 33.477150, 40.971951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837067, 33.203426, 41.518639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167027, 32.977322, 41.520351>,  <34.365002, 32.841660, 41.521378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167027, 32.977322, 41.520351>,  <33.837067, 33.203426, 41.518639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167027, 32.977322, 41.520351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047246, 0.076494, 0.995950,
		-0.563296, -0.821360, 0.089806,
		0.824903, -0.565258, 0.004282,
		34.414497, 32.807743, 41.521637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673557, 32.652958, 41.948151>,  <33.837067, 33.203426, 41.518639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673557, 32.652958, 41.948151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069283, 32.710007, 41.936058>,  <34.306717, 32.744236, 41.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069283, 32.710007, 41.936058>,  <33.673557, 32.652958, 41.948151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069283, 32.710007, 41.936058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021541, 0.062096, 0.997838,
		0.144197, -0.987827, 0.058360,
		0.989314, 0.142628, -0.030233,
		34.366077, 32.752792, 41.926987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789421, 32.177937, 42.475510>,  <33.673557, 32.652958, 41.948151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789421, 32.177937, 42.475510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128014, 32.387337, 42.436691>,  <34.331169, 32.512978, 42.413403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128014, 32.387337, 42.436691>,  <33.789421, 32.177937, 42.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128014, 32.387337, 42.436691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102494, 0.018636, 0.994559,
		0.522463, -0.851820, -0.037881,
		0.846480, 0.523502, -0.097042,
		34.381958, 32.544388, 42.407578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322838, 31.885744, 42.914543>,  <33.789421, 32.177937, 42.475510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322838, 31.885744, 42.914543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441761, 32.263168, 42.856163>,  <34.513115, 32.489624, 42.821136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441761, 32.263168, 42.856163>,  <34.322838, 31.885744, 42.914543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441761, 32.263168, 42.856163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186502, 0.092527, 0.978088,
		0.936390, -0.318013, -0.148467,
		0.297308, 0.943560, -0.145951,
		34.530952, 32.546238, 42.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971649, 31.931410, 43.172714>,  <34.322838, 31.885744, 42.914543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971649, 31.931410, 43.172714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825756, 32.303844, 43.169899>,  <34.738220, 32.527306, 43.168209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825756, 32.303844, 43.169899>,  <34.971649, 31.931410, 43.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825756, 32.303844, 43.169899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261038, 0.109509, 0.959097,
		0.893771, 0.347980, -0.282990,
		-0.364737, 0.931084, -0.007039,
		34.716335, 32.583168, 43.167786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547249, 32.411457, 43.408440>,  <34.971649, 31.931410, 43.172714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547249, 32.411457, 43.408440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189690, 32.570137, 43.491940>,  <34.975155, 32.665344, 43.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189690, 32.570137, 43.491940>,  <35.547249, 32.411457, 43.408440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189690, 32.570137, 43.491940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273681, 0.114138, 0.955024,
		0.355031, 0.910825, -0.210596,
		-0.893897, 0.396700, 0.208753,
		34.921520, 32.689148, 43.554565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685127, 32.842197, 43.943439>,  <35.547249, 32.411457, 43.408440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685127, 32.842197, 43.943439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286564, 32.874523, 43.953621>,  <35.047428, 32.893921, 43.959728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286564, 32.874523, 43.953621>,  <35.685127, 32.842197, 43.943439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286564, 32.874523, 43.953621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048985, 0.304315, 0.951311,
		0.069135, 0.949137, -0.307179,
		-0.996404, 0.080816, 0.025454,
		34.987644, 32.898769, 43.961258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558815, 33.531799, 44.094597>,  <35.685127, 32.842197, 43.943439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558815, 33.531799, 44.094597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235821, 33.319389, 44.197334>,  <35.042023, 33.191944, 44.258976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235821, 33.319389, 44.197334>,  <35.558815, 33.531799, 44.094597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235821, 33.319389, 44.197334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015259, 0.454077, 0.890832,
		-0.589684, 0.715418, -0.374765,
		-0.807490, -0.531028, 0.256845,
		34.993572, 33.160080, 44.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197617, 33.939968, 44.568691>,  <35.558815, 33.531799, 44.094597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197617, 33.939968, 44.568691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032257, 33.581749, 44.634541>,  <34.933041, 33.366817, 44.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032257, 33.581749, 44.634541>,  <35.197617, 33.939968, 44.568691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032257, 33.581749, 44.634541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160014, 0.106529, 0.981350,
		-0.896382, 0.432027, 0.099261,
		-0.413395, -0.895547, 0.164621,
		34.908237, 33.313084, 44.683926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649712, 34.106579, 45.065598>,  <35.197617, 33.939968, 44.568691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649712, 34.106579, 45.065598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749451, 33.719528, 45.081230>,  <34.809296, 33.487297, 45.090611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749451, 33.719528, 45.081230>,  <34.649712, 34.106579, 45.065598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749451, 33.719528, 45.081230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035786, 0.031124, 0.998875,
		-0.967753, -0.250466, -0.026867,
		0.249348, -0.967625, 0.039083,
		34.824257, 33.429241, 45.092957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413452, 33.872559, 45.674335>,  <34.649712, 34.106579, 45.065598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413452, 33.872559, 45.674335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679920, 33.582874, 45.603081>,  <34.839802, 33.409061, 45.560329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679920, 33.582874, 45.603081>,  <34.413452, 33.872559, 45.674335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679920, 33.582874, 45.603081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092772, -0.156525, 0.983308,
		-0.740008, -0.671576, -0.037085,
		0.666170, -0.724214, -0.178132,
		34.879772, 33.365608, 45.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329346, 33.400433, 46.298840>,  <34.413452, 33.872559, 45.674335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329346, 33.400433, 46.298840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671360, 33.271523, 46.136330>,  <34.876568, 33.194176, 46.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671360, 33.271523, 46.136330>,  <34.329346, 33.400433, 46.298840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671360, 33.271523, 46.136330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353148, -0.211843, 0.911268,
		-0.379743, -0.922639, -0.067323,
		0.855033, -0.322272, -0.406274,
		34.927872, 33.174843, 46.014446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458870, 32.792778, 46.579086>,  <34.329346, 33.400433, 46.298840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458870, 32.792778, 46.579086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831760, 32.862591, 46.452282>,  <35.055492, 32.904480, 46.376198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831760, 32.862591, 46.452282>,  <34.458870, 32.792778, 46.579086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831760, 32.862591, 46.452282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337766, -0.105200, 0.935333,
		0.129899, -0.979015, -0.157022,
		0.932224, 0.174536, -0.317012,
		35.111427, 32.914951, 46.357178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856468, 32.300869, 46.910439>,  <34.458870, 32.792778, 46.579086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856468, 32.300869, 46.910439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108814, 32.594757, 46.810688>,  <35.260223, 32.771091, 46.750839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108814, 32.594757, 46.810688>,  <34.856468, 32.300869, 46.910439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108814, 32.594757, 46.810688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383124, -0.015498, 0.923567,
		0.674700, -0.678192, -0.291266,
		0.630870, 0.734721, -0.249375,
		35.298077, 32.815174, 46.735874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562679, 32.027145, 47.023571>,  <34.856468, 32.300869, 46.910439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562679, 32.027145, 47.023571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605034, 32.424850, 47.017490>,  <35.630447, 32.663475, 47.013844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605034, 32.424850, 47.017490>,  <35.562679, 32.027145, 47.023571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605034, 32.424850, 47.017490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431694, -0.032194, 0.901445,
		0.895783, -0.102016, -0.432626,
		0.105890, 0.994262, -0.015201,
		35.636803, 32.723129, 47.012932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314365, 32.202103, 47.111813>,  <35.562679, 32.027145, 47.023571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314365, 32.202103, 47.111813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083900, 32.501579, 47.242966>,  <35.945621, 32.681267, 47.321655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083900, 32.501579, 47.242966>,  <36.314365, 32.202103, 47.111813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083900, 32.501579, 47.242966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462644, -0.031967, 0.885968,
		0.673797, 0.662148, -0.327959,
		-0.576158, 0.748691, 0.327878,
		35.911053, 32.726185, 47.341328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689907, 32.641933, 47.495808>,  <36.314365, 32.202103, 47.111813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689907, 32.641933, 47.495808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342190, 32.782547, 47.634800>,  <36.133560, 32.866917, 47.718197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342190, 32.782547, 47.634800>,  <36.689907, 32.641933, 47.495808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342190, 32.782547, 47.634800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429524, 0.189347, 0.882982,
		0.244605, 0.916826, -0.315592,
		-0.869297, 0.351536, 0.347484,
		36.081402, 32.888008, 47.739044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817703, 33.226925, 47.861076>,  <36.689907, 32.641933, 47.495808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817703, 33.226925, 47.861076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461105, 33.122707, 48.009323>,  <36.247147, 33.060177, 48.098270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461105, 33.122707, 48.009323>,  <36.817703, 33.226925, 47.861076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461105, 33.122707, 48.009323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326405, 0.197924, 0.924276,
		-0.314170, 0.944956, -0.091404,
		-0.891491, -0.260545, 0.370620,
		36.193657, 33.044544, 48.120510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656635, 33.719269, 48.268135>,  <36.817703, 33.226925, 47.861076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656635, 33.719269, 48.268135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420982, 33.425755, 48.403473>,  <36.279591, 33.249645, 48.484676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420982, 33.425755, 48.403473>,  <36.656635, 33.719269, 48.268135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420982, 33.425755, 48.403473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300941, 0.189351, 0.934655,
		-0.749903, 0.652461, 0.109272,
		-0.589135, -0.733785, 0.338347,
		36.244244, 33.205620, 48.504978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227757, 33.995728, 48.740631>,  <36.656635, 33.719269, 48.268135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227757, 33.995728, 48.740631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279514, 33.606518, 48.817036>,  <36.310570, 33.372993, 48.862881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279514, 33.606518, 48.817036>,  <36.227757, 33.995728, 48.740631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279514, 33.606518, 48.817036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292288, 0.221499, 0.930326,
		-0.947537, -0.064544, 0.313062,
		0.129390, -0.973022, 0.191014,
		36.318333, 33.314610, 48.874340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140511, 33.946930, 49.478130>,  <36.227757, 33.995728, 48.740631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140511, 33.946930, 49.478130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268688, 33.574848, 49.406540>,  <36.345596, 33.351601, 49.363586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268688, 33.574848, 49.406540>,  <36.140511, 33.946930, 49.478130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268688, 33.574848, 49.406540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346377, -0.060791, 0.936123,
		-0.881666, -0.361973, 0.302721,
		0.320448, -0.930204, -0.178976,
		36.364822, 33.295788, 49.352848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920372, 33.533604, 50.156647>,  <36.140511, 33.946930, 49.478130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920372, 33.533604, 50.156647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233330, 33.394779, 49.949799>,  <36.421104, 33.311485, 49.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233330, 33.394779, 49.949799>,  <35.920372, 33.533604, 50.156647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233330, 33.394779, 49.949799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538080, -0.041380, 0.841877,
		-0.313577, -0.936931, 0.154368,
		0.782393, -0.347056, -0.517120,
		36.468048, 33.290661, 49.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112404, 33.041321, 50.597618>,  <35.920372, 33.533604, 50.156647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112404, 33.041321, 50.597618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411510, 33.077332, 50.334484>,  <36.590973, 33.098938, 50.176605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411510, 33.077332, 50.334484>,  <36.112404, 33.041321, 50.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411510, 33.077332, 50.334484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662893, -0.157465, 0.731968,
		-0.037689, -0.983413, -0.177424,
		0.747765, 0.090026, -0.657832,
		36.635841, 33.104340, 50.137135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580853, 32.780319, 50.911255>,  <36.112404, 33.041321, 50.597618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580853, 32.780319, 50.911255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820614, 32.885841, 50.608963>,  <36.964470, 32.949154, 50.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820614, 32.885841, 50.608963>,  <36.580853, 32.780319, 50.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820614, 32.885841, 50.608963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800446, -0.197250, 0.566020,
		0.000252, -0.944193, -0.329394,
		0.599405, 0.263805, -0.755725,
		37.000435, 32.964981, 50.382244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995998, 32.310349, 50.793369>,  <36.580853, 32.780319, 50.911255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995998, 32.310349, 50.793369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170261, 32.659477, 50.705387>,  <37.274818, 32.868954, 50.652599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170261, 32.659477, 50.705387>,  <36.995998, 32.310349, 50.793369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170261, 32.659477, 50.705387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655555, -0.140227, 0.742013,
		0.616803, -0.467457, -0.633275,
		0.435661, 0.872823, -0.219951,
		37.300961, 32.921326, 50.639400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709869, 32.164719, 50.804485>,  <36.995998, 32.310349, 50.793369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709869, 32.164719, 50.804485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679916, 32.559990, 50.858006>,  <37.661945, 32.797153, 50.890118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679916, 32.559990, 50.858006>,  <37.709869, 32.164719, 50.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679916, 32.559990, 50.858006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644286, -0.054468, 0.762842,
		0.761109, 0.143331, -0.632589,
		-0.074884, 0.988175, 0.133802,
		37.657452, 32.856441, 50.898148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382328, 32.414906, 50.976723>,  <37.709869, 32.164719, 50.804485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382328, 32.414906, 50.976723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132767, 32.703426, 51.097034>,  <37.983028, 32.876537, 51.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132767, 32.703426, 51.097034>,  <38.382328, 32.414906, 50.976723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132767, 32.703426, 51.097034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540398, 0.120157, 0.832786,
		0.564547, 0.682121, -0.464755,
		-0.623904, 0.721300, 0.300782,
		37.945595, 32.919815, 51.187267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857563, 32.971813, 51.122711>,  <38.382328, 32.414906, 50.976723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857563, 32.971813, 51.122711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511524, 33.014076, 51.318851>,  <38.303902, 33.039433, 51.436535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511524, 33.014076, 51.318851>,  <38.857563, 32.971813, 51.122711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511524, 33.014076, 51.318851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500441, 0.115166, 0.858077,
		0.034188, 0.987711, -0.152504,
		-0.865096, 0.105655, 0.490354,
		38.251995, 33.045773, 51.465958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988575, 33.505718, 51.621693>,  <38.857563, 32.971813, 51.122711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988575, 33.505718, 51.621693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662682, 33.312954, 51.750675>,  <38.467148, 33.197296, 51.828064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662682, 33.312954, 51.750675>,  <38.988575, 33.505718, 51.621693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662682, 33.312954, 51.750675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448549, -0.171399, 0.877169,
		-0.367447, 0.859294, 0.355804,
		-0.814731, -0.481909, 0.322456,
		38.418262, 33.168381, 51.847412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035019, 33.609383, 52.298176>,  <38.988575, 33.505718, 51.621693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035019, 33.609383, 52.298176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754555, 33.325153, 52.274662>,  <38.586277, 33.154617, 52.260555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754555, 33.325153, 52.274662>,  <39.035019, 33.609383, 52.298176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754555, 33.325153, 52.274662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257356, -0.329108, 0.908546,
		-0.664936, 0.621910, 0.413629,
		-0.701162, -0.710575, -0.058784,
		38.544205, 33.111980, 52.257027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474564, 33.658245, 52.839344>,  <39.035019, 33.609383, 52.298176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474564, 33.658245, 52.839344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547295, 33.282814, 52.722031>,  <38.590935, 33.057556, 52.651642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547295, 33.282814, 52.722031>,  <38.474564, 33.658245, 52.839344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547295, 33.282814, 52.722031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240948, -0.246639, 0.938676,
		-0.953353, -0.241348, 0.181301,
		0.181832, -0.938574, -0.293286,
		38.601845, 33.001244, 52.634045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160973, 33.158569, 53.379700>,  <38.474564, 33.658245, 52.839344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160973, 33.158569, 53.379700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449417, 32.962860, 53.183491>,  <38.622482, 32.845436, 53.065765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449417, 32.962860, 53.183491>,  <38.160973, 33.158569, 53.379700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449417, 32.962860, 53.183491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316002, -0.397803, 0.861334,
		-0.616558, -0.776123, -0.132249,
		0.721110, -0.489271, -0.490524,
		38.665749, 32.816078, 53.036335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010532, 32.498055, 53.433815>,  <38.160973, 33.158569, 53.379700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010532, 32.498055, 53.433815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396442, 32.602158, 53.418400>,  <38.627987, 32.664619, 53.409149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396442, 32.602158, 53.418400>,  <38.010532, 32.498055, 53.433815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396442, 32.602158, 53.418400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141087, -0.388153, 0.910731,
		0.222062, -0.884084, -0.411197,
		0.964771, 0.260253, -0.038538,
		38.685875, 32.680233, 53.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465351, 31.904835, 53.520424>,  <38.010532, 32.498055, 53.433815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465351, 31.904835, 53.520424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598831, 32.262302, 53.640423>,  <38.678921, 32.476784, 53.712421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598831, 32.262302, 53.640423>,  <38.465351, 31.904835, 53.520424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598831, 32.262302, 53.640423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084430, -0.345290, 0.934690,
		0.938890, -0.286578, -0.190676,
		0.333701, 0.893671, 0.299994,
		38.698940, 32.530403, 53.730419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119846, 31.887417, 53.690514>,  <38.465351, 31.904835, 53.520424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119846, 31.887417, 53.690514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907967, 32.160995, 53.891167>,  <38.780838, 32.325142, 54.011559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907967, 32.160995, 53.891167>,  <39.119846, 31.887417, 53.690514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907967, 32.160995, 53.891167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195229, -0.477225, 0.856821,
		0.825412, 0.551790, 0.119259,
		-0.529699, 0.683947, 0.501633,
		38.749058, 32.366180, 54.041656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556995, 31.950823, 54.197895>,  <39.119846, 31.887417, 53.690514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556995, 31.950823, 54.197895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186142, 32.047543, 54.312405>,  <38.963631, 32.105576, 54.381111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186142, 32.047543, 54.312405>,  <39.556995, 31.950823, 54.197895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186142, 32.047543, 54.312405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063973, -0.650616, 0.756708,
		0.369228, 0.719884, 0.587740,
		-0.927134, 0.241798, 0.286278,
		38.908001, 32.120083, 54.398289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252117, 32.147881, 53.806526>,  <39.556995, 31.950823, 54.197895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252117, 32.147881, 53.806526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405369, 31.823170, 53.982815>,  <40.497322, 31.628344, 54.088589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405369, 31.823170, 53.982815>,  <40.252117, 32.147881, 53.806526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405369, 31.823170, 53.982815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448612, -0.580609, -0.679442,
		0.807439, 0.062603, -0.586620,
		0.383132, -0.811773, 0.440722,
		40.520309, 31.579638, 54.115032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699539, 31.668600, 53.457912>,  <40.252117, 32.147881, 53.806526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699539, 31.668600, 53.457912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499847, 31.410433, 53.689156>,  <40.380032, 31.255533, 53.827904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499847, 31.410433, 53.689156>,  <40.699539, 31.668600, 53.457912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499847, 31.410433, 53.689156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418761, -0.404386, -0.813087,
		0.758560, -0.648003, -0.068396,
		-0.499225, -0.645418, 0.578110,
		40.350079, 31.216808, 53.862587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879757, 30.948122, 53.354126>,  <40.699539, 31.668600, 53.457912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879757, 30.948122, 53.354126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495373, 31.022285, 53.436283>,  <40.264744, 31.066784, 53.485577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495373, 31.022285, 53.436283>,  <40.879757, 30.948122, 53.354126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495373, 31.022285, 53.436283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248231, -0.249735, -0.935956,
		-0.122241, -0.950398, 0.286008,
		-0.960957, 0.185408, 0.205390,
		40.207085, 31.077909, 53.497898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210938, 30.885334, 53.007214>,  <40.879757, 30.948122, 53.354126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210938, 30.885334, 53.007214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823586, 30.788015, 52.985107>,  <39.591175, 30.729624, 52.971844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823586, 30.788015, 52.985107>,  <40.210938, 30.885334, 53.007214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823586, 30.788015, 52.985107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089670, -0.132670, -0.987096,
		0.232823, -0.960836, 0.150291,
		-0.968376, -0.243295, -0.055270,
		39.533073, 30.715027, 52.968525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309032, 30.181440, 52.749424>,  <40.210938, 30.885334, 53.007214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309032, 30.181440, 52.749424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988316, 30.396675, 52.645432>,  <39.795887, 30.525816, 52.583038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988316, 30.396675, 52.645432>,  <40.309032, 30.181440, 52.749424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988316, 30.396675, 52.645432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292472, -0.026046, -0.955919,
		-0.521141, -0.842486, -0.136492,
		-0.801793, 0.538089, -0.259978,
		39.747776, 30.558102, 52.567440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057899, 29.965956, 52.138973>,  <40.309032, 30.181440, 52.749424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057899, 29.965956, 52.138973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866859, 30.317160, 52.126335>,  <39.752235, 30.527882, 52.118752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866859, 30.317160, 52.126335>,  <40.057899, 29.965956, 52.138973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866859, 30.317160, 52.126335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137870, 0.039385, -0.989667,
		-0.867692, -0.477022, -0.139861,
		-0.477602, 0.878008, -0.031593,
		39.723579, 30.580563, 52.116856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625759, 29.957876, 51.522522>,  <40.057899, 29.965956, 52.138973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625759, 29.957876, 51.522522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631874, 30.350384, 51.599331>,  <39.635544, 30.585888, 51.645416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631874, 30.350384, 51.599331>,  <39.625759, 29.957876, 51.522522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631874, 30.350384, 51.599331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303361, 0.178443, -0.936018,
		-0.952753, 0.072563, -0.294951,
		0.015288, 0.981271, 0.192025,
		39.636459, 30.644766, 51.656937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322552, 30.295507, 50.962479>,  <39.625759, 29.957876, 51.522522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322552, 30.295507, 50.962479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546070, 30.576733, 51.138409>,  <39.680183, 30.745468, 51.243965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546070, 30.576733, 51.138409>,  <39.322552, 30.295507, 50.962479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546070, 30.576733, 51.138409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314934, 0.310713, -0.896813,
		-0.767176, 0.639654, -0.047792,
		0.558801, 0.703065, 0.439821,
		39.713711, 30.787653, 51.270355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168102, 30.858389, 50.582199>,  <39.322552, 30.295507, 50.962479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168102, 30.858389, 50.582199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487209, 30.984970, 50.787498>,  <39.678673, 31.060919, 50.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487209, 30.984970, 50.787498>,  <39.168102, 30.858389, 50.582199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487209, 30.984970, 50.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321466, 0.496925, -0.806055,
		-0.510127, 0.808036, 0.294701,
		0.797766, 0.316454, 0.513251,
		39.726540, 31.079906, 50.941475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097637, 31.627150, 50.560287>,  <39.168102, 30.858389, 50.582199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097637, 31.627150, 50.560287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477581, 31.510899, 50.606415>,  <39.705547, 31.441147, 50.634090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477581, 31.510899, 50.606415>,  <39.097637, 31.627150, 50.560287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477581, 31.510899, 50.606415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250520, 0.486693, -0.836881,
		0.187095, 0.823811, 0.535099,
		0.949861, -0.290630, 0.115323,
		39.762539, 31.423710, 50.641010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466763, 32.238354, 50.603722>,  <39.097637, 31.627150, 50.560287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466763, 32.238354, 50.603722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716869, 31.953266, 50.476555>,  <39.866932, 31.782213, 50.400253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716869, 31.953266, 50.476555>,  <39.466763, 32.238354, 50.603722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716869, 31.953266, 50.476555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170980, 0.522580, -0.835270,
		0.761450, 0.467910, 0.448614,
		0.625267, -0.712720, -0.317915,
		39.904449, 31.739450, 50.381180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088768, 32.585220, 50.340000>,  <39.466763, 32.238354, 50.603722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088768, 32.585220, 50.340000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076790, 32.215851, 50.186954>,  <40.069603, 31.994228, 50.095127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076790, 32.215851, 50.186954>,  <40.088768, 32.585220, 50.340000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076790, 32.215851, 50.186954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135658, 0.375487, -0.916846,
		0.990303, -0.079360, 0.114025,
		-0.029946, -0.923424, -0.382611,
		40.067806, 31.938824, 50.072170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472538, 32.685917, 49.749798>,  <40.088768, 32.585220, 50.340000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472538, 32.685917, 49.749798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278946, 32.341228, 49.688873>,  <40.162788, 32.134415, 49.652321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278946, 32.341228, 49.688873>,  <40.472538, 32.685917, 49.749798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278946, 32.341228, 49.688873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029168, 0.158070, -0.986997,
		0.874590, -0.482133, -0.051369,
		-0.483984, -0.861720, -0.152309,
		40.133751, 32.082714, 49.643181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765568, 32.437145, 49.154606>,  <40.472538, 32.685917, 49.749798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765568, 32.437145, 49.154606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424068, 32.229767, 49.173904>,  <40.219170, 32.105339, 49.185482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424068, 32.229767, 49.173904>,  <40.765568, 32.437145, 49.154606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424068, 32.229767, 49.173904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107491, 0.084833, -0.990580,
		0.509471, -0.850891, -0.128154,
		-0.853747, -0.518447, 0.048243,
		40.167946, 32.074234, 49.188377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887928, 31.983688, 48.613949>,  <40.765568, 32.437145, 49.154606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887928, 31.983688, 48.613949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499027, 31.983541, 48.707523>,  <40.265686, 31.983454, 48.763668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499027, 31.983541, 48.707523>,  <40.887928, 31.983688, 48.613949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499027, 31.983541, 48.707523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233933, 0.006803, -0.972229,
		-0.001263, -0.999977, -0.006693,
		-0.972252, -0.000338, 0.233936,
		40.207352, 31.983433, 48.777702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467625, 31.422464, 48.252403>,  <40.887928, 31.983688, 48.613949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467625, 31.422464, 48.252403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227779, 31.728064, 48.347710>,  <40.083870, 31.911423, 48.404892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227779, 31.728064, 48.347710>,  <40.467625, 31.422464, 48.252403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227779, 31.728064, 48.347710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139589, 0.193314, -0.971156,
		-0.788019, -0.615581, -0.009269,
		-0.599618, 0.763996, 0.238263,
		40.047894, 31.957262, 48.419189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907707, 31.283318, 47.814774>,  <40.467625, 31.422464, 48.252403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907707, 31.283318, 47.814774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893471, 31.671194, 47.911461>,  <39.884930, 31.903921, 47.969475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893471, 31.671194, 47.911461>,  <39.907707, 31.283318, 47.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893471, 31.671194, 47.911461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158697, 0.233317, -0.959364,
		-0.986686, -0.072508, 0.145582,
		-0.035595, 0.969694, 0.241717,
		39.882793, 31.962103, 47.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392426, 31.588530, 47.432636>,  <39.907707, 31.283318, 47.814774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392426, 31.588530, 47.432636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564877, 31.916811, 47.582607>,  <39.668346, 32.113781, 47.672592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564877, 31.916811, 47.582607>,  <39.392426, 31.588530, 47.432636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564877, 31.916811, 47.582607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248482, 0.507459, -0.825071,
		-0.867400, 0.262551, 0.422711,
		0.431132, 0.820702, 0.374930,
		39.694218, 32.163021, 47.695087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843903, 31.997749, 47.392204>,  <39.392426, 31.588530, 47.432636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843903, 31.997749, 47.392204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192368, 32.192169, 47.364380>,  <39.401447, 32.308823, 47.347683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192368, 32.192169, 47.364380>,  <38.843903, 31.997749, 47.392204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192368, 32.192169, 47.364380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203299, 0.228098, -0.952177,
		-0.446938, 0.843639, 0.297523,
		0.871158, 0.486050, -0.069565,
		39.453716, 32.337986, 47.343510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714603, 32.594009, 47.103802>,  <38.843903, 31.997749, 47.392204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714603, 32.594009, 47.103802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101040, 32.550041, 47.010349>,  <39.332901, 32.523659, 46.954277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101040, 32.550041, 47.010349>,  <38.714603, 32.594009, 47.103802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101040, 32.550041, 47.010349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226289, 0.075242, -0.971150,
		0.124331, 0.991088, 0.047816,
		0.966093, -0.109924, -0.233627,
		39.390869, 32.517063, 46.940262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842014, 33.055496, 46.699608>,  <38.714603, 32.594009, 47.103802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842014, 33.055496, 46.699608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160473, 32.821075, 46.639351>,  <39.351547, 32.680424, 46.603195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160473, 32.821075, 46.639351>,  <38.842014, 33.055496, 46.699608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160473, 32.821075, 46.639351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165552, 0.028496, -0.985789,
		0.582014, 0.809774, -0.074335,
		0.796148, -0.586050, -0.150645,
		39.399319, 32.645260, 46.594158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279858, 33.388363, 46.199184>,  <38.842014, 33.055496, 46.699608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279858, 33.388363, 46.199184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320679, 32.990601, 46.210140>,  <39.345169, 32.751945, 46.216713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320679, 32.990601, 46.210140>,  <39.279858, 33.388363, 46.199184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320679, 32.990601, 46.210140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283729, -0.055485, -0.957298,
		0.953459, 0.089921, -0.287803,
		0.102050, -0.994402, 0.027389,
		39.351295, 32.692280, 46.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694527, 33.286709, 45.607327>,  <39.279858, 33.388363, 46.199184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694527, 33.286709, 45.607327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510628, 32.945301, 45.705421>,  <39.400288, 32.740456, 45.764278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510628, 32.945301, 45.705421>,  <39.694527, 33.286709, 45.607327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510628, 32.945301, 45.705421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090820, -0.229520, -0.969057,
		0.883393, -0.467795, 0.028005,
		-0.459748, -0.853515, 0.245242,
		39.372704, 32.689247, 45.778996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811211, 32.860222, 45.101089>,  <39.694527, 33.286709, 45.607327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811211, 32.860222, 45.101089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510357, 32.658207, 45.270432>,  <39.329845, 32.536999, 45.372036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510357, 32.658207, 45.270432>,  <39.811211, 32.860222, 45.101089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510357, 32.658207, 45.270432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298926, -0.311062, -0.902155,
		0.587308, -0.805097, 0.082994,
		-0.752138, -0.505034, 0.423354,
		39.284714, 32.506699, 45.397438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919617, 32.188828, 44.814278>,  <39.811211, 32.860222, 45.101089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919617, 32.188828, 44.814278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540340, 32.243618, 44.928936>,  <39.312775, 32.276493, 44.997730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540340, 32.243618, 44.928936>,  <39.919617, 32.188828, 44.814278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540340, 32.243618, 44.928936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314268, -0.536536, -0.783176,
		0.046515, -0.832686, 0.551789,
		-0.948194, 0.136980, 0.286643,
		39.255882, 32.284714, 45.014931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512108, 31.503349, 44.702381>,  <39.919617, 32.188828, 44.814278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512108, 31.503349, 44.702381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218403, 31.773836, 44.726330>,  <39.042179, 31.936129, 44.740700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218403, 31.773836, 44.726330>,  <39.512108, 31.503349, 44.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218403, 31.773836, 44.726330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510201, -0.491512, -0.705770,
		-0.447826, -0.548769, 0.705907,
		-0.734266, 0.676216, 0.059870,
		38.998123, 31.976702, 44.744289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972263, 31.195320, 44.545216>,  <39.512108, 31.503349, 44.702381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972263, 31.195320, 44.545216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843716, 31.567804, 44.476440>,  <38.766586, 31.791296, 44.435177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843716, 31.567804, 44.476440>,  <38.972263, 31.195320, 44.545216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843716, 31.567804, 44.476440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573245, -0.335833, -0.747400,
		-0.753731, -0.141630, 0.641740,
		-0.321371, 0.931213, -0.171939,
		38.747303, 31.847168, 44.424858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239986, 31.090204, 44.626053>,  <38.972263, 31.195320, 44.545216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239986, 31.090204, 44.626053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272919, 31.447054, 44.448364>,  <38.292679, 31.661163, 44.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272919, 31.447054, 44.448364>,  <38.239986, 31.090204, 44.626053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272919, 31.447054, 44.448364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717006, -0.256562, -0.648135,
		-0.692188, 0.371874, 0.618535,
		0.082332, 0.892124, -0.444225,
		38.297619, 31.714691, 44.315098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579029, 31.423256, 44.399849>,  <38.239986, 31.090204, 44.626053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579029, 31.423256, 44.399849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817200, 31.619072, 44.145035>,  <37.960102, 31.736563, 43.992146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817200, 31.619072, 44.145035>,  <37.579029, 31.423256, 44.399849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817200, 31.619072, 44.145035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595519, -0.263306, -0.758965,
		-0.539280, 0.831275, 0.134751,
		0.595428, 0.489542, -0.637036,
		37.995827, 31.765934, 43.953922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087231, 31.720591, 43.936501>,  <37.579029, 31.423256, 44.399849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087231, 31.720591, 43.936501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441936, 31.701077, 43.752647>,  <37.654762, 31.689367, 43.642334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441936, 31.701077, 43.752647>,  <37.087231, 31.720591, 43.936501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441936, 31.701077, 43.752647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417188, -0.512587, -0.750472,
		-0.198989, 0.857248, -0.474899,
		0.886768, -0.048786, -0.459633,
		37.707966, 31.686441, 43.614758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924541, 31.985340, 43.308685>,  <37.087231, 31.720591, 43.936501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924541, 31.985340, 43.308685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260792, 31.775875, 43.253372>,  <37.462543, 31.650196, 43.220184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260792, 31.775875, 43.253372>,  <36.924541, 31.985340, 43.308685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260792, 31.775875, 43.253372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428107, -0.486041, -0.761898,
		0.331768, 0.699672, -0.632764,
		0.840627, -0.523664, -0.138282,
		37.512981, 31.618776, 43.211887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004379, 31.901009, 42.689659>,  <36.924541, 31.985340, 43.308685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004379, 31.901009, 42.689659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290470, 31.633200, 42.769848>,  <37.462124, 31.472515, 42.817963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290470, 31.633200, 42.769848>,  <37.004379, 31.901009, 42.689659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290470, 31.633200, 42.769848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295699, -0.549801, -0.781205,
		0.633252, 0.499461, -0.591211,
		0.715230, -0.669520, 0.200473,
		37.505039, 31.432344, 42.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220989, 31.737143, 42.030872>,  <37.004379, 31.901009, 42.689659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220989, 31.737143, 42.030872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343666, 31.442564, 42.272064>,  <37.417271, 31.265818, 42.416779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343666, 31.442564, 42.272064>,  <37.220989, 31.737143, 42.030872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343666, 31.442564, 42.272064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328457, -0.676484, -0.659155,
		0.893340, 0.004104, -0.449363,
		0.306692, -0.736446, 0.602982,
		37.435673, 31.221630, 42.452957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772675, 31.440060, 41.587788>,  <37.220989, 31.737143, 42.030872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772675, 31.440060, 41.587788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628136, 31.178469, 41.853642>,  <37.541412, 31.021513, 42.013153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628136, 31.178469, 41.853642>,  <37.772675, 31.440060, 41.587788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628136, 31.178469, 41.853642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150901, -0.662387, -0.733807,
		0.920141, -0.365450, 0.140663,
		-0.361343, -0.653980, 0.664637,
		37.519733, 30.982275, 42.053032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186695, 30.735748, 41.563007>,  <37.772675, 31.440060, 41.587788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186695, 30.735748, 41.563007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821564, 30.660511, 41.707985>,  <37.602486, 30.615368, 41.794971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821564, 30.660511, 41.707985>,  <38.186695, 30.735748, 41.563007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821564, 30.660511, 41.707985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149028, -0.672916, -0.724551,
		0.380177, -0.715405, 0.586226,
		-0.912829, -0.188094, 0.362442,
		37.547714, 30.604082, 41.816719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136730, 29.947247, 41.413132>,  <38.186695, 30.735748, 41.563007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136730, 29.947247, 41.413132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769997, 30.081850, 41.499096>,  <37.549957, 30.162613, 41.550674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769997, 30.081850, 41.499096>,  <38.136730, 29.947247, 41.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769997, 30.081850, 41.499096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374890, -0.540261, -0.753376,
		-0.137409, -0.771285, 0.621480,
		-0.916829, 0.336507, 0.214911,
		37.494949, 30.182802, 41.563568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823975, 29.383648, 41.321148>,  <38.136730, 29.947247, 41.413132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823975, 29.383648, 41.321148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538582, 29.663912, 41.319515>,  <37.367344, 29.832069, 41.318535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538582, 29.663912, 41.319515>,  <37.823975, 29.383648, 41.321148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538582, 29.663912, 41.319515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319885, -0.330915, -0.887789,
		-0.623388, -0.632118, 0.460233,
		-0.713485, 0.700658, -0.004083,
		37.324535, 29.874109, 41.318291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245987, 29.002810, 41.151512>,  <37.823975, 29.383648, 41.321148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245987, 29.002810, 41.151512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194054, 29.389513, 41.063404>,  <37.162891, 29.621536, 41.010540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194054, 29.389513, 41.063404>,  <37.245987, 29.002810, 41.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194054, 29.389513, 41.063404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299592, -0.250012, -0.920727,
		-0.945192, -0.053553, 0.322094,
		-0.129835, 0.966760, -0.220266,
		37.155102, 29.679541, 40.997326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573040, 29.087746, 40.891949>,  <37.245987, 29.002810, 41.151512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573040, 29.087746, 40.891949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771408, 29.406588, 40.754147>,  <36.890430, 29.597893, 40.671463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771408, 29.406588, 40.754147>,  <36.573040, 29.087746, 40.891949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771408, 29.406588, 40.754147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448285, -0.104773, -0.887729,
		-0.743708, 0.594683, 0.305371,
		0.495923, 0.797104, -0.344508,
		36.920185, 29.645720, 40.650795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086487, 29.224701, 40.397495>,  <36.573040, 29.087746, 40.891949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086487, 29.224701, 40.397495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405544, 29.445110, 40.299408>,  <36.596977, 29.577356, 40.240555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405544, 29.445110, 40.299408>,  <36.086487, 29.224701, 40.397495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405544, 29.445110, 40.299408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362214, 0.112554, -0.925274,
		-0.482248, 0.826864, 0.289368,
		0.797645, 0.551024, -0.245223,
		36.644836, 29.610418, 40.225842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724514, 29.782486, 40.100334>,  <36.086487, 29.224701, 40.397495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724514, 29.782486, 40.100334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106983, 29.773350, 39.983574>,  <36.336464, 29.767868, 39.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106983, 29.773350, 39.983574>,  <35.724514, 29.782486, 40.100334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106983, 29.773350, 39.983574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288875, 0.088920, -0.953228,
		0.047728, 0.995777, 0.078425,
		0.956176, -0.022841, -0.291899,
		36.393837, 29.766497, 39.896004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802490, 30.241327, 39.631508>,  <35.724514, 29.782486, 40.100334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802490, 30.241327, 39.631508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129116, 30.020746, 39.563248>,  <36.325092, 29.888397, 39.522293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129116, 30.020746, 39.563248>,  <35.802490, 30.241327, 39.631508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129116, 30.020746, 39.563248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208149, -0.005545, -0.978082,
		0.538418, 0.834189, -0.119311,
		0.816566, -0.551451, -0.170650,
		36.374084, 29.855310, 39.512054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219070, 30.581972, 39.150669>,  <35.802490, 30.241327, 39.631508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219070, 30.581972, 39.150669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297718, 30.190020, 39.136951>,  <36.344906, 29.954849, 39.128719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297718, 30.190020, 39.136951>,  <36.219070, 30.581972, 39.150669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297718, 30.190020, 39.136951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127583, 0.009111, -0.991786,
		0.972143, 0.199381, -0.123225,
		0.196621, -0.979880, -0.034294,
		36.356705, 29.896055, 39.126663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731991, 30.453360, 38.684124>,  <36.219070, 30.581972, 39.150669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731991, 30.453360, 38.684124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572121, 30.086706, 38.681469>,  <36.476200, 29.866714, 38.679874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572121, 30.086706, 38.681469>,  <36.731991, 30.453360, 38.684124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572121, 30.086706, 38.681469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151835, 0.073341, -0.985681,
		0.903995, -0.392944, -0.168490,
		-0.399675, -0.916633, -0.006638,
		36.452217, 29.811716, 38.679478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000278, 30.122490, 38.153358>,  <36.731991, 30.453360, 38.684124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000278, 30.122490, 38.153358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656940, 29.933331, 38.232975>,  <36.450939, 29.819836, 38.280746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656940, 29.933331, 38.232975>,  <37.000278, 30.122490, 38.153358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656940, 29.933331, 38.232975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339500, 0.232605, -0.911391,
		0.384698, -0.849859, -0.360204,
		-0.858340, -0.472899, 0.199045,
		36.399437, 29.791462, 38.292690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488205, 30.629168, 38.288872>,  <37.000278, 30.122490, 38.153358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488205, 30.629168, 38.288872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720570, 30.871960, 38.071941>,  <37.859989, 31.017635, 37.941784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720570, 30.871960, 38.071941>,  <37.488205, 30.629168, 38.288872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720570, 30.871960, 38.071941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291568, 0.466896, 0.834863,
		0.759955, -0.643106, 0.094249,
		0.580910, 0.606978, -0.542330,
		37.894844, 31.054052, 37.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154221, 30.705820, 38.590652>,  <37.488205, 30.629168, 38.288872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154221, 30.705820, 38.590652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127205, 31.037043, 38.368027>,  <38.110996, 31.235775, 38.234451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127205, 31.037043, 38.368027>,  <38.154221, 30.705820, 38.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127205, 31.037043, 38.368027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374749, 0.538049, 0.755028,
		0.924663, -0.157576, -0.346653,
		-0.067542, 0.828054, -0.556565,
		38.106941, 31.285460, 38.201057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858013, 31.072052, 38.567543>,  <38.154221, 30.705820, 38.590652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858013, 31.072052, 38.567543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564144, 31.328945, 38.480091>,  <38.387825, 31.483082, 38.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564144, 31.328945, 38.480091>,  <38.858013, 31.072052, 38.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564144, 31.328945, 38.480091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402098, 0.671762, 0.622136,
		0.546424, 0.369153, -0.751763,
		-0.734668, 0.642233, -0.218631,
		38.343742, 31.521614, 38.414501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223938, 31.673750, 38.235653>,  <38.858013, 31.072052, 38.567543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223938, 31.673750, 38.235653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883007, 31.762939, 38.424889>,  <38.678448, 31.816454, 38.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883007, 31.762939, 38.424889>,  <39.223938, 31.673750, 38.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883007, 31.762939, 38.424889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514234, 0.522229, 0.680323,
		-0.095365, 0.823139, -0.559774,
		-0.852331, 0.222976, 0.473089,
		38.627308, 31.829832, 38.566814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521694, 31.977898, 38.804974>,  <39.223938, 31.673750, 38.235653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521694, 31.977898, 38.804974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131626, 32.017654, 38.884132>,  <38.897587, 32.041508, 38.931625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131626, 32.017654, 38.884132>,  <39.521694, 31.977898, 38.804974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131626, 32.017654, 38.884132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220260, 0.527918, 0.820237,
		-0.022947, 0.843459, -0.536703,
		-0.975171, 0.099393, 0.197895,
		38.839073, 32.047474, 38.943501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402580, 32.739418, 38.930241>,  <39.521694, 31.977898, 38.804974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402580, 32.739418, 38.930241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101040, 32.547802, 39.110119>,  <38.920116, 32.432831, 39.218044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101040, 32.547802, 39.110119>,  <39.402580, 32.739418, 38.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101040, 32.547802, 39.110119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318085, 0.332792, 0.887734,
		-0.574917, 0.812261, -0.098500,
		-0.753851, -0.479042, 0.449696,
		38.874886, 32.404091, 39.245029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001114, 33.207088, 39.230145>,  <39.402580, 32.739418, 38.930241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001114, 33.207088, 39.230145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912373, 32.866947, 39.421005>,  <38.859127, 32.662861, 39.535522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912373, 32.866947, 39.421005>,  <39.001114, 33.207088, 39.230145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912373, 32.866947, 39.421005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225060, 0.431481, 0.873597,
		-0.948751, 0.301199, 0.095655,
		-0.221853, -0.850355, 0.477156,
		38.845818, 32.611839, 39.564152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689091, 33.350220, 39.863537>,  <39.001114, 33.207088, 39.230145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689091, 33.350220, 39.863537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780735, 32.966812, 39.931351>,  <38.835724, 32.736767, 39.972038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780735, 32.966812, 39.931351>,  <38.689091, 33.350220, 39.863537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780735, 32.966812, 39.931351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389175, 0.249847, 0.886634,
		-0.892217, -0.137158, 0.430276,
		0.229112, -0.958522, 0.169539,
		38.849468, 32.679256, 39.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594711, 33.250717, 40.545834>,  <38.689091, 33.350220, 39.863537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594711, 33.250717, 40.545834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816624, 32.934647, 40.441650>,  <38.949772, 32.745007, 40.379139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816624, 32.934647, 40.441650>,  <38.594711, 33.250717, 40.545834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816624, 32.934647, 40.441650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578662, 0.141527, 0.803194,
		-0.597800, -0.596318, 0.535761,
		0.554784, -0.790174, -0.260462,
		38.983059, 32.697594, 40.363510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578133, 32.747677, 41.138180>,  <38.594711, 33.250717, 40.545834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578133, 32.747677, 41.138180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914902, 32.666973, 40.938000>,  <39.116962, 32.618549, 40.817890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914902, 32.666973, 40.938000>,  <38.578133, 32.747677, 41.138180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914902, 32.666973, 40.938000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528897, 0.124820, 0.839457,
		-0.106904, -0.971448, 0.211800,
		0.841926, -0.201762, -0.500453,
		39.167480, 32.606445, 40.787865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954010, 32.220875, 41.557049>,  <38.578133, 32.747677, 41.138180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954010, 32.220875, 41.557049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262363, 32.346870, 41.335590>,  <39.447376, 32.422466, 41.202713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262363, 32.346870, 41.335590>,  <38.954010, 32.220875, 41.557049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262363, 32.346870, 41.335590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600556, -0.069693, 0.796540,
		0.212313, -0.946534, -0.242892,
		0.770880, 0.314986, -0.553650,
		39.493626, 32.441368, 41.169495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536396, 31.722904, 41.599636>,  <38.954010, 32.220875, 41.557049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536396, 31.722904, 41.599636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678596, 32.079617, 41.487671>,  <39.763916, 32.293644, 41.420490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678596, 32.079617, 41.487671>,  <39.536396, 31.722904, 41.599636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678596, 32.079617, 41.487671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710747, -0.063432, 0.700582,
		0.607009, -0.448001, -0.656380,
		0.355497, 0.891780, -0.279912,
		39.785244, 32.347149, 41.403698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304832, 31.610155, 41.625874>,  <39.536396, 31.722904, 41.599636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304832, 31.610155, 41.625874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244003, 32.004776, 41.649834>,  <40.207504, 32.241550, 41.664211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244003, 32.004776, 41.649834>,  <40.304832, 31.610155, 41.625874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244003, 32.004776, 41.649834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639453, 0.051996, 0.767070,
		0.753640, 0.154954, -0.638761,
		-0.152074, 0.986552, 0.059899,
		40.198380, 32.300743, 41.667805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996704, 31.917658, 41.594677>,  <40.304832, 31.610155, 41.625874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996704, 31.917658, 41.594677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750172, 32.186554, 41.758739>,  <40.602253, 32.347893, 41.857178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750172, 32.186554, 41.758739>,  <40.996704, 31.917658, 41.594677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750172, 32.186554, 41.758739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654130, 0.147035, 0.741953,
		0.438464, 0.725584, -0.530356,
		-0.616330, 0.672241, 0.410157,
		40.565273, 32.388226, 41.881786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452236, 32.437267, 41.762863>,  <40.996704, 31.917658, 41.594677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452236, 32.437267, 41.762863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114155, 32.489262, 41.970219>,  <40.911304, 32.520458, 42.094631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114155, 32.489262, 41.970219>,  <41.452236, 32.437267, 41.762863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114155, 32.489262, 41.970219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531844, 0.109052, 0.839791,
		0.052630, 0.985501, -0.161303,
		-0.845205, 0.129986, 0.518393,
		40.860592, 32.528259, 42.125736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644958, 32.941971, 42.200642>,  <41.452236, 32.437267, 41.762863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644958, 32.941971, 42.200642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322697, 32.780193, 42.373775>,  <41.129341, 32.683128, 42.477657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322697, 32.780193, 42.373775>,  <41.644958, 32.941971, 42.200642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322697, 32.780193, 42.373775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461446, 0.029715, 0.886671,
		-0.371470, 0.914080, 0.162689,
		-0.805653, -0.404444, 0.432837,
		41.081001, 32.658859, 42.503628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430191, 33.359222, 42.581566>,  <41.644958, 32.941971, 42.200642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430191, 33.359222, 42.581566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257881, 33.033318, 42.736790>,  <41.154495, 32.837776, 42.829926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257881, 33.033318, 42.736790>,  <41.430191, 33.359222, 42.581566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257881, 33.033318, 42.736790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497684, 0.144228, 0.855283,
		-0.752822, 0.561570, 0.343364,
		-0.430778, -0.814762, 0.388062,
		41.128647, 32.788887, 42.853207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585155, 33.513771, 43.226532>,  <41.430191, 33.359222, 42.581566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585155, 33.513771, 43.226532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446110, 33.139481, 43.250439>,  <41.362682, 32.914906, 43.264782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446110, 33.139481, 43.250439>,  <41.585155, 33.513771, 43.226532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446110, 33.139481, 43.250439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343426, -0.067751, 0.936733,
		-0.872481, 0.346147, 0.344905,
		-0.347615, -0.935731, 0.059764,
		41.341824, 32.858761, 43.268368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083961, 33.435123, 43.854740>,  <41.585155, 33.513771, 43.226532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083961, 33.435123, 43.854740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259789, 33.084930, 43.774429>,  <41.365284, 32.874813, 43.726242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259789, 33.084930, 43.774429>,  <41.083961, 33.435123, 43.854740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259789, 33.084930, 43.774429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224720, -0.109232, 0.968282,
		-0.869646, -0.470741, 0.148724,
		0.439564, -0.875484, -0.200777,
		41.391659, 32.822285, 43.714195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738636, 33.002174, 44.287331>,  <41.083961, 33.435123, 43.854740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738636, 33.002174, 44.287331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080925, 32.819176, 44.190632>,  <41.286297, 32.709377, 44.132610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080925, 32.819176, 44.190632>,  <40.738636, 33.002174, 44.287331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080925, 32.819176, 44.190632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159874, -0.210583, 0.964414,
		-0.492125, -0.863916, -0.107058,
		0.855718, -0.457497, -0.241751,
		41.337639, 32.681927, 44.118107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751492, 32.397881, 44.683178>,  <40.738636, 33.002174, 44.287331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751492, 32.397881, 44.683178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136559, 32.439247, 44.583122>,  <41.367599, 32.464069, 44.523090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136559, 32.439247, 44.583122>,  <40.751492, 32.397881, 44.683178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136559, 32.439247, 44.583122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242151, 0.083872, 0.966607,
		0.120951, -0.991095, 0.055697,
		0.962670, 0.103425, -0.250139,
		41.425362, 32.470272, 44.508080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213516, 31.907108, 45.063187>,  <40.751492, 32.397881, 44.683178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213516, 31.907108, 45.063187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436012, 32.226650, 44.971592>,  <41.569508, 32.418373, 44.916637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436012, 32.226650, 44.971592>,  <41.213516, 31.907108, 45.063187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436012, 32.226650, 44.971592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211008, 0.130746, 0.968701,
		0.803788, -0.587145, -0.095839,
		0.556238, 0.798853, -0.228985,
		41.602882, 32.466305, 44.902897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827408, 31.823154, 45.440762>,  <41.213516, 31.907108, 45.063187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827408, 31.823154, 45.440762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815063, 32.212112, 45.348244>,  <41.807659, 32.445488, 45.292732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815063, 32.212112, 45.348244>,  <41.827408, 31.823154, 45.440762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815063, 32.212112, 45.348244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304262, 0.229557, 0.924515,
		0.952089, -0.041845, -0.302946,
		-0.030857, 0.972395, -0.231291,
		41.805805, 32.503830, 45.278858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357800, 32.124580, 45.874691>,  <41.827408, 31.823154, 45.440762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357800, 32.124580, 45.874691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150551, 32.448521, 45.764645>,  <42.026203, 32.642887, 45.698616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150551, 32.448521, 45.764645>,  <42.357800, 32.124580, 45.874691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150551, 32.448521, 45.764645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177949, 0.416686, 0.891463,
		0.836591, 0.412929, -0.360006,
		-0.518121, 0.809853, -0.275116,
		41.995113, 32.691475, 45.682110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809330, 32.775223, 46.134663>,  <42.357800, 32.124580, 45.874691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809330, 32.775223, 46.134663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423752, 32.872932, 46.092438>,  <42.192406, 32.931557, 46.067104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423752, 32.872932, 46.092438>,  <42.809330, 32.775223, 46.134663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423752, 32.872932, 46.092438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083220, 0.653516, 0.752324,
		0.252757, 0.716414, -0.650281,
		-0.963944, 0.244272, -0.105561,
		42.134567, 32.946213, 46.060768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809700, 33.552952, 46.245281>,  <42.809330, 32.775223, 46.134663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809700, 33.552952, 46.245281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431904, 33.424850, 46.274620>,  <42.205227, 33.347992, 46.292225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431904, 33.424850, 46.274620>,  <42.809700, 33.552952, 46.245281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431904, 33.424850, 46.274620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180295, 0.691861, 0.699158,
		-0.274652, 0.647123, -0.711195,
		-0.944489, -0.320250, 0.073348,
		42.148556, 33.328777, 46.296623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365696, 34.183338, 46.352367>,  <42.809700, 33.552952, 46.245281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365696, 34.183338, 46.352367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115307, 33.909893, 46.502480>,  <41.965073, 33.745827, 46.592548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115307, 33.909893, 46.502480>,  <42.365696, 34.183338, 46.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115307, 33.909893, 46.502480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016071, 0.492429, 0.870204,
		-0.779683, 0.538689, -0.319231,
		-0.625969, -0.683613, 0.375281,
		41.927517, 33.704807, 46.615063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861935, 34.580582, 46.730392>,  <42.365696, 34.183338, 46.352367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861935, 34.580582, 46.730392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844963, 34.215530, 46.893021>,  <41.834782, 33.996498, 46.990597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844963, 34.215530, 46.893021>,  <41.861935, 34.580582, 46.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844963, 34.215530, 46.893021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183196, 0.407147, 0.894802,
		-0.982160, -0.036519, -0.184465,
		-0.042427, -0.912632, 0.406574,
		41.832233, 33.941742, 47.014992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368828, 34.598770, 47.222015>,  <41.861935, 34.580582, 46.730392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368828, 34.598770, 47.222015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584858, 34.279842, 47.329792>,  <41.714478, 34.088486, 47.394459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584858, 34.279842, 47.329792>,  <41.368828, 34.598770, 47.222015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584858, 34.279842, 47.329792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012877, 0.327943, 0.944610,
		-0.841517, -0.506692, 0.187381,
		0.540077, -0.797318, 0.269445,
		41.746880, 34.040646, 47.410625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011360, 34.165993, 47.616169>,  <41.368828, 34.598770, 47.222015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011360, 34.165993, 47.616169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382294, 34.054459, 47.716011>,  <41.604855, 33.987537, 47.775917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382294, 34.054459, 47.716011>,  <41.011360, 34.165993, 47.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382294, 34.054459, 47.716011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205784, 0.177144, 0.962431,
		-0.312578, -0.943859, 0.106891,
		0.927333, -0.278838, 0.249603,
		41.660492, 33.970806, 47.790894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916664, 33.594738, 48.069881>,  <41.011360, 34.165993, 47.616169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916664, 33.594738, 48.069881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282810, 33.741680, 48.135799>,  <41.502499, 33.829845, 48.175350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282810, 33.741680, 48.135799>,  <40.916664, 33.594738, 48.069881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282810, 33.741680, 48.135799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233674, 0.151393, 0.960456,
		0.327881, -0.917676, 0.224422,
		0.915364, 0.367357, 0.164799,
		41.557419, 33.851887, 48.185238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005814, 33.407688, 48.684456>,  <40.916664, 33.594738, 48.069881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005814, 33.407688, 48.684456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335190, 33.633965, 48.666817>,  <41.532814, 33.769730, 48.656235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335190, 33.633965, 48.666817>,  <41.005814, 33.407688, 48.684456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335190, 33.633965, 48.666817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003019, 0.073342, 0.997302,
		0.567400, -0.821349, 0.058685,
		0.823437, 0.565691, -0.044094,
		41.582222, 33.803673, 48.653587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536423, 33.089485, 49.050850>,  <41.005814, 33.407688, 48.684456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536423, 33.089485, 49.050850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630806, 33.478191, 49.051579>,  <41.687435, 33.711414, 49.052017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630806, 33.478191, 49.051579>,  <41.536423, 33.089485, 49.050850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630806, 33.478191, 49.051579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012086, -0.004811, 0.999916,
		0.971688, -0.235916, -0.012880,
		0.235958, 0.971762, 0.001823,
		41.701591, 33.769718, 49.052124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999371, 33.067333, 49.598801>,  <41.536423, 33.089485, 49.050850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999371, 33.067333, 49.598801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898270, 33.447159, 49.524563>,  <41.837608, 33.675053, 49.480022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898270, 33.447159, 49.524563>,  <41.999371, 33.067333, 49.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898270, 33.447159, 49.524563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033172, 0.183201, 0.982516,
		0.966962, 0.254489, -0.014806,
		-0.252752, 0.949564, -0.185591,
		41.822445, 33.732029, 49.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362846, 33.541527, 50.026054>,  <41.999371, 33.067333, 49.598801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362846, 33.541527, 50.026054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034241, 33.752914, 49.940418>,  <41.837078, 33.879745, 49.889038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034241, 33.752914, 49.940418>,  <42.362846, 33.541527, 50.026054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034241, 33.752914, 49.940418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180080, 0.115786, 0.976814,
		0.541002, 0.841021, 0.000046,
		-0.821516, 0.528467, -0.214091,
		41.787785, 33.911453, 49.876190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285439, 34.215893, 50.478745>,  <42.362846, 33.541527, 50.026054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285439, 34.215893, 50.478745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913628, 34.170643, 50.338360>,  <41.690540, 34.143494, 50.254128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913628, 34.170643, 50.338360>,  <42.285439, 34.215893, 50.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913628, 34.170643, 50.338360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368719, 0.273505, 0.888393,
		-0.004508, 0.955195, -0.295942,
		-0.929530, -0.113124, -0.350966,
		41.634769, 34.136707, 50.233070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971840, 34.770245, 50.644814>,  <42.285439, 34.215893, 50.478745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971840, 34.770245, 50.644814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672405, 34.510681, 50.590359>,  <41.492744, 34.354942, 50.557686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672405, 34.510681, 50.590359>,  <41.971840, 34.770245, 50.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672405, 34.510681, 50.590359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395208, 0.271831, 0.877450,
		-0.532378, 0.710652, -0.459943,
		-0.748589, -0.648908, -0.136138,
		41.447830, 34.316010, 50.549519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284023, 35.486614, 50.786324>,  <41.971840, 34.770245, 50.644814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284023, 35.486614, 50.786324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136681, 35.853256, 50.848488>,  <42.048275, 36.073242, 50.885788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136681, 35.853256, 50.848488>,  <42.284023, 35.486614, 50.786324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136681, 35.853256, 50.848488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115213, 0.210887, -0.970697,
		-0.922518, -0.339656, -0.183286,
		-0.368356, 0.916603, 0.155414,
		42.026173, 36.128239, 50.895111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706951, 35.567898, 50.383106>,  <42.284023, 35.486614, 50.786324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706951, 35.567898, 50.383106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815250, 35.946823, 50.451561>,  <41.880230, 36.174179, 50.492634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815250, 35.946823, 50.451561>,  <41.706951, 35.567898, 50.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815250, 35.946823, 50.451561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136430, 0.213744, -0.967316,
		-0.952933, 0.238552, 0.187113,
		0.270750, 0.947315, 0.171138,
		41.896477, 36.231018, 50.502903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163620, 36.046307, 50.123329>,  <41.706951, 35.567898, 50.383106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163620, 36.046307, 50.123329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488155, 36.274837, 50.172836>,  <41.682877, 36.411957, 50.202541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488155, 36.274837, 50.172836>,  <41.163620, 36.046307, 50.123329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488155, 36.274837, 50.172836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001273, 0.213450, -0.976953,
		-0.584578, 0.792480, 0.173907,
		0.811337, 0.571326, 0.123769,
		41.731556, 36.446236, 50.209969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108051, 36.610519, 49.711201>,  <41.163620, 36.046307, 50.123329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108051, 36.610519, 49.711201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500267, 36.569572, 49.778206>,  <41.735596, 36.545006, 49.818409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500267, 36.569572, 49.778206>,  <41.108051, 36.610519, 49.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500267, 36.569572, 49.778206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184985, 0.196120, -0.962973,
		0.065724, 0.975222, 0.211240,
		0.980541, -0.102367, 0.167512,
		41.794430, 36.538864, 49.828461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361225, 37.195122, 49.373852>,  <41.108051, 36.610519, 49.711201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361225, 37.195122, 49.373852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641815, 36.912098, 49.408009>,  <41.810169, 36.742283, 49.428501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641815, 36.912098, 49.408009>,  <41.361225, 37.195122, 49.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641815, 36.912098, 49.408009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309373, 0.194375, -0.930863,
		0.642047, 0.679391, 0.355250,
		0.701472, -0.707563, 0.085387,
		41.852257, 36.699829, 49.433624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006035, 37.469234, 49.116955>,  <41.361225, 37.195122, 49.373852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006035, 37.469234, 49.116955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095982, 37.080929, 49.083363>,  <42.149948, 36.847946, 49.063210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095982, 37.080929, 49.083363>,  <42.006035, 37.469234, 49.116955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095982, 37.080929, 49.083363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436127, 0.177345, -0.882237,
		0.871337, 0.161760, 0.463256,
		0.224867, -0.970764, -0.083979,
		42.163441, 36.789700, 49.058170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760292, 37.444706, 48.916122>,  <42.006035, 37.469234, 49.116955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760292, 37.444706, 48.916122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562244, 37.111095, 48.818748>,  <42.443417, 36.910931, 48.760323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562244, 37.111095, 48.818748>,  <42.760292, 37.444706, 48.916122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562244, 37.111095, 48.818748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316474, 0.087816, -0.944528,
		0.809135, -0.544698, 0.220467,
		-0.495122, -0.834022, -0.243438,
		42.413708, 36.860889, 48.745716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279099, 37.073219, 48.535614>,  <42.760292, 37.444706, 48.916122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279099, 37.073219, 48.535614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923939, 36.913319, 48.444550>,  <42.710842, 36.817379, 48.389912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923939, 36.913319, 48.444550>,  <43.279099, 37.073219, 48.535614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923939, 36.913319, 48.444550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221474, 0.062293, -0.973174,
		0.403209, -0.914505, 0.033224,
		-0.887903, -0.399751, -0.227657,
		42.657566, 36.793392, 48.376251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375156, 36.738564, 47.939121>,  <43.279099, 37.073219, 48.535614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375156, 36.738564, 47.939121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975365, 36.748234, 47.930588>,  <42.735489, 36.754036, 47.925468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975365, 36.748234, 47.930588>,  <43.375156, 36.738564, 47.939121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975365, 36.748234, 47.930588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020528, -0.033204, -0.999238,
		-0.024830, -0.999157, 0.032691,
		-0.999481, 0.024140, -0.021336,
		42.675522, 36.755486, 47.924187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268368, 36.291466, 47.326363>,  <43.375156, 36.738564, 47.939121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268368, 36.291466, 47.326363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901211, 36.426300, 47.410118>,  <42.680916, 36.507202, 47.460373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901211, 36.426300, 47.410118>,  <43.268368, 36.291466, 47.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901211, 36.426300, 47.410118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352879, -0.451994, -0.819254,
		-0.181513, -0.825879, 0.533832,
		-0.917894, 0.337083, 0.209393,
		42.625843, 36.527424, 47.472935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882557, 35.799858, 47.053959>,  <43.268368, 36.291466, 47.326363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882557, 35.799858, 47.053959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626789, 36.107159, 47.066231>,  <42.473328, 36.291538, 47.073593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626789, 36.107159, 47.066231>,  <42.882557, 35.799858, 47.053959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626789, 36.107159, 47.066231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443764, -0.336168, -0.830701,
		-0.627872, -0.544778, 0.555872,
		-0.639415, 0.768250, 0.030682,
		42.434963, 36.337635, 47.075436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205231, 35.515686, 47.046467>,  <42.882557, 35.799858, 47.053959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205231, 35.515686, 47.046467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195992, 35.887184, 46.898468>,  <42.190449, 36.110085, 46.809669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195992, 35.887184, 46.898468>,  <42.205231, 35.515686, 47.046467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195992, 35.887184, 46.898468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528901, -0.325410, -0.783819,
		-0.848369, 0.177589, 0.498730,
		-0.023094, 0.928747, -0.369995,
		42.189064, 36.165810, 46.787468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430637, 35.641579, 46.855492>,  <42.205231, 35.515686, 47.046467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430637, 35.641579, 46.855492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658699, 35.901695, 46.654675>,  <41.795536, 36.057766, 46.534184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658699, 35.901695, 46.654675>,  <41.430637, 35.641579, 46.855492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658699, 35.901695, 46.654675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533436, -0.171710, -0.828228,
		-0.624797, 0.740023, 0.248989,
		0.570154, 0.650294, -0.502038,
		41.829746, 36.096783, 46.504063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028851, 35.864601, 46.358410>,  <41.430637, 35.641579, 46.855492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028851, 35.864601, 46.358410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372452, 36.006214, 46.210476>,  <41.578613, 36.091183, 46.121716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372452, 36.006214, 46.210476>,  <41.028851, 35.864601, 46.358410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372452, 36.006214, 46.210476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388408, -0.019994, -0.921271,
		-0.333554, 0.935019, 0.120334,
		0.859000, 0.354032, -0.369838,
		41.630154, 36.112423, 46.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850731, 36.405602, 45.915257>,  <41.028851, 35.864601, 46.358410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850731, 36.405602, 45.915257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215214, 36.284752, 45.803238>,  <41.433903, 36.212242, 45.736027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215214, 36.284752, 45.803238>,  <40.850731, 36.405602, 45.915257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215214, 36.284752, 45.803238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313715, -0.068312, -0.947057,
		0.266995, 0.950819, -0.157026,
		0.911206, -0.302121, -0.280048,
		41.488575, 36.194115, 45.719223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889843, 36.801674, 45.291313>,  <40.850731, 36.405602, 45.915257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889843, 36.801674, 45.291313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176788, 36.523209, 45.280411>,  <41.348957, 36.356129, 45.273869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176788, 36.523209, 45.280411>,  <40.889843, 36.801674, 45.291313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176788, 36.523209, 45.280411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173877, -0.141018, -0.974618,
		0.674654, 0.703893, -0.222208,
		0.717363, -0.696167, -0.027252,
		41.391998, 36.314358, 45.272236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184727, 36.837029, 44.611996>,  <40.889843, 36.801674, 45.291313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184727, 36.837029, 44.611996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315220, 36.478073, 44.730831>,  <41.393517, 36.262699, 44.802132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315220, 36.478073, 44.730831>,  <41.184727, 36.837029, 44.611996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315220, 36.478073, 44.730831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033792, -0.325151, -0.945058,
		0.944686, 0.298267, -0.136399,
		0.326230, -0.897392, 0.297087,
		41.413090, 36.208855, 44.819958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844109, 36.723049, 44.169922>,  <41.184727, 36.837029, 44.611996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844109, 36.723049, 44.169922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682728, 36.381233, 44.300755>,  <41.585899, 36.176144, 44.379253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682728, 36.381233, 44.300755>,  <41.844109, 36.723049, 44.169922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682728, 36.381233, 44.300755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022358, -0.348156, -0.937170,
		0.914726, -0.385419, 0.121359,
		-0.403455, -0.854541, 0.327085,
		41.561691, 36.124870, 44.398880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219769, 36.171322, 43.794067>,  <41.844109, 36.723049, 44.169922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219769, 36.171322, 43.794067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870079, 36.022793, 43.919197>,  <41.660267, 35.933674, 43.994274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870079, 36.022793, 43.919197>,  <42.219769, 36.171322, 43.794067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870079, 36.022793, 43.919197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155511, -0.396204, -0.904897,
		0.459950, -0.839727, 0.288625,
		-0.874221, -0.371323, 0.312821,
		41.607811, 35.911396, 44.013042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060127, 35.361748, 43.420673>,  <42.219769, 36.171322, 43.794067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060127, 35.361748, 43.420673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703648, 35.486923, 43.552025>,  <41.489761, 35.562031, 43.630836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703648, 35.486923, 43.552025>,  <42.060127, 35.361748, 43.420673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703648, 35.486923, 43.552025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453453, -0.595348, -0.663281,
		-0.012068, -0.740020, 0.672477,
		-0.891198, 0.312941, 0.328379,
		41.436287, 35.580807, 43.650539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542267, 34.820755, 43.377426>,  <42.060127, 35.361748, 43.420673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542267, 34.820755, 43.377426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298763, 35.135712, 43.416283>,  <41.152660, 35.324684, 43.439594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298763, 35.135712, 43.416283>,  <41.542267, 34.820755, 43.377426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298763, 35.135712, 43.416283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556309, -0.336360, -0.759856,
		-0.565629, -0.516606, 0.642793,
		-0.608756, 0.787389, 0.097137,
		41.116135, 35.371929, 43.445423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763000, 34.644623, 43.534939>,  <41.542267, 34.820755, 43.377426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763000, 34.644623, 43.534939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822926, 34.986145, 43.335510>,  <40.858879, 35.191059, 43.215851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822926, 34.986145, 43.335510>,  <40.763000, 34.644623, 43.534939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822926, 34.986145, 43.335510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564192, -0.340283, -0.752260,
		-0.811938, 0.393990, 0.430730,
		0.149812, 0.853803, -0.498575,
		40.867870, 35.242287, 43.185936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108814, 34.664574, 43.094429>,  <40.763000, 34.644623, 43.534939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108814, 34.664574, 43.094429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319366, 34.967113, 42.939064>,  <40.445698, 35.148636, 42.845844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319366, 34.967113, 42.939064>,  <40.108814, 34.664574, 43.094429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319366, 34.967113, 42.939064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459079, -0.131688, -0.878581,
		-0.715663, 0.640777, 0.277907,
		0.526377, 0.756349, -0.388411,
		40.477280, 35.194019, 42.822540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637756, 35.158611, 42.692955>,  <40.108814, 34.664574, 43.094429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637756, 35.158611, 42.692955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004097, 35.236698, 42.552608>,  <40.223900, 35.283550, 42.468399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004097, 35.236698, 42.552608>,  <39.637756, 35.158611, 42.692955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004097, 35.236698, 42.552608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376213, 0.111916, -0.919749,
		-0.140280, 0.974354, 0.175941,
		0.915852, 0.195214, -0.350865,
		40.278854, 35.295261, 42.447350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583927, 35.647655, 42.277676>,  <39.637756, 35.158611, 42.692955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583927, 35.647655, 42.277676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924259, 35.477352, 42.154507>,  <40.128460, 35.375168, 42.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924259, 35.477352, 42.154507>,  <39.583927, 35.647655, 42.277676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924259, 35.477352, 42.154507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320169, 0.044580, -0.946311,
		0.416630, 0.903737, -0.098385,
		0.850830, -0.425761, -0.307922,
		40.179508, 35.349625, 42.062130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548923, 35.806267, 41.584713>,  <39.583927, 35.647655, 42.277676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548923, 35.806267, 41.584713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866474, 35.564034, 41.562664>,  <40.057003, 35.418694, 41.549435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866474, 35.564034, 41.562664>,  <39.548923, 35.806267, 41.584713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866474, 35.564034, 41.562664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095763, -0.034994, -0.994789,
		0.600497, 0.795014, -0.085773,
		0.793872, -0.605581, -0.055119,
		40.104637, 35.382359, 41.546127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951324, 36.108372, 41.165291>,  <39.548923, 35.806267, 41.584713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951324, 36.108372, 41.165291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072201, 35.728394, 41.133579>,  <40.144726, 35.500408, 41.114552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072201, 35.728394, 41.133579>,  <39.951324, 36.108372, 41.165291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072201, 35.728394, 41.133579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311260, -0.019722, -0.950120,
		0.900998, 0.311796, -0.301640,
		0.302192, -0.949944, -0.079281,
		40.162857, 35.443409, 41.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426319, 36.034138, 40.640095>,  <39.951324, 36.108372, 41.165291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426319, 36.034138, 40.640095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315853, 35.653214, 40.691998>,  <40.249573, 35.424660, 40.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315853, 35.653214, 40.691998>,  <40.426319, 36.034138, 40.640095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315853, 35.653214, 40.691998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028652, -0.126786, -0.991516,
		0.960682, -0.277542, 0.007728,
		-0.276167, -0.952311, 0.129753,
		40.233002, 35.367519, 40.730923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874500, 35.634384, 40.162399>,  <40.426319, 36.034138, 40.640095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874500, 35.634384, 40.162399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554508, 35.413910, 40.257259>,  <40.362514, 35.281628, 40.314175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554508, 35.413910, 40.257259>,  <40.874500, 35.634384, 40.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554508, 35.413910, 40.257259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261534, -0.035410, -0.964544,
		0.540036, -0.833634, -0.115825,
		-0.799976, -0.551181, 0.237147,
		40.314514, 35.248554, 40.328403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996822, 35.114410, 39.763809>,  <40.874500, 35.634384, 40.162399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996822, 35.114410, 39.763809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608208, 35.037472, 39.819130>,  <40.375038, 34.991306, 39.852322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608208, 35.037472, 39.819130>,  <40.996822, 35.114410, 39.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608208, 35.037472, 39.819130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158058, 0.091407, -0.983190,
		0.176477, -0.977059, -0.119208,
		-0.971532, -0.192353, 0.138301,
		40.316750, 34.979767, 39.860619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759636, 34.737000, 39.175648>,  <40.996822, 35.114410, 39.763809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759636, 34.737000, 39.175648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413685, 34.874729, 39.321754>,  <40.206112, 34.957367, 39.409416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413685, 34.874729, 39.321754>,  <40.759636, 34.737000, 39.175648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413685, 34.874729, 39.321754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384777, 0.012557, -0.922924,
		-0.322377, -0.938765, 0.121629,
		-0.864882, 0.344330, 0.365263,
		40.154221, 34.978027, 39.431332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309906, 34.251045, 38.862057>,  <40.759636, 34.737000, 39.175648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309906, 34.251045, 38.862057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099918, 34.574360, 38.968704>,  <39.973927, 34.768349, 39.032692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099918, 34.574360, 38.968704>,  <40.309906, 34.251045, 38.862057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099918, 34.574360, 38.968704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402123, 0.040545, -0.914688,
		-0.750137, -0.587396, 0.303745,
		-0.524968, 0.808284, 0.266620,
		39.942429, 34.816845, 39.048691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691452, 34.147995, 38.676487>,  <40.309906, 34.251045, 38.862057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691452, 34.147995, 38.676487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737045, 34.544441, 38.703892>,  <39.764400, 34.782310, 38.720333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737045, 34.544441, 38.703892>,  <39.691452, 34.147995, 38.676487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737045, 34.544441, 38.703892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466991, 0.114319, -0.876841,
		-0.876885, 0.067953, 0.475873,
		0.113986, 0.991117, 0.068511,
		39.771240, 34.841778, 38.724445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052372, 34.445240, 38.417786>,  <39.691452, 34.147995, 38.676487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052372, 34.445240, 38.417786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306374, 34.754219, 38.421722>,  <39.458775, 34.939606, 38.424084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306374, 34.754219, 38.421722>,  <39.052372, 34.445240, 38.417786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306374, 34.754219, 38.421722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347166, 0.296727, -0.889623,
		-0.690104, 0.561500, 0.456590,
		0.635005, 0.772445, 0.009838,
		39.496876, 34.985954, 38.424675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688805, 34.970104, 38.300961>,  <39.052372, 34.445240, 38.417786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688805, 34.970104, 38.300961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054272, 35.080688, 38.181782>,  <39.273552, 35.147041, 38.110275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054272, 35.080688, 38.181782>,  <38.688805, 34.970104, 38.300961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054272, 35.080688, 38.181782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389768, 0.388093, -0.835144,
		-0.115258, 0.879176, 0.462346,
		0.913672, 0.276465, -0.297944,
		39.328373, 35.163628, 38.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671288, 35.655468, 38.058308>,  <38.688805, 34.970104, 38.300961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671288, 35.655468, 38.058308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003017, 35.517570, 37.882412>,  <39.202057, 35.434834, 37.776875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003017, 35.517570, 37.882412>,  <38.671288, 35.655468, 38.058308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003017, 35.517570, 37.882412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180499, 0.579501, -0.794732,
		0.528806, 0.738465, 0.418371,
		0.829328, -0.344744, -0.439735,
		39.251816, 35.414146, 37.750492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982025, 36.276745, 37.831238>,  <38.671288, 35.655468, 38.058308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982025, 36.276745, 37.831238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128185, 35.958118, 37.638588>,  <39.215881, 35.766941, 37.522999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128185, 35.958118, 37.638588>,  <38.982025, 36.276745, 37.831238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128185, 35.958118, 37.638588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147503, 0.461317, -0.874888,
		0.919090, 0.390725, 0.051069,
		0.365400, -0.796568, -0.481625,
		39.237804, 35.719147, 37.494099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368568, 36.579929, 37.260639>,  <38.982025, 36.276745, 37.831238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368568, 36.579929, 37.260639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372517, 36.194679, 37.153095>,  <39.374886, 35.963528, 37.088570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372517, 36.194679, 37.153095>,  <39.368568, 36.579929, 37.260639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372517, 36.194679, 37.153095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018720, 0.268646, -0.963057,
		0.999776, 0.014537, -0.015379,
		0.009868, -0.963129, -0.268858,
		39.375477, 35.905739, 37.072437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564045, 36.714607, 36.648956>,  <39.368568, 36.579929, 37.260639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564045, 36.714607, 36.648956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412548, 36.345261, 36.623833>,  <39.321651, 36.123653, 36.608757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412548, 36.345261, 36.623833>,  <39.564045, 36.714607, 36.648956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412548, 36.345261, 36.623833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120392, 0.116440, -0.985874,
		0.917640, -0.365827, -0.155267,
		-0.378739, -0.923370, -0.062808,
		39.298927, 36.068249, 36.604992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873028, 36.337719, 36.008709>,  <39.564045, 36.714607, 36.648956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873028, 36.337719, 36.008709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504753, 36.204830, 36.090652>,  <39.283787, 36.125095, 36.139820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504753, 36.204830, 36.090652>,  <39.873028, 36.337719, 36.008709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504753, 36.204830, 36.090652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261338, 0.134875, -0.955778,
		0.289899, -0.933508, -0.211000,
		-0.920685, -0.332222, 0.204861,
		39.228546, 36.105164, 36.152111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664242, 35.653683, 35.584091>,  <39.873028, 36.337719, 36.008709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664242, 35.653683, 35.584091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384541, 35.922951, 35.680336>,  <39.216721, 36.084511, 35.738083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384541, 35.922951, 35.680336>,  <39.664242, 35.653683, 35.584091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384541, 35.922951, 35.680336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038431, 0.300690, -0.952947,
		-0.713841, -0.675598, -0.184388,
		-0.699253, 0.673167, 0.240609,
		39.174767, 36.124901, 35.752518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102257, 35.541134, 35.086086>,  <39.664242, 35.653683, 35.584091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102257, 35.541134, 35.086086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118217, 35.912521, 35.233788>,  <39.127792, 36.135353, 35.322407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118217, 35.912521, 35.233788>,  <39.102257, 35.541134, 35.086086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118217, 35.912521, 35.233788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093924, 0.364423, -0.926485,
		-0.994780, 0.071650, -0.072664,
		0.039902, 0.928473, 0.369251,
		39.130188, 36.191063, 35.344563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560898, 36.023911, 34.868771>,  <39.102257, 35.541134, 35.086086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560898, 36.023911, 34.868771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926804, 36.165874, 34.945969>,  <39.146347, 36.251053, 34.992287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926804, 36.165874, 34.945969>,  <38.560898, 36.023911, 34.868771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926804, 36.165874, 34.945969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179473, 0.070969, -0.981200,
		-0.361931, 0.932204, 0.001224,
		0.914765, 0.354907, 0.192991,
		39.201233, 36.272346, 35.003864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723942, 36.663486, 34.410168>,  <38.560898, 36.023911, 34.868771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723942, 36.663486, 34.410168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075130, 36.513428, 34.529110>,  <39.285843, 36.423393, 34.600475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075130, 36.513428, 34.529110>,  <38.723942, 36.663486, 34.410168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075130, 36.513428, 34.529110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371784, 0.143079, -0.917227,
		0.301553, 0.915855, 0.265095,
		0.877976, -0.375151, 0.297354,
		39.338524, 36.400883, 34.618317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324543, 37.176674, 34.204193>,  <38.723942, 36.663486, 34.410168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324543, 37.176674, 34.204193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450771, 36.797501, 34.221348>,  <39.526508, 36.569996, 34.231640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450771, 36.797501, 34.221348>,  <39.324543, 37.176674, 34.204193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450771, 36.797501, 34.221348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555283, 0.147833, -0.818417,
		0.769463, 0.282086, 0.573022,
		0.315575, -0.947931, 0.042886,
		39.545444, 36.513123, 34.234215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036877, 37.128178, 33.996284>,  <39.324543, 37.176674, 34.204193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036877, 37.128178, 33.996284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865570, 36.782505, 33.890621>,  <39.762787, 36.575100, 33.827225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865570, 36.782505, 33.890621>,  <40.036877, 37.128178, 33.996284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865570, 36.782505, 33.890621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521857, 0.002131, -0.853030,
		0.737737, -0.503173, 0.450068,
		-0.428263, -0.864183, -0.264156,
		39.737091, 36.523251, 33.811375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637314, 36.914474, 33.709827>,  <40.036877, 37.128178, 33.996284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637314, 36.914474, 33.709827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318493, 36.713661, 33.575562>,  <40.127201, 36.593174, 33.495003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318493, 36.713661, 33.575562>,  <40.637314, 36.914474, 33.709827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318493, 36.713661, 33.575562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355594, 0.059093, -0.932770,
		0.488121, -0.862825, 0.131421,
		-0.797051, -0.502037, -0.335660,
		40.079376, 36.563049, 33.474865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788788, 36.435162, 33.183155>,  <40.637314, 36.914474, 33.709827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788788, 36.435162, 33.183155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408516, 36.528076, 33.100925>,  <40.180355, 36.583824, 33.051586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408516, 36.528076, 33.100925>,  <40.788788, 36.435162, 33.183155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408516, 36.528076, 33.100925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229661, 0.081610, -0.969843,
		-0.208502, -0.969218, -0.130931,
		-0.950675, 0.232284, -0.205576,
		40.123314, 36.597763, 33.039253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495613, 36.706860, 33.581017>,  <40.788788, 36.435162, 33.183155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495613, 36.706860, 33.581017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893074, 36.713722, 33.536560>,  <42.131550, 36.717842, 33.509884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893074, 36.713722, 33.536560>,  <41.495613, 36.706860, 33.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893074, 36.713722, 33.536560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103650, 0.523206, -0.845880,
		0.043635, 0.852033, 0.521665,
		0.993656, 0.017161, -0.111143,
		42.191170, 36.718872, 33.503216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797047, 37.402344, 33.754341>,  <41.495613, 36.706860, 33.581017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797047, 37.402344, 33.754341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034595, 37.217293, 33.491039>,  <42.177124, 37.106262, 33.333057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034595, 37.217293, 33.491039>,  <41.797047, 37.402344, 33.754341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034595, 37.217293, 33.491039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160026, 0.733882, -0.660158,
		0.788488, 0.497383, 0.361796,
		0.593867, -0.462630, -0.658251,
		42.212757, 37.078503, 33.293564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145603, 38.009483, 33.368263>,  <41.797047, 37.402344, 33.754341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145603, 38.009483, 33.368263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206341, 37.671970, 33.162357>,  <42.242783, 37.469463, 33.038815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206341, 37.671970, 33.162357>,  <42.145603, 38.009483, 33.368263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206341, 37.671970, 33.162357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206144, 0.482314, -0.851397,
		0.966668, 0.235399, -0.100702,
		0.151848, -0.843778, -0.514764,
		42.251896, 37.418839, 33.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486202, 38.234474, 32.835960>,  <42.145603, 38.009483, 33.368263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486202, 38.234474, 32.835960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372585, 37.880581, 32.688141>,  <42.304417, 37.668243, 32.599449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372585, 37.880581, 32.688141>,  <42.486202, 38.234474, 32.835960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372585, 37.880581, 32.688141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155509, 0.422824, -0.892769,
		0.946118, -0.196114, -0.257683,
		-0.284039, -0.884736, -0.369544,
		42.287373, 37.615158, 32.577278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840893, 38.137638, 32.277794>,  <42.486202, 38.234474, 32.835960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840893, 38.137638, 32.277794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544838, 37.874428, 32.222378>,  <42.367203, 37.716503, 32.189129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544838, 37.874428, 32.222378>,  <42.840893, 38.137638, 32.277794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544838, 37.874428, 32.222378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262136, 0.472062, -0.841690,
		0.619254, -0.586652, -0.521884,
		-0.740141, -0.658025, -0.138544,
		42.322796, 37.677021, 32.180813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918995, 37.919609, 31.549343>,  <42.840893, 38.137638, 32.277794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918995, 37.919609, 31.549343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538837, 37.855072, 31.655710>,  <42.310741, 37.816349, 31.719530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538837, 37.855072, 31.655710>,  <42.918995, 37.919609, 31.549343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538837, 37.855072, 31.655710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309120, 0.584709, -0.750040,
		-0.034472, -0.795037, -0.605580,
		-0.950398, -0.161342, 0.265918,
		42.253719, 37.806671, 31.735485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513103, 37.721729, 30.952843>,  <42.918995, 37.919609, 31.549343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513103, 37.721729, 30.952843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252556, 37.854553, 31.225740>,  <42.096226, 37.934246, 31.389479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252556, 37.854553, 31.225740>,  <42.513103, 37.721729, 30.952843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252556, 37.854553, 31.225740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453284, 0.550777, -0.700841,
		-0.608485, -0.765756, -0.208241,
		-0.651367, 0.332059, 0.682244,
		42.057144, 37.954170, 31.430414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818638, 37.633354, 30.637022>,  <42.513103, 37.721729, 30.952843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818638, 37.633354, 30.637022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764465, 37.900593, 30.929682>,  <41.731960, 38.060936, 31.105278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764465, 37.900593, 30.929682>,  <41.818638, 37.633354, 30.637022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764465, 37.900593, 30.929682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552145, 0.562263, -0.615626,
		-0.822675, -0.487352, 0.292735,
		-0.135432, 0.668093, 0.731649,
		41.723835, 38.101021, 31.149176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189026, 37.870121, 30.494028>,  <41.818638, 37.633354, 30.637022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189026, 37.870121, 30.494028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341892, 38.137356, 30.749405>,  <41.433613, 38.297695, 30.902630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341892, 38.137356, 30.749405>,  <41.189026, 37.870121, 30.494028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341892, 38.137356, 30.749405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474925, 0.734658, -0.484483,
		-0.792712, -0.118057, 0.598055,
		0.382169, 0.668087, 0.638441,
		41.456543, 38.337780, 30.940937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625046, 38.361103, 30.726774>,  <41.189026, 37.870121, 30.494028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625046, 38.361103, 30.726774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973785, 38.554665, 30.757036>,  <41.183029, 38.670803, 30.775194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973785, 38.554665, 30.757036>,  <40.625046, 38.361103, 30.726774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973785, 38.554665, 30.757036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374181, 0.757740, -0.534620,
		-0.316032, 0.437796, 0.841699,
		0.871844, 0.483905, 0.075655,
		41.235340, 38.699837, 30.779732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450371, 39.200470, 30.801466>,  <40.625046, 38.361103, 30.726774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450371, 39.200470, 30.801466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834084, 39.155300, 30.697903>,  <41.064312, 39.128197, 30.635765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834084, 39.155300, 30.697903>,  <40.450371, 39.200470, 30.801466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834084, 39.155300, 30.697903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097025, 0.729105, -0.677489,
		0.265278, 0.675021, 0.688457,
		0.959278, -0.112925, -0.258910,
		41.121868, 39.121422, 30.620230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661362, 39.899570, 30.573769>,  <40.450371, 39.200470, 30.801466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661362, 39.899570, 30.573769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929268, 39.651424, 30.410519>,  <41.090012, 39.502537, 30.312569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929268, 39.651424, 30.410519>,  <40.661362, 39.899570, 30.573769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929268, 39.651424, 30.410519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060801, 0.593579, -0.802476,
		0.740082, 0.512654, 0.435276,
		0.669763, -0.620363, -0.408127,
		41.130196, 39.465317, 30.288080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165127, 40.293873, 30.313334>,  <40.661362, 39.899570, 30.573769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165127, 40.293873, 30.313334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254795, 39.955856, 30.119156>,  <41.308598, 39.753048, 30.002649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254795, 39.955856, 30.119156>,  <41.165127, 40.293873, 30.313334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254795, 39.955856, 30.119156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218242, 0.529004, -0.820076,
		0.949798, 0.077896, 0.303012,
		0.224175, -0.845037, -0.485446,
		41.322048, 39.702347, 29.973522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722679, 40.450935, 30.004835>,  <41.165127, 40.293873, 30.313334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722679, 40.450935, 30.004835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628696, 40.115509, 29.808222>,  <41.572308, 39.914253, 29.690254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628696, 40.115509, 29.808222>,  <41.722679, 40.450935, 30.004835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628696, 40.115509, 29.808222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160068, 0.465407, -0.870503,
		0.958735, -0.283211, 0.024875,
		-0.234959, -0.838563, -0.491535,
		41.558208, 39.863941, 29.660761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292915, 40.223984, 29.534561>,  <41.722679, 40.450935, 30.004835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292915, 40.223984, 29.534561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942703, 40.098255, 29.387785>,  <41.732574, 40.022820, 29.299719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942703, 40.098255, 29.387785>,  <42.292915, 40.223984, 29.534561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942703, 40.098255, 29.387785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168630, 0.512911, -0.841717,
		0.452775, -0.798828, -0.396067,
		-0.875533, -0.314319, -0.366940,
		41.680042, 40.003960, 29.277702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419506, 39.931854, 28.780790>,  <42.292915, 40.223984, 29.534561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419506, 39.931854, 28.780790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025368, 39.999531, 28.772215>,  <41.788883, 40.040138, 28.767071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025368, 39.999531, 28.772215>,  <42.419506, 39.931854, 28.780790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025368, 39.999531, 28.772215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086123, 0.385149, -0.918827,
		-0.147204, -0.907212, -0.394078,
		-0.985350, 0.169194, -0.021436,
		41.729763, 40.050289, 28.765783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078259, 39.610538, 28.124126>,  <42.419506, 39.931854, 28.780790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078259, 39.610538, 28.124126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892124, 39.926346, 28.284189>,  <41.780445, 40.115829, 28.380226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892124, 39.926346, 28.284189>,  <42.078259, 39.610538, 28.124126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892124, 39.926346, 28.284189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133684, 0.509588, -0.849970,
		-0.874981, -0.342027, -0.342676,
		-0.465336, 0.789517, 0.400156,
		41.752522, 40.163200, 28.404236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176178, 40.031315, 27.590483>,  <42.078259, 39.610538, 28.124126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176178, 40.031315, 27.590483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007298, 40.302364, 27.831337>,  <41.905968, 40.464996, 27.975849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007298, 40.302364, 27.831337>,  <42.176178, 40.031315, 27.590483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007298, 40.302364, 27.831337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282364, 0.729502, -0.622975,
		-0.861403, -0.093001, -0.499335,
		-0.422203, 0.677627, 0.602135,
		41.880638, 40.505653, 28.011978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945950, 40.555260, 27.181536>,  <42.176178, 40.031315, 27.590483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945950, 40.555260, 27.181536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962757, 40.736572, 27.537687>,  <41.972843, 40.845360, 27.751377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962757, 40.736572, 27.537687>,  <41.945950, 40.555260, 27.181536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962757, 40.736572, 27.537687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221985, 0.864655, -0.450660,
		-0.974144, 0.216588, -0.064286,
		0.042023, 0.453279, 0.890378,
		41.975365, 40.872555, 27.804800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368721, 41.130550, 27.207209>,  <41.945950, 40.555260, 27.181536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368721, 41.130550, 27.207209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650505, 41.229164, 27.473429>,  <41.819576, 41.288330, 27.633162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650505, 41.229164, 27.473429>,  <41.368721, 41.130550, 27.207209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650505, 41.229164, 27.473429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043409, 0.950944, -0.306301,
		-0.708414, 0.186886, 0.680604,
		0.704460, 0.246532, 0.665550,
		41.861843, 41.303123, 27.673094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288918, 41.813667, 27.280197>,  <41.368721, 41.130550, 27.207209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288918, 41.813667, 27.280197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643658, 41.764347, 27.458317>,  <41.856503, 41.734756, 27.565187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643658, 41.764347, 27.458317>,  <41.288918, 41.813667, 27.280197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643658, 41.764347, 27.458317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206743, 0.967774, -0.143776,
		-0.413220, 0.219570, 0.883764,
		0.886852, -0.123301, 0.445298,
		41.909714, 41.727356, 27.591906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249973, 42.293407, 27.774334>,  <41.288918, 41.813667, 27.280197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249973, 42.293407, 27.774334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610760, 42.177334, 27.646435>,  <41.827232, 42.107689, 27.569695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610760, 42.177334, 27.646435>,  <41.249973, 42.293407, 27.774334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610760, 42.177334, 27.646435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213123, 0.943211, -0.254819,
		0.375536, 0.161693, 0.912594,
		0.901971, -0.290188, -0.319749,
		41.881351, 42.090279, 27.550510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774055, 42.743805, 27.965239>,  <41.249973, 42.293407, 27.774334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774055, 42.743805, 27.965239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943817, 42.574001, 27.645321>,  <42.045673, 42.472118, 27.453371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943817, 42.574001, 27.645321>,  <41.774055, 42.743805, 27.965239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943817, 42.574001, 27.645321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228536, 0.904911, -0.359036,
		0.876157, -0.030404, 0.481066,
		0.424406, -0.424513, -0.799793,
		42.071140, 42.446648, 27.405382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474621, 43.103786, 27.795862>,  <41.774055, 42.743805, 27.965239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474621, 43.103786, 27.795862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296467, 42.949169, 27.472820>,  <42.189575, 42.856400, 27.278996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296467, 42.949169, 27.472820>,  <42.474621, 43.103786, 27.795862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296467, 42.949169, 27.472820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075260, 0.882650, -0.463966,
		0.892177, -0.267418, -0.364016,
		-0.445372, -0.386544, -0.807606,
		42.162853, 42.833206, 27.230539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523956, 43.515915, 28.389975>,  <42.474621, 43.103786, 27.795862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523956, 43.515915, 28.389975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685375, 43.716339, 28.696199>,  <42.782227, 43.836594, 28.879934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685375, 43.716339, 28.696199>,  <42.523956, 43.515915, 28.389975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685375, 43.716339, 28.696199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475609, -0.829668, 0.292313,
		0.781630, 0.246147, -0.573120,
		0.403547, 0.501062, 0.765563,
		42.806438, 43.866657, 28.925869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261330, 43.363976, 28.397953>,  <42.523956, 43.515915, 28.389975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261330, 43.363976, 28.397953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102310, 43.452442, 28.754164>,  <43.006897, 43.505524, 28.967890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102310, 43.452442, 28.754164>,  <43.261330, 43.363976, 28.397953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102310, 43.452442, 28.754164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544810, -0.724034, 0.423033,
		0.738332, 0.653346, 0.167348,
		-0.397552, 0.221167, 0.890527,
		42.983044, 43.518791, 29.021322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838142, 43.320137, 28.808743>,  <43.261330, 43.363976, 28.397953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838142, 43.320137, 28.808743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562248, 43.266323, 29.093325>,  <43.396713, 43.234035, 29.264074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562248, 43.266323, 29.093325>,  <43.838142, 43.320137, 28.808743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562248, 43.266323, 29.093325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679628, -0.459213, 0.572039,
		0.249750, 0.878080, 0.408168,
		-0.689732, -0.134536, 0.711456,
		43.355328, 43.225964, 29.306761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103710, 43.654415, 29.378160>,  <43.838142, 43.320137, 28.808743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103710, 43.654415, 29.378160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859016, 43.344639, 29.442692>,  <43.712200, 43.158775, 29.481411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859016, 43.344639, 29.442692>,  <44.103710, 43.654415, 29.378160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859016, 43.344639, 29.442692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682329, -0.413377, 0.602948,
		-0.400255, 0.478924, 0.781299,
		-0.611737, -0.774436, 0.161327,
		43.675495, 43.112309, 29.491091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701115, 44.221992, 29.448538>,  <44.103710, 43.654415, 29.378160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701115, 44.221992, 29.448538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708344, 44.478500, 29.755379>,  <43.712681, 44.632404, 29.939484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708344, 44.478500, 29.755379>,  <43.701115, 44.221992, 29.448538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708344, 44.478500, 29.755379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344589, -0.724216, 0.597302,
		0.938580, 0.253538, -0.234065,
		0.018075, 0.641272, 0.767101,
		43.713764, 44.670883, 29.985510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370205, 44.286022, 29.702814>,  <43.701115, 44.221992, 29.448538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370205, 44.286022, 29.702814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082333, 44.328030, 29.977343>,  <43.909611, 44.353233, 30.142059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082333, 44.328030, 29.977343>,  <44.370205, 44.286022, 29.702814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082333, 44.328030, 29.977343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391860, -0.754572, 0.526371,
		0.573158, 0.647759, 0.501895,
		-0.719677, 0.105021, 0.686320,
		43.866428, 44.359535, 30.183239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564247, 44.398743, 30.370039>,  <44.370205, 44.286022, 29.702814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564247, 44.398743, 30.370039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198654, 44.244659, 30.421036>,  <43.979298, 44.152210, 30.451633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198654, 44.244659, 30.421036>,  <44.564247, 44.398743, 30.370039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198654, 44.244659, 30.421036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350984, -0.592908, 0.724755,
		-0.203589, 0.707161, 0.677108,
		-0.913981, -0.385206, 0.127492,
		43.924461, 44.129097, 30.459284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432705, 44.403599, 31.067822>,  <44.564247, 44.398743, 30.370039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432705, 44.403599, 31.067822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177761, 44.140987, 30.906456>,  <44.024796, 43.983421, 30.809637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177761, 44.140987, 30.906456>,  <44.432705, 44.403599, 31.067822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177761, 44.140987, 30.906456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103298, -0.591595, 0.799590,
		-0.763614, 0.467952, 0.444876,
		-0.637356, -0.656533, -0.403412,
		43.986553, 43.944027, 30.785433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940025, 44.243679, 31.595270>,  <44.432705, 44.403599, 31.067822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940025, 44.243679, 31.595270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935253, 43.945156, 31.329071>,  <43.932388, 43.766045, 31.169352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935253, 43.945156, 31.329071>,  <43.940025, 44.243679, 31.595270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935253, 43.945156, 31.329071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210499, -0.652507, 0.727959,
		-0.977521, -0.131401, 0.164882,
		-0.011932, -0.746303, -0.665499,
		43.931675, 43.721264, 31.129421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524738, 43.803558, 31.832520>,  <43.940025, 44.243679, 31.595270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524738, 43.803558, 31.832520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743538, 43.571243, 31.591362>,  <43.874817, 43.431854, 31.446667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743538, 43.571243, 31.591362>,  <43.524738, 43.803558, 31.832520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743538, 43.571243, 31.591362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099504, -0.669975, 0.735685,
		-0.831197, -0.462411, -0.308688,
		0.547002, -0.580783, -0.602893,
		43.907639, 43.397007, 31.410494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425716, 43.092873, 32.049873>,  <43.524738, 43.803558, 31.832520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425716, 43.092873, 32.049873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732704, 43.012482, 31.806364>,  <43.916897, 42.964249, 31.660259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732704, 43.012482, 31.806364>,  <43.425716, 43.092873, 32.049873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732704, 43.012482, 31.806364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321496, -0.700900, 0.636694,
		-0.554647, -0.684360, -0.473306,
		0.767468, -0.200974, -0.608771,
		43.962944, 42.952190, 31.623734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399742, 42.374725, 31.817892>,  <43.425716, 43.092873, 32.049873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399742, 42.374725, 31.817892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785011, 42.450909, 31.741982>,  <44.016174, 42.496620, 31.696436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785011, 42.450909, 31.741982>,  <43.399742, 42.374725, 31.817892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785011, 42.450909, 31.741982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265440, -0.785955, 0.558406,
		-0.042802, -0.588218, -0.807569,
		0.963177, 0.190461, -0.189777,
		44.073963, 42.508045, 31.685049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703663, 41.884350, 31.457689>,  <43.399742, 42.374725, 31.817892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703663, 41.884350, 31.457689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987892, 42.063324, 31.674904>,  <44.158428, 42.170708, 31.805233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987892, 42.063324, 31.674904>,  <43.703663, 41.884350, 31.457689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987892, 42.063324, 31.674904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179752, -0.861594, 0.474706,
		0.680278, -0.239701, -0.692651,
		0.710571, 0.447437, 0.543037,
		44.201065, 42.197556, 31.837814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256130, 41.498650, 31.311909>,  <43.703663, 41.884350, 31.457689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256130, 41.498650, 31.311909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322765, 41.703362, 31.649033>,  <44.362747, 41.826191, 31.851307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322765, 41.703362, 31.649033>,  <44.256130, 41.498650, 31.311909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322765, 41.703362, 31.649033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336495, -0.832946, 0.439286,
		0.926834, 0.210422, -0.310969,
		0.166585, 0.511784, 0.842809,
		44.372742, 41.856895, 31.901875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923340, 41.319603, 31.383879>,  <44.256130, 41.498650, 31.311909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923340, 41.319603, 31.383879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839630, 41.441601, 31.755508>,  <44.789406, 41.514801, 31.978487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839630, 41.441601, 31.755508>,  <44.923340, 41.319603, 31.383879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839630, 41.441601, 31.755508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234527, -0.906727, 0.350489,
		0.949316, 0.291241, 0.118225,
		-0.209275, 0.304998, 0.929075,
		44.776848, 41.533100, 32.034229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395470, 40.938648, 31.795815>,  <44.923340, 41.319603, 31.383879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395470, 40.938648, 31.795815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116730, 41.058952, 32.056259>,  <44.949486, 41.131134, 32.212524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116730, 41.058952, 32.056259>,  <45.395470, 40.938648, 31.795815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116730, 41.058952, 32.056259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128440, -0.840822, 0.525854,
		0.705627, 0.450068, 0.547293,
		-0.696846, 0.300762, 0.651113,
		44.907677, 41.149181, 32.251595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665695, 40.769558, 32.437943>,  <45.395470, 40.938648, 31.795815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665695, 40.769558, 32.437943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270077, 40.801594, 32.487537>,  <45.032707, 40.820816, 32.517292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270077, 40.801594, 32.487537>,  <45.665695, 40.769558, 32.437943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270077, 40.801594, 32.487537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012858, -0.883540, 0.468179,
		0.147041, 0.461457, 0.874892,
		-0.989047, 0.080091, 0.123983,
		44.973362, 40.825623, 32.524731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535580, 40.601551, 33.179443>,  <45.665695, 40.769558, 32.437943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535580, 40.601551, 33.179443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209053, 40.532600, 32.958931>,  <45.013138, 40.491230, 32.826622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209053, 40.532600, 32.958931>,  <45.535580, 40.601551, 33.179443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209053, 40.532600, 32.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178845, -0.832091, 0.525014,
		-0.549220, 0.527171, 0.648419,
		-0.816316, -0.172381, -0.551283,
		44.964157, 40.480885, 32.793545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064930, 40.521671, 33.666615>,  <45.535580, 40.601551, 33.179443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064930, 40.521671, 33.666615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939545, 40.355061, 33.325264>,  <44.864315, 40.255096, 33.120453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939545, 40.355061, 33.325264>,  <45.064930, 40.521671, 33.666615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939545, 40.355061, 33.325264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062924, -0.887582, 0.456333,
		-0.947513, 0.196741, 0.252014,
		-0.313463, -0.416523, -0.853375,
		44.845505, 40.230103, 33.069252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648136, 40.051254, 33.886909>,  <45.064930, 40.521671, 33.666615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648136, 40.051254, 33.886909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731926, 39.928505, 33.515545>,  <44.782200, 39.854855, 33.292725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731926, 39.928505, 33.515545>,  <44.648136, 40.051254, 33.886909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731926, 39.928505, 33.515545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075562, -0.951719, 0.297525,
		-0.974890, 0.007828, -0.222552,
		0.209478, -0.306870, -0.928412,
		44.794769, 39.836445, 33.237022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260162, 39.374187, 33.667690>,  <44.648136, 40.051254, 33.886909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260162, 39.374187, 33.667690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562439, 39.369057, 33.405769>,  <44.743805, 39.365978, 33.248615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562439, 39.369057, 33.405769>,  <44.260162, 39.374187, 33.667690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562439, 39.369057, 33.405769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064087, -0.993562, 0.093421,
		-0.651789, -0.112562, -0.750001,
		0.755688, -0.012826, -0.654806,
		44.789146, 39.365208, 33.209328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045654, 38.962650, 33.154583>,  <44.260162, 39.374187, 33.667690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045654, 38.962650, 33.154583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445213, 38.979931, 33.162018>,  <44.684948, 38.990299, 33.166477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445213, 38.979931, 33.162018>,  <44.045654, 38.962650, 33.154583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445213, 38.979931, 33.162018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042359, -0.998149, 0.043649,
		0.020440, -0.042813, -0.998874,
		0.998893, 0.043204, 0.018589,
		44.744881, 38.992893, 33.167595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237633, 38.515430, 32.589565>,  <44.045654, 38.962650, 33.154583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237633, 38.515430, 32.589565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547867, 38.563152, 32.837509>,  <44.734009, 38.591785, 32.986275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547867, 38.563152, 32.837509>,  <44.237633, 38.515430, 32.589565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547867, 38.563152, 32.837509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098546, -0.992821, 0.067782,
		0.623498, 0.008514, -0.781779,
		0.775589, 0.119303, 0.619861,
		44.780544, 38.598942, 33.023468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678619, 38.062225, 32.302601>,  <44.237633, 38.515430, 32.589565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678619, 38.062225, 32.302601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779217, 38.096962, 32.688183>,  <44.839573, 38.117805, 32.919533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779217, 38.096962, 32.688183>,  <44.678619, 38.062225, 32.302601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779217, 38.096962, 32.688183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143612, -0.988289, 0.051570,
		0.957146, 0.125466, -0.261016,
		0.251489, 0.086845, 0.963956,
		44.854664, 38.123016, 32.977371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153423, 37.577374, 32.462814>,  <44.678619, 38.062225, 32.302601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153423, 37.577374, 32.462814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042294, 37.663395, 32.837315>,  <44.975616, 37.715008, 33.062016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042294, 37.663395, 32.837315>,  <45.153423, 37.577374, 32.462814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042294, 37.663395, 32.837315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064462, -0.968250, 0.241529,
		0.958466, 0.127456, 0.255143,
		-0.277827, 0.215050, 0.936251,
		44.958946, 37.727909, 33.118191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610264, 37.259480, 32.929718>,  <45.153423, 37.577374, 32.462814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610264, 37.259480, 32.929718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273575, 37.306973, 33.140392>,  <45.071560, 37.335468, 33.266796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273575, 37.306973, 33.140392>,  <45.610264, 37.259480, 32.929718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273575, 37.306973, 33.140392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086534, -0.933238, 0.348682,
		0.532924, 0.339071, 0.775257,
		-0.841727, 0.118735, 0.526686,
		45.021057, 37.342594, 33.298397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852779, 37.119579, 33.558094>,  <45.610264, 37.259480, 32.929718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852779, 37.119579, 33.558094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456688, 37.088207, 33.604225>,  <45.219032, 37.069386, 33.631905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456688, 37.088207, 33.604225>,  <45.852779, 37.119579, 33.558094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456688, 37.088207, 33.604225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128440, -0.835108, 0.534882,
		0.054361, 0.544466, 0.837019,
		-0.990226, -0.078430, 0.115329,
		45.159618, 37.064678, 33.638824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775764, 36.957466, 34.213791>,  <45.852779, 37.119579, 33.558094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775764, 36.957466, 34.213791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449638, 36.838314, 34.015182>,  <45.253963, 36.766823, 33.896019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449638, 36.838314, 34.015182>,  <45.775764, 36.957466, 34.213791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449638, 36.838314, 34.015182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172105, -0.943431, 0.283402,
		-0.552853, 0.145608, 0.820458,
		-0.815312, -0.297885, -0.496519,
		45.205044, 36.748947, 33.866226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776810, 36.272137, 34.492107>,  <45.775764, 36.957466, 34.213791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776810, 36.272137, 34.492107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866318, 35.903461, 34.365356>,  <45.920021, 35.682255, 34.289307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866318, 35.903461, 34.365356>,  <45.776810, 36.272137, 34.492107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866318, 35.903461, 34.365356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948133, 0.281167, -0.148285,
		0.225770, -0.267263, 0.936802,
		0.223767, -0.921692, -0.316880,
		45.933449, 35.626953, 34.270294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363689, 35.974606, 34.795635>,  <45.776810, 36.272137, 34.492107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363689, 35.974606, 34.795635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393585, 35.809612, 34.432476>,  <46.411522, 35.710617, 34.214581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393585, 35.809612, 34.432476>,  <46.363689, 35.974606, 34.795635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393585, 35.809612, 34.432476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844589, 0.510227, -0.162288,
		0.530173, -0.754668, 0.386512,
		0.074736, -0.412485, -0.907894,
		46.416004, 35.685867, 34.160107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992504, 35.678993, 34.719112>,  <46.363689, 35.974606, 34.795635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992504, 35.678993, 34.719112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843636, 35.811184, 34.372177>,  <46.754314, 35.890499, 34.164017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843636, 35.811184, 34.372177>,  <46.992504, 35.678993, 34.719112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843636, 35.811184, 34.372177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796554, 0.593394, -0.115699,
		0.476438, -0.733942, -0.484083,
		-0.372168, 0.330475, -0.867339,
		46.731987, 35.910328, 34.111977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279186, 35.311962, 35.356987>,  <46.992504, 35.678993, 34.719112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279186, 35.311962, 35.356987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561684, 35.072369, 35.206028>,  <47.731182, 34.928612, 35.115452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561684, 35.072369, 35.206028>,  <47.279186, 35.311962, 35.356987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.561684, 35.072369, 35.206028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141040, 0.403354, -0.904109,
		0.693775, 0.691752, 0.200387,
		0.706246, -0.598986, -0.377402,
		47.773556, 34.892673, 35.092808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.181873, 36.604763, 45.688084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099579, 36.213467, 45.698807>,  <36.050201, 35.978687, 45.705242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099579, 36.213467, 45.698807>,  <36.181873, 36.604763, 45.688084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099579, 36.213467, 45.698807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013166, -0.030157, -0.999458,
		0.978519, -0.205270, 0.019084,
		-0.205735, -0.978240, 0.026807,
		36.037857, 35.919994, 45.706848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559135, 36.340210, 45.091404>,  <36.181873, 36.604763, 45.688084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559135, 36.340210, 45.091404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307381, 36.049236, 45.200741>,  <36.156326, 35.874653, 45.266342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307381, 36.049236, 45.200741>,  <36.559135, 36.340210, 45.091404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307381, 36.049236, 45.200741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090133, -0.417711, -0.904098,
		0.771848, -0.544389, 0.328467,
		-0.629386, -0.727432, 0.273342,
		36.118565, 35.831005, 45.282742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786491, 35.852894, 44.756329>,  <36.559135, 36.340210, 45.091404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786491, 35.852894, 44.756329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421974, 35.718964, 44.852188>,  <36.203262, 35.638603, 44.909702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421974, 35.718964, 44.852188>,  <36.786491, 35.852894, 44.756329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421974, 35.718964, 44.852188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082430, -0.421879, -0.902897,
		0.403417, -0.842560, 0.356856,
		-0.911296, -0.334829, 0.239646,
		36.148586, 35.618515, 44.924080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750469, 35.206589, 44.512077>,  <36.786491, 35.852894, 44.756329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750469, 35.206589, 44.512077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372116, 35.334942, 44.531399>,  <36.145103, 35.411953, 44.542992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372116, 35.334942, 44.531399>,  <36.750469, 35.206589, 44.512077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372116, 35.334942, 44.531399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171037, -0.366516, -0.914556,
		-0.275761, -0.873328, 0.401566,
		-0.945887, 0.320881, 0.048301,
		36.088348, 35.431206, 44.545887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299519, 34.609173, 44.311790>,  <36.750469, 35.206589, 44.512077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299519, 34.609173, 44.311790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108387, 34.955654, 44.253311>,  <35.993710, 35.163544, 44.218224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108387, 34.955654, 44.253311>,  <36.299519, 34.609173, 44.311790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108387, 34.955654, 44.253311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443751, -0.381643, -0.810823,
		-0.758134, -0.322554, 0.566737,
		-0.477825, 0.866203, -0.146203,
		35.965038, 35.215515, 44.209450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617683, 34.392029, 44.150719>,  <36.299519, 34.609173, 44.311790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617683, 34.392029, 44.150719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616840, 34.757030, 43.987095>,  <35.616337, 34.976032, 43.888920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616840, 34.757030, 43.987095>,  <35.617683, 34.392029, 44.150719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616840, 34.757030, 43.987095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535512, -0.346488, -0.770178,
		-0.844525, 0.217433, 0.489388,
		-0.002105, 0.912507, -0.409055,
		35.616207, 35.030781, 43.864380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909695, 34.499531, 44.028015>,  <35.617683, 34.392029, 44.150719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909695, 34.499531, 44.028015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115685, 34.760983, 43.806179>,  <35.239277, 34.917854, 43.673077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115685, 34.760983, 43.806179>,  <34.909695, 34.499531, 44.028015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115685, 34.760983, 43.806179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549165, -0.245213, -0.798929,
		-0.658196, 0.715990, 0.232672,
		0.514971, 0.653628, -0.554595,
		35.270176, 34.957069, 43.639801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487331, 34.703465, 43.479282>,  <34.909695, 34.499531, 44.028015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487331, 34.703465, 43.479282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835697, 34.861359, 43.362190>,  <35.044716, 34.956097, 43.291935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835697, 34.861359, 43.362190>,  <34.487331, 34.703465, 43.479282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835697, 34.861359, 43.362190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304505, -0.034080, -0.951901,
		-0.385727, 0.918162, 0.090518,
		0.870914, 0.394737, -0.292730,
		35.096970, 34.979778, 43.274372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274788, 35.092754, 42.963821>,  <34.487331, 34.703465, 43.479282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274788, 35.092754, 42.963821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666977, 35.050613, 42.897408>,  <34.902290, 35.025330, 42.857559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666977, 35.050613, 42.897408>,  <34.274788, 35.092754, 42.963821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666977, 35.050613, 42.897408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163265, 0.034433, -0.985981,
		0.109597, 0.993838, 0.016560,
		0.980476, -0.105357, -0.166033,
		34.961121, 35.019005, 42.847599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443382, 35.525036, 42.413704>,  <34.274788, 35.092754, 42.963821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443382, 35.525036, 42.413704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.752018, 35.270592, 42.415260>,  <34.937199, 35.117928, 42.416195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.752018, 35.270592, 42.415260>,  <34.443382, 35.525036, 42.413704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752018, 35.270592, 42.415260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002414, -0.003194, -0.999992,
		0.636115, 0.771594, -0.000929,
		0.771590, -0.636108, 0.003894,
		34.983494, 35.079758, 42.416428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057858, 35.891014, 42.134502>,  <34.443382, 35.525036, 42.413704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057858, 35.891014, 42.134502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055958, 35.492996, 42.094761>,  <35.054817, 35.254185, 42.070915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055958, 35.492996, 42.094761>,  <35.057858, 35.891014, 42.134502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055958, 35.492996, 42.094761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163686, 0.097244, -0.981708,
		0.986501, -0.020923, 0.162412,
		-0.004747, -0.995041, -0.099356,
		35.054535, 35.194485, 42.064953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669617, 35.701061, 41.696632>,  <35.057858, 35.891014, 42.134502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669617, 35.701061, 41.696632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494514, 35.341785, 41.680538>,  <35.389454, 35.126221, 41.670883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494514, 35.341785, 41.680538>,  <35.669617, 35.701061, 41.696632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494514, 35.341785, 41.680538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116035, -0.012065, -0.993172,
		0.891574, -0.439436, 0.109503,
		-0.437757, -0.898193, -0.040233,
		35.363186, 35.072327, 41.668468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035091, 35.313305, 41.169109>,  <35.669617, 35.701061, 41.696632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035091, 35.313305, 41.169109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679104, 35.132439, 41.192799>,  <35.465511, 35.023918, 41.207012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679104, 35.132439, 41.192799>,  <36.035091, 35.313305, 41.169109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679104, 35.132439, 41.192799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003941, -0.122229, -0.992494,
		0.456012, -0.883519, 0.106997,
		-0.889965, -0.452167, 0.059220,
		35.412113, 34.996788, 41.210564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136803, 34.889671, 40.661324>,  <36.035091, 35.313305, 41.169109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136803, 34.889671, 40.661324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744392, 34.907124, 40.736885>,  <35.508945, 34.917595, 40.782223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744392, 34.907124, 40.736885>,  <36.136803, 34.889671, 40.661324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744392, 34.907124, 40.736885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181512, 0.135706, -0.973980,
		-0.068127, -0.989788, -0.125212,
		-0.981026, 0.043627, 0.188904,
		35.450085, 34.920212, 40.793556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829906, 34.388866, 40.254410>,  <36.136803, 34.889671, 40.661324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829906, 34.388866, 40.254410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555523, 34.668709, 40.334415>,  <35.390892, 34.836617, 40.382420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555523, 34.668709, 40.334415>,  <35.829906, 34.388866, 40.254410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555523, 34.668709, 40.334415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202425, 0.080545, -0.975980,
		-0.698914, -0.709972, 0.086368,
		-0.685962, 0.699609, 0.200010,
		35.349735, 34.878590, 40.394417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289143, 34.316711, 39.756584>,  <35.829906, 34.388866, 40.254410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289143, 34.316711, 39.756584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205158, 34.683456, 39.892395>,  <35.154770, 34.903503, 39.973881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205158, 34.683456, 39.892395>,  <35.289143, 34.316711, 39.756584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205158, 34.683456, 39.892395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347663, 0.254561, -0.902402,
		-0.913809, -0.307509, 0.265312,
		-0.209959, 0.916862, 0.339530,
		35.142170, 34.958515, 39.994255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649513, 34.402966, 39.574753>,  <35.289143, 34.316711, 39.756584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649513, 34.402966, 39.574753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847237, 34.749706, 39.600735>,  <34.965870, 34.957752, 39.616325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847237, 34.749706, 39.600735>,  <34.649513, 34.402966, 39.574753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847237, 34.749706, 39.600735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294720, 0.237419, -0.925620,
		-0.817801, 0.438399, 0.372838,
		0.494309, 0.866856, 0.064956,
		34.995529, 35.009762, 39.620220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285378, 34.819366, 39.174168>,  <34.649513, 34.402966, 39.574753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285378, 34.819366, 39.174168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637470, 35.005718, 39.210274>,  <34.848724, 35.117531, 39.231937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637470, 35.005718, 39.210274>,  <34.285378, 34.819366, 39.174168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637470, 35.005718, 39.210274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077268, 0.328383, -0.941379,
		-0.468211, 0.821657, 0.325051,
		0.880232, 0.465880, 0.090264,
		34.901539, 35.145481, 39.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195015, 35.559792, 38.763084>,  <34.285378, 34.819366, 39.174168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195015, 35.559792, 38.763084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579929, 35.461342, 38.809441>,  <34.810879, 35.402271, 38.837254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579929, 35.461342, 38.809441>,  <34.195015, 35.559792, 38.763084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579929, 35.461342, 38.809441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206003, 0.381005, -0.901331,
		0.177686, 0.891211, 0.417338,
		0.962284, -0.246127, 0.115893,
		34.868614, 35.387505, 38.844208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519363, 36.192757, 38.516495>,  <34.195015, 35.559792, 38.763084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519363, 36.192757, 38.516495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769043, 35.881054, 38.494110>,  <34.918850, 35.694031, 38.480679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769043, 35.881054, 38.494110>,  <34.519363, 36.192757, 38.516495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769043, 35.881054, 38.494110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270188, 0.282529, -0.920422,
		0.733055, 0.559409, 0.386901,
		0.624203, -0.779255, -0.055963,
		34.956303, 35.647278, 38.477322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973366, 36.520855, 38.070156>,  <34.519363, 36.192757, 38.516495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973366, 36.520855, 38.070156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042831, 36.126942, 38.067558>,  <35.084511, 35.890594, 38.065998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042831, 36.126942, 38.067558>,  <34.973366, 36.520855, 38.070156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042831, 36.126942, 38.067558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519937, 0.097289, -0.848646,
		0.836365, 0.144001, 0.528921,
		0.173664, -0.984784, -0.006498,
		35.094933, 35.831505, 38.065609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563805, 36.594078, 37.531597>,  <34.973366, 36.520855, 38.070156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563805, 36.594078, 37.531597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908646, 36.505196, 37.349430>,  <36.115551, 36.451866, 37.240128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908646, 36.505196, 37.349430>,  <35.563805, 36.594078, 37.531597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908646, 36.505196, 37.349430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493331, 0.162675, 0.854495,
		-0.115790, -0.961333, 0.249865,
		0.862100, -0.222208, -0.455419,
		36.167274, 36.438534, 37.212803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041409, 36.009808, 37.807487>,  <35.563805, 36.594078, 37.531597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041409, 36.009808, 37.807487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290333, 36.265182, 37.626324>,  <36.439690, 36.418407, 37.517624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290333, 36.265182, 37.626324>,  <36.041409, 36.009808, 37.807487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290333, 36.265182, 37.626324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463323, 0.165928, 0.870517,
		0.630919, -0.751578, -0.192543,
		0.622313, 0.638435, -0.452910,
		36.477028, 36.456715, 37.490452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691284, 35.839737, 38.061920>,  <36.041409, 36.009808, 37.807487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691284, 35.839737, 38.061920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750114, 36.210403, 37.923550>,  <36.785412, 36.432804, 37.840527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750114, 36.210403, 37.923550>,  <36.691284, 35.839737, 38.061920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750114, 36.210403, 37.923550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514790, 0.226921, 0.826739,
		0.844607, -0.299673, -0.443662,
		0.147075, 0.926663, -0.345927,
		36.794235, 36.488403, 37.819771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387810, 36.001808, 38.238964>,  <36.691284, 35.839737, 38.061920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387810, 36.001808, 38.238964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227863, 36.363541, 38.179249>,  <37.131897, 36.580582, 38.143421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227863, 36.363541, 38.179249>,  <37.387810, 36.001808, 38.238964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227863, 36.363541, 38.179249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542044, 0.364653, 0.757110,
		0.739119, 0.221821, -0.636002,
		-0.399863, 0.904336, -0.149285,
		37.107903, 36.634842, 38.134464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957600, 36.495052, 38.385544>,  <37.387810, 36.001808, 38.238964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957600, 36.495052, 38.385544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618301, 36.705421, 38.410439>,  <37.414722, 36.831642, 38.425377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618301, 36.705421, 38.410439>,  <37.957600, 36.495052, 38.385544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618301, 36.705421, 38.410439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409653, 0.577111, 0.706490,
		0.335643, 0.624777, -0.704981,
		-0.848250, 0.525926, 0.062239,
		37.363827, 36.863197, 38.429111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115681, 37.169212, 38.284248>,  <37.957600, 36.495052, 38.385544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115681, 37.169212, 38.284248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765999, 37.158344, 38.478168>,  <37.556190, 37.151821, 38.594521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765999, 37.158344, 38.478168>,  <38.115681, 37.169212, 38.284248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765999, 37.158344, 38.478168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323119, 0.712709, 0.622607,
		-0.362437, 0.700933, -0.614274,
		-0.874205, -0.027173, 0.484797,
		37.503738, 37.150192, 38.623608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222862, 37.797184, 38.633320>,  <38.115681, 37.169212, 38.284248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222862, 37.797184, 38.633320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898563, 37.652027, 38.817062>,  <37.703983, 37.564934, 38.927307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898563, 37.652027, 38.817062>,  <38.222862, 37.797184, 38.633320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898563, 37.652027, 38.817062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202489, 0.562403, 0.801687,
		-0.549268, 0.742975, -0.382482,
		-0.810743, -0.362892, 0.459354,
		37.655342, 37.543159, 38.954868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752678, 38.362713, 38.789795>,  <38.222862, 37.797184, 38.633320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752678, 38.362713, 38.789795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696850, 38.060101, 39.045353>,  <37.663353, 37.878532, 39.198689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696850, 38.060101, 39.045353>,  <37.752678, 38.362713, 38.789795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696850, 38.060101, 39.045353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058478, 0.637786, 0.767991,
		-0.988484, 0.144549, -0.044776,
		-0.139570, -0.756528, 0.638894,
		37.654980, 37.833141, 39.237022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575569, 38.583241, 39.342735>,  <37.752678, 38.362713, 38.789795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575569, 38.583241, 39.342735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591431, 38.218502, 39.506180>,  <37.600948, 37.999660, 39.604248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591431, 38.218502, 39.506180>,  <37.575569, 38.583241, 39.342735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591431, 38.218502, 39.506180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192327, 0.394321, 0.898622,
		-0.980529, -0.114223, -0.159735,
		0.039657, -0.911846, 0.408612,
		37.603329, 37.944946, 39.628765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952774, 38.553192, 39.736866>,  <37.575569, 38.583241, 39.342735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952774, 38.553192, 39.736866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226490, 38.293842, 39.870350>,  <37.390720, 38.138233, 39.950439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226490, 38.293842, 39.870350>,  <36.952774, 38.553192, 39.736866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226490, 38.293842, 39.870350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027426, 0.480191, 0.876735,
		-0.728695, -0.590788, 0.346372,
		0.684289, -0.648372, 0.333710,
		37.431778, 38.099331, 39.970463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649441, 38.266743, 40.384441>,  <36.952774, 38.553192, 39.736866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649441, 38.266743, 40.384441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038452, 38.174480, 40.397030>,  <37.271858, 38.119125, 40.404583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038452, 38.174480, 40.397030>,  <36.649441, 38.266743, 40.384441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038452, 38.174480, 40.397030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016077, 0.201428, 0.979371,
		-0.232236, -0.951959, 0.199602,
		0.972527, -0.230654, 0.031475,
		37.330212, 38.105286, 40.406471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763523, 37.833359, 41.003529>,  <36.649441, 38.266743, 40.384441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763523, 37.833359, 41.003529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142433, 37.947266, 40.944782>,  <37.369781, 38.015610, 40.909534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142433, 37.947266, 40.944782>,  <36.763523, 37.833359, 41.003529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142433, 37.947266, 40.944782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063804, 0.281533, 0.957428,
		0.313998, -0.916321, 0.248520,
		0.947277, 0.284774, -0.146866,
		37.426617, 38.032696, 40.900723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305290, 37.515171, 41.518192>,  <36.763523, 37.833359, 41.003529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305290, 37.515171, 41.518192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439552, 37.860538, 41.367546>,  <37.520111, 38.067760, 41.277157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439552, 37.860538, 41.367546>,  <37.305290, 37.515171, 41.518192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439552, 37.860538, 41.367546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194838, 0.327528, 0.924534,
		0.921614, -0.383705, -0.058290,
		0.335657, 0.863421, -0.376615,
		37.540249, 38.119564, 41.254562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087738, 37.602577, 41.539181>,  <37.305290, 37.515171, 41.518192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087738, 37.602577, 41.539181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866096, 37.933884, 41.572521>,  <37.733112, 38.132668, 41.592525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866096, 37.933884, 41.572521>,  <38.087738, 37.602577, 41.539181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866096, 37.933884, 41.572521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220835, 0.049716, 0.974043,
		0.802623, 0.558125, -0.210457,
		-0.554101, 0.828266, 0.083350,
		37.699867, 38.182362, 41.597527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471256, 38.207943, 41.851315>,  <38.087738, 37.602577, 41.539181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471256, 38.207943, 41.851315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079494, 38.253529, 41.917984>,  <37.844437, 38.280880, 41.957985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079494, 38.253529, 41.917984>,  <38.471256, 38.207943, 41.851315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079494, 38.253529, 41.917984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159914, -0.066139, 0.984913,
		0.123272, 0.991280, 0.046551,
		-0.979404, 0.113968, 0.166673,
		37.785675, 38.287720, 41.967987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492138, 38.702320, 42.384350>,  <38.471256, 38.207943, 41.851315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492138, 38.702320, 42.384350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144810, 38.504131, 42.393581>,  <37.936413, 38.385220, 42.399120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144810, 38.504131, 42.393581>,  <38.492138, 38.702320, 42.384350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144810, 38.504131, 42.393581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052669, -0.045834, 0.997560,
		-0.493204, 0.867414, 0.065894,
		-0.868318, -0.495471, 0.023080,
		37.884315, 38.355492, 42.400505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185772, 38.963467, 43.022385>,  <38.492138, 38.702320, 42.384350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185772, 38.963467, 43.022385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964729, 38.641590, 42.935577>,  <37.832104, 38.448463, 42.883492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964729, 38.641590, 42.935577>,  <38.185772, 38.963467, 43.022385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964729, 38.641590, 42.935577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178508, -0.140072, 0.973917,
		-0.814103, 0.576930, -0.066240,
		-0.552603, -0.804694, -0.217020,
		37.798950, 38.400181, 42.870472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536831, 39.143257, 43.284405>,  <38.185772, 38.963467, 43.022385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536831, 39.143257, 43.284405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565220, 38.744473, 43.271610>,  <37.582253, 38.505199, 43.263931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565220, 38.744473, 43.271610>,  <37.536831, 39.143257, 43.284405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565220, 38.744473, 43.271610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112327, -0.039853, 0.992872,
		-0.991134, -0.066872, -0.114814,
		0.070971, -0.996966, -0.031988,
		37.586510, 38.445381, 43.262012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098072, 38.902187, 43.674225>,  <37.536831, 39.143257, 43.284405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098072, 38.902187, 43.674225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318913, 38.569408, 43.652134>,  <37.451416, 38.369743, 43.638878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318913, 38.569408, 43.652134>,  <37.098072, 38.902187, 43.674225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318913, 38.569408, 43.652134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094845, -0.128474, 0.987167,
		-0.828362, -0.539782, -0.149837,
		0.552105, -0.831943, -0.055227,
		37.484543, 38.319824, 43.635567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.717522, 38.447857, 44.060581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094360, 38.316090, 44.035488>,  <37.320465, 38.237030, 44.020432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094360, 38.316090, 44.035488>,  <36.717522, 38.447857, 44.060581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094360, 38.316090, 44.035488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004567, -0.174455, 0.984655,
		-0.335310, -0.927926, -0.162849,
		0.942097, -0.329421, -0.062734,
		37.376991, 38.217262, 44.016666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686718, 37.701546, 44.380234>,  <36.717522, 38.447857, 44.060581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686718, 37.701546, 44.380234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067860, 37.822815, 44.375240>,  <37.296543, 37.895576, 44.372242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067860, 37.822815, 44.375240>,  <36.686718, 37.701546, 44.380234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067860, 37.822815, 44.375240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160158, -0.467565, 0.869329,
		0.257715, -0.830344, -0.494077,
		0.952855, 0.303169, -0.012488,
		37.353718, 37.913765, 44.371494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012543, 37.138508, 44.649216>,  <36.686718, 37.701546, 44.380234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012543, 37.138508, 44.649216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269600, 37.441238, 44.696926>,  <37.423836, 37.622875, 44.725552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269600, 37.441238, 44.696926>,  <37.012543, 37.138508, 44.649216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269600, 37.441238, 44.696926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324239, -0.409702, 0.852651,
		0.694175, -0.509276, -0.508684,
		0.642643, 0.756824, 0.119278,
		37.462395, 37.668285, 44.732708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634613, 36.904575, 44.940548>,  <37.012543, 37.138508, 44.649216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634613, 36.904575, 44.940548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673882, 37.296616, 45.009560>,  <37.697445, 37.531841, 45.050964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673882, 37.296616, 45.009560>,  <37.634613, 36.904575, 44.940548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673882, 37.296616, 45.009560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404809, -0.197703, 0.892773,
		0.909116, -0.017807, -0.416162,
		0.098174, 0.980100, 0.172527,
		37.703335, 37.590645, 45.061317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166874, 36.939774, 45.200665>,  <37.634613, 36.904575, 44.940548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166874, 36.939774, 45.200665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982567, 37.271347, 45.327515>,  <37.871983, 37.470291, 45.403625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982567, 37.271347, 45.327515>,  <38.166874, 36.939774, 45.200665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982567, 37.271347, 45.327515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290410, -0.196828, 0.936440,
		0.838662, 0.523578, -0.150038,
		-0.460768, 0.828930, 0.317124,
		37.844337, 37.520027, 45.422653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667175, 37.237980, 45.748955>,  <38.166874, 36.939774, 45.200665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667175, 37.237980, 45.748955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.323421, 37.436958, 45.796284>,  <38.117168, 37.556347, 45.824680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.323421, 37.436958, 45.796284>,  <38.667175, 37.237980, 45.748955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323421, 37.436958, 45.796284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171599, 0.062593, 0.983176,
		0.481670, 0.865234, -0.139152,
		-0.859388, 0.497445, 0.118324,
		38.065605, 37.586193, 45.831779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865082, 37.720741, 46.097012>,  <38.667175, 37.237980, 45.748955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865082, 37.720741, 46.097012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472504, 37.711823, 46.173180>,  <38.236958, 37.706470, 46.218880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472504, 37.711823, 46.173180>,  <38.865082, 37.720741, 46.097012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472504, 37.711823, 46.173180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181902, 0.205490, 0.961606,
		-0.060574, 0.978405, -0.197621,
		-0.981449, -0.022301, 0.190421,
		38.178070, 37.705132, 46.230305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855530, 38.238754, 46.554668>,  <38.865082, 37.720741, 46.097012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855530, 38.238754, 46.554668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519207, 38.028069, 46.604660>,  <38.317413, 37.901657, 46.634655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519207, 38.028069, 46.604660>,  <38.855530, 38.238754, 46.554668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519207, 38.028069, 46.604660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100394, 0.075146, 0.992106,
		-0.531944, 0.846717, -0.010304,
		-0.840807, -0.526710, 0.124979,
		38.266964, 37.870056, 46.642155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362984, 38.587711, 46.981548>,  <38.855530, 38.238754, 46.554668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362984, 38.587711, 46.981548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236374, 38.212952, 47.040924>,  <38.160408, 37.988098, 47.076550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236374, 38.212952, 47.040924>,  <38.362984, 38.587711, 46.981548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236374, 38.212952, 47.040924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072647, 0.179965, 0.980987,
		-0.945797, 0.299726, -0.125027,
		-0.316528, -0.936898, 0.148436,
		38.141415, 37.931881, 47.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793552, 38.686443, 47.442905>,  <38.362984, 38.587711, 46.981548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793552, 38.686443, 47.442905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928265, 38.310989, 47.472702>,  <38.009090, 38.085716, 47.490578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928265, 38.310989, 47.472702>,  <37.793552, 38.686443, 47.442905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928265, 38.310989, 47.472702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002019, 0.078389, 0.996921,
		-0.941583, -0.335889, 0.024505,
		0.336776, -0.938634, 0.074488,
		38.029297, 38.029400, 47.495049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477299, 38.435944, 48.042049>,  <37.793552, 38.686443, 47.442905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477299, 38.435944, 48.042049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788147, 38.195293, 47.968155>,  <37.974655, 38.050903, 47.923820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788147, 38.195293, 47.968155>,  <37.477299, 38.435944, 48.042049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788147, 38.195293, 47.968155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147154, -0.111694, 0.982787,
		-0.611908, -0.790928, 0.001733,
		0.777120, -0.601630, -0.184734,
		38.021282, 38.014805, 47.912735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497139, 38.136105, 48.670357>,  <37.477299, 38.435944, 48.042049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497139, 38.136105, 48.670357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830193, 37.989861, 48.503956>,  <38.030025, 37.902115, 48.404114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830193, 37.989861, 48.503956>,  <37.497139, 38.136105, 48.670357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830193, 37.989861, 48.503956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473007, 0.078730, 0.877534,
		-0.288083, -0.927433, 0.238488,
		0.832630, -0.365609, -0.416001,
		38.079983, 37.880177, 48.379154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727825, 37.394760, 49.058388>,  <37.497139, 38.136105, 48.670357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727825, 37.394760, 49.058388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.041054, 37.563137, 48.875256>,  <38.228992, 37.664162, 48.765377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.041054, 37.563137, 48.875256>,  <37.727825, 37.394760, 49.058388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041054, 37.563137, 48.875256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576005, -0.213250, 0.789141,
		0.234548, -0.881666, -0.409453,
		0.783075, 0.420938, -0.457827,
		38.275978, 37.689419, 48.737907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206917, 36.866360, 49.175632>,  <37.727825, 37.394760, 49.058388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206917, 36.866360, 49.175632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398392, 37.199848, 49.065529>,  <38.513275, 37.399940, 48.999466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398392, 37.199848, 49.065529>,  <38.206917, 36.866360, 49.175632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398392, 37.199848, 49.065529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712071, -0.185248, 0.677228,
		0.513631, -0.520179, -0.682346,
		0.478684, 0.833725, -0.275255,
		38.541996, 37.449966, 48.982952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919407, 36.742077, 49.212162>,  <38.206917, 36.866360, 49.175632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919407, 36.742077, 49.212162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920757, 37.141281, 49.237354>,  <38.921570, 37.380802, 49.252472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920757, 37.141281, 49.237354>,  <38.919407, 36.742077, 49.212162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920757, 37.141281, 49.237354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671733, -0.048923, 0.739176,
		0.740785, 0.039810, -0.670561,
		0.003379, 0.998009, 0.062983,
		38.921772, 37.440685, 49.256248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658798, 36.848156, 49.271179>,  <38.919407, 36.742077, 49.212162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658798, 36.848156, 49.271179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465908, 37.179230, 49.385998>,  <39.350174, 37.377876, 49.454887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465908, 37.179230, 49.385998>,  <39.658798, 36.848156, 49.271179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465908, 37.179230, 49.385998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443159, -0.052173, 0.894924,
		0.755694, 0.558758, -0.341638,
		-0.482221, 0.827688, 0.287046,
		39.321243, 37.427536, 49.472111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260807, 37.290276, 49.351486>,  <39.658798, 36.848156, 49.271179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260807, 37.290276, 49.351486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.957531, 37.409580, 49.583416>,  <39.775566, 37.481163, 49.722572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.957531, 37.409580, 49.583416>,  <40.260807, 37.290276, 49.351486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957531, 37.409580, 49.583416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625481, 0.081479, 0.775974,
		0.184197, 0.951001, -0.248330,
		-0.758186, 0.298258, 0.579825,
		39.730076, 37.499058, 49.757362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679501, 37.639019, 49.888626>,  <40.260807, 37.290276, 49.351486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679501, 37.639019, 49.888626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305462, 37.647747, 50.030113>,  <40.081039, 37.652985, 50.115005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305462, 37.647747, 50.030113>,  <40.679501, 37.639019, 49.888626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305462, 37.647747, 50.030113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352522, 0.159636, 0.922087,
		-0.036344, 0.986935, -0.156968,
		-0.935098, 0.021822, 0.353718,
		40.024933, 37.654293, 50.136230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518784, 38.246567, 50.275742>,  <40.679501, 37.639019, 49.888626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518784, 38.246567, 50.275742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281242, 37.968544, 50.437843>,  <40.138718, 37.801731, 50.535107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281242, 37.968544, 50.437843>,  <40.518784, 38.246567, 50.275742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281242, 37.968544, 50.437843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411921, 0.170020, 0.895217,
		-0.691131, 0.698560, 0.185342,
		-0.593851, -0.695059, 0.405258,
		40.103088, 37.760025, 50.559422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187290, 38.529827, 50.939335>,  <40.518784, 38.246567, 50.275742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187290, 38.529827, 50.939335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172951, 38.131966, 50.978081>,  <40.164345, 37.893250, 51.001328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172951, 38.131966, 50.978081>,  <40.187290, 38.529827, 50.939335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172951, 38.131966, 50.978081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387633, 0.075496, 0.918717,
		-0.921116, 0.070486, 0.382854,
		-0.035852, -0.994652, 0.096864,
		40.162193, 37.833569, 51.007141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074677, 38.472462, 51.608074>,  <40.187290, 38.529827, 50.939335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074677, 38.472462, 51.608074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186584, 38.102993, 51.503342>,  <40.253727, 37.881310, 51.440502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186584, 38.102993, 51.503342>,  <40.074677, 38.472462, 51.608074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186584, 38.102993, 51.503342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456611, -0.111890, 0.882603,
		-0.844534, -0.366477, 0.390457,
		0.279766, -0.923675, -0.261832,
		40.270515, 37.825890, 51.424793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666367, 37.974174, 52.047848>,  <40.074677, 38.472462, 51.608074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666367, 37.974174, 52.047848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025078, 37.835571, 51.937778>,  <40.240303, 37.752411, 51.871735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025078, 37.835571, 51.937778>,  <39.666367, 37.974174, 52.047848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025078, 37.835571, 51.937778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281495, -0.033053, 0.958993,
		-0.341394, -0.937465, 0.067899,
		0.896778, -0.346507, -0.275175,
		40.294113, 37.731621, 51.855225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911575, 37.373138, 52.414165>,  <39.666367, 37.974174, 52.047848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911575, 37.373138, 52.414165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.235851, 37.579277, 52.303028>,  <40.430416, 37.702961, 52.236343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.235851, 37.579277, 52.303028>,  <39.911575, 37.373138, 52.414165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235851, 37.579277, 52.303028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306289, 0.031138, 0.951429,
		0.498964, -0.856418, -0.132600,
		0.810692, 0.515343, -0.277848,
		40.479057, 37.733879, 52.219673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223892, 37.057220, 52.512753>,  <39.911575, 37.373138, 52.414165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223892, 37.057220, 52.512753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311108, 36.910374, 52.151051>,  <39.363438, 36.822266, 51.934029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311108, 36.910374, 52.151051>,  <39.223892, 37.057220, 52.512753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311108, 36.910374, 52.151051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911733, 0.253895, -0.322924,
		0.348138, 0.894852, -0.279357,
		0.218042, -0.367121, -0.904257,
		39.376518, 36.800236, 51.879772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076653, 36.397938, 52.349747>,  <39.223892, 37.057220, 52.512753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076653, 36.397938, 52.349747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043808, 36.089573, 52.602398>,  <39.024101, 35.904552, 52.753986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043808, 36.089573, 52.602398>,  <39.076653, 36.397938, 52.349747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043808, 36.089573, 52.602398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664317, -0.430099, -0.611308,
		0.742927, -0.469793, -0.476816,
		-0.082110, -0.770915, 0.631624,
		39.019176, 35.858299, 52.791885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198032, 35.897865, 51.939087>,  <39.076653, 36.397938, 52.349747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198032, 35.897865, 51.939087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003765, 35.771732, 52.265202>,  <38.887207, 35.696053, 52.460873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003765, 35.771732, 52.265202>,  <39.198032, 35.897865, 51.939087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003765, 35.771732, 52.265202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774502, -0.277224, -0.568590,
		0.405310, -0.907588, -0.109584,
		-0.485666, -0.315328, 0.815290,
		38.858067, 35.677135, 52.509789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086269, 35.168652, 51.847443>,  <39.198032, 35.897865, 51.939087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086269, 35.168652, 51.847443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808464, 35.299938, 52.103546>,  <38.641781, 35.378712, 52.257206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808464, 35.299938, 52.103546>,  <39.086269, 35.168652, 51.847443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808464, 35.299938, 52.103546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716327, -0.232185, -0.658002,
		-0.067309, -0.915622, 0.396366,
		-0.694511, 0.328217, 0.640256,
		38.600109, 35.398403, 52.295624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620758, 34.603256, 51.860744>,  <39.086269, 35.168652, 51.847443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620758, 34.603256, 51.860744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434628, 34.935989, 51.981758>,  <38.322948, 35.135628, 52.054367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434628, 34.935989, 51.981758>,  <38.620758, 34.603256, 51.860744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434628, 34.935989, 51.981758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715385, -0.152163, -0.681961,
		-0.521241, -0.533765, 0.665885,
		-0.465330, 0.831830, 0.302534,
		38.295029, 35.185539, 52.072517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993633, 34.482670, 51.656017>,  <38.620758, 34.603256, 51.860744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993633, 34.482670, 51.656017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976002, 34.876801, 51.721962>,  <37.965424, 35.113281, 51.761528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976002, 34.876801, 51.721962>,  <37.993633, 34.482670, 51.656017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976002, 34.876801, 51.721962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738789, 0.078937, -0.669298,
		-0.672494, -0.151302, 0.724472,
		-0.044079, 0.985331, 0.164865,
		37.962776, 35.172401, 51.771423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242428, 34.641685, 51.779816>,  <37.993633, 34.482670, 51.656017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242428, 34.641685, 51.779816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447926, 34.957775, 51.646179>,  <37.571224, 35.147427, 51.565998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447926, 34.957775, 51.646179>,  <37.242428, 34.641685, 51.779816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447926, 34.957775, 51.646179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614743, 0.067425, -0.785841,
		-0.598460, 0.609104, 0.520421,
		0.513748, 0.790219, -0.334091,
		37.602051, 35.194839, 51.545952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777531, 34.917233, 51.388550>,  <37.242428, 34.641685, 51.779816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777531, 34.917233, 51.388550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120052, 35.098030, 51.288601>,  <37.325565, 35.206509, 51.228630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120052, 35.098030, 51.288601>,  <36.777531, 34.917233, 51.388550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120052, 35.098030, 51.288601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296695, 0.034496, -0.954349,
		-0.422744, 0.891352, 0.163644,
		0.856306, 0.451997, -0.249877,
		37.376945, 35.233631, 51.213638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497234, 35.534412, 50.982395>,  <36.777531, 34.917233, 51.388550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497234, 35.534412, 50.982395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880577, 35.488377, 50.877850>,  <37.110580, 35.460754, 50.815121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880577, 35.488377, 50.877850>,  <36.497234, 35.534412, 50.982395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880577, 35.488377, 50.877850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217056, 0.301232, -0.928518,
		0.185593, 0.946581, 0.263706,
		0.958354, -0.115088, -0.261368,
		37.168083, 35.453850, 50.799438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674377, 36.106400, 50.562775>,  <36.497234, 35.534412, 50.982395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674377, 36.106400, 50.562775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972252, 35.865692, 50.447311>,  <37.150974, 35.721268, 50.378033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972252, 35.865692, 50.447311>,  <36.674377, 36.106400, 50.562775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972252, 35.865692, 50.447311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203397, 0.207310, -0.956897,
		0.635672, 0.771297, 0.031982,
		0.744682, -0.601768, -0.288660,
		37.195656, 35.685162, 50.360714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168133, 36.399746, 50.072338>,  <36.674377, 36.106400, 50.562775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168133, 36.399746, 50.072338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232384, 36.011044, 50.003178>,  <37.270935, 35.777824, 49.961681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232384, 36.011044, 50.003178>,  <37.168133, 36.399746, 50.072338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232384, 36.011044, 50.003178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067960, 0.163871, -0.984138,
		0.984673, 0.169829, -0.039718,
		0.160627, -0.971753, -0.172900,
		37.280571, 35.719517, 49.951309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448936, 36.522785, 49.449020>,  <37.168133, 36.399746, 50.072338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448936, 36.522785, 49.449020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364883, 36.132008, 49.464111>,  <37.314449, 35.897541, 49.473167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364883, 36.132008, 49.464111>,  <37.448936, 36.522785, 49.449020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364883, 36.132008, 49.464111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082639, -0.020706, -0.996364,
		0.974174, -0.212489, -0.076383,
		-0.210135, -0.976944, 0.037731,
		37.301842, 35.838924, 49.475430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886810, 36.236496, 48.942337>,  <37.448936, 36.522785, 49.449020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886810, 36.236496, 48.942337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598949, 35.969494, 49.018791>,  <37.426231, 35.809292, 49.064663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598949, 35.969494, 49.018791>,  <37.886810, 36.236496, 48.942337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598949, 35.969494, 49.018791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221870, -0.039773, -0.974265,
		0.657930, -0.743541, -0.119476,
		-0.719654, -0.667506, 0.191137,
		37.383053, 35.769241, 49.076134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020317, 35.812901, 48.489193>,  <37.886810, 36.236496, 48.942337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020317, 35.812901, 48.489193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637527, 35.739780, 48.579338>,  <37.407856, 35.695908, 48.633427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637527, 35.739780, 48.579338>,  <38.020317, 35.812901, 48.489193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637527, 35.739780, 48.579338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197777, -0.157438, -0.967521,
		0.212343, -0.970463, 0.114511,
		-0.956972, -0.182798, 0.225366,
		37.350437, 35.684940, 48.646950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901726, 35.234165, 47.984249>,  <38.020317, 35.812901, 48.489193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901726, 35.234165, 47.984249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540215, 35.353916, 48.106594>,  <37.323307, 35.425766, 48.180000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540215, 35.353916, 48.106594>,  <37.901726, 35.234165, 47.984249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540215, 35.353916, 48.106594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372744, -0.199367, -0.906264,
		-0.210332, -0.933075, 0.291773,
		-0.903782, 0.299373, 0.305865,
		37.269081, 35.443729, 48.198353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296364, 34.720985, 47.769756>,  <37.901726, 35.234165, 47.984249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296364, 34.720985, 47.769756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135227, 35.081429, 47.833904>,  <37.038544, 35.297695, 47.872391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135227, 35.081429, 47.833904>,  <37.296364, 34.720985, 47.769756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135227, 35.081429, 47.833904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335781, 0.017493, -0.941778,
		-0.851451, -0.433237, 0.295529,
		-0.402843, 0.901110, 0.160367,
		37.014374, 35.351761, 47.882015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540592, 34.616547, 47.566368>,  <37.296364, 34.720985, 47.769756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540592, 34.616547, 47.566368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642246, 35.002644, 47.541950>,  <36.703239, 35.234303, 47.527298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642246, 35.002644, 47.541950>,  <36.540592, 34.616547, 47.566368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642246, 35.002644, 47.541950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506567, 0.079074, -0.858567,
		-0.823895, 0.249119, 0.509054,
		0.254138, 0.965239, -0.061047,
		36.718487, 35.292217, 47.523636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931572, 34.889492, 47.426155>,  <36.540592, 34.616547, 47.566368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931572, 34.889492, 47.426155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179138, 35.189980, 47.334400>,  <36.327679, 35.370274, 47.279346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179138, 35.189980, 47.334400>,  <35.931572, 34.889492, 47.426155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179138, 35.189980, 47.334400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625174, 0.294340, -0.722856,
		-0.475505, 0.590793, 0.651812,
		0.618912, 0.751218, -0.229389,
		36.364811, 35.415344, 47.265583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466675, 35.434219, 47.290150>,  <35.931572, 34.889492, 47.426155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466675, 35.434219, 47.290150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.818554, 35.527142, 47.124172>,  <36.029682, 35.582893, 47.024586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.818554, 35.527142, 47.124172>,  <35.466675, 35.434219, 47.290150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818554, 35.527142, 47.124172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454391, 0.153282, -0.877515,
		-0.140245, 0.960490, 0.240397,
		0.879693, 0.232301, -0.414941,
		36.082462, 35.596832, 46.999691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371815, 36.068600, 46.912544>,  <35.466675, 35.434219, 47.290150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371815, 36.068600, 46.912544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694077, 35.906261, 46.739937>,  <35.887432, 35.808857, 46.636372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694077, 35.906261, 46.739937>,  <35.371815, 36.068600, 46.912544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694077, 35.906261, 46.739937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392763, 0.179349, -0.901982,
		0.443460, 0.896170, -0.014908,
		0.805655, -0.405848, -0.431516,
		35.935772, 35.784508, 46.610481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548512, 36.515617, 46.362839>,  <35.371815, 36.068600, 46.912544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548512, 36.515617, 46.362839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718491, 36.167202, 46.264282>,  <35.820477, 35.958153, 46.205147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718491, 36.167202, 46.264282>,  <35.548512, 36.515617, 46.362839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718491, 36.167202, 46.264282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335074, 0.101502, -0.936709,
		0.840921, 0.480609, -0.248730,
		0.424944, -0.871041, -0.246395,
		35.845974, 35.905891, 46.190365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.192062, 41.648594, 27.972956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815510, 41.642544, 27.838150>,  <42.589581, 41.638916, 27.757267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815510, 41.642544, 27.838150>,  <43.192062, 41.648594, 27.972956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815510, 41.642544, 27.838150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187311, -0.807429, 0.559441,
		-0.280576, 0.589771, 0.757263,
		-0.941378, -0.015122, -0.337015,
		42.533096, 41.638008, 27.737045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857704, 41.494545, 28.486609>,  <43.192062, 41.648594, 27.972956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857704, 41.494545, 28.486609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.557625, 41.437157, 28.228422>,  <42.377579, 41.402725, 28.073511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.557625, 41.437157, 28.228422>,  <42.857704, 41.494545, 28.486609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557625, 41.437157, 28.228422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405669, -0.671004, 0.620634,
		-0.522149, 0.727442, 0.445184,
		-0.750195, -0.143467, -0.645464,
		42.332565, 41.394115, 28.034782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255524, 41.487068, 28.901518>,  <42.857704, 41.494545, 28.486609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255524, 41.487068, 28.901518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147709, 41.300823, 28.564341>,  <42.083019, 41.189075, 28.362034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147709, 41.300823, 28.564341>,  <42.255524, 41.487068, 28.901518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147709, 41.300823, 28.564341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519124, -0.667007, 0.534427,
		-0.811086, 0.581639, -0.061929,
		-0.269536, -0.465615, -0.842943,
		42.066849, 41.161140, 28.311459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475040, 41.388233, 28.890076>,  <42.255524, 41.487068, 28.901518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475040, 41.388233, 28.890076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.614208, 41.113304, 28.635036>,  <41.697708, 40.948345, 28.482012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.614208, 41.113304, 28.635036>,  <41.475040, 41.388233, 28.890076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614208, 41.113304, 28.635036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437995, -0.720473, 0.537661,
		-0.828922, 0.092202, -0.551713,
		0.347920, -0.687327, -0.637600,
		41.718586, 40.907104, 28.443756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828060, 40.992336, 28.800768>,  <41.475040, 41.388233, 28.890076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828060, 40.992336, 28.800768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130829, 40.759823, 28.681320>,  <41.312489, 40.620316, 28.609652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130829, 40.759823, 28.681320>,  <40.828060, 40.992336, 28.800768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130829, 40.759823, 28.681320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451122, -0.795381, 0.404794,
		-0.472819, -0.171682, -0.864273,
		0.756922, -0.581287, -0.298621,
		41.357906, 40.585438, 28.591734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481018, 40.390541, 28.735630>,  <40.828060, 40.992336, 28.800768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481018, 40.390541, 28.735630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864017, 40.277493, 28.758692>,  <41.093819, 40.209663, 28.772528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864017, 40.277493, 28.758692>,  <40.481018, 40.390541, 28.735630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864017, 40.277493, 28.758692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271747, -0.816869, 0.508801,
		-0.096702, -0.502843, -0.858951,
		0.957498, -0.282620, 0.057653,
		41.151268, 40.192707, 28.775988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474991, 39.677780, 28.844675>,  <40.481018, 40.390541, 28.735630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474991, 39.677780, 28.844675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.843536, 39.770279, 28.969645>,  <41.064663, 39.825779, 29.044626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.843536, 39.770279, 28.969645>,  <40.474991, 39.677780, 28.844675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843536, 39.770279, 28.969645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092998, -0.649276, 0.754845,
		0.377407, -0.724544, -0.576716,
		0.921366, 0.231250, 0.312423,
		41.119946, 39.839653, 29.063372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813824, 39.069736, 29.017488>,  <40.474991, 39.677780, 28.844675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813824, 39.069736, 29.017488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057594, 39.333225, 29.193981>,  <41.203857, 39.491318, 29.299877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057594, 39.333225, 29.193981>,  <40.813824, 39.069736, 29.017488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057594, 39.333225, 29.193981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154419, -0.644477, 0.748868,
		0.777659, -0.388246, -0.494481,
		0.609428, 0.658721, 0.441231,
		41.240421, 39.530842, 29.326351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419022, 38.707054, 29.158550>,  <40.813824, 39.069736, 29.017488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419022, 38.707054, 29.158550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.389286, 39.014603, 29.412575>,  <41.371445, 39.199131, 29.564989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.389286, 39.014603, 29.412575>,  <41.419022, 38.707054, 29.158550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389286, 39.014603, 29.412575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126481, -0.624412, 0.770787,
		0.989180, 0.137622, -0.050831,
		-0.074337, 0.768876, 0.635062,
		41.366985, 39.245266, 29.603094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918907, 38.643291, 29.684965>,  <41.419022, 38.707054, 29.158550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918907, 38.643291, 29.684965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698147, 38.905323, 29.891376>,  <41.565693, 39.062542, 30.015223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698147, 38.905323, 29.891376>,  <41.918907, 38.643291, 29.684965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698147, 38.905323, 29.891376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218041, -0.483919, 0.847514,
		0.804903, 0.580255, 0.124239,
		-0.551896, 0.655077, 0.516028,
		41.532578, 39.101845, 30.046185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372257, 39.068153, 30.289293>,  <41.918907, 38.643291, 29.684965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372257, 39.068153, 30.289293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.981628, 39.054352, 30.374250>,  <41.747250, 39.046070, 30.425224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.981628, 39.054352, 30.374250>,  <42.372257, 39.068153, 30.289293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981628, 39.054352, 30.374250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207548, -0.411590, 0.887422,
		0.056797, 0.910716, 0.409110,
		-0.976574, -0.034507, 0.212395,
		41.688656, 39.043999, 30.437969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336628, 39.378975, 31.052376>,  <42.372257, 39.068153, 30.289293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336628, 39.378975, 31.052376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008430, 39.162266, 30.979414>,  <41.811512, 39.032242, 30.935637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008430, 39.162266, 30.979414>,  <42.336628, 39.378975, 31.052376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008430, 39.162266, 30.979414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160656, -0.524759, 0.835953,
		-0.548611, 0.656593, 0.517602,
		-0.820497, -0.541769, -0.182403,
		41.762280, 38.999737, 30.924694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936665, 39.297085, 31.708389>,  <42.336628, 39.378975, 31.052376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936665, 39.297085, 31.708389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780643, 39.011948, 31.475250>,  <41.687031, 38.840866, 31.335367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780643, 39.011948, 31.475250>,  <41.936665, 39.297085, 31.708389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780643, 39.011948, 31.475250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146171, -0.672896, 0.725152,
		-0.909116, 0.197653, 0.366663,
		-0.390055, -0.712842, -0.582849,
		41.663628, 38.798096, 31.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504566, 38.913090, 32.153004>,  <41.936665, 39.297085, 31.708389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504566, 38.913090, 32.153004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578480, 38.673050, 31.841688>,  <41.622829, 38.529026, 31.654900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578480, 38.673050, 31.841688>,  <41.504566, 38.913090, 32.153004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578480, 38.673050, 31.841688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233587, -0.742413, 0.627901,
		-0.954616, -0.297824, 0.002989,
		0.184785, -0.600103, -0.778287,
		41.633915, 38.493019, 31.608202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216301, 38.337917, 32.367573>,  <41.504566, 38.913090, 32.153004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216301, 38.337917, 32.367573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481941, 38.216583, 32.094234>,  <41.641327, 38.143784, 31.930233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481941, 38.216583, 32.094234>,  <41.216301, 38.337917, 32.367573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481941, 38.216583, 32.094234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284414, -0.742781, 0.606123,
		-0.691429, -0.596881, -0.407013,
		0.664105, -0.303330, -0.683342,
		41.681171, 38.125584, 31.889233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036339, 37.615849, 32.174107>,  <41.216301, 38.337917, 32.367573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036339, 37.615849, 32.174107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412674, 37.679562, 32.054466>,  <41.638474, 37.717789, 31.982683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412674, 37.679562, 32.054466>,  <41.036339, 37.615849, 32.174107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412674, 37.679562, 32.054466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321362, -0.699393, 0.638416,
		-0.107498, -0.696763, -0.709201,
		0.940835, 0.159282, -0.299097,
		41.694923, 37.727345, 31.964737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322613, 36.900288, 32.091148>,  <41.036339, 37.615849, 32.174107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322613, 36.900288, 32.091148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647713, 37.132893, 32.105457>,  <41.842773, 37.272457, 32.114044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647713, 37.132893, 32.105457>,  <41.322613, 36.900288, 32.091148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647713, 37.132893, 32.105457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417607, -0.624285, 0.660206,
		0.406252, -0.521643, -0.750232,
		0.812750, 0.581513, 0.035775,
		41.891537, 37.307346, 32.116188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837154, 36.464165, 32.079918>,  <41.322613, 36.900288, 32.091148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837154, 36.464165, 32.079918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975586, 36.805534, 32.235809>,  <42.058647, 37.010357, 32.329346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975586, 36.805534, 32.235809>,  <41.837154, 36.464165, 32.079918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975586, 36.805534, 32.235809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462572, -0.516615, 0.720511,
		0.816244, -0.069078, -0.573563,
		0.346083, 0.853426, 0.389730,
		42.079411, 37.061562, 32.352730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385540, 36.334034, 32.338634>,  <41.837154, 36.464165, 32.079918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385540, 36.334034, 32.338634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383770, 36.691010, 32.519093>,  <42.382710, 36.905193, 32.627369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383770, 36.691010, 32.519093>,  <42.385540, 36.334034, 32.338634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383770, 36.691010, 32.519093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527003, -0.381338, 0.759505,
		0.849852, 0.241115, -0.468632,
		-0.004421, 0.892437, 0.451150,
		42.382442, 36.958740, 32.654438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096909, 36.469360, 32.550198>,  <42.385540, 36.334034, 32.338634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096909, 36.469360, 32.550198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843998, 36.673855, 32.783051>,  <42.692253, 36.796551, 32.922760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843998, 36.673855, 32.783051>,  <43.096909, 36.469360, 32.550198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843998, 36.673855, 32.783051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310239, -0.521436, 0.794894,
		0.709918, 0.683189, 0.171085,
		-0.632272, 0.511232, 0.582129,
		42.654316, 36.827225, 32.957687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436398, 36.589199, 33.271908>,  <43.096909, 36.469360, 32.550198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436398, 36.589199, 33.271908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045494, 36.637447, 33.341663>,  <42.810951, 36.666397, 33.383518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045494, 36.637447, 33.341663>,  <43.436398, 36.589199, 33.271908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045494, 36.637447, 33.341663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057798, -0.639758, 0.766401,
		0.204010, 0.759053, 0.618239,
		-0.977261, 0.120620, 0.174388,
		42.752316, 36.673634, 33.393978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100819, 36.352612, 33.403427>,  <43.436398, 36.589199, 33.271908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100819, 36.352612, 33.403427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447105, 36.474926, 33.561935>,  <44.654877, 36.548317, 33.657040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447105, 36.474926, 33.561935>,  <44.100819, 36.352612, 33.403427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447105, 36.474926, 33.561935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182872, 0.930189, -0.318286,
		-0.465935, 0.203079, 0.861199,
		0.865715, 0.305790, 0.396271,
		44.706821, 36.566662, 33.680817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876411, 36.954617, 33.859894>,  <44.100819, 36.352612, 33.403427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876411, 36.954617, 33.859894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263947, 36.985775, 33.765842>,  <44.496468, 37.004471, 33.709412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263947, 36.985775, 33.765842>,  <43.876411, 36.954617, 33.859894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263947, 36.985775, 33.765842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149159, 0.941322, -0.302763,
		0.197747, 0.328399, 0.923607,
		0.968838, 0.077893, -0.235127,
		44.554600, 37.009144, 33.695305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053295, 37.594467, 34.101887>,  <43.876411, 36.954617, 33.859894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053295, 37.594467, 34.101887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343792, 37.511353, 33.839775>,  <44.518089, 37.461483, 33.682507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343792, 37.511353, 33.839775>,  <44.053295, 37.594467, 34.101887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343792, 37.511353, 33.839775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163657, 0.978079, -0.128757,
		0.667670, -0.013732, 0.744331,
		0.726246, -0.207782, -0.655281,
		44.561665, 37.449017, 33.643192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724262, 38.047607, 34.334938>,  <44.053295, 37.594467, 34.101887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724262, 38.047607, 34.334938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763504, 37.949001, 33.949272>,  <44.787048, 37.889835, 33.717873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763504, 37.949001, 33.949272>,  <44.724262, 38.047607, 34.334938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763504, 37.949001, 33.949272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336598, 0.919954, -0.200965,
		0.936524, -0.304818, 0.173230,
		0.098106, -0.246517, -0.964160,
		44.792934, 37.875046, 33.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321552, 38.303181, 34.186028>,  <44.724262, 38.047607, 34.334938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321552, 38.303181, 34.186028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133980, 38.264671, 33.834839>,  <45.021435, 38.241566, 33.624126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133980, 38.264671, 33.834839>,  <45.321552, 38.303181, 34.186028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133980, 38.264671, 33.834839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293011, 0.920789, -0.257474,
		0.833214, -0.377994, -0.403579,
		-0.468934, -0.096278, -0.877970,
		44.993301, 38.235786, 33.571449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817089, 38.542149, 33.702976>,  <45.321552, 38.303181, 34.186028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817089, 38.542149, 33.702976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.486176, 38.546516, 33.478306>,  <45.287628, 38.549137, 33.343506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.486176, 38.546516, 33.478306>,  <45.817089, 38.542149, 33.702976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486176, 38.546516, 33.478306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276554, 0.878185, -0.390269,
		0.488993, -0.478198, -0.729530,
		-0.827287, 0.010916, -0.561673,
		45.237988, 38.549789, 33.309803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045155, 38.995609, 33.047413>,  <45.817089, 38.542149, 33.702976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045155, 38.995609, 33.047413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647388, 39.001755, 33.089188>,  <45.408730, 39.005444, 33.114254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647388, 39.001755, 33.089188>,  <46.045155, 38.995609, 33.047413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647388, 39.001755, 33.089188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007425, 0.976723, -0.214375,
		-0.105301, -0.213953, -0.971152,
		-0.994413, 0.015363, 0.104439,
		45.349064, 39.006363, 33.120518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807102, 39.412548, 32.457561>,  <46.045155, 38.995609, 33.047413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807102, 39.412548, 32.457561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.456985, 39.387798, 32.649410>,  <45.246918, 39.372948, 32.764519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.456985, 39.387798, 32.649410>,  <45.807102, 39.412548, 32.457561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456985, 39.387798, 32.649410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222181, 0.932364, -0.285188,
		-0.429540, -0.356186, -0.829836,
		-0.875289, -0.061874, 0.479625,
		45.194397, 39.369236, 32.793297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148319, 39.502541, 32.012539>,  <45.807102, 39.412548, 32.457561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148319, 39.502541, 32.012539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.037376, 39.604164, 32.383167>,  <44.970810, 39.665138, 32.605545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.037376, 39.604164, 32.383167>,  <45.148319, 39.502541, 32.012539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037376, 39.604164, 32.383167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235771, 0.916918, -0.321984,
		-0.931389, -0.307762, -0.194415,
		-0.277357, 0.254055, 0.926569,
		44.954170, 39.680382, 32.661137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378269, 39.667152, 31.967226>,  <45.148319, 39.502541, 32.012539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378269, 39.667152, 31.967226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527157, 39.833153, 32.299305>,  <44.616489, 39.932755, 32.498550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527157, 39.833153, 32.299305>,  <44.378269, 39.667152, 31.967226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527157, 39.833153, 32.299305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314880, 0.897884, -0.307661,
		-0.873099, -0.146894, 0.464887,
		0.372221, 0.415002, 0.830196,
		44.638824, 39.957653, 32.548363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893883, 40.137310, 32.163506>,  <44.378269, 39.667152, 31.967226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893883, 40.137310, 32.163506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231083, 40.248165, 32.347916>,  <44.433403, 40.314678, 32.458561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231083, 40.248165, 32.347916>,  <43.893883, 40.137310, 32.163506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231083, 40.248165, 32.347916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121550, 0.933036, -0.338629,
		-0.524001, 0.229427, 0.820236,
		0.843000, 0.277142, 0.461025,
		44.483982, 40.331306, 32.486221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684601, 40.777645, 32.559761>,  <43.893883, 40.137310, 32.163506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684601, 40.777645, 32.559761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082085, 40.779617, 32.514999>,  <44.320576, 40.780800, 32.488144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082085, 40.779617, 32.514999>,  <43.684601, 40.777645, 32.559761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082085, 40.779617, 32.514999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029922, 0.974418, -0.222744,
		0.107941, 0.224690, 0.968433,
		0.993707, 0.004934, -0.111903,
		44.380196, 40.781097, 32.481430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926727, 41.387585, 33.016617>,  <43.684601, 40.777645, 32.559761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926727, 41.387585, 33.016617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231697, 41.331249, 32.763992>,  <44.414680, 41.297447, 32.612415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231697, 41.331249, 32.763992>,  <43.926727, 41.387585, 33.016617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231697, 41.331249, 32.763992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147572, 0.988150, -0.042215,
		0.630027, -0.061015, 0.774173,
		0.762423, -0.140843, -0.631565,
		44.460423, 41.288998, 32.574524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289261, 42.006428, 33.112720>,  <43.926727, 41.387585, 33.016617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289261, 42.006428, 33.112720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443207, 41.848316, 32.779102>,  <44.535572, 41.753448, 32.578930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443207, 41.848316, 32.779102>,  <44.289261, 42.006428, 33.112720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443207, 41.848316, 32.779102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046414, 0.910795, -0.410241,
		0.921807, 0.119175, 0.368877,
		0.384862, -0.395284, -0.834046,
		44.558666, 41.729733, 32.528889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886627, 42.423561, 32.960506>,  <44.289261, 42.006428, 33.112720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886627, 42.423561, 32.960506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716476, 42.269169, 32.633076>,  <44.614388, 42.176533, 32.436615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716476, 42.269169, 32.633076>,  <44.886627, 42.423561, 32.960506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716476, 42.269169, 32.633076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091312, 0.918180, -0.385497,
		0.900396, -0.089237, -0.425821,
		-0.425381, -0.385983, -0.818577,
		44.588863, 42.153374, 32.387501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268986, 42.675987, 32.377331>,  <44.886627, 42.423561, 32.960506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268986, 42.675987, 32.377331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933796, 42.539978, 32.206596>,  <44.732681, 42.458374, 32.104156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933796, 42.539978, 32.206596>,  <45.268986, 42.675987, 32.377331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933796, 42.539978, 32.206596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049327, 0.731764, -0.679771,
		0.543473, -0.590686, -0.596429,
		-0.837976, -0.340017, -0.426831,
		44.682404, 42.437973, 32.078548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329624, 42.760895, 31.657400>,  <45.268986, 42.675987, 32.377331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329624, 42.760895, 31.657400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935463, 42.697094, 31.681190>,  <44.698967, 42.658813, 31.695465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935463, 42.697094, 31.681190>,  <45.329624, 42.760895, 31.657400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935463, 42.697094, 31.681190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152840, 0.675165, -0.721660,
		0.074947, -0.720217, -0.689689,
		-0.985405, -0.159498, 0.059476,
		44.639843, 42.649246, 31.699034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084671, 42.672279, 31.009825>,  <45.329624, 42.760895, 31.657400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084671, 42.672279, 31.009825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734108, 42.749100, 31.186474>,  <44.523769, 42.795193, 31.292463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734108, 42.749100, 31.186474>,  <45.084671, 42.672279, 31.009825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734108, 42.749100, 31.186474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284352, 0.533733, -0.796412,
		-0.388660, -0.823556, -0.413157,
		-0.876406, 0.192051, 0.441621,
		44.471188, 42.806717, 31.318960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613621, 42.656406, 30.508778>,  <45.084671, 42.672279, 31.009825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613621, 42.656406, 30.508778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.407467, 42.861671, 30.783306>,  <44.283775, 42.984829, 30.948023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.407467, 42.861671, 30.783306>,  <44.613621, 42.656406, 30.508778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407467, 42.861671, 30.783306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381281, 0.579931, -0.719934,
		-0.767463, -0.632727, -0.103230,
		-0.515388, 0.513163, 0.686323,
		44.252850, 43.015621, 30.989202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911171, 42.699051, 30.267130>,  <44.613621, 42.656406, 30.508778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911171, 42.699051, 30.267130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937263, 43.009285, 30.518276>,  <43.952919, 43.195423, 30.668964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937263, 43.009285, 30.518276>,  <43.911171, 42.699051, 30.267130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937263, 43.009285, 30.518276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418188, 0.592536, -0.688491,
		-0.906015, -0.217652, 0.362994,
		0.065236, 0.775583, 0.627866,
		43.956833, 43.241959, 30.706636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249474, 43.074486, 30.219734>,  <43.911171, 42.699051, 30.267130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249474, 43.074486, 30.219734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477264, 43.340813, 30.412558>,  <43.613941, 43.500610, 30.528252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477264, 43.340813, 30.412558>,  <43.249474, 43.074486, 30.219734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477264, 43.340813, 30.412558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400130, 0.736809, -0.544986,
		-0.718044, 0.117474, 0.686012,
		0.569481, 0.665818, 0.482056,
		43.648109, 43.540558, 30.557175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.053703, 39.169376, 40.714565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929512, 38.829334, 40.884701>,  <37.854996, 38.625309, 40.986782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929512, 38.829334, 40.884701>,  <38.053703, 39.169376, 40.714565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929512, 38.829334, 40.884701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074071, -0.467732, -0.880761,
		0.947690, -0.241953, 0.208190,
		-0.310480, -0.850109, 0.425343,
		37.836369, 38.574303, 41.012302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553768, 38.593571, 40.541435>,  <38.053703, 39.169376, 40.714565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553768, 38.593571, 40.541435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203541, 38.433121, 40.649117>,  <37.993404, 38.336849, 40.713726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203541, 38.433121, 40.649117>,  <38.553768, 38.593571, 40.541435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203541, 38.433121, 40.649117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065558, -0.453440, -0.888873,
		0.478621, -0.795919, 0.370721,
		-0.875570, -0.401130, 0.269205,
		37.940868, 38.312782, 40.729877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623745, 37.881966, 40.583687>,  <38.553768, 38.593571, 40.541435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623745, 37.881966, 40.583687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239235, 37.955570, 40.501617>,  <38.008530, 37.999733, 40.452377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239235, 37.955570, 40.501617>,  <38.623745, 37.881966, 40.583687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239235, 37.955570, 40.501617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040220, -0.642810, -0.764969,
		-0.272650, -0.743596, 0.610514,
		-0.961272, 0.184014, -0.205170,
		37.950851, 38.010773, 40.440067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388523, 37.247887, 40.422237>,  <38.623745, 37.881966, 40.583687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388523, 37.247887, 40.422237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098427, 37.493828, 40.298313>,  <37.924370, 37.641392, 40.223957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098427, 37.493828, 40.298313>,  <38.388523, 37.247887, 40.422237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098427, 37.493828, 40.298313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084911, -0.526426, -0.845970,
		-0.683238, -0.587227, 0.433993,
		-0.725241, 0.614850, -0.309812,
		37.880856, 37.678284, 40.205368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929626, 36.768497, 40.045113>,  <38.388523, 37.247887, 40.422237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929626, 36.768497, 40.045113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833282, 37.135643, 39.918926>,  <37.775475, 37.355930, 39.843216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833282, 37.135643, 39.918926>,  <37.929626, 36.768497, 40.045113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833282, 37.135643, 39.918926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481844, -0.395231, -0.782061,
		-0.842504, -0.036362, 0.537461,
		-0.240859, 0.917862, -0.315463,
		37.761024, 37.411003, 39.824287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280132, 36.704475, 39.823811>,  <37.929626, 36.768497, 40.045113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280132, 36.704475, 39.823811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372765, 37.065693, 39.679096>,  <37.428345, 37.282421, 39.592266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372765, 37.065693, 39.679096>,  <37.280132, 36.704475, 39.823811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372765, 37.065693, 39.679096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450489, -0.230075, -0.862627,
		-0.862225, 0.362747, 0.353529,
		0.231577, 0.903039, -0.361790,
		37.442238, 37.336605, 39.570560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713654, 37.103981, 39.708405>,  <37.280132, 36.704475, 39.823811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713654, 37.103981, 39.708405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997410, 37.227699, 39.455074>,  <37.167664, 37.301929, 39.303078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997410, 37.227699, 39.455074>,  <36.713654, 37.103981, 39.708405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997410, 37.227699, 39.455074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547395, -0.324254, -0.771504,
		-0.443979, 0.893977, -0.060718,
		0.709395, 0.309295, -0.633321,
		37.210228, 37.320488, 39.265079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332222, 37.309277, 39.130421>,  <36.713654, 37.103981, 39.708405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332222, 37.309277, 39.130421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705154, 37.293667, 38.986622>,  <36.928913, 37.284302, 38.900345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705154, 37.293667, 38.986622>,  <36.332222, 37.309277, 39.130421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705154, 37.293667, 38.986622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355423, -0.281928, -0.891174,
		-0.066577, 0.958642, -0.276719,
		0.932331, -0.039021, -0.359494,
		36.984856, 37.281960, 38.878773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281296, 37.589588, 38.450447>,  <36.332222, 37.309277, 39.130421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281296, 37.589588, 38.450447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630180, 37.394325, 38.438148>,  <36.839512, 37.277168, 38.430771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630180, 37.394325, 38.438148>,  <36.281296, 37.589588, 38.450447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630180, 37.394325, 38.438148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234436, -0.362055, -0.902195,
		0.429282, 0.794115, -0.430231,
		0.872214, -0.488158, -0.030746,
		36.891846, 37.247879, 38.428925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644028, 37.818356, 37.936230>,  <36.281296, 37.589588, 38.450447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644028, 37.818356, 37.936230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771313, 37.441467, 37.978104>,  <36.847683, 37.215336, 38.003227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771313, 37.441467, 37.978104>,  <36.644028, 37.818356, 37.936230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771313, 37.441467, 37.978104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242036, -0.187515, -0.951975,
		0.916602, 0.277592, -0.287721,
		0.318213, -0.942221, 0.104689,
		36.866776, 37.158802, 38.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925369, 37.634338, 37.265362>,  <36.644028, 37.818356, 37.936230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925369, 37.634338, 37.265362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881504, 37.275906, 37.437416>,  <36.855183, 37.060848, 37.540649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881504, 37.275906, 37.437416>,  <36.925369, 37.634338, 37.265362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881504, 37.275906, 37.437416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295817, -0.383714, -0.874789,
		0.948929, -0.223176, -0.222995,
		-0.109665, -0.896078, 0.430137,
		36.848606, 37.007084, 37.566456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290127, 37.214920, 36.872723>,  <36.925369, 37.634338, 37.265362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290127, 37.214920, 36.872723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015224, 37.007050, 37.075748>,  <36.850285, 36.882328, 37.197563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015224, 37.007050, 37.075748>,  <37.290127, 37.214920, 36.872723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015224, 37.007050, 37.075748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407124, -0.303124, -0.861606,
		0.601611, -0.798783, -0.003250,
		-0.687251, -0.519675, 0.507567,
		36.809048, 36.851147, 37.228020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623493, 37.140984, 36.224514>,  <37.290127, 37.214920, 36.872723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623493, 37.140984, 36.224514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591675, 37.420414, 35.940075>,  <37.572582, 37.588074, 35.769413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591675, 37.420414, 35.940075>,  <37.623493, 37.140984, 36.224514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591675, 37.420414, 35.940075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409900, -0.673179, -0.615478,
		-0.908656, 0.242520, 0.339896,
		-0.079545, 0.698580, -0.711096,
		37.567810, 37.629990, 35.726746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187675, 36.877403, 35.862194>,  <37.623493, 37.140984, 36.224514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187675, 36.877403, 35.862194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290581, 36.505344, 35.757397>,  <38.352325, 36.282108, 35.694519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290581, 36.505344, 35.757397>,  <38.187675, 36.877403, 35.862194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290581, 36.505344, 35.757397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631321, -0.043486, 0.774301,
		-0.731606, -0.364605, 0.576034,
		0.257265, -0.930146, -0.261998,
		38.367760, 36.226299, 35.678799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981964, 36.337044, 36.347939>,  <38.187675, 36.877403, 35.862194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981964, 36.337044, 36.347939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292912, 36.195923, 36.139618>,  <38.479481, 36.111252, 36.014626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292912, 36.195923, 36.139618>,  <37.981964, 36.337044, 36.347939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292912, 36.195923, 36.139618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440905, -0.284932, 0.851127,
		-0.448672, -0.891261, -0.065944,
		0.777366, -0.352801, -0.520802,
		38.526119, 36.090084, 35.983376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163971, 35.535919, 36.440281>,  <37.981964, 36.337044, 36.347939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163971, 35.535919, 36.440281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522091, 35.683418, 36.340309>,  <38.736961, 35.771919, 36.280327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522091, 35.683418, 36.340309>,  <38.163971, 35.535919, 36.440281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522091, 35.683418, 36.340309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413456, -0.479009, 0.774341,
		0.165819, -0.796601, -0.581318,
		0.895298, 0.368750, -0.249931,
		38.790680, 35.794044, 36.265331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589230, 35.022171, 36.537746>,  <38.163971, 35.535919, 36.440281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589230, 35.022171, 36.537746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828949, 35.341709, 36.558472>,  <38.972782, 35.533432, 36.570908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828949, 35.341709, 36.558472>,  <38.589230, 35.022171, 36.537746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828949, 35.341709, 36.558472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373339, -0.336166, 0.864645,
		0.708134, -0.498839, -0.499705,
		0.599303, 0.798844, 0.051815,
		39.008739, 35.581364, 36.574017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181702, 34.760864, 36.628746>,  <38.589230, 35.022171, 36.537746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181702, 34.760864, 36.628746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233006, 35.130413, 36.772980>,  <39.263786, 35.352142, 36.859520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233006, 35.130413, 36.772980>,  <39.181702, 34.760864, 36.628746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233006, 35.130413, 36.772980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532161, -0.370919, 0.761068,
		0.836872, 0.094273, -0.539220,
		0.128259, 0.923868, 0.360580,
		39.271484, 35.407574, 36.881153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888565, 34.687180, 36.915882>,  <39.181702, 34.760864, 36.628746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888565, 34.687180, 36.915882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700336, 35.003963, 37.071507>,  <39.587399, 35.194035, 37.164883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700336, 35.003963, 37.071507>,  <39.888565, 34.687180, 36.915882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700336, 35.003963, 37.071507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508674, -0.116802, 0.853000,
		0.720981, 0.599303, -0.347883,
		-0.470572, 0.791955, 0.389062,
		39.559166, 35.241550, 37.188225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353489, 35.078274, 37.297813>,  <39.888565, 34.687180, 36.915882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353489, 35.078274, 37.297813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998940, 35.188198, 37.446846>,  <39.786209, 35.254154, 37.536266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998940, 35.188198, 37.446846>,  <40.353489, 35.078274, 37.297813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998940, 35.188198, 37.446846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355231, -0.112398, 0.927996,
		0.296905, 0.954905, 0.002004,
		-0.886374, 0.274815, 0.372584,
		39.733028, 35.270641, 37.558620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526649, 35.607117, 37.730721>,  <40.353489, 35.078274, 37.297813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526649, 35.607117, 37.730721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171009, 35.463734, 37.844563>,  <39.957623, 35.377705, 37.912868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171009, 35.463734, 37.844563>,  <40.526649, 35.607117, 37.730721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171009, 35.463734, 37.844563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312624, -0.021432, 0.949635,
		-0.334308, 0.933298, 0.131119,
		-0.889103, -0.358461, 0.284607,
		39.904278, 35.356194, 37.929943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418941, 35.903004, 38.359642>,  <40.526649, 35.607117, 37.730721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418941, 35.903004, 38.359642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109867, 35.650227, 38.383640>,  <39.924423, 35.498558, 38.398041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109867, 35.650227, 38.383640>,  <40.418941, 35.903004, 38.359642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109867, 35.650227, 38.383640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133649, -0.069553, 0.988585,
		-0.620560, 0.771885, 0.138201,
		-0.772686, -0.631947, 0.060000,
		39.878063, 35.460644, 38.401642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956085, 36.137218, 38.912804>,  <40.418941, 35.903004, 38.359642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956085, 36.137218, 38.912804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877476, 35.749470, 38.853893>,  <39.830311, 35.516819, 38.818546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877476, 35.749470, 38.853893>,  <39.956085, 36.137218, 38.912804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877476, 35.749470, 38.853893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001135, -0.149983, 0.988688,
		-0.980498, 0.194470, 0.028375,
		-0.196526, -0.969374, -0.147278,
		39.818520, 35.458656, 38.809711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296806, 36.007156, 39.238678>,  <39.956085, 36.137218, 38.912804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296806, 36.007156, 39.238678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501270, 35.665871, 39.197208>,  <39.623947, 35.461102, 39.172329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501270, 35.665871, 39.197208>,  <39.296806, 36.007156, 39.238678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501270, 35.665871, 39.197208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147723, -0.206038, 0.967329,
		-0.846697, -0.479143, -0.231357,
		0.511158, -0.853212, -0.103672,
		39.654617, 35.409908, 39.166107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122406, 35.586353, 39.798595>,  <39.296806, 36.007156, 39.238678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122406, 35.586353, 39.798595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462597, 35.400967, 39.699081>,  <39.666710, 35.289734, 39.639374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462597, 35.400967, 39.699081>,  <39.122406, 35.586353, 39.798595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462597, 35.400967, 39.699081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103931, -0.315576, 0.943192,
		-0.515650, -0.828015, -0.220219,
		0.850472, -0.463469, -0.248783,
		39.717739, 35.261925, 39.624447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055153, 34.949677, 40.087765>,  <39.122406, 35.586353, 39.798595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055153, 34.949677, 40.087765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449474, 34.965626, 40.022526>,  <39.686066, 34.975193, 39.983383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449474, 34.965626, 40.022526>,  <39.055153, 34.949677, 40.087765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449474, 34.965626, 40.022526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167530, -0.297840, 0.939801,
		-0.011106, -0.953783, -0.300291,
		0.985805, 0.039870, -0.163095,
		39.745216, 34.977585, 39.973598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337597, 34.406136, 40.391724>,  <39.055153, 34.949677, 40.087765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337597, 34.406136, 40.391724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657463, 34.646317, 40.391586>,  <39.849380, 34.790424, 40.391502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657463, 34.646317, 40.391586>,  <39.337597, 34.406136, 40.391724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657463, 34.646317, 40.391586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175679, -0.233417, 0.956375,
		0.574174, -0.764838, -0.292141,
		0.799663, 0.600450, -0.000345,
		39.897362, 34.826450, 40.391483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794102, 34.115940, 40.859299>,  <39.337597, 34.406136, 40.391724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794102, 34.115940, 40.859299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927761, 34.489819, 40.810837>,  <40.007957, 34.714146, 40.781757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927761, 34.489819, 40.810837>,  <39.794102, 34.115940, 40.859299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927761, 34.489819, 40.810837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396329, -0.022712, 0.917828,
		0.855143, -0.354709, -0.378038,
		0.334148, 0.934701, -0.121159,
		40.028004, 34.770229, 40.774490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225849, 33.451839, 40.954102>,  <39.794102, 34.115940, 40.859299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225849, 33.451839, 40.954102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085480, 33.114349, 41.116573>,  <40.001259, 32.911858, 41.214058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085480, 33.114349, 41.116573>,  <40.225849, 33.451839, 40.954102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085480, 33.114349, 41.116573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408502, -0.252377, -0.877173,
		0.842601, -0.473749, -0.256096,
		-0.350927, -0.843722, 0.406180,
		39.980202, 32.861233, 41.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430508, 32.966251, 40.473957>,  <40.225849, 33.451839, 40.954102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430508, 32.966251, 40.473957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141602, 32.785152, 40.683090>,  <39.968258, 32.676495, 40.808571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141602, 32.785152, 40.683090>,  <40.430508, 32.966251, 40.473957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141602, 32.785152, 40.683090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462638, -0.245662, -0.851831,
		0.514104, -0.857130, -0.032024,
		-0.722263, -0.452745, 0.522837,
		39.924923, 32.649330, 40.839943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198746, 32.514057, 39.954071>,  <40.430508, 32.966251, 40.473957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198746, 32.514057, 39.954071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903141, 32.510277, 40.223522>,  <39.725777, 32.508007, 40.385193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903141, 32.510277, 40.223522>,  <40.198746, 32.514057, 39.954071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903141, 32.510277, 40.223522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646640, -0.270549, -0.713204,
		0.188992, -0.962660, 0.193826,
		-0.739012, -0.009454, 0.673626,
		39.681438, 32.507442, 40.425610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857216, 31.790733, 40.066086>,  <40.198746, 32.514057, 39.954071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857216, 31.790733, 40.066086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584290, 32.068253, 40.158249>,  <39.420532, 32.234764, 40.213547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584290, 32.068253, 40.158249>,  <39.857216, 31.790733, 40.066086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584290, 32.068253, 40.158249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625813, -0.391413, -0.674651,
		-0.377874, -0.604531, 0.701251,
		-0.682326, 0.693785, 0.230419,
		39.379593, 32.276390, 40.227371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185650, 31.442282, 40.116020>,  <39.857216, 31.790733, 40.066086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185650, 31.442282, 40.116020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103748, 31.831526, 40.073814>,  <39.054607, 32.065071, 40.048489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103748, 31.831526, 40.073814>,  <39.185650, 31.442282, 40.116020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103748, 31.831526, 40.073814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636095, -0.214221, -0.741277,
		-0.743948, -0.084659, 0.662853,
		-0.204753, 0.973110, -0.105518,
		39.042324, 32.123459, 40.042160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550350, 31.353746, 39.858864>,  <39.185650, 31.442282, 40.116020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550350, 31.353746, 39.858864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654713, 31.735043, 39.797859>,  <38.717331, 31.963820, 39.761257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654713, 31.735043, 39.797859>,  <38.550350, 31.353746, 39.858864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654713, 31.735043, 39.797859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572031, 0.025395, -0.819839,
		-0.777630, 0.301145, 0.551908,
		0.260907, 0.953240, -0.152516,
		38.732986, 32.021015, 39.752106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899384, 31.761456, 39.820358>,  <38.550350, 31.353746, 39.858864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899384, 31.761456, 39.820358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196922, 31.958960, 39.640182>,  <38.375446, 32.077461, 39.532078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196922, 31.958960, 39.640182>,  <37.899384, 31.761456, 39.820358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196922, 31.958960, 39.640182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483628, -0.067521, -0.872666,
		-0.461304, 0.866972, 0.188572,
		0.743843, 0.493762, -0.450439,
		38.420074, 32.107090, 39.505051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597359, 32.216507, 39.315407>,  <37.899384, 31.761456, 39.820358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597359, 32.216507, 39.315407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975391, 32.153709, 39.200741>,  <38.202209, 32.116032, 39.131943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975391, 32.153709, 39.200741>,  <37.597359, 32.216507, 39.315407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975391, 32.153709, 39.200741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308847, -0.141988, -0.940454,
		0.106945, 0.977339, -0.182678,
		0.945080, -0.156996, -0.286663,
		38.258915, 32.106609, 39.114742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565083, 32.520287, 38.671825>,  <37.597359, 32.216507, 39.315407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565083, 32.520287, 38.671825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879910, 32.274185, 38.654003>,  <38.068806, 32.126526, 38.643311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879910, 32.274185, 38.654003>,  <37.565083, 32.520287, 38.671825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879910, 32.274185, 38.654003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199096, -0.185004, -0.962359,
		0.583853, 0.766313, -0.268105,
		0.787069, -0.615254, -0.044554,
		38.116032, 32.089607, 38.640636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412205, 32.358059, 38.034275>,  <37.565083, 32.520287, 38.671825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412205, 32.358059, 38.034275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700172, 32.105610, 38.149796>,  <37.872952, 31.954142, 38.219109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700172, 32.105610, 38.149796>,  <37.412205, 32.358059, 38.034275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700172, 32.105610, 38.149796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057108, -0.468557, -0.881585,
		0.691707, 0.618175, -0.373364,
		0.719917, -0.631121, 0.288801,
		37.916149, 31.916273, 38.236435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945950, 32.320580, 37.450115>,  <37.412205, 32.358059, 38.034275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945950, 32.320580, 37.450115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988808, 32.002117, 37.688328>,  <38.014523, 31.811041, 37.831257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988808, 32.002117, 37.688328>,  <37.945950, 32.320580, 37.450115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988808, 32.002117, 37.688328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201602, -0.603938, -0.771113,
		0.973589, -0.037439, -0.225215,
		0.107146, -0.796152, 0.595535,
		38.020950, 31.763271, 37.866989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367306, 31.956972, 37.116627>,  <37.945950, 32.320580, 37.450115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367306, 31.956972, 37.116627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183189, 31.697857, 37.359444>,  <38.072720, 31.542387, 37.505135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183189, 31.697857, 37.359444>,  <38.367306, 31.956972, 37.116627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183189, 31.697857, 37.359444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007321, -0.680991, -0.732255,
		0.887736, -0.341497, 0.308714,
		-0.460294, -0.647789, 0.607040,
		38.045101, 31.503521, 37.541557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.663643, 32.676933, 44.121609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.285736, 32.618855, 44.239143>,  <42.058994, 32.584007, 44.309666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.285736, 32.618855, 44.239143>,  <42.663643, 32.676933, 44.121609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285736, 32.618855, 44.239143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267591, -0.175966, -0.947329,
		0.189258, -0.973629, 0.127391,
		-0.944762, -0.145201, 0.293837,
		42.002308, 32.575294, 44.327293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420849, 32.113224, 43.735062>,  <42.663643, 32.676933, 44.121609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420849, 32.113224, 43.735062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.092342, 32.309299, 43.851841>,  <41.895237, 32.426945, 43.921909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.092342, 32.309299, 43.851841>,  <42.420849, 32.113224, 43.735062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092342, 32.309299, 43.851841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408866, -0.148758, -0.900389,
		-0.397933, -0.858827, 0.322593,
		-0.821266, 0.490191, 0.291949,
		41.845963, 32.456356, 43.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863377, 31.647840, 43.481342>,  <42.420849, 32.113224, 43.735062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863377, 31.647840, 43.481342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694153, 32.000504, 43.564957>,  <41.592617, 32.212101, 43.615128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694153, 32.000504, 43.564957>,  <41.863377, 31.647840, 43.481342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694153, 32.000504, 43.564957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615280, -0.110167, -0.780572,
		-0.665169, -0.458847, 0.589074,
		-0.423060, 0.881659, 0.209040,
		41.567234, 32.264999, 43.627670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187973, 31.570505, 43.290493>,  <41.863377, 31.647840, 43.481342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187973, 31.570505, 43.290493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.239441, 31.967134, 43.296524>,  <41.270321, 32.205112, 43.300144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.239441, 31.967134, 43.296524>,  <41.187973, 31.570505, 43.290493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239441, 31.967134, 43.296524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726553, 0.104611, -0.679100,
		-0.674954, 0.076425, 0.733891,
		0.128673, 0.991572, 0.015081,
		41.278042, 32.264606, 43.301048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517056, 31.855284, 43.464027>,  <41.187973, 31.570505, 43.290493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517056, 31.855284, 43.464027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716869, 32.141613, 43.268860>,  <40.836758, 32.313412, 43.151760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716869, 32.141613, 43.268860>,  <40.517056, 31.855284, 43.464027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716869, 32.141613, 43.268860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774583, 0.116861, -0.621583,
		-0.387924, 0.688435, 0.612840,
		0.499536, 0.715822, -0.487917,
		40.866730, 32.356361, 43.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017460, 32.223896, 43.184532>,  <40.517056, 31.855284, 43.464027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017460, 32.223896, 43.184532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.324558, 32.371288, 42.974854>,  <40.508820, 32.459724, 42.849045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.324558, 32.371288, 42.974854>,  <40.017460, 32.223896, 43.184532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324558, 32.371288, 42.974854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613607, 0.187223, -0.767094,
		-0.184521, 0.910586, 0.369845,
		0.767749, 0.368485, -0.524195,
		40.554882, 32.481834, 42.817596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780289, 32.772335, 42.772659>,  <40.017460, 32.223896, 43.184532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780289, 32.772335, 42.772659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122158, 32.682640, 42.585361>,  <40.327278, 32.628822, 42.472984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122158, 32.682640, 42.585361>,  <39.780289, 32.772335, 42.772659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122158, 32.682640, 42.585361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436150, 0.179115, -0.881868,
		0.281620, 0.957932, 0.055282,
		0.854671, -0.224241, -0.468244,
		40.378559, 32.615368, 42.444889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806091, 33.309891, 42.308720>,  <39.780289, 32.772335, 42.772659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806091, 33.309891, 42.308720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030697, 33.001041, 42.189705>,  <40.165459, 32.815731, 42.118298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030697, 33.001041, 42.189705>,  <39.806091, 33.309891, 42.308720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030697, 33.001041, 42.189705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363261, 0.093050, -0.927029,
		0.743466, 0.628623, -0.228233,
		0.561515, -0.772123, -0.297534,
		40.199150, 32.769405, 42.100445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082279, 33.575569, 41.641273>,  <39.806091, 33.309891, 42.308720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082279, 33.575569, 41.641273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098450, 33.176678, 41.666229>,  <40.108150, 32.937344, 41.681202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098450, 33.176678, 41.666229>,  <40.082279, 33.575569, 41.641273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098450, 33.176678, 41.666229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412084, -0.073522, -0.908175,
		0.910248, 0.011006, -0.413916,
		0.040428, -0.997233, 0.062387,
		40.110577, 32.877506, 41.684944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486481, 34.099773, 41.123936>,  <40.082279, 33.575569, 41.641273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486481, 34.099773, 41.123936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411297, 34.492626, 41.120159>,  <40.366188, 34.728336, 41.117893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411297, 34.492626, 41.120159>,  <40.486481, 34.099773, 41.123936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411297, 34.492626, 41.120159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184136, 0.044678, 0.981885,
		0.964762, 0.182813, -0.189243,
		-0.187956, 0.982132, -0.009441,
		40.354912, 34.787266, 41.117329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878895, 34.388065, 41.583385>,  <40.486481, 34.099773, 41.123936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878895, 34.388065, 41.583385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643837, 34.711384, 41.568775>,  <40.502804, 34.905373, 41.560009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643837, 34.711384, 41.568775>,  <40.878895, 34.388065, 41.583385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643837, 34.711384, 41.568775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264623, 0.234656, 0.935367,
		0.764623, 0.539997, -0.351788,
		-0.587645, 0.808294, -0.036528,
		40.467545, 34.953873, 41.557816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298492, 34.883816, 41.687534>,  <40.878895, 34.388065, 41.583385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298492, 34.883816, 41.687534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.946503, 35.037106, 41.799801>,  <40.735310, 35.129078, 41.867161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.946503, 35.037106, 41.799801>,  <41.298492, 34.883816, 41.687534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946503, 35.037106, 41.799801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406539, 0.301985, 0.862283,
		0.245689, 0.872894, -0.421536,
		-0.879979, 0.383224, 0.280671,
		40.682510, 35.152073, 41.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476109, 35.399113, 42.082748>,  <41.298492, 34.883816, 41.687534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476109, 35.399113, 42.082748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.089993, 35.405643, 42.187012>,  <40.858322, 35.409561, 42.249569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.089993, 35.405643, 42.187012>,  <41.476109, 35.399113, 42.082748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089993, 35.405643, 42.187012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253713, 0.295341, 0.921088,
		-0.061945, 0.955252, -0.289232,
		-0.965294, 0.016325, 0.260655,
		40.800404, 35.410542, 42.265209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249992, 36.139339, 42.338623>,  <41.476109, 35.399113, 42.082748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249992, 36.139339, 42.338623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.013981, 35.848839, 42.479717>,  <40.872372, 35.674538, 42.564373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.013981, 35.848839, 42.479717>,  <41.249992, 36.139339, 42.338623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013981, 35.848839, 42.479717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150100, 0.330598, 0.931759,
		-0.793306, 0.602711, -0.086053,
		-0.590031, -0.726253, 0.352732,
		40.836971, 35.630962, 42.585537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790325, 36.442326, 42.788841>,  <41.249992, 36.139339, 42.338623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790325, 36.442326, 42.788841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.806625, 36.060570, 42.907154>,  <40.816406, 35.831516, 42.978142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.806625, 36.060570, 42.907154>,  <40.790325, 36.442326, 42.788841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806625, 36.060570, 42.907154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283133, 0.294922, 0.912610,
		-0.958214, 0.046553, 0.282238,
		0.040754, -0.954387, 0.295779,
		40.818851, 35.774254, 42.995888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489956, 36.476978, 43.390221>,  <40.790325, 36.442326, 42.788841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489956, 36.476978, 43.390221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.704056, 36.139240, 43.399944>,  <40.832516, 35.936600, 43.405777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.704056, 36.139240, 43.399944>,  <40.489956, 36.476978, 43.390221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704056, 36.139240, 43.399944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461051, 0.316146, 0.829146,
		-0.707768, -0.432595, 0.558503,
		0.535253, -0.844342, 0.024309,
		40.864632, 35.885937, 43.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403114, 36.139759, 44.056381>,  <40.489956, 36.476978, 43.390221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403114, 36.139759, 44.056381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749310, 35.976582, 43.940105>,  <40.957027, 35.878674, 43.870338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749310, 35.976582, 43.940105>,  <40.403114, 36.139759, 44.056381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749310, 35.976582, 43.940105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309504, -0.020787, 0.950671,
		-0.393866, -0.912769, 0.108270,
		0.865493, -0.407947, -0.290693,
		41.008957, 35.854198, 43.852898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435738, 35.443329, 44.400417>,  <40.403114, 36.139759, 44.056381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435738, 35.443329, 44.400417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799522, 35.567081, 44.289307>,  <41.017792, 35.641335, 44.222641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799522, 35.567081, 44.289307>,  <40.435738, 35.443329, 44.400417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799522, 35.567081, 44.289307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304028, -0.039102, 0.951860,
		0.283630, -0.950132, -0.129624,
		0.909462, 0.309386, -0.277776,
		41.072361, 35.659897, 44.205975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858730, 35.071228, 44.822575>,  <40.435738, 35.443329, 44.400417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858730, 35.071228, 44.822575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.083229, 35.378201, 44.698605>,  <41.217930, 35.562382, 44.624222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.083229, 35.378201, 44.698605>,  <40.858730, 35.071228, 44.822575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083229, 35.378201, 44.698605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295292, 0.164144, 0.941201,
		0.773176, -0.619767, -0.134490,
		0.561250, 0.767428, -0.309924,
		41.251602, 35.608429, 44.605629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472626, 35.016911, 45.177731>,  <40.858730, 35.071228, 44.822575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472626, 35.016911, 45.177731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.453709, 35.401455, 45.069252>,  <41.442360, 35.632183, 45.004166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.453709, 35.401455, 45.069252>,  <41.472626, 35.016911, 45.177731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453709, 35.401455, 45.069252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485775, 0.259365, 0.834717,
		0.872804, -0.092267, -0.479271,
		-0.047289, 0.961362, -0.271196,
		41.439522, 35.689865, 44.987892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208889, 35.285797, 45.137463>,  <41.472626, 35.016911, 45.177731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208889, 35.285797, 45.137463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.948505, 35.584824, 45.190224>,  <41.792274, 35.764240, 45.221878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.948505, 35.584824, 45.190224>,  <42.208889, 35.285797, 45.137463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948505, 35.584824, 45.190224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490282, 0.281379, 0.824894,
		0.579550, 0.601639, -0.549684,
		-0.650958, 0.747567, 0.131900,
		41.753220, 35.809093, 45.229794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645554, 35.838676, 45.334286>,  <42.208889, 35.285797, 45.137463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645554, 35.838676, 45.334286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.277943, 35.926491, 45.465248>,  <42.057377, 35.979179, 45.543823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.277943, 35.926491, 45.465248>,  <42.645554, 35.838676, 45.334286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277943, 35.926491, 45.465248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385236, 0.324167, 0.864008,
		0.083544, 0.920175, -0.382490,
		-0.919029, 0.219532, 0.327402,
		42.002235, 35.992352, 45.563469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765675, 36.428017, 45.618130>,  <42.645554, 35.838676, 45.334286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765675, 36.428017, 45.618130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.404942, 36.343292, 45.768772>,  <42.188503, 36.292458, 45.859158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.404942, 36.343292, 45.768772>,  <42.765675, 36.428017, 45.618130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404942, 36.343292, 45.768772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321893, 0.252092, 0.912598,
		-0.288239, 0.944238, -0.159164,
		-0.901833, -0.211813, 0.376607,
		42.134392, 36.279747, 45.881756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.878956, 33.293217, 48.055141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251076, 33.168457, 47.977928>,  <35.474346, 33.093601, 47.931599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251076, 33.168457, 47.977928>,  <34.878956, 33.293217, 48.055141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251076, 33.168457, 47.977928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129467, 0.213193, -0.968394,
		0.343191, 0.925889, 0.157954,
		0.930300, -0.311894, -0.193038,
		35.530167, 33.074890, 47.920017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339905, 33.815598, 47.736954>,  <34.878956, 33.293217, 48.055141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339905, 33.815598, 47.736954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469326, 33.457287, 47.615044>,  <35.546978, 33.242298, 47.541897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469326, 33.457287, 47.615044>,  <35.339905, 33.815598, 47.736954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469326, 33.457287, 47.615044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138125, 0.273939, -0.951777,
		0.936074, 0.350049, -0.035095,
		0.323554, -0.895781, -0.304777,
		35.566391, 33.188553, 47.523609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774437, 33.977665, 47.139484>,  <35.339905, 33.815598, 47.736954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774437, 33.977665, 47.139484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736176, 33.583366, 47.084126>,  <35.713219, 33.346786, 47.050911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736176, 33.583366, 47.084126>,  <35.774437, 33.977665, 47.139484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736176, 33.583366, 47.084126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180325, 0.153896, -0.971493,
		0.978945, -0.067971, -0.192476,
		-0.095655, -0.985746, -0.138399,
		35.707478, 33.287643, 47.042606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127190, 33.849327, 46.536156>,  <35.774437, 33.977665, 47.139484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127190, 33.849327, 46.536156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.884438, 33.534630, 46.581284>,  <35.738789, 33.345810, 46.608360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.884438, 33.534630, 46.581284>,  <36.127190, 33.849327, 46.536156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884438, 33.534630, 46.581284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320766, 0.112569, -0.940445,
		0.727193, -0.606924, -0.320677,
		-0.606877, -0.786747, 0.112822,
		35.702374, 33.298607, 46.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256123, 33.369728, 45.975925>,  <36.127190, 33.849327, 46.536156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256123, 33.369728, 45.975925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899117, 33.229759, 46.089741>,  <35.684914, 33.145779, 46.158031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899117, 33.229759, 46.089741>,  <36.256123, 33.369728, 45.975925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899117, 33.229759, 46.089741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275505, -0.076498, -0.958251,
		0.357079, -0.933650, -0.028130,
		-0.892520, -0.349922, 0.284541,
		35.631359, 33.124783, 46.175102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056431, 32.904530, 45.516178>,  <36.256123, 33.369728, 45.975925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056431, 32.904530, 45.516178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.698765, 32.964222, 45.685028>,  <35.484165, 33.000038, 45.786339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.698765, 32.964222, 45.685028>,  <36.056431, 32.904530, 45.516178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698765, 32.964222, 45.685028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431149, -0.032805, -0.901684,
		-0.120711, -0.988258, 0.093674,
		-0.894169, 0.149231, 0.422126,
		35.430515, 33.008991, 45.811665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623425, 32.324497, 45.337601>,  <36.056431, 32.904530, 45.516178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623425, 32.324497, 45.337601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398830, 32.645458, 45.418472>,  <35.264072, 32.838036, 45.466995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398830, 32.645458, 45.418472>,  <35.623425, 32.324497, 45.337601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398830, 32.645458, 45.418472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437864, -0.080787, -0.895404,
		-0.702143, -0.591287, 0.396705,
		-0.561490, 0.802405, 0.202179,
		35.230385, 32.886181, 45.479126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995136, 32.154808, 45.203331>,  <35.623425, 32.324497, 45.337601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995136, 32.154808, 45.203331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948097, 32.548943, 45.153889>,  <34.919872, 32.785423, 45.124222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948097, 32.548943, 45.153889>,  <34.995136, 32.154808, 45.203331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948097, 32.548943, 45.153889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443665, -0.163492, -0.881154,
		-0.888443, -0.048782, 0.456386,
		-0.117600, 0.985338, -0.123610,
		34.912819, 32.844543, 45.116806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374687, 32.132675, 44.811520>,  <34.995136, 32.154808, 45.203331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374687, 32.132675, 44.811520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565453, 32.480492, 44.760223>,  <34.679913, 32.689182, 44.729446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565453, 32.480492, 44.760223>,  <34.374687, 32.132675, 44.811520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565453, 32.480492, 44.760223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315467, 0.033158, -0.948357,
		-0.820387, 0.492740, 0.290126,
		0.476913, 0.869545, -0.128240,
		34.708527, 32.741356, 44.721752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879860, 32.576149, 44.533989>,  <34.374687, 32.132675, 44.811520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879860, 32.576149, 44.533989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232185, 32.753197, 44.466759>,  <34.443581, 32.859425, 44.426418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232185, 32.753197, 44.466759>,  <33.879860, 32.576149, 44.533989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232185, 32.753197, 44.466759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267897, 0.173221, -0.947748,
		-0.390378, 0.879819, 0.271153,
		0.880816, 0.442621, -0.168079,
		34.496429, 32.885983, 44.416336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733410, 33.020748, 44.031445>,  <33.879860, 32.576149, 44.533989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733410, 33.020748, 44.031445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129818, 32.976212, 44.001842>,  <34.367664, 32.949490, 43.984081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129818, 32.976212, 44.001842>,  <33.733410, 33.020748, 44.031445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129818, 32.976212, 44.001842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045988, 0.235898, -0.970689,
		0.125535, 0.965379, 0.228660,
		0.991023, -0.111340, -0.074010,
		34.427124, 32.942810, 43.979641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008034, 33.631981, 43.686066>,  <33.733410, 33.020748, 44.031445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008034, 33.631981, 43.686066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263805, 33.327187, 43.645077>,  <34.417267, 33.144310, 43.620483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263805, 33.327187, 43.645077>,  <34.008034, 33.631981, 43.686066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263805, 33.327187, 43.645077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083524, 0.201332, -0.975956,
		0.764299, 0.615497, 0.192382,
		0.639430, -0.761990, -0.102469,
		34.455635, 33.098591, 43.614334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302151, 33.779510, 42.983047>,  <34.008034, 33.631981, 43.686066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302151, 33.779510, 42.983047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479637, 33.430931, 43.066662>,  <34.586128, 33.221783, 43.116829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479637, 33.430931, 43.066662>,  <34.302151, 33.779510, 42.983047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479637, 33.430931, 43.066662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102750, -0.182246, -0.977870,
		0.890256, 0.455378, 0.008675,
		0.443719, -0.871446, 0.209036,
		34.612755, 33.169498, 43.129372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876984, 33.773510, 42.580334>,  <34.302151, 33.779510, 42.983047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876984, 33.773510, 42.580334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784977, 33.393372, 42.664173>,  <34.729771, 33.165287, 42.714478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784977, 33.393372, 42.664173>,  <34.876984, 33.773510, 42.580334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784977, 33.393372, 42.664173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003770, -0.214506, -0.976715,
		0.973179, -0.225453, 0.045758,
		-0.230019, -0.950346, 0.209603,
		34.715973, 33.108269, 42.727055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614594, 34.029125, 42.656723>,  <34.876984, 33.773510, 42.580334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614594, 34.029125, 42.656723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.442875, 34.372959, 42.545864>,  <35.339844, 34.579262, 42.479347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.442875, 34.372959, 42.545864>,  <35.614594, 34.029125, 42.656723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442875, 34.372959, 42.545864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307806, 0.427740, 0.849879,
		0.849093, 0.279544, -0.448214,
		-0.429297, 0.859589, -0.277146,
		35.314087, 34.630836, 42.462719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124008, 34.624580, 42.547901>,  <35.614594, 34.029125, 42.656723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124008, 34.624580, 42.547901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759804, 34.747787, 42.658245>,  <35.541283, 34.821712, 42.724453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759804, 34.747787, 42.658245>,  <36.124008, 34.624580, 42.547901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759804, 34.747787, 42.658245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408634, 0.568332, 0.714154,
		0.063191, 0.762970, -0.643337,
		-0.910508, 0.308018, 0.275863,
		35.486652, 34.840195, 42.741005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171337, 35.426357, 42.677982>,  <36.124008, 34.624580, 42.547901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171337, 35.426357, 42.677982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859287, 35.270435, 42.873718>,  <35.672058, 35.176884, 42.991161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859287, 35.270435, 42.873718>,  <36.171337, 35.426357, 42.677982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859287, 35.270435, 42.873718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278822, 0.483564, 0.829714,
		-0.560054, 0.783721, -0.268555,
		-0.780127, -0.389805, 0.489340,
		35.625248, 35.153492, 43.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988804, 35.914246, 43.045296>,  <36.171337, 35.426357, 42.677982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988804, 35.914246, 43.045296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775936, 35.628368, 43.226849>,  <35.648216, 35.456841, 43.335781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775936, 35.628368, 43.226849>,  <35.988804, 35.914246, 43.045296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775936, 35.628368, 43.226849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204945, 0.411410, 0.888110,
		-0.821457, 0.565647, -0.072468,
		-0.532171, -0.714692, 0.453883,
		35.616283, 35.413960, 43.363014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622257, 36.284256, 43.546280>,  <35.988804, 35.914246, 43.045296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622257, 36.284256, 43.546280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614109, 35.896111, 43.642590>,  <35.609219, 35.663223, 43.700375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614109, 35.896111, 43.642590>,  <35.622257, 36.284256, 43.546280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614109, 35.896111, 43.642590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037996, 0.239899, 0.970054,
		-0.999070, 0.028913, 0.031982,
		-0.020374, -0.970367, 0.240774,
		35.607998, 35.605000, 43.714821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096493, 36.218845, 44.090721>,  <35.622257, 36.284256, 43.546280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096493, 36.218845, 44.090721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371658, 35.931511, 44.132229>,  <35.536758, 35.759109, 44.157135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371658, 35.931511, 44.132229>,  <35.096493, 36.218845, 44.090721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371658, 35.931511, 44.132229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090886, 0.227111, 0.969619,
		-0.720076, -0.657586, 0.221520,
		0.687918, -0.718332, 0.103772,
		35.578033, 35.716011, 44.163361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884506, 35.933231, 44.675056>,  <35.096493, 36.218845, 44.090721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884506, 35.933231, 44.675056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251347, 35.780201, 44.630215>,  <35.471451, 35.688385, 44.603310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251347, 35.780201, 44.630215>,  <34.884506, 35.933231, 44.675056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251347, 35.780201, 44.630215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155153, 0.083478, 0.984357,
		-0.367230, -0.920146, 0.135915,
		0.917098, -0.382573, -0.112107,
		35.526478, 35.665428, 44.596584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885162, 35.420593, 45.060776>,  <34.884506, 35.933231, 44.675056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885162, 35.420593, 45.060776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278469, 35.484699, 45.026127>,  <35.514454, 35.523163, 45.005337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278469, 35.484699, 45.026127>,  <34.885162, 35.420593, 45.060776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278469, 35.484699, 45.026127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105031, -0.110199, 0.988344,
		0.148852, -0.980903, -0.125188,
		0.983266, 0.160266, -0.086622,
		35.573448, 35.532780, 45.000141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170280, 34.908501, 45.583771>,  <34.885162, 35.420593, 45.060776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170280, 34.908501, 45.583771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429878, 35.200859, 45.499287>,  <35.585636, 35.376274, 45.448597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429878, 35.200859, 45.499287>,  <35.170280, 34.908501, 45.583771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429878, 35.200859, 45.499287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248184, 0.059039, 0.966912,
		0.719177, -0.679935, -0.143079,
		0.648991, 0.730891, -0.211208,
		35.624577, 35.420128, 45.435925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738861, 34.692596, 45.849426>,  <35.170280, 34.908501, 45.583771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738861, 34.692596, 45.849426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828243, 35.078720, 45.795395>,  <35.881870, 35.310394, 45.762978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828243, 35.078720, 45.795395>,  <35.738861, 34.692596, 45.849426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828243, 35.078720, 45.795395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452866, 0.019895, 0.891356,
		0.863122, -0.260348, -0.432711,
		0.223454, 0.965310, -0.135075,
		35.895279, 35.368313, 45.754871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440182, 34.790291, 45.882206>,  <35.738861, 34.692596, 45.849426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440182, 34.790291, 45.882206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.259590, 35.131184, 45.987934>,  <36.151237, 35.335720, 46.051373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.259590, 35.131184, 45.987934>,  <36.440182, 34.790291, 45.882206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259590, 35.131184, 45.987934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510220, 0.003553, 0.860037,
		0.732014, 0.523148, -0.436431,
		-0.451477, 0.852235, 0.264319,
		36.124146, 35.386852, 46.067230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936737, 35.229931, 46.051762>,  <36.440182, 34.790291, 45.882206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936737, 35.229931, 46.051762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621391, 35.397270, 46.232193>,  <36.432186, 35.497673, 46.340450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621391, 35.397270, 46.232193>,  <36.936737, 35.229931, 46.051762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621391, 35.397270, 46.232193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506200, 0.024401, 0.862071,
		0.349638, 0.907959, -0.231005,
		-0.788362, 0.418348, 0.451078,
		36.384884, 35.522774, 46.367516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237076, 35.774212, 46.500763>,  <36.936737, 35.229931, 46.051762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237076, 35.774212, 46.500763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.867794, 35.736183, 46.649712>,  <36.646225, 35.713367, 46.739079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.867794, 35.736183, 46.649712>,  <37.237076, 35.774212, 46.500763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867794, 35.736183, 46.649712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369783, 0.044174, 0.928068,
		-0.104680, 0.994490, -0.005627,
		-0.923203, -0.095070, 0.372369,
		36.590832, 35.707661, 46.761421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075417, 36.390320, 46.889679>,  <37.237076, 35.774212, 46.500763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075417, 36.390320, 46.889679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.877644, 36.065308, 47.013187>,  <36.758980, 35.870300, 47.087292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.877644, 36.065308, 47.013187>,  <37.075417, 36.390320, 46.889679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877644, 36.065308, 47.013187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405951, 0.098250, 0.908598,
		-0.768599, 0.574581, 0.281269,
		-0.494429, -0.812529, 0.308766,
		36.729317, 35.821548, 47.105816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210232, 37.124424, 46.864738>,  <37.075417, 36.390320, 46.889679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210232, 37.124424, 46.864738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530468, 37.351189, 46.787113>,  <37.722610, 37.487247, 46.740540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530468, 37.351189, 46.787113>,  <37.210232, 37.124424, 46.864738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530468, 37.351189, 46.787113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285539, 0.076214, -0.955332,
		-0.526802, 0.820243, 0.222893,
		0.800592, 0.566916, -0.194061,
		37.770645, 37.521263, 46.728893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901649, 37.559864, 46.423462>,  <37.210232, 37.124424, 46.864738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901649, 37.559864, 46.423462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.291008, 37.621323, 46.355480>,  <37.524624, 37.658199, 46.314693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.291008, 37.621323, 46.355480>,  <36.901649, 37.559864, 46.423462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291008, 37.621323, 46.355480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215156, 0.358136, -0.908541,
		-0.078728, 0.920940, 0.381668,
		0.973401, 0.153646, -0.169951,
		37.583027, 37.667416, 46.304497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851986, 38.093956, 46.018024>,  <36.901649, 37.559864, 46.423462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851986, 38.093956, 46.018024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220760, 37.946815, 45.969494>,  <37.442024, 37.858532, 45.940376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220760, 37.946815, 45.969494>,  <36.851986, 38.093956, 46.018024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220760, 37.946815, 45.969494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019769, 0.357510, -0.933700,
		0.386844, 0.858410, 0.336872,
		0.921933, -0.367856, -0.121331,
		37.497341, 37.836460, 45.933094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313652, 38.655556, 45.909958>,  <36.851986, 38.093956, 46.018024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313652, 38.655556, 45.909958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.443802, 38.311108, 45.753700>,  <37.521893, 38.104439, 45.659946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.443802, 38.311108, 45.753700>,  <37.313652, 38.655556, 45.909958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443802, 38.311108, 45.753700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129867, 0.368518, -0.920505,
		0.936623, 0.350245, 0.008077,
		0.325379, -0.861117, -0.390648,
		37.541416, 38.052773, 45.636505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658066, 38.874817, 45.267189>,  <37.313652, 38.655556, 45.909958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658066, 38.874817, 45.267189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654282, 38.477642, 45.219879>,  <37.652012, 38.239338, 45.191494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654282, 38.477642, 45.219879>,  <37.658066, 38.874817, 45.267189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654282, 38.477642, 45.219879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130599, 0.116042, -0.984621,
		0.991390, -0.024760, 0.128578,
		-0.009459, -0.992936, -0.118276,
		37.651443, 38.179760, 45.184395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165550, 38.739475, 44.874439>,  <37.658066, 38.874817, 45.267189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165550, 38.739475, 44.874439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958466, 38.399040, 44.839523>,  <37.834213, 38.194778, 44.818573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958466, 38.399040, 44.839523>,  <38.165550, 38.739475, 44.874439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958466, 38.399040, 44.839523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087861, 0.048601, -0.994946,
		0.851031, -0.522765, 0.049616,
		-0.517712, -0.851090, -0.087291,
		37.803150, 38.143715, 44.813335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628571, 38.218826, 44.436462>,  <38.165550, 38.739475, 44.874439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628571, 38.218826, 44.436462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.239296, 38.129105, 44.416084>,  <38.005730, 38.075272, 44.403858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.239296, 38.129105, 44.416084>,  <38.628571, 38.218826, 44.436462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239296, 38.129105, 44.416084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037553, 0.063574, -0.997270,
		0.226935, -0.972442, -0.053446,
		-0.973186, -0.224308, -0.050945,
		37.947342, 38.061813, 44.400803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595497, 37.696953, 43.950363>,  <38.628571, 38.218826, 44.436462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595497, 37.696953, 43.950363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214493, 37.816757, 43.972366>,  <37.985889, 37.888641, 43.985569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214493, 37.816757, 43.972366>,  <38.595497, 37.696953, 43.950363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214493, 37.816757, 43.972366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103969, -0.150059, -0.983195,
		-0.286223, -0.942218, 0.174072,
		-0.952505, 0.299511, 0.055011,
		37.928741, 37.906609, 43.988869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098221, 37.149540, 43.667110>,  <38.595497, 37.696953, 43.950363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098221, 37.149540, 43.667110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.931007, 37.512741, 43.655960>,  <37.830681, 37.730663, 43.649269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.931007, 37.512741, 43.655960>,  <38.098221, 37.149540, 43.667110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931007, 37.512741, 43.655960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183325, -0.114377, -0.976376,
		-0.889743, -0.403044, 0.214273,
		-0.418030, 0.908005, -0.027878,
		37.805599, 37.785141, 43.647598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559639, 37.131977, 43.154976>,  <38.098221, 37.149540, 43.667110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559639, 37.131977, 43.154976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592472, 37.529934, 43.178459>,  <37.612171, 37.768707, 43.192551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592472, 37.529934, 43.178459>,  <37.559639, 37.131977, 43.154976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592472, 37.529934, 43.178459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115775, 0.068030, -0.990943,
		-0.989878, 0.074541, 0.120768,
		0.082082, 0.994895, 0.058712,
		37.617096, 37.828403, 43.196072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117462, 37.322556, 42.728489>,  <37.559639, 37.131977, 43.154976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117462, 37.322556, 42.728489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301109, 37.675144, 42.772694>,  <37.411297, 37.886700, 42.799217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301109, 37.675144, 42.772694>,  <37.117462, 37.322556, 42.728489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301109, 37.675144, 42.772694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048985, 0.149329, -0.987574,
		-0.887025, 0.447997, 0.111738,
		0.459116, 0.881476, 0.110513,
		37.438843, 37.939587, 42.805847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749046, 37.740982, 42.348297>,  <37.117462, 37.322556, 42.728489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749046, 37.740982, 42.348297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107380, 37.916962, 42.373383>,  <37.322380, 38.022549, 42.388435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107380, 37.916962, 42.373383>,  <36.749046, 37.740982, 42.348297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107380, 37.916962, 42.373383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034269, 0.209099, -0.977294,
		-0.443070, 0.873342, 0.202394,
		0.895832, 0.439945, 0.062717,
		37.376129, 38.048946, 42.392197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586628, 38.477016, 42.291180>,  <36.749046, 37.740982, 42.348297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586628, 38.477016, 42.291180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955021, 38.353058, 42.196724>,  <37.176056, 38.278683, 42.140053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955021, 38.353058, 42.196724>,  <36.586628, 38.477016, 42.291180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955021, 38.353058, 42.196724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156086, 0.261851, -0.952403,
		0.356975, 0.914003, 0.192790,
		0.920981, -0.309893, -0.236137,
		37.231316, 38.260090, 42.125881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841816, 38.905640, 41.802513>,  <36.586628, 38.477016, 42.291180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841816, 38.905640, 41.802513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036236, 38.563057, 41.732956>,  <37.152889, 38.357506, 41.691223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036236, 38.563057, 41.732956>,  <36.841816, 38.905640, 41.802513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036236, 38.563057, 41.732956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302478, 0.021813, -0.952907,
		0.819916, 0.515759, -0.248457,
		0.486051, -0.856456, -0.173891,
		37.182053, 38.306122, 41.680790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.628706, 41.176189, 39.049046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.619616, 41.225811, 38.652241>,  <27.614161, 41.255585, 38.414158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.619616, 41.225811, 38.652241>,  <27.628706, 41.176189, 39.049046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619616, 41.225811, 38.652241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242070, -0.963428, -0.114931,
		-0.969993, 0.237525, 0.051923,
		-0.022725, 0.124051, -0.992016,
		27.612799, 41.263027, 38.354637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012686, 40.881832, 38.851807>,  <27.628706, 41.176189, 39.049046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012686, 40.881832, 38.851807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229321, 40.885414, 38.515568>,  <27.359303, 40.887566, 38.313824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229321, 40.885414, 38.515568>,  <27.012686, 40.881832, 38.851807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229321, 40.885414, 38.515568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275650, -0.942765, -0.187647,
		-0.794165, 0.333337, -0.508122,
		0.541589, 0.008959, -0.840596,
		27.391798, 40.888103, 38.263390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554813, 40.670139, 38.237469>,  <27.012686, 40.881832, 38.851807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554813, 40.670139, 38.237469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941936, 40.607109, 38.158958>,  <27.174210, 40.569290, 38.111855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941936, 40.607109, 38.158958>,  <26.554813, 40.670139, 38.237469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941936, 40.607109, 38.158958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220126, -0.908015, -0.356446,
		-0.122052, 0.388175, -0.913468,
		0.967806, -0.157573, -0.196272,
		27.232279, 40.559837, 38.100079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543650, 40.382542, 37.576015>,  <26.554813, 40.670139, 38.237469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543650, 40.382542, 37.576015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.872616, 40.274185, 37.776115>,  <27.069996, 40.209171, 37.896175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.872616, 40.274185, 37.776115>,  <26.543650, 40.382542, 37.576015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872616, 40.274185, 37.776115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022840, -0.894364, -0.446756,
		0.568430, 0.355993, -0.741725,
		0.822415, -0.270890, 0.500253,
		27.119341, 40.192917, 37.926189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873005, 39.902298, 37.156338>,  <26.543650, 40.382542, 37.576015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873005, 39.902298, 37.156338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068598, 39.848995, 37.501160>,  <27.185953, 39.817013, 37.708054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068598, 39.848995, 37.501160>,  <26.873005, 39.902298, 37.156338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068598, 39.848995, 37.501160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225536, -0.935344, -0.272515,
		0.842632, 0.327680, -0.427315,
		0.488984, -0.133254, 0.862054,
		27.215294, 39.809017, 37.759777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501759, 39.629681, 36.887337>,  <26.873005, 39.902298, 37.156338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501759, 39.629681, 36.887337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449028, 39.516861, 37.267456>,  <27.417391, 39.449169, 37.495529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449028, 39.516861, 37.267456>,  <27.501759, 39.629681, 36.887337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449028, 39.516861, 37.267456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015045, -0.959124, -0.282586,
		0.991159, -0.022955, 0.130680,
		-0.131825, -0.282054, 0.950299,
		27.409481, 39.432243, 37.552547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127316, 39.135662, 37.085312>,  <27.501759, 39.629681, 36.887337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127316, 39.135662, 37.085312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.813190, 39.089142, 37.328545>,  <27.624716, 39.061230, 37.474483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.813190, 39.089142, 37.328545>,  <28.127316, 39.135662, 37.085312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813190, 39.089142, 37.328545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038588, -0.989483, -0.139407,
		0.617895, -0.086013, 0.781541,
		-0.785313, -0.116297, 0.608078,
		27.577597, 39.054253, 37.510967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342928, 38.670700, 37.472286>,  <28.127316, 39.135662, 37.085312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342928, 38.670700, 37.472286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945183, 38.651882, 37.510303>,  <27.706535, 38.640591, 37.533115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945183, 38.651882, 37.510303>,  <28.342928, 38.670700, 37.472286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945183, 38.651882, 37.510303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049707, -0.998429, 0.025852,
		0.093681, 0.030431, 0.995137,
		-0.994361, -0.047044, 0.095046,
		27.646875, 38.637768, 37.538818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234079, 38.142780, 37.849442>,  <28.342928, 38.670700, 37.472286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234079, 38.142780, 37.849442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860418, 38.200035, 37.718681>,  <27.636221, 38.234390, 37.640224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860418, 38.200035, 37.718681>,  <28.234079, 38.142780, 37.849442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860418, 38.200035, 37.718681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177585, -0.981016, 0.077913,
		-0.309547, 0.130836, 0.941840,
		-0.934154, 0.143139, -0.326905,
		27.580172, 38.242977, 37.620609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825472, 37.743885, 38.217155>,  <28.234079, 38.142780, 37.849442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825472, 37.743885, 38.217155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596260, 37.818081, 37.897850>,  <27.458733, 37.862598, 37.706264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596260, 37.818081, 37.897850>,  <27.825472, 37.743885, 38.217155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596260, 37.818081, 37.897850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204342, -0.975624, -0.080018,
		-0.793650, 0.117267, 0.596965,
		-0.573030, 0.185492, -0.798267,
		27.424351, 37.873730, 37.658371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246820, 37.294186, 38.259014>,  <27.825472, 37.743885, 38.217155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246820, 37.294186, 38.259014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240128, 37.389198, 37.870518>,  <27.236113, 37.446205, 37.637421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240128, 37.389198, 37.870518>,  <27.246820, 37.294186, 38.259014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240128, 37.389198, 37.870518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240589, -0.943789, -0.226671,
		-0.970483, 0.229877, 0.072937,
		-0.016730, 0.237528, -0.971237,
		27.235109, 37.460457, 37.579147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561481, 37.180279, 38.025562>,  <27.246820, 37.294186, 38.259014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561481, 37.180279, 38.025562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774475, 37.156555, 37.687817>,  <26.902271, 37.142323, 37.485168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774475, 37.156555, 37.687817>,  <26.561481, 37.180279, 38.025562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774475, 37.156555, 37.687817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339772, -0.928622, -0.149049,
		-0.775253, 0.366256, -0.514625,
		0.532483, -0.059305, -0.844361,
		26.934219, 37.138763, 37.434509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131258, 36.814709, 37.476620>,  <26.561481, 37.180279, 38.025562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131258, 36.814709, 37.476620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514217, 36.798229, 37.362289>,  <26.743992, 36.788342, 37.293694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514217, 36.798229, 37.362289>,  <26.131258, 36.814709, 37.476620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514217, 36.798229, 37.362289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125609, -0.950646, -0.283716,
		-0.260029, 0.307530, -0.915320,
		0.957396, -0.041198, -0.285824,
		26.801435, 36.785870, 37.276543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130505, 36.439789, 36.879829>,  <26.131258, 36.814709, 37.476620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130505, 36.439789, 36.879829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.518520, 36.400379, 36.968662>,  <26.751329, 36.376732, 37.021961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.518520, 36.400379, 36.968662>,  <26.130505, 36.439789, 36.879829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518520, 36.400379, 36.968662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015100, -0.936765, -0.349633,
		0.242486, 0.335803, -0.910185,
		0.970038, -0.098525, 0.222081,
		26.809532, 36.370823, 37.035286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419762, 36.090179, 36.295593>,  <26.130505, 36.439789, 36.879829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419762, 36.090179, 36.295593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682650, 36.035843, 36.592136>,  <26.840382, 36.003242, 36.770061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682650, 36.035843, 36.592136>,  <26.419762, 36.090179, 36.295593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682650, 36.035843, 36.592136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057089, -0.971826, -0.228680,
		0.751533, 0.192616, -0.630949,
		0.657220, -0.135840, 0.741356,
		26.879816, 35.995090, 36.814545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011353, 35.912548, 35.941242>,  <26.419762, 36.090179, 36.295593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011353, 35.912548, 35.941242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052954, 35.790005, 36.319729>,  <27.077915, 35.716480, 36.546822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052954, 35.790005, 36.319729>,  <27.011353, 35.912548, 35.941242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052954, 35.790005, 36.319729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139882, -0.937415, -0.318884,
		0.984691, 0.165524, -0.054642,
		0.104005, -0.306358, 0.946217,
		27.084156, 35.698097, 36.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562771, 35.419376, 35.939968>,  <27.011353, 35.912548, 35.941242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562771, 35.419376, 35.939968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339380, 35.328815, 36.259178>,  <27.205345, 35.274479, 36.450706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339380, 35.328815, 36.259178>,  <27.562771, 35.419376, 35.939968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339380, 35.328815, 36.259178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091344, -0.972968, -0.212106,
		0.824476, -0.045561, 0.564060,
		-0.558476, -0.226400, 0.798027,
		27.171837, 35.260895, 36.498585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943405, 34.978558, 36.236431>,  <27.562771, 35.419376, 35.939968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943405, 34.978558, 36.236431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577812, 34.913361, 36.385059>,  <27.358456, 34.874241, 36.474236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577812, 34.913361, 36.385059>,  <27.943405, 34.978558, 36.236431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577812, 34.913361, 36.385059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138588, -0.986098, -0.091671,
		0.381350, -0.032290, 0.923866,
		-0.913983, -0.162995, 0.371574,
		27.303617, 34.864464, 36.496532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937498, 34.387318, 36.713844>,  <27.943405, 34.978558, 36.236431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937498, 34.387318, 36.713844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539557, 34.394329, 36.673923>,  <27.300793, 34.398537, 36.649971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539557, 34.394329, 36.673923>,  <27.937498, 34.387318, 36.713844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539557, 34.394329, 36.673923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010529, -0.997476, -0.070222,
		-0.100782, -0.068810, 0.992526,
		-0.994853, 0.017528, -0.099803,
		27.241100, 34.399586, 36.643982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760736, 33.911572, 37.202438>,  <27.937498, 34.387318, 36.713844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760736, 33.911572, 37.202438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460474, 33.957817, 36.942238>,  <27.280317, 33.985565, 36.786118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460474, 33.957817, 36.942238>,  <27.760736, 33.911572, 37.202438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460474, 33.957817, 36.942238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092743, -0.993261, -0.069504,
		-0.654153, 0.008156, 0.756318,
		-0.750655, 0.115609, -0.650501,
		27.235277, 33.992500, 36.747089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375971, 33.476765, 37.130291>,  <27.760736, 33.911572, 37.202438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375971, 33.476765, 37.130291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775440, 33.480789, 37.150505>,  <29.015121, 33.483204, 37.162632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775440, 33.480789, 37.150505>,  <28.375971, 33.476765, 37.130291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775440, 33.480789, 37.150505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002457, 0.970340, -0.241731,
		-0.051468, 0.241534, 0.969027,
		0.998672, 0.010061, 0.050535,
		29.075041, 33.483807, 37.165665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678486, 34.051941, 37.415485>,  <28.375971, 33.476765, 37.130291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678486, 34.051941, 37.415485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024281, 34.005180, 37.219936>,  <29.231758, 33.977123, 37.102608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024281, 34.005180, 37.219936>,  <28.678486, 34.051941, 37.415485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024281, 34.005180, 37.219936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136449, 0.990637, 0.004403,
		0.483782, -0.070513, 0.872343,
		0.864486, -0.116900, -0.488874,
		29.283627, 33.970112, 37.073273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146805, 34.519394, 37.745838>,  <28.678486, 34.051941, 37.415485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146805, 34.519394, 37.745838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294207, 34.434395, 37.383831>,  <29.382647, 34.383396, 37.166626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294207, 34.434395, 37.383831>,  <29.146805, 34.519394, 37.745838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294207, 34.434395, 37.383831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156511, 0.973810, -0.164919,
		0.916357, -0.080872, 0.392110,
		0.368503, -0.212494, -0.905015,
		29.404758, 34.370647, 37.112328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733833, 34.823322, 37.739094>,  <29.146805, 34.519394, 37.745838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733833, 34.823322, 37.739094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691795, 34.766582, 37.345375>,  <29.666573, 34.732540, 37.109146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691795, 34.766582, 37.345375>,  <29.733833, 34.823322, 37.739094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691795, 34.766582, 37.345375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247817, 0.954815, -0.164060,
		0.963090, -0.261166, -0.065193,
		-0.105094, -0.141849, -0.984294,
		29.660267, 34.724030, 37.050087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217049, 35.233948, 37.417423>,  <29.733833, 34.823322, 37.739094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217049, 35.233948, 37.417423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977581, 35.188999, 37.100193>,  <29.833900, 35.162029, 36.909855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977581, 35.188999, 37.100193>,  <30.217049, 35.233948, 37.417423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977581, 35.188999, 37.100193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230116, 0.924243, -0.304667,
		0.767231, -0.364894, -0.527455,
		-0.598668, -0.112374, -0.793076,
		29.797981, 35.155289, 36.862270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603886, 35.617424, 37.020187>,  <30.217049, 35.233948, 37.417423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603886, 35.617424, 37.020187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249205, 35.559750, 36.844475>,  <30.036396, 35.525143, 36.739048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249205, 35.559750, 36.844475>,  <30.603886, 35.617424, 37.020187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249205, 35.559750, 36.844475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087557, 0.880560, -0.465776,
		0.453972, -0.451468, -0.768171,
		-0.886704, -0.144190, -0.439279,
		29.983194, 35.516491, 36.712692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727411, 35.812607, 36.257004>,  <30.603886, 35.617424, 37.020187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727411, 35.812607, 36.257004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.333872, 35.825302, 36.327473>,  <30.097748, 35.832920, 36.369755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.333872, 35.825302, 36.327473>,  <30.727411, 35.812607, 36.257004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333872, 35.825302, 36.327473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063571, 0.858061, -0.509597,
		-0.167345, -0.512565, -0.842183,
		-0.983847, 0.031740, 0.176176,
		30.038717, 35.834824, 36.380325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441883, 35.947834, 35.644970>,  <30.727411, 35.812607, 36.257004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441883, 35.947834, 35.644970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173151, 36.055134, 35.921139>,  <30.011911, 36.119514, 36.086842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173151, 36.055134, 35.921139>,  <30.441883, 35.947834, 35.644970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173151, 36.055134, 35.921139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107579, 0.886897, -0.449266,
		-0.732853, -0.376105, -0.566984,
		-0.671828, 0.268251, 0.690426,
		29.971603, 36.135609, 36.128265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841785, 36.152229, 35.322193>,  <30.441883, 35.947834, 35.644970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841785, 36.152229, 35.322193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.853432, 36.336761, 35.676891>,  <29.860418, 36.447479, 35.889709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.853432, 36.336761, 35.676891>,  <29.841785, 36.152229, 35.322193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853432, 36.336761, 35.676891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164109, 0.877294, -0.451025,
		-0.986013, -0.132392, 0.101250,
		0.029114, 0.461332, 0.886750,
		29.862165, 36.475163, 35.942917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489767, 36.786415, 35.131107>,  <29.841785, 36.152229, 35.322193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489767, 36.786415, 35.131107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665558, 36.840450, 35.486324>,  <29.771032, 36.872871, 35.699455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665558, 36.840450, 35.486324>,  <29.489767, 36.786415, 35.131107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665558, 36.840450, 35.486324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010072, 0.989306, -0.145506,
		-0.898197, 0.055002, 0.436138,
		0.439477, 0.135086, 0.888038,
		29.797401, 36.880978, 35.752735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127695, 37.388092, 35.464149>,  <29.489767, 36.786415, 35.131107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127695, 37.388092, 35.464149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.464638, 37.345421, 35.675453>,  <29.666803, 37.319820, 35.802235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.464638, 37.345421, 35.675453>,  <29.127695, 37.388092, 35.464149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464638, 37.345421, 35.675453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059901, 0.992673, 0.104937,
		-0.535580, -0.056751, 0.842576,
		0.842358, -0.106674, 0.528256,
		29.717344, 37.313419, 35.833931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981737, 37.868008, 35.968658>,  <29.127695, 37.388092, 35.464149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981737, 37.868008, 35.968658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375357, 37.798542, 35.953243>,  <29.611528, 37.756863, 35.943993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375357, 37.798542, 35.953243>,  <28.981737, 37.868008, 35.968658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375357, 37.798542, 35.953243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177863, 0.964118, 0.197083,
		0.002933, -0.200794, 0.979629,
		0.984051, -0.173662, -0.038541,
		29.670572, 37.746445, 35.941681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201298, 38.043247, 36.628593>,  <28.981737, 37.868008, 35.968658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201298, 38.043247, 36.628593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515455, 38.080219, 36.383770>,  <29.703949, 38.102402, 36.236877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515455, 38.080219, 36.383770>,  <29.201298, 38.043247, 36.628593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515455, 38.080219, 36.383770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076912, 0.966555, 0.244655,
		0.614199, -0.239225, 0.752018,
		0.785395, 0.092427, -0.612056,
		29.751074, 38.107948, 36.200153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687412, 38.356682, 37.038143>,  <29.201298, 38.043247, 36.628593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687412, 38.356682, 37.038143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842215, 38.411186, 36.673363>,  <29.935097, 38.443890, 36.454494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842215, 38.411186, 36.673363>,  <29.687412, 38.356682, 37.038143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842215, 38.411186, 36.673363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104432, 0.976180, 0.190173,
		0.916144, -0.168835, 0.363558,
		0.387006, 0.136259, -0.911954,
		29.958317, 38.452065, 36.399776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346972, 38.693409, 37.088627>,  <29.687412, 38.356682, 37.038143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346972, 38.693409, 37.088627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235651, 38.797276, 36.718735>,  <30.168859, 38.859596, 36.496799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235651, 38.797276, 36.718735>,  <30.346972, 38.693409, 37.088627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235651, 38.797276, 36.718735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175951, 0.960254, 0.216686,
		0.944241, -0.102403, -0.312926,
		-0.278300, 0.259663, -0.924729,
		30.152161, 38.875175, 36.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676483, 39.382946, 37.067482>,  <30.346972, 38.693409, 37.088627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676483, 39.382946, 37.067482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.425474, 39.367294, 36.756435>,  <30.274868, 39.357903, 36.569809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.425474, 39.367294, 36.756435>,  <30.676483, 39.382946, 37.067482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425474, 39.367294, 36.756435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215151, 0.968562, 0.124890,
		0.748281, 0.245676, -0.616214,
		-0.627524, -0.039126, -0.777614,
		30.237217, 39.355556, 36.523151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775543, 40.013828, 36.733372>,  <30.676483, 39.382946, 37.067482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775543, 40.013828, 36.733372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426451, 39.919071, 36.562622>,  <30.216995, 39.862217, 36.460171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426451, 39.919071, 36.562622>,  <30.775543, 40.013828, 36.733372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426451, 39.919071, 36.562622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317615, 0.939548, 0.127945,
		0.370760, 0.247243, -0.895214,
		-0.872730, -0.236897, -0.426875,
		30.164631, 39.848003, 36.434559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651293, 40.565269, 36.292339>,  <30.775543, 40.013828, 36.733372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651293, 40.565269, 36.292339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.303635, 40.376404, 36.351204>,  <30.095039, 40.263084, 36.386520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.303635, 40.376404, 36.351204>,  <30.651293, 40.565269, 36.292339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303635, 40.376404, 36.351204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463358, 0.881441, 0.091443,
		-0.172886, 0.011291, -0.984877,
		-0.869143, -0.472160, 0.147157,
		30.042892, 40.234756, 36.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138126, 40.879250, 35.902466>,  <30.651293, 40.565269, 36.292339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138126, 40.879250, 35.902466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.911522, 40.717426, 36.189632>,  <29.775560, 40.620331, 36.361931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.911522, 40.717426, 36.189632>,  <30.138126, 40.879250, 35.902466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911522, 40.717426, 36.189632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542176, 0.839060, 0.044995,
		-0.620575, -0.363745, -0.694677,
		-0.566509, -0.404560, 0.717913,
		29.741570, 40.596058, 36.405006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549995, 40.972862, 35.681423>,  <30.138126, 40.879250, 35.902466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549995, 40.972862, 35.681423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504078, 40.923176, 36.075661>,  <29.476526, 40.893364, 36.312202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504078, 40.923176, 36.075661>,  <29.549995, 40.972862, 35.681423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504078, 40.923176, 36.075661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537269, 0.842284, 0.043576,
		-0.835562, -0.524526, -0.163426,
		-0.114794, -0.124214, 0.985592,
		29.469639, 40.885910, 36.371338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791405, 41.269955, 35.826485>,  <29.549995, 40.972862, 35.681423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791405, 41.269955, 35.826485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984062, 41.244141, 36.176079>,  <29.099657, 41.228653, 36.385838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984062, 41.244141, 36.176079>,  <28.791405, 41.269955, 35.826485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984062, 41.244141, 36.176079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351370, 0.899398, 0.260043,
		-0.802843, -0.432342, 0.410516,
		0.481644, -0.064530, 0.873988,
		29.128555, 41.224781, 36.438274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328817, 41.547192, 36.228191>,  <28.791405, 41.269955, 35.826485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328817, 41.547192, 36.228191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654251, 41.578320, 36.458679>,  <28.849510, 41.596996, 36.596970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654251, 41.578320, 36.458679>,  <28.328817, 41.547192, 36.228191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654251, 41.578320, 36.458679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259348, 0.935529, 0.239844,
		-0.520405, -0.344574, 0.781312,
		0.813584, 0.077815, 0.576218,
		28.898327, 41.601665, 36.631546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.502617, 37.081722, 45.929447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.319321, 36.774513, 46.108402>,  <42.209343, 36.590187, 46.215775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.319321, 36.774513, 46.108402>,  <42.502617, 37.081722, 45.929447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319321, 36.774513, 46.108402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245758, 0.374240, 0.894174,
		-0.854176, 0.519697, 0.017255,
		-0.458242, -0.768023, 0.447387,
		42.181847, 36.544106, 46.242619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176365, 37.430332, 46.411663>,  <42.502617, 37.081722, 45.929447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176365, 37.430332, 46.411663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.162533, 37.048950, 46.531487>,  <42.154236, 36.820122, 46.603378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.162533, 37.048950, 46.531487>,  <42.176365, 37.430332, 46.411663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162533, 37.048950, 46.531487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014533, 0.300182, 0.953771,
		-0.999296, 0.028627, -0.024236,
		-0.034578, -0.953452, 0.299555,
		42.152161, 36.762913, 46.621353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766392, 37.478149, 47.020443>,  <42.176365, 37.430332, 46.411663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766392, 37.478149, 47.020443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.958542, 37.128052, 47.043034>,  <42.073830, 36.917992, 47.056587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.958542, 37.128052, 47.043034>,  <41.766392, 37.478149, 47.020443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958542, 37.128052, 47.043034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017138, 0.055008, 0.998339,
		-0.876898, -0.480541, 0.011425,
		0.480371, -0.875245, 0.056472,
		42.102654, 36.865479, 47.059975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485359, 37.166134, 47.499512>,  <41.766392, 37.478149, 47.020443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485359, 37.166134, 47.499512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.828503, 36.961510, 47.479984>,  <42.034389, 36.838737, 47.468266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.828503, 36.961510, 47.479984>,  <41.485359, 37.166134, 47.499512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828503, 36.961510, 47.479984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018626, -0.063993, 0.997777,
		-0.513544, -0.856863, -0.045369,
		0.857861, -0.511557, -0.048823,
		42.085861, 36.808044, 47.465336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470985, 36.665619, 47.850647>,  <41.485359, 37.166134, 47.499512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470985, 36.665619, 47.850647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.869678, 36.673515, 47.819313>,  <42.108894, 36.678253, 47.800514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.869678, 36.673515, 47.819313>,  <41.470985, 36.665619, 47.850647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869678, 36.673515, 47.819313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080782, -0.248294, 0.965310,
		-0.000391, -0.968483, -0.249078,
		0.996731, 0.019743, -0.078333,
		42.168697, 36.679440, 47.795815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680050, 36.029865, 48.063477>,  <41.470985, 36.665619, 47.850647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680050, 36.029865, 48.063477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.957466, 36.301945, 48.158421>,  <42.123917, 36.465191, 48.215385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.957466, 36.301945, 48.158421>,  <41.680050, 36.029865, 48.063477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957466, 36.301945, 48.158421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073552, -0.260895, 0.962561,
		0.716656, -0.685030, -0.130910,
		0.693538, 0.680196, 0.237358,
		42.165527, 36.506004, 48.229630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145542, 35.574226, 48.536308>,  <41.680050, 36.029865, 48.063477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145542, 35.574226, 48.536308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.254490, 35.954617, 48.594898>,  <42.319859, 36.182850, 48.630051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.254490, 35.954617, 48.594898>,  <42.145542, 35.574226, 48.536308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254490, 35.954617, 48.594898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045473, -0.164779, 0.985282,
		0.961117, -0.261701, -0.088125,
		0.272371, 0.950979, 0.146471,
		42.336201, 36.239910, 48.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480343, 35.580933, 49.075424>,  <42.145542, 35.574226, 48.536308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480343, 35.580933, 49.075424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.385185, 35.969261, 49.063362>,  <42.328091, 36.202259, 49.056126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.385185, 35.969261, 49.063362>,  <42.480343, 35.580933, 49.075424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385185, 35.969261, 49.063362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051115, 0.043513, 0.997744,
		0.969945, 0.235819, -0.059975,
		-0.237897, 0.970822, -0.030151,
		42.313816, 36.260509, 49.054317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967182, 35.988438, 49.373901>,  <42.480343, 35.580933, 49.075424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967182, 35.988438, 49.373901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.627419, 36.195583, 49.414551>,  <42.423561, 36.319870, 49.438938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.627419, 36.195583, 49.414551>,  <42.967182, 35.988438, 49.373901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627419, 36.195583, 49.414551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159185, 0.067829, 0.984916,
		0.503158, 0.852770, -0.140050,
		-0.849407, 0.517863, 0.101620,
		42.372597, 36.350941, 49.445038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053211, 36.550678, 49.904510>,  <42.967182, 35.988438, 49.373901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053211, 36.550678, 49.904510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.653801, 36.568230, 49.891716>,  <42.414154, 36.578762, 49.884041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.653801, 36.568230, 49.891716>,  <43.053211, 36.550678, 49.904510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653801, 36.568230, 49.891716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028319, 0.081702, 0.996254,
		0.046326, 0.995690, -0.080339,
		-0.998525, 0.043877, -0.031982,
		42.354244, 36.581394, 49.882122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927109, 37.051262, 50.305244>,  <43.053211, 36.550678, 49.904510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927109, 37.051262, 50.305244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582020, 36.849468, 50.291340>,  <42.374966, 36.728390, 50.282997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582020, 36.849468, 50.291340>,  <42.927109, 37.051262, 50.305244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582020, 36.849468, 50.291340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077842, 0.064566, 0.994873,
		-0.499657, 0.861001, -0.094973,
		-0.862719, -0.504488, -0.034761,
		42.323204, 36.698120, 50.280910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480946, 37.403824, 50.719528>,  <42.927109, 37.051262, 50.305244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480946, 37.403824, 50.719528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308830, 37.046883, 50.665028>,  <42.205563, 36.832718, 50.632328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308830, 37.046883, 50.665028>,  <42.480946, 37.403824, 50.719528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308830, 37.046883, 50.665028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121513, -0.092304, 0.988289,
		-0.894475, 0.441807, -0.068715,
		-0.430290, -0.892349, -0.136249,
		42.179745, 36.779179, 50.624153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918621, 37.347683, 51.099854>,  <42.480946, 37.403824, 50.719528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918621, 37.347683, 51.099854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.037647, 36.968243, 51.056759>,  <42.109062, 36.740578, 51.030903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.037647, 36.968243, 51.056759>,  <41.918621, 37.347683, 51.099854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037647, 36.968243, 51.056759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128147, -0.151511, 0.980114,
		-0.946063, -0.277838, -0.166645,
		0.297561, -0.948605, -0.107735,
		42.126915, 36.683662, 51.024437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601341, 37.544289, 51.730946>,  <41.918621, 37.347683, 51.099854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601341, 37.544289, 51.730946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.264523, 37.452534, 51.926224>,  <41.062431, 37.397480, 52.043392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.264523, 37.452534, 51.926224>,  <41.601341, 37.544289, 51.730946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264523, 37.452534, 51.926224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516319, 0.080846, -0.852571,
		0.156103, -0.969971, -0.186516,
		-0.842049, -0.229391, 0.488194,
		41.011909, 37.383717, 52.072681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309727, 36.885738, 51.620125>,  <41.601341, 37.544289, 51.730946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309727, 36.885738, 51.620125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.020985, 37.155338, 51.682930>,  <40.847740, 37.317097, 51.720612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.020985, 37.155338, 51.682930>,  <41.309727, 36.885738, 51.620125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020985, 37.155338, 51.682930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296536, -0.096246, -0.950160,
		-0.625294, -0.732436, 0.269340,
		-0.721854, 0.673998, 0.157012,
		40.804428, 37.357536, 51.730034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682693, 36.640331, 51.212624>,  <41.309727, 36.885738, 51.620125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682693, 36.640331, 51.212624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.538006, 37.002480, 51.301590>,  <40.451195, 37.219769, 51.354969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.538006, 37.002480, 51.301590>,  <40.682693, 36.640331, 51.212624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538006, 37.002480, 51.301590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549040, -0.014059, -0.835678,
		-0.753468, -0.424398, 0.502168,
		-0.361720, 0.905366, 0.222419,
		40.429489, 37.274090, 51.368317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967098, 36.568150, 51.181953>,  <40.682693, 36.640331, 51.212624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967098, 36.568150, 51.181953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033607, 36.959515, 51.132854>,  <40.073513, 37.194332, 51.103394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033607, 36.959515, 51.132854>,  <39.967098, 36.568150, 51.181953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033607, 36.959515, 51.132854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614104, 0.005349, -0.789207,
		-0.771511, 0.206605, 0.601735,
		0.166273, 0.978410, -0.122750,
		40.083488, 37.253036, 51.096031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291031, 36.862671, 51.007778>,  <39.967098, 36.568150, 51.181953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291031, 36.862671, 51.007778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552429, 37.134834, 50.875114>,  <39.709267, 37.298134, 50.795517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552429, 37.134834, 50.875114>,  <39.291031, 36.862671, 51.007778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552429, 37.134834, 50.875114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586046, 0.177496, -0.790598,
		-0.479061, 0.711015, 0.514742,
		0.653491, 0.680407, -0.331656,
		39.748478, 37.338955, 50.775620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901634, 37.333206, 50.781792>,  <39.291031, 36.862671, 51.007778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901634, 37.333206, 50.781792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231441, 37.415634, 50.570999>,  <39.429325, 37.465092, 50.444523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231441, 37.415634, 50.570999>,  <38.901634, 37.333206, 50.781792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231441, 37.415634, 50.570999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565635, 0.275283, -0.777352,
		-0.015120, 0.939018, 0.343536,
		0.824517, 0.206069, -0.526979,
		39.478798, 37.477455, 50.412907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797924, 37.963974, 50.494678>,  <38.901634, 37.333206, 50.781792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797924, 37.963974, 50.494678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062813, 37.789284, 50.251125>,  <39.221745, 37.684471, 50.104992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062813, 37.789284, 50.251125>,  <38.797924, 37.963974, 50.494678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062813, 37.789284, 50.251125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557983, 0.254941, -0.789721,
		0.500120, 0.862715, -0.074858,
		0.662220, -0.436725, -0.608881,
		39.261478, 37.658268, 50.068462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873367, 38.472740, 50.051495>,  <38.797924, 37.963974, 50.494678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873367, 38.472740, 50.051495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.982628, 38.140198, 49.857906>,  <39.048183, 37.940670, 49.741753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.982628, 38.140198, 49.857906>,  <38.873367, 38.472740, 50.051495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982628, 38.140198, 49.857906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269640, 0.416770, -0.868100,
		0.923408, 0.367621, -0.110327,
		0.273150, -0.831359, -0.483974,
		39.064571, 37.890789, 49.712715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934376, 38.753784, 49.361481>,  <38.873367, 38.472740, 50.051495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934376, 38.753784, 49.361481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944843, 38.357227, 49.310165>,  <38.951122, 38.119293, 49.279377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944843, 38.357227, 49.310165>,  <38.934376, 38.753784, 49.361481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944843, 38.357227, 49.310165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364622, 0.110028, -0.924632,
		0.930788, 0.070972, -0.358604,
		0.026166, -0.991391, -0.128290,
		38.952694, 38.059811, 49.271679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052605, 38.653099, 48.758636>,  <38.934376, 38.753784, 49.361481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052605, 38.653099, 48.758636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.895184, 38.293869, 48.837196>,  <38.800732, 38.078331, 48.884335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.895184, 38.293869, 48.837196>,  <39.052605, 38.653099, 48.758636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895184, 38.293869, 48.837196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372017, -0.039786, -0.927373,
		0.840667, -0.438034, -0.318442,
		-0.393551, -0.898077, 0.196403,
		38.777119, 38.024445, 48.896118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375294, 38.141487, 48.175972>,  <39.052605, 38.653099, 48.758636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375294, 38.141487, 48.175972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.033337, 38.010906, 48.337261>,  <38.828163, 37.932556, 48.434036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.033337, 38.010906, 48.337261>,  <39.375294, 38.141487, 48.175972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033337, 38.010906, 48.337261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325140, -0.268520, -0.906742,
		0.404285, -0.906269, 0.123411,
		-0.854890, -0.326457, 0.403223,
		38.776871, 37.912968, 48.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251846, 37.578510, 47.885086>,  <39.375294, 38.141487, 48.175972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251846, 37.578510, 47.885086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884834, 37.662048, 48.020447>,  <38.664627, 37.712173, 48.101665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884834, 37.662048, 48.020447>,  <39.251846, 37.578510, 47.885086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884834, 37.662048, 48.020447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394674, -0.374118, -0.839207,
		-0.048665, -0.903558, 0.425693,
		-0.917532, 0.208850, 0.338404,
		38.609573, 37.724705, 48.121967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828377, 37.027298, 47.779934>,  <39.251846, 37.578510, 47.885086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828377, 37.027298, 47.779934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576244, 37.335388, 47.818798>,  <38.424965, 37.520241, 47.842117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576244, 37.335388, 47.818798>,  <38.828377, 37.027298, 47.779934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576244, 37.335388, 47.818798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442590, -0.253707, -0.860085,
		-0.637808, -0.585140, 0.500812,
		-0.630330, 0.770224, 0.097161,
		38.387146, 37.566456, 47.847946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256733, 36.758415, 47.512062>,  <38.828377, 37.027298, 47.779934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256733, 36.758415, 47.512062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.198227, 37.154060, 47.505714>,  <38.163124, 37.391449, 47.501907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.198227, 37.154060, 47.505714>,  <38.256733, 36.758415, 47.512062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198227, 37.154060, 47.505714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495336, -0.087114, -0.864322,
		-0.856299, -0.118565, 0.502688,
		-0.146270, 0.989117, -0.015866,
		38.154346, 37.450794, 47.500954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663864, 36.766178, 47.299152>,  <38.256733, 36.758415, 47.512062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663864, 36.766178, 47.299152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794186, 37.136971, 47.224792>,  <37.872379, 37.359447, 47.180176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794186, 37.136971, 47.224792>,  <37.663864, 36.766178, 47.299152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794186, 37.136971, 47.224792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197123, -0.125702, -0.972287,
		-0.924660, 0.353417, 0.141775,
		0.325801, 0.926982, -0.185898,
		37.891926, 37.415066, 47.169022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069252, 36.564304, 47.598415>,  <37.663864, 36.766178, 47.299152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069252, 36.564304, 47.598415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924023, 36.192078, 47.579582>,  <36.836884, 35.968742, 47.568283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924023, 36.192078, 47.579582>,  <37.069252, 36.564304, 47.598415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924023, 36.192078, 47.579582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304750, -0.166349, 0.937793,
		-0.880512, 0.326144, 0.343989,
		-0.363078, -0.930569, -0.047080,
		36.815098, 35.912907, 47.565456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478138, 36.514633, 48.106510>,  <37.069252, 36.564304, 47.598415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478138, 36.514633, 48.106510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.637875, 36.152390, 48.049370>,  <36.733715, 35.935043, 48.015087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.637875, 36.152390, 48.049370>,  <36.478138, 36.514633, 48.106510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637875, 36.152390, 48.049370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240096, -0.047073, 0.969607,
		-0.884806, -0.421500, 0.198634,
		0.399340, -0.905605, -0.142851,
		36.757675, 35.880707, 48.006516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244751, 36.133968, 48.637070>,  <36.478138, 36.514633, 48.106510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244751, 36.133968, 48.637070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540123, 35.910030, 48.486713>,  <36.717346, 35.775669, 48.396500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540123, 35.910030, 48.486713>,  <36.244751, 36.133968, 48.637070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540123, 35.910030, 48.486713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291244, -0.237975, 0.926577,
		-0.608190, -0.793690, -0.012678,
		0.738432, -0.559843, -0.375891,
		36.761654, 35.742077, 48.373947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138252, 35.368462, 48.813236>,  <36.244751, 36.133968, 48.637070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138252, 35.368462, 48.813236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529190, 35.441429, 48.770309>,  <36.763752, 35.485210, 48.744553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529190, 35.441429, 48.770309>,  <36.138252, 35.368462, 48.813236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529190, 35.441429, 48.770309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146212, -0.215345, 0.965530,
		0.153024, -0.959348, -0.237139,
		0.977346, 0.182422, -0.107316,
		36.822395, 35.496155, 48.738113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365559, 34.944542, 49.250702>,  <36.138252, 35.368462, 48.813236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365559, 34.944542, 49.250702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683105, 35.178837, 49.185352>,  <36.873634, 35.319412, 49.146145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683105, 35.178837, 49.185352>,  <36.365559, 34.944542, 49.250702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683105, 35.178837, 49.185352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356341, -0.230405, 0.905502,
		0.492742, -0.777064, -0.391633,
		0.793868, 0.585734, -0.163370,
		36.921265, 35.354557, 49.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932991, 34.560982, 49.484795>,  <36.365559, 34.944542, 49.250702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932991, 34.560982, 49.484795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059792, 34.940098, 49.470932>,  <37.135872, 35.167568, 49.462616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059792, 34.940098, 49.470932>,  <36.932991, 34.560982, 49.484795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059792, 34.940098, 49.470932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320620, -0.072705, 0.944414,
		0.892589, -0.310488, -0.326929,
		0.316999, 0.947793, -0.034653,
		37.154892, 35.224434, 49.460537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473789, 34.443050, 49.859577>,  <36.932991, 34.560982, 49.484795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473789, 34.443050, 49.859577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430237, 34.840672, 49.860905>,  <37.404106, 35.079243, 49.861702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430237, 34.840672, 49.860905>,  <37.473789, 34.443050, 49.859577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430237, 34.840672, 49.860905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393433, 0.040024, 0.918482,
		0.912883, 0.101313, -0.395450,
		-0.108881, 0.994049, 0.003323,
		37.397572, 35.138885, 49.861900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868530, 33.781731, 49.835648>,  <37.473789, 34.443050, 49.859577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868530, 33.781731, 49.835648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606876, 33.543907, 50.022671>,  <37.449886, 33.401211, 50.134884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606876, 33.543907, 50.022671>,  <37.868530, 33.781731, 49.835648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606876, 33.543907, 50.022671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473167, -0.160608, -0.866209,
		0.590108, -0.787847, -0.176269,
		-0.654130, -0.594561, 0.467559,
		37.410637, 33.365540, 50.162937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748234, 33.206112, 49.420311>,  <37.868530, 33.781731, 49.835648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748234, 33.206112, 49.420311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415539, 33.201481, 49.642330>,  <37.215919, 33.198704, 49.775539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415539, 33.201481, 49.642330>,  <37.748234, 33.206112, 49.420311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415539, 33.201481, 49.642330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549709, -0.122646, -0.826304,
		0.077637, -0.992383, 0.095647,
		-0.831740, -0.011574, 0.555044,
		37.166016, 33.198009, 49.808842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374588, 32.727234, 49.110584>,  <37.748234, 33.206112, 49.420311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374588, 32.727234, 49.110584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081940, 32.874554, 49.340050>,  <36.906349, 32.962944, 49.477730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081940, 32.874554, 49.340050>,  <37.374588, 32.727234, 49.110584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081940, 32.874554, 49.340050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656347, -0.153143, -0.738753,
		-0.184238, -0.917004, 0.353781,
		-0.731618, 0.368309, 0.573658,
		36.862453, 32.985043, 49.512150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930954, 32.177357, 48.999760>,  <37.374588, 32.727234, 49.110584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930954, 32.177357, 48.999760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733025, 32.499096, 49.131321>,  <36.614269, 32.692139, 49.210258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733025, 32.499096, 49.131321>,  <36.930954, 32.177357, 48.999760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733025, 32.499096, 49.131321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589981, -0.033060, -0.806740,
		-0.638025, -0.593240, 0.490908,
		-0.494820, 0.804346, 0.328908,
		36.584579, 32.740398, 49.229992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147030, 31.941933, 49.014236>,  <36.930954, 32.177357, 48.999760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147030, 31.941933, 49.014236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228588, 32.332455, 48.985245>,  <36.277523, 32.566769, 48.967850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228588, 32.332455, 48.985245>,  <36.147030, 31.941933, 49.014236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228588, 32.332455, 48.985245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634328, 0.075358, -0.769382,
		-0.745691, 0.202844, 0.634664,
		0.203892, 0.976307, -0.072476,
		36.289757, 32.625347, 48.963501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460033, 32.319157, 48.912384>,  <36.147030, 31.941933, 49.014236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460033, 32.319157, 48.912384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740311, 32.569828, 48.775974>,  <35.908478, 32.720230, 48.694130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740311, 32.569828, 48.775974>,  <35.460033, 32.319157, 48.912384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740311, 32.569828, 48.775974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545096, 0.161834, -0.822606,
		-0.460322, 0.762287, 0.454997,
		0.700695, 0.626680, -0.341024,
		35.950520, 32.757832, 48.673668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033806, 32.759617, 48.559803>,  <35.460033, 32.319157, 48.912384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033806, 32.759617, 48.559803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401218, 32.821007, 48.414066>,  <35.621666, 32.857841, 48.326622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401218, 32.821007, 48.414066>,  <35.033806, 32.759617, 48.559803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401218, 32.821007, 48.414066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392234, 0.238251, -0.888476,
		-0.049556, 0.959000, 0.279041,
		0.918530, 0.153479, -0.364345,
		35.676777, 32.867050, 48.304764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.047768, 33.365654, 50.780579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.001934, 33.761017, 50.820408>,  <40.974434, 33.998234, 50.844303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.001934, 33.761017, 50.820408>,  <41.047768, 33.365654, 50.780579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001934, 33.761017, 50.820408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078240, 0.090940, -0.992778,
		-0.990328, -0.121544, 0.066914,
		-0.114581, 0.988411, 0.099570,
		40.967560, 34.057541, 50.850277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395130, 33.598614, 50.483421>,  <41.047768, 33.365654, 50.780579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395130, 33.598614, 50.483421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.717758, 33.835068, 50.483723>,  <40.911335, 33.976940, 50.483902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.717758, 33.835068, 50.483723>,  <40.395130, 33.598614, 50.483421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717758, 33.835068, 50.483723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076646, -0.103317, -0.991691,
		-0.586143, 0.799930, -0.128640,
		0.806574, 0.591133, 0.000753,
		40.959732, 34.012409, 50.483948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341679, 33.915325, 49.895351>,  <40.395130, 33.598614, 50.483421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341679, 33.915325, 49.895351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.723648, 33.971500, 49.999962>,  <40.952831, 34.005203, 50.062729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.723648, 33.971500, 49.999962>,  <40.341679, 33.915325, 49.895351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723648, 33.971500, 49.999962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273220, -0.071338, -0.959303,
		-0.116063, 0.987516, -0.106492,
		0.954924, 0.140435, 0.261529,
		41.010124, 34.013630, 50.078423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679111, 34.339874, 49.339600>,  <40.341679, 33.915325, 49.895351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679111, 34.339874, 49.339600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.003643, 34.222816, 49.542027>,  <41.198360, 34.152580, 49.663483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.003643, 34.222816, 49.542027>,  <40.679111, 34.339874, 49.339600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003643, 34.222816, 49.542027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526129, -0.011815, -0.850323,
		0.254821, 0.956149, 0.144382,
		0.811329, -0.292644, 0.506068,
		41.247044, 34.135025, 49.693848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185215, 34.839958, 49.270409>,  <40.679111, 34.339874, 49.339600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185215, 34.839958, 49.270409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.382790, 34.501305, 49.349636>,  <41.501335, 34.298111, 49.397171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.382790, 34.501305, 49.349636>,  <41.185215, 34.839958, 49.270409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382790, 34.501305, 49.349636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297017, -0.049802, -0.953573,
		0.817196, 0.529833, 0.226867,
		0.493936, -0.846639, 0.198068,
		41.530972, 34.247314, 49.409058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920719, 35.038712, 49.140724>,  <41.185215, 34.839958, 49.270409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920719, 35.038712, 49.140724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.849468, 34.647591, 49.096581>,  <41.806717, 34.412918, 49.070095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.849468, 34.647591, 49.096581>,  <41.920719, 35.038712, 49.140724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849468, 34.647591, 49.096581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304847, 0.051798, -0.950992,
		0.935596, -0.203037, 0.288853,
		-0.178124, -0.977800, -0.110357,
		41.796032, 34.354252, 49.063473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436649, 34.787724, 48.593037>,  <41.920719, 35.038712, 49.140724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436649, 34.787724, 48.593037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.181698, 34.480236, 48.614288>,  <42.028728, 34.295742, 48.627041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.181698, 34.480236, 48.614288>,  <42.436649, 34.787724, 48.593037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181698, 34.480236, 48.614288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246225, -0.268519, -0.931274,
		0.730156, -0.580488, 0.360425,
		-0.637374, -0.768721, 0.053130,
		41.990486, 34.249619, 48.630226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802170, 34.147591, 48.325089>,  <42.436649, 34.787724, 48.593037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802170, 34.147591, 48.325089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.416943, 34.043892, 48.295990>,  <42.185806, 33.981674, 48.278530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.416943, 34.043892, 48.295990>,  <42.802170, 34.147591, 48.325089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416943, 34.043892, 48.295990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156499, -0.319075, -0.934719,
		0.219110, -0.911582, 0.347863,
		-0.963067, -0.259246, -0.072750,
		42.128021, 33.966118, 48.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882252, 33.610565, 47.975304>,  <42.802170, 34.147591, 48.325089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882252, 33.610565, 47.975304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.494366, 33.701283, 47.939030>,  <42.261635, 33.755714, 47.917267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.494366, 33.701283, 47.939030>,  <42.882252, 33.610565, 47.975304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494366, 33.701283, 47.939030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023063, -0.284590, -0.958372,
		-0.243155, -0.931437, 0.270741,
		-0.969713, 0.226789, -0.090682,
		42.203453, 33.769321, 47.911823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466785, 33.007141, 47.670357>,  <42.882252, 33.610565, 47.975304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466785, 33.007141, 47.670357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.234241, 33.325439, 47.602455>,  <42.094715, 33.516418, 47.561714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.234241, 33.325439, 47.602455>,  <42.466785, 33.007141, 47.670357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234241, 33.325439, 47.602455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192372, -0.337140, -0.921591,
		-0.790580, -0.503118, 0.349077,
		-0.581357, 0.795744, -0.169750,
		42.059834, 33.564163, 47.551529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860096, 32.705627, 47.425137>,  <42.466785, 33.007141, 47.670357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860096, 32.705627, 47.425137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.841640, 33.087734, 47.308289>,  <41.830566, 33.316998, 47.238178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.841640, 33.087734, 47.308289>,  <41.860096, 32.705627, 47.425137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841640, 33.087734, 47.308289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236832, -0.294558, -0.925822,
		-0.970454, 0.026466, 0.239829,
		-0.046141, 0.955267, -0.292123,
		41.827797, 33.374313, 47.220654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331688, 32.664944, 47.044746>,  <41.860096, 32.705627, 47.425137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331688, 32.664944, 47.044746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.524258, 32.991886, 46.918159>,  <41.639801, 33.188053, 46.842205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.524258, 32.991886, 46.918159>,  <41.331688, 32.664944, 47.044746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524258, 32.991886, 46.918159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033008, -0.377719, -0.925332,
		-0.875866, 0.435030, -0.208823,
		0.481424, 0.817360, -0.316472,
		41.668686, 33.237095, 46.823219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647438, 32.886227, 47.288834>,  <41.331688, 32.664944, 47.044746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647438, 32.886227, 47.288834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.290089, 32.707073, 47.303185>,  <40.075680, 32.599583, 47.311794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.290089, 32.707073, 47.303185>,  <40.647438, 32.886227, 47.288834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290089, 32.707073, 47.303185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101791, 0.279521, 0.954729,
		-0.437632, 0.849277, -0.295307,
		-0.893374, -0.447880, 0.035879,
		40.022076, 32.572708, 47.313950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348118, 33.191536, 47.845104>,  <40.647438, 32.886227, 47.288834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348118, 33.191536, 47.845104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.127815, 32.865929, 47.771305>,  <39.995636, 32.670563, 47.727028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.127815, 32.865929, 47.771305>,  <40.348118, 33.191536, 47.845104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127815, 32.865929, 47.771305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014304, -0.230214, 0.973035,
		-0.834546, 0.533262, 0.138434,
		-0.550752, -0.814023, -0.184496,
		39.962589, 32.621723, 47.715958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722340, 33.184349, 48.322453>,  <40.348118, 33.191536, 47.845104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722340, 33.184349, 48.322453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.767902, 32.799797, 48.222229>,  <39.795238, 32.569065, 48.162094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.767902, 32.799797, 48.222229>,  <39.722340, 33.184349, 48.322453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767902, 32.799797, 48.222229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033617, -0.255785, 0.966149,
		-0.992923, -0.101626, -0.061454,
		0.113905, -0.961377, -0.250559,
		39.802074, 32.511383, 48.147060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181740, 32.837009, 48.724827>,  <39.722340, 33.184349, 48.322453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181740, 32.837009, 48.724827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.447243, 32.553860, 48.628220>,  <39.606544, 32.383968, 48.570255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.447243, 32.553860, 48.628220>,  <39.181740, 32.837009, 48.724827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447243, 32.553860, 48.628220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075730, -0.384857, 0.919864,
		-0.744101, -0.592279, -0.309061,
		0.663760, -0.707877, -0.241519,
		39.646370, 32.341496, 48.555763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947384, 32.262634, 49.045166>,  <39.181740, 32.837009, 48.724827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947384, 32.262634, 49.045166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.322247, 32.155052, 48.956268>,  <39.547165, 32.090504, 48.902931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.322247, 32.155052, 48.956268>,  <38.947384, 32.262634, 49.045166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322247, 32.155052, 48.956268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116678, -0.358712, 0.926127,
		-0.328806, -0.893862, -0.304791,
		0.937162, -0.268954, -0.222241,
		39.603394, 32.074364, 48.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016724, 31.558187, 49.237354>,  <38.947384, 32.262634, 49.045166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016724, 31.558187, 49.237354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.394749, 31.688335, 49.224762>,  <39.621563, 31.766424, 49.217205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.394749, 31.688335, 49.224762>,  <39.016724, 31.558187, 49.237354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394749, 31.688335, 49.224762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146372, -0.335086, 0.930748,
		0.292286, -0.884224, -0.364302,
		0.945063, 0.325368, -0.031485,
		39.678268, 31.785946, 49.215317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485073, 31.011524, 49.404369>,  <39.016724, 31.558187, 49.237354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485073, 31.011524, 49.404369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.702938, 31.339001, 49.477131>,  <39.833656, 31.535486, 49.520790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.702938, 31.339001, 49.477131>,  <39.485073, 31.011524, 49.404369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702938, 31.339001, 49.477131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247125, -0.363946, 0.898038,
		0.801419, -0.444173, -0.400546,
		0.544661, 0.818690, 0.181907,
		39.866337, 31.584608, 49.531704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056835, 30.745800, 49.634712>,  <39.485073, 31.011524, 49.404369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056835, 30.745800, 49.634712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.066742, 31.121487, 49.771683>,  <40.072685, 31.346899, 49.853863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.066742, 31.121487, 49.771683>,  <40.056835, 30.745800, 49.634712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066742, 31.121487, 49.771683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467582, -0.313636, 0.826438,
		0.883603, 0.139645, -0.446929,
		0.024765, 0.939219, 0.342425,
		40.074173, 31.403252, 49.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740993, 30.891520, 49.982121>,  <40.056835, 30.745800, 49.634712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740993, 30.891520, 49.982121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.466045, 31.155500, 50.103436>,  <40.301075, 31.313889, 50.176224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.466045, 31.155500, 50.103436>,  <40.740993, 30.891520, 49.982121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466045, 31.155500, 50.103436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247327, -0.179936, 0.952078,
		0.682898, 0.729443, -0.039541,
		-0.687372, 0.659951, 0.303288,
		40.259834, 31.353485, 50.194424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076710, 31.351942, 50.568954>,  <40.740993, 30.891520, 49.982121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076710, 31.351942, 50.568954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.680088, 31.341471, 50.619770>,  <40.442116, 31.335188, 50.650257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.680088, 31.341471, 50.619770>,  <41.076710, 31.351942, 50.568954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680088, 31.341471, 50.619770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129705, -0.201093, 0.970947,
		0.000128, 0.979222, 0.202789,
		-0.991553, -0.026178, 0.127036,
		40.382622, 31.333618, 50.657883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909096, 31.587687, 51.297352>,  <41.076710, 31.351942, 50.568954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909096, 31.587687, 51.297352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.562920, 31.419983, 51.187634>,  <40.355213, 31.319361, 51.121803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.562920, 31.419983, 51.187634>,  <40.909096, 31.587687, 51.297352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562920, 31.419983, 51.187634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199665, -0.213515, 0.956318,
		-0.459511, 0.882402, 0.101073,
		-0.865438, -0.419258, -0.274298,
		40.303288, 31.294205, 51.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426952, 31.690123, 51.842453>,  <40.909096, 31.587687, 51.297352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426952, 31.690123, 51.842453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.202076, 31.414349, 51.659752>,  <40.067150, 31.248884, 51.550133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.202076, 31.414349, 51.659752>,  <40.426952, 31.690123, 51.842453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202076, 31.414349, 51.659752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592085, -0.050058, 0.804319,
		-0.577389, 0.722618, -0.380061,
		-0.562190, -0.689433, -0.456754,
		40.033421, 31.207520, 51.522724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692394, 31.932793, 51.897423>,  <40.426952, 31.690123, 51.842453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692394, 31.932793, 51.897423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.702175, 31.538099, 51.833221>,  <39.708046, 31.301283, 51.794701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.702175, 31.538099, 51.833221>,  <39.692394, 31.932793, 51.897423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702175, 31.538099, 51.833221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569799, -0.145680, 0.808768,
		-0.821420, 0.071678, -0.565802,
		0.024456, -0.986732, -0.160506,
		39.709511, 31.242081, 51.785069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162956, 31.701044, 52.306316>,  <39.692394, 31.932793, 51.897423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162956, 31.701044, 52.306316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.344494, 31.357452, 52.211510>,  <39.453415, 31.151297, 52.154625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.344494, 31.357452, 52.211510>,  <39.162956, 31.701044, 52.306316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344494, 31.357452, 52.211510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512879, -0.469322, 0.718812,
		-0.728684, -0.204667, -0.653553,
		0.453844, -0.858981, -0.237018,
		39.480648, 31.099758, 52.140404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389908, 31.754082, 52.473080>,  <39.162956, 31.701044, 52.306316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389908, 31.754082, 52.473080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452381, 32.147133, 52.513168>,  <38.489864, 32.382965, 52.537220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452381, 32.147133, 52.513168>,  <38.389908, 31.754082, 52.473080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452381, 32.147133, 52.513168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641030, 0.178036, -0.746581,
		-0.751456, 0.052359, 0.657702,
		0.156185, 0.982630, 0.100222,
		38.499237, 32.441921, 52.543236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818985, 32.006256, 52.157715>,  <38.389908, 31.754082, 52.473080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818985, 32.006256, 52.157715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046188, 32.334518, 52.182697>,  <38.182510, 32.531475, 52.197685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046188, 32.334518, 52.182697>,  <37.818985, 32.006256, 52.157715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046188, 32.334518, 52.182697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329680, 0.296403, -0.896357,
		-0.754109, 0.488545, 0.438911,
		0.568006, 0.820651, 0.062456,
		38.216591, 32.580715, 52.201435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352226, 32.517838, 52.032581>,  <37.818985, 32.006256, 52.157715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352226, 32.517838, 52.032581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.692333, 32.726898, 52.007664>,  <37.896397, 32.852333, 51.992714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.692333, 32.726898, 52.007664>,  <37.352226, 32.517838, 52.032581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692333, 32.726898, 52.007664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379323, 0.526409, -0.760925,
		-0.364904, 0.670621, 0.645842,
		0.850270, 0.522648, -0.062293,
		37.947414, 32.883694, 51.988976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111507, 33.221092, 52.086563>,  <37.352226, 32.517838, 52.032581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111507, 33.221092, 52.086563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456696, 33.184345, 51.887833>,  <37.663811, 33.162296, 51.768593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456696, 33.184345, 51.887833>,  <37.111507, 33.221092, 52.086563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456696, 33.184345, 51.887833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445181, 0.326776, -0.833685,
		0.238939, 0.940626, 0.241102,
		0.862973, -0.091866, -0.496828,
		37.715588, 33.156784, 51.738785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168934, 33.885052, 51.643284>,  <37.111507, 33.221092, 52.086563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168934, 33.885052, 51.643284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.370319, 33.576195, 51.488197>,  <37.491150, 33.390881, 51.395145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.370319, 33.576195, 51.488197>,  <37.168934, 33.885052, 51.643284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370319, 33.576195, 51.488197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380171, 0.204992, -0.901914,
		0.775881, 0.601482, -0.190338,
		0.503467, -0.772138, -0.387715,
		37.521358, 33.344555, 51.371883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443363, 34.132938, 51.072189>,  <37.168934, 33.885052, 51.643284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443363, 34.132938, 51.072189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.489132, 33.737068, 51.037659>,  <37.516594, 33.499546, 51.016941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.489132, 33.737068, 51.037659>,  <37.443363, 34.132938, 51.072189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489132, 33.737068, 51.037659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172757, 0.065752, -0.982767,
		0.978296, 0.127364, -0.163450,
		0.114422, -0.989674, -0.086328,
		37.523460, 33.440166, 51.011761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858654, 34.072834, 50.533211>,  <37.443363, 34.132938, 51.072189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858654, 34.072834, 50.533211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.661938, 33.726730, 50.572124>,  <37.543907, 33.519070, 50.595474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.661938, 33.726730, 50.572124>,  <37.858654, 34.072834, 50.533211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661938, 33.726730, 50.572124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304303, 0.066116, -0.950278,
		0.815805, -0.496945, -0.295816,
		-0.491794, -0.865260, 0.097284,
		37.514400, 33.467152, 50.601311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045704, 34.695148, 50.207417>,  <37.858654, 34.072834, 50.533211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045704, 34.695148, 50.207417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.786327, 34.995682, 50.256447>,  <37.630703, 35.176003, 50.285866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.786327, 34.995682, 50.256447>,  <38.045704, 34.695148, 50.207417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786327, 34.995682, 50.256447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344387, 0.145924, 0.927418,
		0.678912, 0.643589, -0.353372,
		-0.648441, 0.751332, 0.122574,
		37.591797, 35.221081, 50.293221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425953, 35.364574, 50.393192>,  <38.045704, 34.695148, 50.207417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425953, 35.364574, 50.393192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049854, 35.392506, 50.526489>,  <37.824196, 35.409264, 50.606468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049854, 35.392506, 50.526489>,  <38.425953, 35.364574, 50.393192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049854, 35.392506, 50.526489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340236, 0.230050, 0.911766,
		-0.012996, 0.970670, -0.240063,
		-0.940250, 0.069829, 0.333246,
		37.767780, 35.413456, 50.626465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346828, 35.972919, 50.771511>,  <38.425953, 35.364574, 50.393192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346828, 35.972919, 50.771511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.056519, 35.731239, 50.903076>,  <37.882332, 35.586231, 50.982014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.056519, 35.731239, 50.903076>,  <38.346828, 35.972919, 50.771511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056519, 35.731239, 50.903076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224070, 0.244414, 0.943427,
		-0.650413, 0.758418, -0.042006,
		-0.725779, -0.604205, 0.328909,
		37.838783, 35.549976, 51.001747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059280, 36.314289, 51.192261>,  <38.346828, 35.972919, 50.771511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059280, 36.314289, 51.192261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.939880, 35.948917, 51.302925>,  <37.868240, 35.729694, 51.369324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.939880, 35.948917, 51.302925>,  <38.059280, 36.314289, 51.192261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939880, 35.948917, 51.302925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450478, 0.120716, 0.884589,
		-0.841409, 0.388679, 0.375447,
		-0.298498, -0.913431, 0.276663,
		37.850330, 35.674889, 51.385925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900867, 36.480984, 51.870438>,  <38.059280, 36.314289, 51.192261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900867, 36.480984, 51.870438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.922352, 36.082012, 51.851498>,  <37.935242, 35.842628, 51.840134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.922352, 36.082012, 51.851498>,  <37.900867, 36.480984, 51.870438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922352, 36.082012, 51.851498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413002, -0.020979, 0.910489,
		-0.909145, -0.068459, 0.410815,
		0.053712, -0.997433, -0.047347,
		37.938465, 35.782784, 51.837292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710354, 36.290531, 52.486309>,  <37.900867, 36.480984, 51.870438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710354, 36.290531, 52.486309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.884926, 35.954468, 52.357529>,  <37.989670, 35.752831, 52.280262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.884926, 35.954468, 52.357529>,  <37.710354, 36.290531, 52.486309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884926, 35.954468, 52.357529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457113, -0.101159, 0.883637,
		-0.774968, -0.532816, 0.339900,
		0.436432, -0.840163, -0.321952,
		38.015854, 35.702419, 52.260944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735401, 35.761772, 53.136162>,  <37.710354, 36.290531, 52.486309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735401, 35.761772, 53.136162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.020874, 35.657047, 52.876282>,  <38.192158, 35.594212, 52.720356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.020874, 35.657047, 52.876282>,  <37.735401, 35.761772, 53.136162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020874, 35.657047, 52.876282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648026, -0.105339, 0.754298,
		-0.265923, -0.959353, 0.094482,
		0.713686, -0.261812, -0.649698,
		38.234982, 35.578503, 52.681374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120060, 35.338108, 53.546204>,  <37.735401, 35.761772, 53.136162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120060, 35.338108, 53.546204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348007, 35.424313, 53.229015>,  <38.484776, 35.476036, 53.038704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348007, 35.424313, 53.229015>,  <38.120060, 35.338108, 53.546204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348007, 35.424313, 53.229015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818948, -0.069560, 0.569636,
		0.067605, -0.974020, -0.216135,
		0.569871, 0.215514, -0.792970,
		38.518967, 35.488968, 52.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712460, 34.864937, 53.563641>,  <38.120060, 35.338108, 53.546204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712460, 34.864937, 53.563641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817043, 35.163246, 53.318542>,  <38.879795, 35.342232, 53.171486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817043, 35.163246, 53.318542>,  <38.712460, 34.864937, 53.563641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817043, 35.163246, 53.318542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638600, 0.342360, 0.689188,
		0.723759, -0.571494, -0.386739,
		0.261463, 0.745778, -0.612742,
		38.895481, 35.386978, 53.134720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.745811, 34.751228, 38.065647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929390, 34.776093, 37.711132>,  <35.039536, 34.791012, 37.498425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929390, 34.776093, 37.711132>,  <34.745811, 34.751228, 38.065647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929390, 34.776093, 37.711132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707579, -0.628852, 0.322300,
		-0.537310, -0.775036, -0.332592,
		0.458945, 0.062160, -0.886288,
		35.067074, 34.794739, 37.445244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538658, 34.612423, 37.962425>,  <34.745811, 34.751228, 38.065647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538658, 34.612423, 37.962425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424271, 34.994614, 37.991528>,  <35.355637, 35.223927, 38.008987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424271, 34.994614, 37.991528>,  <35.538658, 34.612423, 37.962425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424271, 34.994614, 37.991528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202500, -0.134466, 0.970007,
		0.936598, 0.262661, 0.231936,
		-0.285970, 0.955473, 0.072752,
		35.338478, 35.281254, 38.013351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961712, 34.859879, 38.428871>,  <35.538658, 34.612423, 37.962425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961712, 34.859879, 38.428871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642632, 35.100597, 38.444405>,  <35.451183, 35.245029, 38.453724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642632, 35.100597, 38.444405>,  <35.961712, 34.859879, 38.428871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642632, 35.100597, 38.444405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145467, -0.254516, 0.956065,
		0.585240, 0.757010, 0.290570,
		-0.797705, 0.601796, 0.038833,
		35.403320, 35.281136, 38.456055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118423, 35.195820, 38.962128>,  <35.961712, 34.859879, 38.428871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118423, 35.195820, 38.962128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727428, 35.277203, 38.939774>,  <35.492832, 35.326035, 38.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727428, 35.277203, 38.939774>,  <36.118423, 35.195820, 38.962128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727428, 35.277203, 38.939774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058771, -0.008158, 0.998238,
		0.202644, 0.979050, 0.019931,
		-0.977487, 0.203459, -0.055886,
		35.434181, 35.338242, 38.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951908, 35.876835, 39.267094>,  <36.118423, 35.195820, 38.962128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951908, 35.876835, 39.267094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608635, 35.671528, 39.263607>,  <35.402672, 35.548344, 39.261517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608635, 35.671528, 39.263607>,  <35.951908, 35.876835, 39.267094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608635, 35.671528, 39.263607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003061, -0.022095, 0.999751,
		-0.513329, 0.857946, 0.020533,
		-0.858187, -0.513264, -0.008716,
		35.351177, 35.517548, 39.260994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480206, 36.214520, 39.771446>,  <35.951908, 35.876835, 39.267094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480206, 36.214520, 39.771446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339970, 35.845608, 39.706333>,  <35.255829, 35.624260, 39.667263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339970, 35.845608, 39.706333>,  <35.480206, 36.214520, 39.771446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339970, 35.845608, 39.706333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157233, -0.113387, 0.981031,
		-0.923238, 0.369530, -0.105260,
		-0.350585, -0.922275, -0.162785,
		35.234795, 35.568924, 39.657497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053753, 36.181652, 40.452435>,  <35.480206, 36.214520, 39.771446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053753, 36.181652, 40.452435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063339, 35.805153, 40.317684>,  <35.069092, 35.579254, 40.236835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063339, 35.805153, 40.317684>,  <35.053753, 36.181652, 40.452435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063339, 35.805153, 40.317684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142074, -0.336759, 0.930810,
		-0.989566, 0.025553, -0.141798,
		0.023967, -0.941244, -0.336876,
		35.070530, 35.522781, 40.216621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602448, 35.800991, 40.785309>,  <35.053753, 36.181652, 40.452435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602448, 35.800991, 40.785309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804619, 35.488251, 40.639290>,  <34.925922, 35.300606, 40.551678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804619, 35.488251, 40.639290>,  <34.602448, 35.800991, 40.785309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804619, 35.488251, 40.639290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048137, -0.447949, 0.892762,
		-0.861526, -0.433653, -0.264041,
		0.505426, -0.781848, -0.365045,
		34.956245, 35.253696, 40.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210499, 35.224445, 40.890057>,  <34.602448, 35.800991, 40.785309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210499, 35.224445, 40.890057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589653, 35.098118, 40.873238>,  <34.817146, 35.022324, 40.863148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589653, 35.098118, 40.873238>,  <34.210499, 35.224445, 40.890057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589653, 35.098118, 40.873238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092963, -0.400386, 0.911619,
		-0.304736, -0.860205, -0.408880,
		0.947889, -0.315814, -0.042044,
		34.874020, 35.003372, 40.860622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217899, 34.563412, 41.153713>,  <34.210499, 35.224445, 40.890057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217899, 34.563412, 41.153713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584465, 34.718006, 41.195293>,  <34.804405, 34.810764, 41.220242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584465, 34.718006, 41.195293>,  <34.217899, 34.563412, 41.153713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584465, 34.718006, 41.195293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008553, -0.278582, 0.960374,
		0.400133, -0.879214, -0.258603,
		0.916417, 0.386490, 0.103950,
		34.859390, 34.833954, 41.226479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562416, 34.086361, 41.536789>,  <34.217899, 34.563412, 41.153713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562416, 34.086361, 41.536789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818039, 34.391106, 41.579071>,  <34.971413, 34.573952, 41.604439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818039, 34.391106, 41.579071>,  <34.562416, 34.086361, 41.536789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818039, 34.391106, 41.579071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121694, -0.235845, 0.964141,
		0.759468, -0.603282, -0.243432,
		0.639061, 0.761859, 0.105701,
		35.009758, 34.619663, 41.610783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178375, 33.904137, 41.927410>,  <34.562416, 34.086361, 41.536789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178375, 33.904137, 41.927410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130798, 34.299374, 41.966465>,  <35.102253, 34.536514, 41.989899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130798, 34.299374, 41.966465>,  <35.178375, 33.904137, 41.927410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130798, 34.299374, 41.966465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064577, -0.090428, 0.993807,
		0.990799, 0.124511, -0.053052,
		-0.118942, 0.988089, 0.097637,
		35.095116, 34.595798, 41.995754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454193, 33.316444, 42.307224>,  <35.178375, 33.904137, 41.927410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454193, 33.316444, 42.307224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124668, 33.089916, 42.317139>,  <34.926952, 32.953999, 42.323086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124668, 33.089916, 42.317139>,  <35.454193, 33.316444, 42.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124668, 33.089916, 42.317139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058346, -0.128206, -0.990030,
		0.563849, -0.814155, 0.138661,
		-0.823814, -0.566318, 0.024786,
		34.877525, 32.920021, 42.324574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675903, 32.772160, 41.979557>,  <35.454193, 33.316444, 42.307224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675903, 32.772160, 41.979557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278095, 32.732979, 41.964981>,  <35.039410, 32.709469, 41.956234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278095, 32.732979, 41.964981>,  <35.675903, 32.772160, 41.979557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278095, 32.732979, 41.964981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068621, -0.349010, -0.934603,
		0.078833, -0.931985, 0.353820,
		-0.994523, -0.097957, -0.036440,
		34.979736, 32.703590, 41.954048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567760, 32.184330, 41.654240>,  <35.675903, 32.772160, 41.979557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567760, 32.184330, 41.654240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221359, 32.378540, 41.606411>,  <35.013519, 32.495068, 41.577713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221359, 32.378540, 41.606411>,  <35.567760, 32.184330, 41.654240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221359, 32.378540, 41.606411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054591, -0.329503, -0.942575,
		-0.497043, -0.809749, 0.311857,
		-0.866007, 0.485525, -0.119572,
		34.961555, 32.524197, 41.570538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066948, 31.667007, 41.304241>,  <35.567760, 32.184330, 41.654240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066948, 31.667007, 41.304241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907749, 32.029881, 41.249657>,  <34.812229, 32.247604, 41.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907749, 32.029881, 41.249657>,  <35.066948, 31.667007, 41.304241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907749, 32.029881, 41.249657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175750, -0.221396, -0.959216,
		-0.900396, -0.357780, 0.247551,
		-0.397995, 0.907181, -0.136464,
		34.788349, 32.302036, 41.208717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320995, 31.620697, 41.152374>,  <35.066948, 31.667007, 41.304241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320995, 31.620697, 41.152374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447945, 31.966911, 40.997391>,  <34.524117, 32.174641, 40.904400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447945, 31.966911, 40.997391>,  <34.320995, 31.620697, 41.152374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447945, 31.966911, 40.997391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507354, -0.190206, -0.840484,
		-0.801165, 0.463328, 0.378765,
		0.317377, 0.865534, -0.387457,
		34.543159, 32.226570, 40.881153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753632, 31.836967, 40.734470>,  <34.320995, 31.620697, 41.152374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753632, 31.836967, 40.734470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033684, 32.089031, 40.600178>,  <34.201714, 32.240269, 40.519600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033684, 32.089031, 40.600178>,  <33.753632, 31.836967, 40.734470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033684, 32.089031, 40.600178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297856, -0.169579, -0.939428,
		-0.648925, 0.757720, 0.068970,
		0.700127, 0.630161, -0.335736,
		34.243721, 32.278080, 40.499458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453423, 32.213593, 40.191967>,  <33.753632, 31.836967, 40.734470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453423, 32.213593, 40.191967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843845, 32.249138, 40.112549>,  <34.078098, 32.270466, 40.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843845, 32.249138, 40.112549>,  <33.453423, 32.213593, 40.191967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843845, 32.249138, 40.112549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184828, -0.142476, -0.972388,
		-0.114697, 0.985801, -0.122640,
		0.976055, 0.088862, -0.198545,
		34.136662, 32.275795, 40.052986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550201, 32.800850, 39.707714>,  <33.453423, 32.213593, 40.191967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550201, 32.800850, 39.707714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858128, 32.550514, 39.657589>,  <34.042885, 32.400314, 39.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858128, 32.550514, 39.657589>,  <33.550201, 32.800850, 39.707714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858128, 32.550514, 39.657589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307244, -0.191268, -0.932211,
		0.559445, 0.756137, -0.339527,
		0.769820, -0.625838, -0.125314,
		34.089073, 32.362762, 39.619995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766239, 32.883404, 38.971867>,  <33.550201, 32.800850, 39.707714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766239, 32.883404, 38.971867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925388, 32.535275, 39.087959>,  <34.020878, 32.326397, 39.157616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925388, 32.535275, 39.087959>,  <33.766239, 32.883404, 38.971867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925388, 32.535275, 39.087959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114528, -0.360988, -0.925511,
		0.910262, 0.335000, -0.243305,
		0.397877, -0.870323, 0.290227,
		34.044750, 32.274178, 39.175026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245396, 32.681568, 38.470371>,  <33.766239, 32.883404, 38.971867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245396, 32.681568, 38.470371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162323, 32.337708, 38.657078>,  <34.112480, 32.131390, 38.769100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162323, 32.337708, 38.657078>,  <34.245396, 32.681568, 38.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162323, 32.337708, 38.657078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151896, -0.443038, -0.883541,
		0.966332, -0.254391, -0.038569,
		-0.207677, -0.859652, 0.466763,
		34.100021, 32.079811, 38.797108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608398, 32.218918, 38.114990>,  <34.245396, 32.681568, 38.470371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608398, 32.218918, 38.114990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362625, 31.977953, 38.318783>,  <34.215160, 31.833374, 38.441059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362625, 31.977953, 38.318783>,  <34.608398, 32.218918, 38.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362625, 31.977953, 38.318783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008456, -0.640693, -0.767750,
		0.788923, -0.476040, 0.388570,
		-0.614435, -0.602410, 0.509483,
		34.178295, 31.797230, 38.471626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890175, 31.433691, 37.995731>,  <34.608398, 32.218918, 38.114990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890175, 31.433691, 37.995731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497837, 31.470572, 38.064365>,  <34.262436, 31.492701, 38.105545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497837, 31.470572, 38.064365>,  <34.890175, 31.433691, 37.995731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497837, 31.470572, 38.064365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190890, -0.630400, -0.752434,
		0.038796, -0.770776, 0.635924,
		-0.980845, 0.092200, 0.171590,
		34.203583, 31.498232, 38.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717094, 30.693739, 37.961231>,  <34.890175, 31.433691, 37.995731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717094, 30.693739, 37.961231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397823, 30.927776, 37.903839>,  <34.206261, 31.068199, 37.869404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397823, 30.927776, 37.903839>,  <34.717094, 30.693739, 37.961231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397823, 30.927776, 37.903839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293175, -0.585322, -0.755941,
		-0.526277, -0.561306, 0.638723,
		-0.798173, 0.585092, -0.143481,
		34.158371, 31.103304, 37.860794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994526, 30.314220, 37.967331>,  <34.717094, 30.693739, 37.961231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994526, 30.314220, 37.967331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008228, 30.631968, 37.724743>,  <34.016449, 30.822615, 37.579189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008228, 30.631968, 37.724743>,  <33.994526, 30.314220, 37.967331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008228, 30.631968, 37.724743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454303, -0.528133, -0.717415,
		-0.890188, 0.300095, 0.342793,
		0.034252, 0.794367, -0.606472,
		34.018505, 30.870277, 37.542801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492405, 29.766958, 38.201763>,  <33.994526, 30.314220, 37.967331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492405, 29.766958, 38.201763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691658, 29.562548, 37.921558>,  <34.811211, 29.439901, 37.753437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691658, 29.562548, 37.921558>,  <34.492405, 29.766958, 38.201763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691658, 29.562548, 37.921558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341429, -0.627017, 0.700198,
		-0.797052, -0.587966, -0.137859,
		0.498132, -0.511025, -0.700513,
		34.841099, 29.409241, 37.711403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195488, 29.610287, 38.279636>,  <34.492405, 29.766958, 38.201763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195488, 29.610287, 38.279636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563961, 29.517956, 38.154327>,  <35.785046, 29.462557, 38.079144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563961, 29.517956, 38.154327>,  <35.195488, 29.610287, 38.279636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563961, 29.517956, 38.154327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296784, -0.103919, 0.949273,
		-0.251676, -0.967429, -0.027222,
		0.921183, -0.230830, -0.313271,
		35.840317, 29.448708, 38.060345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414249, 29.062040, 38.703846>,  <35.195488, 29.610287, 38.279636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414249, 29.062040, 38.703846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731312, 29.250830, 38.549477>,  <35.921551, 29.364103, 38.456856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731312, 29.250830, 38.549477>,  <35.414249, 29.062040, 38.703846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731312, 29.250830, 38.549477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462349, -0.052737, 0.885128,
		0.397406, -0.880033, -0.260019,
		0.792655, 0.471975, -0.385925,
		35.969109, 29.392422, 38.433701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065655, 28.575539, 38.716076>,  <35.414249, 29.062040, 38.703846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065655, 28.575539, 38.716076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158890, 28.964497, 38.720413>,  <36.214832, 29.197872, 38.723015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158890, 28.964497, 38.720413>,  <36.065655, 28.575539, 38.716076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158890, 28.964497, 38.720413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582113, -0.148450, 0.799441,
		0.778982, -0.180031, -0.600646,
		0.233090, 0.972395, 0.010841,
		36.228817, 29.256214, 38.723667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758221, 28.658705, 38.983208>,  <36.065655, 28.575539, 38.716076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758221, 28.658705, 38.983208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617126, 29.029049, 39.037403>,  <36.532471, 29.251255, 39.069920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617126, 29.029049, 39.037403>,  <36.758221, 28.658705, 38.983208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617126, 29.029049, 39.037403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517495, 0.072385, 0.852619,
		0.779599, 0.370867, -0.504661,
		-0.352738, 0.925861, 0.135491,
		36.511307, 29.306807, 39.078049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383259, 29.102821, 39.126270>,  <36.758221, 28.658705, 38.983208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383259, 29.102821, 39.126270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072350, 29.312754, 39.265060>,  <36.885803, 29.438713, 39.348335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072350, 29.312754, 39.265060>,  <37.383259, 29.102821, 39.126270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072350, 29.312754, 39.265060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565734, 0.341720, 0.750448,
		0.275289, 0.779603, -0.562525,
		-0.777278, 0.524830, 0.346977,
		36.839165, 29.470203, 39.369152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638454, 29.751644, 39.534645>,  <37.383259, 29.102821, 39.126270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638454, 29.751644, 39.534645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254601, 29.751528, 39.647148>,  <37.024288, 29.751457, 39.714649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254601, 29.751528, 39.647148>,  <37.638454, 29.751644, 39.534645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254601, 29.751528, 39.647148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247765, 0.472404, 0.845841,
		-0.133115, 0.881382, -0.453262,
		-0.959632, -0.000291, 0.281260,
		36.966709, 29.751440, 39.731525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568172, 30.369204, 39.729145>,  <37.638454, 29.751644, 39.534645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568172, 30.369204, 39.729145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282154, 30.155205, 39.909138>,  <37.110542, 30.026806, 40.017136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282154, 30.155205, 39.909138>,  <37.568172, 30.369204, 39.729145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282154, 30.155205, 39.909138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267515, 0.385288, 0.883170,
		-0.645867, 0.751885, -0.132379,
		-0.715046, -0.534997, 0.449986,
		37.067638, 29.994705, 40.044132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331501, 30.821894, 40.235249>,  <37.568172, 30.369204, 39.729145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331501, 30.821894, 40.235249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207642, 30.463095, 40.361431>,  <37.133327, 30.247816, 40.437141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207642, 30.463095, 40.361431>,  <37.331501, 30.821894, 40.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207642, 30.463095, 40.361431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338829, 0.205897, 0.918042,
		-0.888433, 0.391156, 0.240173,
		-0.309647, -0.896997, 0.315461,
		37.114746, 30.193996, 40.456070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062332, 30.994698, 40.780052>,  <37.331501, 30.821894, 40.235249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062332, 30.994698, 40.780052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048656, 30.598291, 40.831772>,  <37.040451, 30.360447, 40.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048656, 30.598291, 40.831772>,  <37.062332, 30.994698, 40.780052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048656, 30.598291, 40.831772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092239, 0.125691, 0.987772,
		-0.995150, 0.045696, 0.087113,
		-0.034188, -0.991016, 0.129296,
		37.038399, 30.300987, 40.870560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507420, 30.892635, 41.250038>,  <37.062332, 30.994698, 40.780052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507420, 30.892635, 41.250038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762852, 30.585190, 41.265236>,  <36.916111, 30.400723, 41.274353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762852, 30.585190, 41.265236>,  <36.507420, 30.892635, 41.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762852, 30.585190, 41.265236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166433, 0.186138, 0.968325,
		-0.751339, -0.612035, 0.246787,
		0.638585, -0.768613, 0.037990,
		36.954426, 30.354607, 41.276634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296314, 30.552521, 41.809608>,  <36.507420, 30.892635, 41.250038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296314, 30.552521, 41.809608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678345, 30.453360, 41.744640>,  <36.907562, 30.393862, 41.705658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678345, 30.453360, 41.744640>,  <36.296314, 30.552521, 41.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678345, 30.453360, 41.744640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207932, 0.169972, 0.963262,
		-0.211191, -0.953757, 0.213883,
		0.955072, -0.247905, -0.162420,
		36.964867, 30.378988, 41.695915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497215, 30.294142, 42.437778>,  <36.296314, 30.552521, 41.809608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497215, 30.294142, 42.437778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829376, 30.407421, 42.245850>,  <37.028675, 30.475389, 42.130692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829376, 30.407421, 42.245850>,  <36.497215, 30.294142, 42.437778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829376, 30.407421, 42.245850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374665, 0.353565, 0.857098,
		0.412378, -0.891510, 0.187497,
		0.830404, 0.283200, -0.479820,
		37.078499, 30.492380, 42.101902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082840, 30.060822, 42.880451>,  <36.497215, 30.294142, 42.437778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082840, 30.060822, 42.880451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213696, 30.353899, 42.641739>,  <37.292210, 30.529745, 42.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213696, 30.353899, 42.641739>,  <37.082840, 30.060822, 42.880451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213696, 30.353899, 42.641739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425457, 0.449697, 0.785340,
		0.843781, -0.510817, -0.164617,
		0.327138, 0.732693, -0.596776,
		37.311836, 30.573708, 42.462708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650234, 30.195322, 43.278664>,  <37.082840, 30.060822, 42.880451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650234, 30.195322, 43.278664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596985, 30.494833, 43.018936>,  <37.565033, 30.674540, 42.863102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596985, 30.494833, 43.018936>,  <37.650234, 30.195322, 43.278664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596985, 30.494833, 43.018936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700440, 0.534587, 0.472864,
		0.701185, -0.391857, -0.595640,
		-0.133126, 0.748776, -0.649317,
		37.557049, 30.719465, 42.824142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332462, 30.547373, 43.168415>,  <37.650234, 30.195322, 43.278664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332462, 30.547373, 43.168415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072407, 30.824778, 43.044250>,  <37.916374, 30.991220, 42.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072407, 30.824778, 43.044250>,  <38.332462, 30.547373, 43.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072407, 30.824778, 43.044250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426663, 0.671265, 0.606103,
		0.628707, 0.261614, -0.732315,
		-0.650142, 0.693514, -0.310409,
		37.877365, 31.032831, 42.951126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683670, 31.111275, 42.984367>,  <38.332462, 30.547373, 43.168415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683670, 31.111275, 42.984367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319450, 31.256725, 43.063038>,  <38.100918, 31.343996, 43.110241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319450, 31.256725, 43.063038>,  <38.683670, 31.111275, 42.984367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319450, 31.256725, 43.063038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405182, 0.690517, 0.599177,
		0.082066, 0.625269, -0.776082,
		-0.910545, 0.363627, 0.196680,
		38.046288, 31.365814, 43.122044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822414, 31.734337, 42.905865>,  <38.683670, 31.111275, 42.984367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822414, 31.734337, 42.905865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497131, 31.724430, 43.138439>,  <38.301960, 31.718485, 43.277985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497131, 31.724430, 43.138439>,  <38.822414, 31.734337, 42.905865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497131, 31.724430, 43.138439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405063, 0.693279, 0.596061,
		-0.417864, 0.720243, -0.553750,
		-0.813212, -0.024769, 0.581440,
		38.253166, 31.716999, 43.312870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774639, 32.458042, 43.184727>,  <38.822414, 31.734337, 42.905865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774639, 32.458042, 43.184727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544334, 32.230381, 43.419525>,  <38.406151, 32.093784, 43.560402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544334, 32.230381, 43.419525>,  <38.774639, 32.458042, 43.184727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544334, 32.230381, 43.419525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259656, 0.553482, 0.791351,
		-0.775293, 0.608044, -0.170888,
		-0.575759, -0.569157, 0.586994,
		38.371605, 32.059635, 43.595623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474007, 32.870102, 43.630959>,  <38.774639, 32.458042, 43.184727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474007, 32.870102, 43.630959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420887, 32.532871, 43.839417>,  <38.389015, 32.330532, 43.964489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420887, 32.532871, 43.839417>,  <38.474007, 32.870102, 43.630959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420887, 32.532871, 43.839417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435786, 0.422584, 0.794678,
		-0.890200, 0.332636, 0.311283,
		-0.132795, -0.843075, 0.521142,
		38.381050, 32.279949, 43.995758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108349, 33.002548, 44.271553>,  <38.474007, 32.870102, 43.630959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108349, 33.002548, 44.271553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299709, 32.655308, 44.324516>,  <38.414528, 32.446964, 44.356293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299709, 32.655308, 44.324516>,  <38.108349, 33.002548, 44.271553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299709, 32.655308, 44.324516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320750, 0.313109, 0.893914,
		-0.817464, -0.385183, 0.428236,
		0.478405, -0.868100, 0.132408,
		38.443230, 32.394878, 44.364239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071732, 32.903114, 44.929157>,  <38.108349, 33.002548, 44.271553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071732, 32.903114, 44.929157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356277, 32.631065, 44.858280>,  <38.527004, 32.467838, 44.815754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356277, 32.631065, 44.858280>,  <38.071732, 32.903114, 44.929157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356277, 32.631065, 44.858280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331165, 0.101984, 0.938045,
		-0.619912, -0.725973, 0.297780,
		0.711364, -0.680119, -0.177195,
		38.569687, 32.427029, 44.805122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021828, 32.348568, 45.466129>,  <38.071732, 32.903114, 44.929157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021828, 32.348568, 45.466129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393623, 32.345406, 45.318626>,  <38.616703, 32.343510, 45.230125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393623, 32.345406, 45.318626>,  <38.021828, 32.348568, 45.466129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393623, 32.345406, 45.318626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356533, -0.236889, 0.903752,
		-0.094500, -0.971505, -0.217367,
		0.929491, -0.007906, -0.368760,
		38.672470, 32.343033, 45.208000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314606, 31.804688, 45.895069>,  <38.021828, 32.348568, 45.466129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314606, 31.804688, 45.895069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634029, 31.995888, 45.748745>,  <38.825684, 32.110607, 45.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634029, 31.995888, 45.748745>,  <38.314606, 31.804688, 45.895069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634029, 31.995888, 45.748745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443504, -0.056379, 0.894497,
		0.406948, -0.876547, -0.257018,
		0.798560, 0.478002, -0.365809,
		38.873596, 32.139290, 45.639004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029606, 31.457090, 46.095062>,  <38.314606, 31.804688, 45.895069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029606, 31.457090, 46.095062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155766, 31.823606, 45.996323>,  <39.231461, 32.043518, 45.937080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155766, 31.823606, 45.996323>,  <39.029606, 31.457090, 46.095062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155766, 31.823606, 45.996323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497511, 0.061847, 0.865251,
		0.808088, -0.395708, -0.436358,
		0.315399, 0.916291, -0.246847,
		39.250385, 32.098495, 45.922268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737015, 31.437607, 46.300819>,  <39.029606, 31.457090, 46.095062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737015, 31.437607, 46.300819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612652, 31.816135, 46.265472>,  <39.538033, 32.043255, 46.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612652, 31.816135, 46.265472>,  <39.737015, 31.437607, 46.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612652, 31.816135, 46.265472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382089, 0.209582, 0.900046,
		0.870256, 0.246064, -0.426740,
		-0.310906, 0.946323, -0.088372,
		39.519379, 32.100033, 46.238960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327049, 31.810843, 46.413151>,  <39.737015, 31.437607, 46.300819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327049, 31.810843, 46.413151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003620, 32.025295, 46.510120>,  <39.809563, 32.153965, 46.568302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003620, 32.025295, 46.510120>,  <40.327049, 31.810843, 46.413151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003620, 32.025295, 46.510120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468916, 0.338285, 0.815892,
		0.355417, 0.773387, -0.524930,
		-0.808577, 0.536130, 0.242422,
		39.761047, 32.186134, 46.582848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645515, 32.245991, 46.798714>,  <40.327049, 31.810843, 46.413151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645515, 32.245991, 46.798714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258083, 32.335617, 46.841885>,  <40.025623, 32.389393, 46.867786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258083, 32.335617, 46.841885>,  <40.645515, 32.245991, 46.798714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258083, 32.335617, 46.841885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183359, 0.350143, 0.918575,
		0.168029, 0.909503, -0.380225,
		-0.968579, 0.224064, 0.107931,
		39.967510, 32.402836, 46.874264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927742, 32.859268, 46.476761>,  <40.645515, 32.245991, 46.798714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927742, 32.859268, 46.476761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295906, 33.007542, 46.427063>,  <41.516804, 33.096508, 46.397243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295906, 33.007542, 46.427063>,  <40.927742, 32.859268, 46.476761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295906, 33.007542, 46.427063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020370, -0.271901, -0.962110,
		-0.390425, 0.888066, -0.242710,
		0.920409, 0.370688, -0.124247,
		41.572029, 33.118748, 46.389790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885181, 33.324924, 45.897091>,  <40.927742, 32.859268, 46.476761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885181, 33.324924, 45.897091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262577, 33.197659, 45.934174>,  <41.489014, 33.121300, 45.956425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262577, 33.197659, 45.934174>,  <40.885181, 33.324924, 45.897091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262577, 33.197659, 45.934174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017534, -0.327289, -0.944761,
		0.330932, 0.889749, -0.314374,
		0.943492, -0.318164, 0.092710,
		41.545624, 33.102211, 45.961987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228157, 33.619080, 45.322952>,  <40.885181, 33.324924, 45.897091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228157, 33.619080, 45.322952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503044, 33.344086, 45.416840>,  <41.667976, 33.179089, 45.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503044, 33.344086, 45.416840>,  <41.228157, 33.619080, 45.322952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503044, 33.344086, 45.416840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133230, -0.198354, -0.971033,
		0.714126, 0.698587, -0.044720,
		0.687222, -0.687482, 0.234722,
		41.709209, 33.137840, 45.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829914, 33.766117, 44.949478>,  <41.228157, 33.619080, 45.322952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829914, 33.766117, 44.949478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830498, 33.381645, 45.059849>,  <41.830849, 33.150963, 45.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830498, 33.381645, 45.059849>,  <41.829914, 33.766117, 44.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830498, 33.381645, 45.059849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107661, -0.274474, -0.955548,
		0.994187, -0.028310, -0.103883,
		0.001462, -0.961178, 0.275927,
		41.830936, 33.093292, 45.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355991, 33.467278, 44.428501>,  <41.829914, 33.766117, 44.949478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355991, 33.467278, 44.428501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140747, 33.164799, 44.577419>,  <42.011600, 32.983311, 44.666771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140747, 33.164799, 44.577419>,  <42.355991, 33.467278, 44.428501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140747, 33.164799, 44.577419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106101, -0.377408, -0.919949,
		0.836167, -0.534538, 0.122855,
		-0.538114, -0.756196, 0.372291,
		41.979313, 32.937939, 44.689106>
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
