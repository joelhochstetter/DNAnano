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
	<24.225988, 34.680710, 35.280815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263357, 35.078583, 35.298199>,  <24.285778, 35.317307, 35.308628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263357, 35.078583, 35.298199>,  <24.225988, 34.680710, 35.280815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263357, 35.078583, 35.298199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995596, -0.093671, 0.003751,
		0.007801, 0.042915, -0.999048,
		0.093421, 0.994678, 0.043456,
		24.291384, 35.376987, 35.311237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598814, 35.100311, 34.735584>,  <24.225988, 34.680710, 35.280815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598814, 35.100311, 34.735584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667894, 35.298912, 35.075859>,  <24.709343, 35.418072, 35.280022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667894, 35.298912, 35.075859>,  <24.598814, 35.100311, 34.735584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667894, 35.298912, 35.075859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949829, -0.312597, -0.010380,
		0.260768, 0.809798, -0.525573,
		0.172699, 0.496498, 0.850685,
		24.719704, 35.447861, 35.331066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137682, 35.457863, 34.717907>,  <24.598814, 35.100311, 34.735584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137682, 35.457863, 34.717907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094759, 35.363754, 35.104301>,  <25.069006, 35.307289, 35.336140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094759, 35.363754, 35.104301>,  <25.137682, 35.457863, 34.717907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094759, 35.363754, 35.104301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868961, -0.494305, -0.023862,
		0.483107, 0.836845, 0.257485,
		-0.107307, -0.235272, 0.965988,
		25.062567, 35.293171, 35.394096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627193, 35.617245, 35.213947>,  <25.137682, 35.457863, 34.717907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627193, 35.617245, 35.213947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502220, 35.269230, 35.366482>,  <25.427237, 35.060421, 35.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502220, 35.269230, 35.366482>,  <25.627193, 35.617245, 35.213947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502220, 35.269230, 35.366482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948115, -0.260727, 0.181933,
		-0.058865, 0.418392, 0.906357,
		-0.312431, -0.870040, 0.381336,
		25.408491, 35.008217, 35.480881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233149, 35.169853, 35.350578>,  <25.627193, 35.617245, 35.213947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233149, 35.169853, 35.350578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986296, 34.889008, 35.492668>,  <25.838184, 34.720501, 35.577923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986296, 34.889008, 35.492668>,  <26.233149, 35.169853, 35.350578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986296, 34.889008, 35.492668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772264, -0.453906, 0.444497,
		-0.150851, 0.548638, 0.822338,
		-0.617132, -0.702115, 0.355221,
		25.801155, 34.678371, 35.599236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690144, 34.746037, 35.718319>,  <26.233149, 35.169853, 35.350578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690144, 34.746037, 35.718319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344521, 34.569290, 35.814789>,  <26.137148, 34.463242, 35.872669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344521, 34.569290, 35.814789>,  <26.690144, 34.746037, 35.718319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344521, 34.569290, 35.814789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496509, -0.669074, 0.553009,
		-0.082989, 0.597577, 0.797505,
		-0.864056, -0.441862, 0.241176,
		26.085304, 34.436733, 35.887142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029818, 34.493511, 36.385284>,  <26.690144, 34.746037, 35.718319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029818, 34.493511, 36.385284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299425, 34.393036, 36.663162>,  <27.461189, 34.332752, 36.829891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299425, 34.393036, 36.663162>,  <27.029818, 34.493511, 36.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299425, 34.393036, 36.663162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038170, -0.950999, -0.306828,
		0.737728, 0.180291, -0.650578,
		0.674018, -0.251188, 0.694697,
		27.501631, 34.317680, 36.871571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759380, 34.383129, 36.281002>,  <27.029818, 34.493511, 36.385284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759380, 34.383129, 36.281002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930210, 34.100552, 36.055244>,  <28.032707, 33.931004, 35.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930210, 34.100552, 36.055244>,  <27.759380, 34.383129, 36.281002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930210, 34.100552, 36.055244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349446, 0.704635, -0.617557,
		0.833963, 0.066518, 0.547797,
		0.427075, -0.706445, -0.564395,
		28.058332, 33.888618, 35.885925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454590, 34.590225, 36.182922>,  <27.759380, 34.383129, 36.281002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454590, 34.590225, 36.182922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400080, 34.327969, 35.885857>,  <28.367373, 34.170612, 35.707615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400080, 34.327969, 35.885857>,  <28.454590, 34.590225, 36.182922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400080, 34.327969, 35.885857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502639, 0.600244, -0.622143,
		0.853688, -0.458078, 0.247754,
		-0.136277, -0.655646, -0.742669,
		28.359196, 34.131275, 35.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147671, 34.544025, 35.928635>,  <28.454590, 34.590225, 36.182922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147671, 34.544025, 35.928635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896555, 34.418743, 35.643597>,  <28.745886, 34.343575, 35.472576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896555, 34.418743, 35.643597>,  <29.147671, 34.544025, 35.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896555, 34.418743, 35.643597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627906, 0.337262, -0.701419,
		0.460020, -0.887781, -0.015064,
		-0.627786, -0.313208, -0.712590,
		28.708220, 34.324780, 35.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575586, 34.285297, 35.483719>,  <29.147671, 34.544025, 35.928635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575586, 34.285297, 35.483719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232155, 34.325603, 35.282646>,  <29.026096, 34.349789, 35.162003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232155, 34.325603, 35.282646>,  <29.575586, 34.285297, 35.483719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232155, 34.325603, 35.282646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497768, 0.398618, -0.770280,
		0.122761, -0.911565, -0.392402,
		-0.858578, 0.100765, -0.502682,
		28.974581, 34.355831, 35.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576099, 33.910427, 34.723827>,  <29.575586, 34.285297, 35.483719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576099, 33.910427, 34.723827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288486, 34.188404, 34.721058>,  <29.115919, 34.355190, 34.719395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288486, 34.188404, 34.721058>,  <29.576099, 33.910427, 34.723827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288486, 34.188404, 34.721058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412016, 0.418233, -0.809521,
		-0.559673, -0.584927, -0.587050,
		-0.719034, 0.694940, -0.006926,
		29.072777, 34.396885, 34.718979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387659, 34.048573, 34.008892>,  <29.576099, 33.910427, 34.723827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387659, 34.048573, 34.008892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235771, 34.378281, 34.176888>,  <29.144638, 34.576103, 34.277687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235771, 34.378281, 34.176888>,  <29.387659, 34.048573, 34.008892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235771, 34.378281, 34.176888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259998, 0.530785, -0.806640,
		-0.887814, -0.197100, -0.415858,
		-0.379720, 0.824269, 0.419993,
		29.121855, 34.625561, 34.302887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030188, 34.350224, 33.479145>,  <29.387659, 34.048573, 34.008892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030188, 34.350224, 33.479145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111166, 34.659378, 33.719696>,  <29.159754, 34.844872, 33.864029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111166, 34.659378, 33.719696>,  <29.030188, 34.350224, 33.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111166, 34.659378, 33.719696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271662, 0.545671, -0.792744,
		-0.940859, 0.323860, -0.099496,
		0.202446, 0.772889, 0.601380,
		29.171900, 34.891243, 33.900108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818129, 34.870731, 33.089279>,  <29.030188, 34.350224, 33.479145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818129, 34.870731, 33.089279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057095, 35.019653, 33.373386>,  <29.200474, 35.109005, 33.543850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057095, 35.019653, 33.373386>,  <28.818129, 34.870731, 33.089279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057095, 35.019653, 33.373386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426255, 0.602798, -0.674493,
		-0.679265, 0.705710, 0.201425,
		0.597416, 0.372301, 0.710272,
		29.236319, 35.131344, 33.586468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038877, 35.576622, 32.931053>,  <28.818129, 34.870731, 33.089279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038877, 35.576622, 32.931053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312229, 35.477791, 33.205845>,  <29.476240, 35.418491, 33.370720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312229, 35.477791, 33.205845>,  <29.038877, 35.576622, 32.931053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312229, 35.477791, 33.205845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695421, 0.506732, -0.509522,
		-0.222223, 0.825938, 0.518115,
		0.683379, -0.247080, 0.686982,
		29.517242, 35.403667, 33.411938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368237, 36.296211, 33.070015>,  <29.038877, 35.576622, 32.931053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368237, 36.296211, 33.070015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587996, 35.966473, 33.124580>,  <29.719851, 35.768627, 33.157322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587996, 35.966473, 33.124580>,  <29.368237, 36.296211, 33.070015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587996, 35.966473, 33.124580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687607, 0.353291, -0.634336,
		0.474719, 0.442306, 0.760926,
		0.549398, -0.824349, 0.136418,
		29.752815, 35.719170, 33.165504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011007, 36.553993, 33.153183>,  <29.368237, 36.296211, 33.070015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011007, 36.553993, 33.153183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087734, 36.169003, 33.076401>,  <30.133770, 35.938007, 33.030331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087734, 36.169003, 33.076401>,  <30.011007, 36.553993, 33.153183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087734, 36.169003, 33.076401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703684, 0.271214, -0.656712,
		0.684131, -0.009106, 0.729303,
		0.191817, -0.962476, -0.191954,
		30.145279, 35.880260, 33.018814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764862, 36.512245, 33.038517>,  <30.011007, 36.553993, 33.153183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764862, 36.512245, 33.038517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616035, 36.175320, 32.882530>,  <30.526739, 35.973164, 32.788940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616035, 36.175320, 32.882530>,  <30.764862, 36.512245, 33.038517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616035, 36.175320, 32.882530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623346, 0.084549, -0.777362,
		0.687755, -0.532312, 0.493596,
		-0.372066, -0.842315, -0.389963,
		30.504416, 35.922626, 32.765541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311977, 36.175480, 32.996799>,  <30.764862, 36.512245, 33.038517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311977, 36.175480, 32.996799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037941, 36.021912, 32.749168>,  <30.873520, 35.929771, 32.600590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037941, 36.021912, 32.749168>,  <31.311977, 36.175480, 32.996799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037941, 36.021912, 32.749168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616517, 0.147093, -0.773480,
		0.388017, -0.911574, 0.135922,
		-0.685091, -0.383922, -0.619075,
		30.832413, 35.906734, 32.563446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724480, 35.578316, 32.676716>,  <31.311977, 36.175480, 32.996799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724480, 35.578316, 32.676716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419540, 35.703659, 32.450218>,  <31.236576, 35.778866, 32.314320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419540, 35.703659, 32.450218>,  <31.724480, 35.578316, 32.676716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419540, 35.703659, 32.450218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598044, 0.006741, -0.801435,
		-0.247319, -0.949611, -0.192541,
		-0.762350, 0.313359, -0.566242,
		31.190836, 35.797665, 32.280346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844067, 35.107414, 32.132484>,  <31.724480, 35.578316, 32.676716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844067, 35.107414, 32.132484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592627, 35.387135, 31.996346>,  <31.441763, 35.554966, 31.914661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592627, 35.387135, 31.996346>,  <31.844067, 35.107414, 32.132484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592627, 35.387135, 31.996346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573450, 0.121133, -0.810235,
		-0.525374, -0.704486, -0.477160,
		-0.628600, 0.699304, -0.340347,
		31.404047, 35.596928, 31.894241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704594, 34.952709, 31.407511>,  <31.844067, 35.107414, 32.132484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704594, 34.952709, 31.407511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612896, 35.338181, 31.462307>,  <31.557878, 35.569466, 31.495184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612896, 35.338181, 31.462307>,  <31.704594, 34.952709, 31.407511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612896, 35.338181, 31.462307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395287, 0.220778, -0.891631,
		-0.889492, -0.150249, -0.431542,
		-0.229242, 0.963682, 0.136988,
		31.544123, 35.627285, 31.503403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260223, 35.224899, 30.827351>,  <31.704594, 34.952709, 31.407511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260223, 35.224899, 30.827351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429468, 35.552803, 30.981737>,  <31.531015, 35.749546, 31.074369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429468, 35.552803, 30.981737>,  <31.260223, 35.224899, 30.827351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429468, 35.552803, 30.981737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476808, 0.160778, -0.864179,
		-0.770475, 0.549674, -0.322842,
		0.423111, 0.819761, 0.385964,
		31.556402, 35.798733, 31.097527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115873, 35.827690, 30.462227>,  <31.260223, 35.224899, 30.827351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115873, 35.827690, 30.462227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465788, 35.910934, 30.637241>,  <31.675735, 35.960880, 30.742250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465788, 35.910934, 30.637241>,  <31.115873, 35.827690, 30.462227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465788, 35.910934, 30.637241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393896, 0.220366, -0.892348,
		-0.282129, 0.952957, 0.110797,
		0.874785, 0.208115, 0.437537,
		31.728224, 35.973370, 30.768503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428154, 36.464272, 30.174295>,  <31.115873, 35.827690, 30.462227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428154, 36.464272, 30.174295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743559, 36.267639, 30.322132>,  <31.932802, 36.149658, 30.410833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743559, 36.267639, 30.322132>,  <31.428154, 36.464272, 30.174295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743559, 36.267639, 30.322132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426803, 0.004691, -0.904332,
		0.442818, 0.870820, 0.213507,
		0.788512, -0.491580, 0.369591,
		31.980112, 36.120167, 30.433010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129848, 36.629059, 30.041197>,  <31.428154, 36.464272, 30.174295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129848, 36.629059, 30.041197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371006, 36.327282, 30.144995>,  <32.515701, 36.146217, 30.207273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371006, 36.327282, 30.144995>,  <32.129848, 36.629059, 30.041197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371006, 36.327282, 30.144995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791005, 0.522810, -0.317774,
		0.104076, 0.396846, 0.911966,
		0.602892, -0.754442, 0.259495,
		32.551872, 36.100948, 30.222843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721333, 36.933975, 30.528099>,  <32.129848, 36.629059, 30.041197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721333, 36.933975, 30.528099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845718, 36.615280, 30.320827>,  <32.920349, 36.424065, 30.196465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845718, 36.615280, 30.320827>,  <32.721333, 36.933975, 30.528099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845718, 36.615280, 30.320827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909917, 0.407042, -0.079800,
		0.274500, -0.446686, 0.851540,
		0.310967, -0.796736, -0.518180,
		32.939007, 36.376259, 30.165373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084244, 36.352577, 30.913792>,  <32.721333, 36.933975, 30.528099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084244, 36.352577, 30.913792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180683, 36.435806, 30.534618>,  <33.238544, 36.485744, 30.307114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180683, 36.435806, 30.534618>,  <33.084244, 36.352577, 30.913792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180683, 36.435806, 30.534618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748906, 0.581347, 0.318079,
		0.617263, -0.786601, -0.015667,
		0.241094, 0.208072, -0.947935,
		33.253010, 36.498226, 30.250238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717682, 36.241470, 30.896753>,  <33.084244, 36.352577, 30.913792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717682, 36.241470, 30.896753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633240, 36.500652, 30.604017>,  <33.582573, 36.656162, 30.428375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633240, 36.500652, 30.604017>,  <33.717682, 36.241470, 30.896753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633240, 36.500652, 30.604017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823576, 0.521164, 0.223853,
		0.526456, -0.555471, -0.643659,
		-0.211108, 0.647951, -0.731842,
		33.569908, 36.695038, 30.384464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045948, 36.229229, 30.213211>,  <33.717682, 36.241470, 30.896753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045948, 36.229229, 30.213211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004368, 36.618332, 30.296087>,  <33.979420, 36.851795, 30.345814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004368, 36.618332, 30.296087>,  <34.045948, 36.229229, 30.213211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004368, 36.618332, 30.296087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994582, 0.101737, 0.021362,
		-0.000299, 0.208289, -0.978067,
		-0.103955, 0.972762, 0.207191,
		33.973183, 36.910160, 30.358244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318470, 36.568108, 29.578266>,  <34.045948, 36.229229, 30.213211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318470, 36.568108, 29.578266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337852, 36.747650, 29.935181>,  <34.349483, 36.855377, 30.149330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337852, 36.747650, 29.935181>,  <34.318470, 36.568108, 29.578266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337852, 36.747650, 29.935181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993180, -0.116499, 0.004669,
		0.106047, 0.885976, -0.451443,
		0.048456, 0.448859, 0.892288,
		34.352390, 36.882309, 30.202868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896599, 37.115429, 29.623503>,  <34.318470, 36.568108, 29.578266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896599, 37.115429, 29.623503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812408, 36.934731, 29.970289>,  <34.761894, 36.826313, 30.178360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812408, 36.934731, 29.970289>,  <34.896599, 37.115429, 29.623503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812408, 36.934731, 29.970289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944551, -0.322610, 0.061211,
		0.252040, 0.831776, 0.494596,
		-0.210475, -0.451744, 0.866965,
		34.749268, 36.799206, 30.230379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373123, 37.460285, 30.214912>,  <34.896599, 37.115429, 29.623503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373123, 37.460285, 30.214912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255806, 37.078007, 30.204891>,  <35.185417, 36.848640, 30.198877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255806, 37.078007, 30.204891>,  <35.373123, 37.460285, 30.214912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255806, 37.078007, 30.204891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955342, -0.293969, 0.030055,
		-0.036089, -0.015121, 0.999234,
		-0.293290, -0.955695, -0.025055,
		35.167820, 36.791298, 30.197374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690159, 36.997177, 30.732981>,  <35.373123, 37.460285, 30.214912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690159, 36.997177, 30.732981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648399, 36.804928, 30.384703>,  <35.623344, 36.689579, 30.175735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648399, 36.804928, 30.384703>,  <35.690159, 36.997177, 30.732981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648399, 36.804928, 30.384703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871980, -0.465259, 0.152268,
		-0.478281, -0.743330, 0.467662,
		-0.104399, -0.480619, -0.870693,
		35.617081, 36.660744, 30.123495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169121, 36.862495, 31.294777>,  <35.690159, 36.997177, 30.732981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169121, 36.862495, 31.294777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855999, 37.085453, 31.405434>,  <35.668125, 37.219227, 31.471828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855999, 37.085453, 31.405434>,  <36.169121, 36.862495, 31.294777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855999, 37.085453, 31.405434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290510, -0.720500, 0.629670,
		0.550297, 0.412539, 0.725938,
		-0.782801, 0.557397, 0.276642,
		35.621159, 37.252670, 31.488426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097546, 36.640663, 31.958090>,  <36.169121, 36.862495, 31.294777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097546, 36.640663, 31.958090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762947, 36.840153, 31.867270>,  <35.562187, 36.959846, 31.812777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762947, 36.840153, 31.867270>,  <36.097546, 36.640663, 31.958090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762947, 36.840153, 31.867270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540976, -0.685581, 0.487158,
		0.087294, 0.530335, 0.843282,
		-0.836496, 0.498722, -0.227051,
		35.511997, 36.989769, 31.799154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747643, 36.750332, 32.551556>,  <36.097546, 36.640663, 31.958090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747643, 36.750332, 32.551556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451584, 36.764923, 32.282974>,  <35.273949, 36.773678, 32.121826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451584, 36.764923, 32.282974>,  <35.747643, 36.750332, 32.551556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451584, 36.764923, 32.282974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535319, -0.636263, 0.555521,
		-0.406952, 0.770610, 0.490460,
		-0.740151, 0.036482, -0.671450,
		35.229538, 36.775867, 32.081539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190678, 36.902012, 32.971855>,  <35.747643, 36.750332, 32.551556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190678, 36.902012, 32.971855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040596, 36.752365, 32.632618>,  <34.950546, 36.662579, 32.429077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040596, 36.752365, 32.632618>,  <35.190678, 36.902012, 32.971855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040596, 36.752365, 32.632618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717766, -0.461684, 0.521210,
		-0.586543, 0.804291, -0.095300,
		-0.375206, -0.374115, -0.848091,
		34.928036, 36.640129, 32.378189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505188, 36.855907, 33.131577>,  <35.190678, 36.902012, 32.971855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505188, 36.855907, 33.131577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561245, 36.621994, 32.811981>,  <34.594879, 36.481647, 32.620224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561245, 36.621994, 32.811981>,  <34.505188, 36.855907, 33.131577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561245, 36.621994, 32.811981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459179, -0.753318, 0.470816,
		-0.877220, 0.300898, -0.374093,
		0.140143, -0.584784, -0.798992,
		34.603287, 36.446560, 32.572285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848171, 36.661980, 33.025276>,  <34.505188, 36.855907, 33.131577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848171, 36.661980, 33.025276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059975, 36.396671, 32.813732>,  <34.187057, 36.237488, 32.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059975, 36.396671, 32.813732>,  <33.848171, 36.661980, 33.025276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059975, 36.396671, 32.813732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559845, -0.741617, 0.369564,
		-0.637334, 0.100395, -0.764020,
		0.529508, -0.663268, -0.528863,
		34.218826, 36.197689, 32.655071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313538, 36.224377, 32.663277>,  <33.848171, 36.661980, 33.025276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313538, 36.224377, 32.663277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661751, 36.032837, 32.708652>,  <33.870678, 35.917912, 32.735878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661751, 36.032837, 32.708652>,  <33.313538, 36.224377, 32.663277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661751, 36.032837, 32.708652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475204, -0.758094, 0.446625,
		-0.127868, -0.442711, -0.887500,
		0.870535, -0.478853, 0.113442,
		33.922913, 35.889179, 32.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210155, 35.528381, 32.507198>,  <33.313538, 36.224377, 32.663277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210155, 35.528381, 32.507198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554043, 35.510082, 32.710682>,  <33.760376, 35.499104, 32.832771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554043, 35.510082, 32.710682>,  <33.210155, 35.528381, 32.507198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554043, 35.510082, 32.710682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398633, -0.682791, 0.612281,
		0.319330, -0.729179, -0.605249,
		0.859721, -0.045752, 0.508710,
		33.811958, 35.496357, 32.863297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282448, 34.840096, 32.527012>,  <33.210155, 35.528381, 32.507198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282448, 34.840096, 32.527012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517662, 34.987000, 32.815273>,  <33.658791, 35.075142, 32.988228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517662, 34.987000, 32.815273>,  <33.282448, 34.840096, 32.527012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517662, 34.987000, 32.815273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440376, -0.601965, 0.666113,
		0.678441, -0.709055, -0.192245,
		0.588036, 0.367259, 0.720649,
		33.694073, 35.097176, 33.031467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598553, 34.266296, 32.843338>,  <33.282448, 34.840096, 32.527012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598553, 34.266296, 32.843338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605434, 34.573143, 33.099850>,  <33.609562, 34.757252, 33.253757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605434, 34.573143, 33.099850>,  <33.598553, 34.266296, 32.843338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605434, 34.573143, 33.099850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327408, -0.601688, 0.728543,
		0.944726, -0.222489, 0.240812,
		0.017200, 0.767118, 0.641275,
		33.610596, 34.803280, 33.292233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872627, 33.933426, 33.483437>,  <33.598553, 34.266296, 32.843338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872627, 33.933426, 33.483437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704063, 34.273350, 33.610081>,  <33.602924, 34.477303, 33.686066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704063, 34.273350, 33.610081>,  <33.872627, 33.933426, 33.483437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704063, 34.273350, 33.610081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339927, -0.471690, 0.813608,
		0.840751, 0.235238, 0.487647,
		-0.421410, 0.849807, 0.316610,
		33.577641, 34.528294, 33.705063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013496, 33.980122, 34.184795>,  <33.872627, 33.933426, 33.483437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013496, 33.980122, 34.184795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684223, 34.196594, 34.116104>,  <33.486660, 34.326477, 34.074890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684223, 34.196594, 34.116104>,  <34.013496, 33.980122, 34.184795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684223, 34.196594, 34.116104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452784, -0.443233, 0.773648,
		0.342564, 0.714613, 0.609900,
		-0.823187, 0.541177, -0.171729,
		33.437267, 34.358948, 34.064587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747917, 33.983196, 34.859486>,  <34.013496, 33.980122, 34.184795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747917, 33.983196, 34.859486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441261, 34.108875, 34.635506>,  <33.257267, 34.184284, 34.501118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441261, 34.108875, 34.635506>,  <33.747917, 33.983196, 34.859486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441261, 34.108875, 34.635506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629123, -0.193291, 0.752889,
		0.128324, 0.929472, 0.345854,
		-0.766640, 0.314198, -0.559949,
		33.211269, 34.203136, 34.467522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387955, 34.317032, 35.350002>,  <33.747917, 33.983196, 34.859486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387955, 34.317032, 35.350002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128132, 34.273655, 35.048988>,  <32.972237, 34.247631, 34.868378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128132, 34.273655, 35.048988>,  <33.387955, 34.317032, 35.350002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128132, 34.273655, 35.048988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707265, -0.277043, 0.650402,
		-0.279014, 0.954719, 0.103262,
		-0.649559, -0.108438, -0.752539,
		32.933266, 34.241123, 34.823227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729259, 34.769653, 35.430412>,  <33.387955, 34.317032, 35.350002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729259, 34.769653, 35.430412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620022, 34.460045, 35.201916>,  <32.554478, 34.274281, 35.064819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620022, 34.460045, 35.201916>,  <32.729259, 34.769653, 35.430412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620022, 34.460045, 35.201916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719679, -0.229648, 0.655228,
		-0.638343, 0.590048, -0.494330,
		-0.273094, -0.774019, -0.571239,
		32.538094, 34.227840, 35.030544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939789, 34.815098, 35.289459>,  <32.729259, 34.769653, 35.430412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939789, 34.815098, 35.289459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072151, 34.438286, 35.267235>,  <32.151569, 34.212200, 35.253899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072151, 34.438286, 35.267235>,  <31.939789, 34.815098, 35.289459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072151, 34.438286, 35.267235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723357, -0.291025, 0.626146,
		-0.606017, -0.167001, -0.777724,
		0.330904, -0.942027, -0.055565,
		32.171421, 34.155678, 35.250565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307705, 34.533089, 35.262539>,  <31.939789, 34.815098, 35.289459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307705, 34.533089, 35.262539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567739, 34.238003, 35.335381>,  <31.723761, 34.060951, 35.379086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567739, 34.238003, 35.335381>,  <31.307705, 34.533089, 35.262539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567739, 34.238003, 35.335381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743201, -0.567398, 0.354560,
		-0.158240, -0.365833, -0.917129,
		0.650087, -0.737717, 0.182103,
		31.762766, 34.016689, 35.390011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985685, 33.931244, 34.959782>,  <31.307705, 34.533089, 35.262539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985685, 33.931244, 34.959782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244759, 33.793190, 35.231483>,  <31.400202, 33.710358, 35.394505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244759, 33.793190, 35.231483>,  <30.985685, 33.931244, 34.959782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244759, 33.793190, 35.231483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686480, -0.651103, 0.323745,
		0.330533, -0.675981, -0.658633,
		0.647683, -0.345130, 0.679258,
		31.439064, 33.689651, 35.435261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937874, 33.198761, 34.897758>,  <30.985685, 33.931244, 34.959782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937874, 33.198761, 34.897758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085100, 33.268902, 35.263004>,  <31.173435, 33.310986, 35.482151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085100, 33.268902, 35.263004>,  <30.937874, 33.198761, 34.897758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085100, 33.268902, 35.263004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568071, -0.735047, 0.370136,
		0.736086, -0.654949, -0.170936,
		0.368066, 0.175348, 0.913116,
		31.195520, 33.321507, 35.536938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979887, 32.527405, 35.158085>,  <30.937874, 33.198761, 34.897758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979887, 32.527405, 35.158085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997244, 32.768848, 35.476524>,  <31.007658, 32.913715, 35.667587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997244, 32.768848, 35.476524>,  <30.979887, 32.527405, 35.158085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997244, 32.768848, 35.476524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586275, -0.629835, 0.509500,
		0.808949, -0.488843, 0.326548,
		0.043394, 0.603606, 0.796101,
		31.010262, 32.949932, 35.715355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155895, 32.084740, 35.754021>,  <30.979887, 32.527405, 35.158085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155895, 32.084740, 35.754021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978615, 32.420975, 35.878590>,  <30.872246, 32.622715, 35.953331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978615, 32.420975, 35.878590>,  <31.155895, 32.084740, 35.754021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978615, 32.420975, 35.878590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568298, -0.532144, 0.627583,
		0.693260, 0.101165, 0.713551,
		-0.443202, 0.840588, 0.311423,
		30.845654, 32.673153, 35.972015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005116, 31.892191, 36.318550>,  <31.155895, 32.084740, 35.754021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005116, 31.892191, 36.318550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777475, 32.219791, 36.289268>,  <30.640890, 32.416351, 36.271702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777475, 32.219791, 36.289268>,  <31.005116, 31.892191, 36.318550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777475, 32.219791, 36.289268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708208, -0.442979, 0.549737,
		0.417809, 0.364699, 0.832124,
		-0.569102, 0.819002, -0.073202,
		30.606745, 32.465492, 36.267307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719473, 32.147621, 37.015308>,  <31.005116, 31.892191, 36.318550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719473, 32.147621, 37.015308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465466, 32.250412, 36.723907>,  <30.313061, 32.312084, 36.549068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465466, 32.250412, 36.723907>,  <30.719473, 32.147621, 37.015308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465466, 32.250412, 36.723907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733177, -0.497528, 0.463593,
		-0.243319, 0.828511, 0.504346,
		-0.635018, 0.256974, -0.728503,
		30.274960, 32.327503, 36.505356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814493, 32.318527, 37.774654>,  <30.719473, 32.147621, 37.015308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814493, 32.318527, 37.774654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160046, 32.366909, 37.579071>,  <31.367376, 32.395939, 37.461720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160046, 32.366909, 37.579071>,  <30.814493, 32.318527, 37.774654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160046, 32.366909, 37.579071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457498, 0.217701, 0.862149,
		0.210737, -0.968490, 0.132726,
		0.863878, 0.120965, -0.488960,
		31.419210, 32.403194, 37.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185534, 31.885731, 38.123245>,  <30.814493, 32.318527, 37.774654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185534, 31.885731, 38.123245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433989, 32.133724, 37.931492>,  <31.583061, 32.282520, 37.816441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433989, 32.133724, 37.931492>,  <31.185534, 31.885731, 38.123245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433989, 32.133724, 37.931492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437925, 0.232699, 0.868374,
		0.649930, -0.749313, -0.126968,
		0.621138, 0.619984, -0.479381,
		31.620331, 32.319717, 37.787678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780270, 31.697685, 38.450809>,  <31.185534, 31.885731, 38.123245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780270, 31.697685, 38.450809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799707, 32.066746, 38.297783>,  <31.811369, 32.288181, 38.205967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799707, 32.066746, 38.297783>,  <31.780270, 31.697685, 38.450809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799707, 32.066746, 38.297783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139498, 0.372992, 0.917288,
		0.989029, -0.097941, -0.110583,
		0.048593, 0.922651, -0.382563,
		31.814285, 32.343540, 38.183014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335510, 31.986465, 38.686882>,  <31.780270, 31.697685, 38.450809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335510, 31.986465, 38.686882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069950, 32.275703, 38.610600>,  <31.910614, 32.449245, 38.564831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069950, 32.275703, 38.610600>,  <32.335510, 31.986465, 38.686882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069950, 32.275703, 38.610600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137889, 0.369015, 0.919138,
		0.735000, 0.583917, -0.344696,
		-0.663898, 0.723097, -0.190710,
		31.870781, 32.492634, 38.553387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557842, 32.705826, 38.726158>,  <32.335510, 31.986465, 38.686882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557842, 32.705826, 38.726158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177372, 32.698772, 38.849419>,  <31.949089, 32.694542, 38.923374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177372, 32.698772, 38.849419>,  <32.557842, 32.705826, 38.726158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177372, 32.698772, 38.849419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258312, 0.500974, 0.826015,
		-0.168940, 0.865283, -0.471959,
		-0.951175, -0.017634, 0.308147,
		31.892019, 32.693481, 38.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186275, 33.455524, 38.775036>,  <32.557842, 32.705826, 38.726158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186275, 33.455524, 38.775036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088409, 33.162716, 39.029369>,  <32.029690, 32.987030, 39.181969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088409, 33.162716, 39.029369>,  <32.186275, 33.455524, 38.775036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088409, 33.162716, 39.029369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272614, 0.577376, 0.769623,
		-0.930495, 0.361637, 0.058295,
		-0.244666, -0.732022, 0.635832,
		32.015011, 32.943108, 39.220119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614004, 33.637989, 39.265404>,  <32.186275, 33.455524, 38.775036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614004, 33.637989, 39.265404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864365, 33.360943, 39.408813>,  <32.014580, 33.194717, 39.494858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864365, 33.360943, 39.408813>,  <31.614004, 33.637989, 39.265404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864365, 33.360943, 39.408813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363757, 0.665887, 0.651364,
		-0.689877, -0.277274, 0.668721,
		0.625900, -0.692613, 0.358520,
		32.052135, 33.153160, 39.516369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522148, 33.651230, 40.072701>,  <31.614004, 33.637989, 39.265404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522148, 33.651230, 40.072701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871365, 33.493378, 39.958115>,  <32.080894, 33.398666, 39.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871365, 33.493378, 39.958115>,  <31.522148, 33.651230, 40.072701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871365, 33.493378, 39.958115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486451, 0.663712, 0.568200,
		-0.034095, -0.635416, 0.771417,
		0.873042, -0.394630, -0.286469,
		32.133278, 33.374989, 39.872173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891411, 33.419426, 40.721813>,  <31.522148, 33.651230, 40.072701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891411, 33.419426, 40.721813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143200, 33.520660, 40.427952>,  <32.294273, 33.581402, 40.251637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143200, 33.520660, 40.427952>,  <31.891411, 33.419426, 40.721813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143200, 33.520660, 40.427952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485438, 0.610160, 0.626143,
		0.606731, -0.750763, 0.261211,
		0.629466, 0.253098, -0.734652,
		32.332043, 33.596588, 40.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479198, 33.437817, 41.128941>,  <31.891411, 33.419426, 40.721813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479198, 33.437817, 41.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564461, 33.618649, 40.782486>,  <32.615616, 33.727150, 40.574615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564461, 33.618649, 40.782486>,  <32.479198, 33.437817, 41.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564461, 33.618649, 40.782486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526434, 0.693671, 0.491617,
		0.823063, -0.560753, -0.090133,
		0.213153, 0.452081, -0.866134,
		32.628407, 33.754272, 40.522644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198299, 33.643574, 41.136314>,  <32.479198, 33.437817, 41.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198299, 33.643574, 41.136314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981075, 33.871555, 40.889660>,  <32.850742, 34.008343, 40.741669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981075, 33.871555, 40.889660>,  <33.198299, 33.643574, 41.136314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981075, 33.871555, 40.889660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423579, 0.820020, 0.384900,
		0.725029, -0.052170, -0.686740,
		-0.543060, 0.569952, -0.616636,
		32.818157, 34.042542, 40.704670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707237, 34.102962, 40.914467>,  <33.198299, 33.643574, 41.136314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707237, 34.102962, 40.914467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360455, 34.278492, 40.819969>,  <33.152386, 34.383812, 40.763271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360455, 34.278492, 40.819969>,  <33.707237, 34.102962, 40.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360455, 34.278492, 40.819969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393627, 0.893662, 0.215469,
		0.305679, 0.093809, -0.947502,
		-0.866959, 0.438827, -0.236248,
		33.100368, 34.410141, 40.749096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902431, 34.702698, 40.614021>,  <33.707237, 34.102962, 40.914467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902431, 34.702698, 40.614021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529503, 34.775047, 40.739285>,  <33.305748, 34.818459, 40.814442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529503, 34.775047, 40.739285>,  <33.902431, 34.702698, 40.614021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529503, 34.775047, 40.739285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298642, 0.873425, 0.384631,
		-0.203948, 0.452120, -0.868328,
		-0.932319, 0.180875, 0.313155,
		33.249805, 34.829311, 40.833233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883545, 35.428158, 40.571556>,  <33.902431, 34.702698, 40.614021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883545, 35.428158, 40.571556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559685, 35.364975, 40.797661>,  <33.365368, 35.327065, 40.933323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559685, 35.364975, 40.797661>,  <33.883545, 35.428158, 40.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559685, 35.364975, 40.797661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181461, 0.848547, 0.497031,
		-0.558159, 0.504993, -0.658362,
		-0.809648, -0.157956, 0.565261,
		33.316792, 35.317589, 40.967239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649921, 36.053574, 40.500500>,  <33.883545, 35.428158, 40.571556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649921, 36.053574, 40.500500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442356, 35.918953, 40.814812>,  <33.317818, 35.838181, 41.003399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442356, 35.918953, 40.814812>,  <33.649921, 36.053574, 40.500500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442356, 35.918953, 40.814812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346249, 0.757696, 0.553181,
		-0.781562, 0.559131, -0.276648,
		-0.518916, -0.336556, 0.785784,
		33.286682, 35.817986, 41.050549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218891, 36.606941, 40.806297>,  <33.649921, 36.053574, 40.500500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218891, 36.606941, 40.806297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291229, 36.330265, 41.085972>,  <33.334633, 36.164257, 41.253777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291229, 36.330265, 41.085972>,  <33.218891, 36.606941, 40.806297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291229, 36.330265, 41.085972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316688, 0.713996, 0.624435,
		-0.931131, 0.108497, 0.348173,
		0.180845, -0.691692, 0.699183,
		33.345482, 36.122757, 41.295727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960976, 36.840191, 41.483528>,  <33.218891, 36.606941, 40.806297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960976, 36.840191, 41.483528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200920, 36.543835, 41.604362>,  <33.344887, 36.366020, 41.676865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200920, 36.543835, 41.604362>,  <32.960976, 36.840191, 41.483528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200920, 36.543835, 41.604362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334910, 0.575399, 0.746158,
		-0.726641, -0.346415, 0.593288,
		0.599857, -0.740887, 0.302090,
		33.380878, 36.321568, 41.694988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788197, 36.642681, 42.147350>,  <32.960976, 36.840191, 41.483528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788197, 36.642681, 42.147350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161282, 36.500237, 42.124592>,  <33.385132, 36.414768, 42.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161282, 36.500237, 42.124592>,  <32.788197, 36.642681, 42.147350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161282, 36.500237, 42.124592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258776, 0.551020, 0.793355,
		-0.251177, -0.754692, 0.606095,
		0.932709, -0.356115, -0.056893,
		33.441093, 36.393402, 42.107525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014736, 36.465374, 42.886776>,  <32.788197, 36.642681, 42.147350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014736, 36.465374, 42.886776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347752, 36.509918, 42.669716>,  <33.547562, 36.536644, 42.539478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347752, 36.509918, 42.669716>,  <33.014736, 36.465374, 42.886776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347752, 36.509918, 42.669716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401905, 0.552740, 0.730035,
		0.381245, -0.825880, 0.415422,
		0.832541, 0.111362, -0.542654,
		33.597515, 36.543327, 42.506920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628471, 36.289429, 43.293076>,  <33.014736, 36.465374, 42.886776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628471, 36.289429, 43.293076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736134, 36.535423, 42.996601>,  <33.800732, 36.683018, 42.818718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736134, 36.535423, 42.996601>,  <33.628471, 36.289429, 43.293076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736134, 36.535423, 42.996601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471229, 0.587078, 0.658242,
		0.839940, -0.526435, -0.131785,
		0.269153, 0.614985, -0.741182,
		33.816879, 36.719917, 42.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251747, 36.480114, 43.481701>,  <33.628471, 36.289429, 43.293076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251747, 36.480114, 43.481701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155560, 36.766209, 43.219219>,  <34.097847, 36.937866, 43.061729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155560, 36.766209, 43.219219>,  <34.251747, 36.480114, 43.481701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155560, 36.766209, 43.219219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550242, 0.657371, 0.514875,
		0.799631, -0.237260, -0.551632,
		-0.240468, 0.715241, -0.656205,
		34.083420, 36.980782, 43.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912796, 36.799187, 43.222065>,  <34.251747, 36.480114, 43.481701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912796, 36.799187, 43.222065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625034, 37.067661, 43.150539>,  <34.452377, 37.228745, 43.107624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625034, 37.067661, 43.150539>,  <34.912796, 36.799187, 43.222065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625034, 37.067661, 43.150539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515720, 0.688587, 0.509785,
		0.465291, 0.274520, -0.841513,
		-0.719400, 0.671184, -0.178818,
		34.409214, 37.269016, 43.096893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268787, 37.369808, 43.213669>,  <34.912796, 36.799187, 43.222065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268787, 37.369808, 43.213669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897354, 37.502132, 43.280945>,  <34.674492, 37.581528, 43.321312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897354, 37.502132, 43.280945>,  <35.268787, 37.369808, 43.213669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897354, 37.502132, 43.280945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368675, 0.770437, 0.520101,
		0.042478, 0.544966, -0.837381,
		-0.928587, 0.330814, 0.168189,
		34.618778, 37.601376, 43.331402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309586, 38.183758, 43.095711>,  <35.268787, 37.369808, 43.213669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309586, 38.183758, 43.095711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964687, 38.106121, 43.282841>,  <34.757748, 38.059540, 43.395119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964687, 38.106121, 43.282841>,  <35.309586, 38.183758, 43.095711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964687, 38.106121, 43.282841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078779, 0.861029, 0.502416,
		-0.500325, 0.470062, -0.727129,
		-0.862247, -0.194089, 0.467826,
		34.706013, 38.047894, 43.423187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971832, 38.832249, 43.224312>,  <35.309586, 38.183758, 43.095711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971832, 38.832249, 43.224312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767193, 38.596397, 43.474308>,  <34.644409, 38.454887, 43.624306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767193, 38.596397, 43.474308>,  <34.971832, 38.832249, 43.224312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767193, 38.596397, 43.474308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094192, 0.684515, 0.722888,
		-0.854046, 0.428698, -0.294659,
		-0.511599, -0.589625, 0.624987,
		34.613712, 38.419510, 43.661804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557217, 39.239307, 43.601082>,  <34.971832, 38.832249, 43.224312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557217, 39.239307, 43.601082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542431, 38.928234, 43.852108>,  <34.533558, 38.741589, 44.002724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542431, 38.928234, 43.852108>,  <34.557217, 39.239307, 43.601082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542431, 38.928234, 43.852108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001081, 0.627965, 0.778241,
		-0.999316, 0.029448, -0.022373,
		-0.036967, -0.777684, 0.627567,
		34.531342, 38.694927, 44.040379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068974, 39.354477, 44.013954>,  <34.557217, 39.239307, 43.601082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068974, 39.354477, 44.013954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260647, 39.087799, 44.242302>,  <34.375652, 38.927792, 44.379311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260647, 39.087799, 44.242302>,  <34.068974, 39.354477, 44.013954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260647, 39.087799, 44.242302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073623, 0.678648, 0.730764,
		-0.874620, -0.308143, 0.374283,
		0.479186, -0.666697, 0.570873,
		34.404404, 38.887791, 44.413563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779785, 39.346172, 44.703598>,  <34.068974, 39.354477, 44.013954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779785, 39.346172, 44.703598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142063, 39.200039, 44.789612>,  <34.359432, 39.112358, 44.841221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142063, 39.200039, 44.789612>,  <33.779785, 39.346172, 44.703598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142063, 39.200039, 44.789612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018223, 0.540323, 0.841260,
		-0.423530, -0.758010, 0.496027,
		0.905698, -0.365338, 0.215030,
		34.413773, 39.090439, 44.854122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733845, 39.143116, 45.424522>,  <33.779785, 39.346172, 44.703598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733845, 39.143116, 45.424522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126522, 39.178478, 45.357040>,  <34.362129, 39.199696, 45.316551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126522, 39.178478, 45.357040>,  <33.733845, 39.143116, 45.424522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126522, 39.178478, 45.357040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089028, 0.570043, 0.816777,
		0.168372, -0.816845, 0.551738,
		0.981695, 0.088402, -0.168702,
		34.421032, 39.204998, 45.306431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005894, 38.989693, 46.081226>,  <33.733845, 39.143116, 45.424522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005894, 38.989693, 46.081226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284592, 39.176273, 45.863243>,  <34.451809, 39.288219, 45.732452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284592, 39.176273, 45.863243>,  <34.005894, 38.989693, 46.081226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284592, 39.176273, 45.863243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220863, 0.583302, 0.781651,
		0.682477, -0.664967, 0.303388,
		0.696739, 0.466452, -0.544957,
		34.493614, 39.316208, 45.699757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498657, 39.099091, 46.524387>,  <34.005894, 38.989693, 46.081226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498657, 39.099091, 46.524387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616684, 39.338425, 46.226414>,  <34.687500, 39.482025, 46.047630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616684, 39.338425, 46.226414>,  <34.498657, 39.099091, 46.524387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616684, 39.338425, 46.226414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420667, 0.618667, 0.663544,
		0.857888, -0.509162, -0.069150,
		0.295071, 0.598336, -0.744935,
		34.705204, 39.517925, 46.002934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256905, 39.228256, 46.531868>,  <34.498657, 39.099091, 46.524387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256905, 39.228256, 46.531868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087925, 39.537670, 46.342899>,  <34.986538, 39.723320, 46.229519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087925, 39.537670, 46.342899>,  <35.256905, 39.228256, 46.531868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087925, 39.537670, 46.342899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513858, 0.633751, 0.578196,
		0.746653, 0.001498, -0.665212,
		-0.422445, 0.773536, -0.472422,
		34.961193, 39.769730, 46.201172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765369, 39.679070, 46.483158>,  <35.256905, 39.228256, 46.531868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765369, 39.679070, 46.483158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456898, 39.902260, 46.360550>,  <35.271816, 40.036175, 46.286987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456898, 39.902260, 46.360550>,  <35.765369, 39.679070, 46.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456898, 39.902260, 46.360550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467917, 0.823264, 0.321388,
		0.431670, 0.104422, -0.895967,
		-0.771177, 0.557972, -0.306517,
		35.225544, 40.069653, 46.268593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020695, 40.223877, 46.029202>,  <35.765369, 39.679070, 46.483158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020695, 40.223877, 46.029202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667000, 40.340229, 46.175365>,  <35.454784, 40.410038, 46.263065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667000, 40.340229, 46.175365>,  <36.020695, 40.223877, 46.029202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667000, 40.340229, 46.175365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423533, 0.829158, 0.364851,
		-0.196855, 0.477376, -0.856364,
		-0.884233, 0.290876, 0.365409,
		35.401730, 40.427490, 46.284988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042999, 40.929871, 45.957340>,  <36.020695, 40.223877, 46.029202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042999, 40.929871, 45.957340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732208, 40.899109, 46.207268>,  <35.545734, 40.880653, 46.357224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732208, 40.899109, 46.207268>,  <36.042999, 40.929871, 45.957340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732208, 40.899109, 46.207268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170994, 0.929417, 0.327026,
		-0.605865, 0.360931, -0.708983,
		-0.776974, -0.076902, 0.624818,
		35.499115, 40.876038, 46.394714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547077, 41.482182, 45.831402>,  <36.042999, 40.929871, 45.957340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547077, 41.482182, 45.831402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518375, 41.365814, 46.213024>,  <35.501152, 41.295994, 46.441998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518375, 41.365814, 46.213024>,  <35.547077, 41.482182, 45.831402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518375, 41.365814, 46.213024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083319, 0.951427, 0.296384,
		-0.993936, 0.100759, -0.044033,
		-0.071757, -0.290918, 0.954053,
		35.496849, 41.278538, 46.499241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466019, 42.122425, 46.094887>,  <35.547077, 41.482182, 45.831402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466019, 42.122425, 46.094887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477158, 41.888844, 46.419411>,  <35.483841, 41.748695, 46.614124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477158, 41.888844, 46.419411>,  <35.466019, 42.122425, 46.094887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477158, 41.888844, 46.419411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412701, 0.745935, 0.522741,
		-0.910441, 0.320271, 0.261771,
		0.027845, -0.583958, 0.811306,
		35.485512, 41.713657, 46.662804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029682, 42.456585, 46.704693>,  <35.466019, 42.122425, 46.094887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029682, 42.456585, 46.704693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302853, 42.197571, 46.839935>,  <35.466755, 42.042164, 46.921082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302853, 42.197571, 46.839935>,  <35.029682, 42.456585, 46.704693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302853, 42.197571, 46.839935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448719, 0.737093, 0.505316,
		-0.576424, -0.193379, 0.793940,
		0.682925, -0.647532, 0.338105,
		35.507729, 42.003311, 46.941368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175816, 42.692890, 47.374111>,  <35.029682, 42.456585, 46.704693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175816, 42.692890, 47.374111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489471, 42.464561, 47.276714>,  <35.677666, 42.327564, 47.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489471, 42.464561, 47.276714>,  <35.175816, 42.692890, 47.374111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489471, 42.464561, 47.276714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613679, 0.654874, 0.441065,
		-0.092311, -0.495284, 0.863813,
		0.784141, -0.570819, -0.243493,
		35.724712, 42.293316, 47.203667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306133, 42.184448, 47.890678>,  <35.175816, 42.692890, 47.374111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306133, 42.184448, 47.890678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661137, 42.240376, 47.715050>,  <35.874138, 42.273930, 47.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661137, 42.240376, 47.715050>,  <35.306133, 42.184448, 47.890678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661137, 42.240376, 47.715050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372119, 0.344521, 0.861877,
		0.271771, -0.928309, 0.253738,
		0.887507, 0.139812, -0.439072,
		35.927387, 42.282318, 47.583328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819256, 41.733307, 48.230896>,  <35.306133, 42.184448, 47.890678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819256, 41.733307, 48.230896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983990, 42.057617, 48.064503>,  <36.082829, 42.252201, 47.964668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983990, 42.057617, 48.064503>,  <35.819256, 41.733307, 48.230896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983990, 42.057617, 48.064503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328902, 0.293469, 0.897608,
		0.849833, -0.506483, -0.145804,
		0.411834, 0.810772, -0.415982,
		36.107540, 42.300850, 47.939709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466896, 41.814613, 48.602730>,  <35.819256, 41.733307, 48.230896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466896, 41.814613, 48.602730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383125, 42.166927, 48.432854>,  <36.332863, 42.378315, 48.330929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383125, 42.166927, 48.432854>,  <36.466896, 41.814613, 48.602730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383125, 42.166927, 48.432854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426908, 0.473104, 0.770664,
		0.879711, -0.019908, -0.475092,
		-0.209425, 0.880782, -0.424693,
		36.320297, 42.431164, 48.305447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064472, 42.241497, 48.713306>,  <36.466896, 41.814613, 48.602730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064472, 42.241497, 48.713306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792107, 42.511810, 48.600403>,  <36.628689, 42.674000, 48.532661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792107, 42.511810, 48.600403>,  <37.064472, 42.241497, 48.713306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792107, 42.511810, 48.600403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318124, 0.620070, 0.717155,
		0.659661, 0.398529, -0.637198,
		-0.680914, 0.675787, -0.282255,
		36.587833, 42.714546, 48.515728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457855, 42.802818, 48.805771>,  <37.064472, 42.241497, 48.713306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457855, 42.802818, 48.805771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076061, 42.920551, 48.786446>,  <36.846985, 42.991192, 48.774849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076061, 42.920551, 48.786446>,  <37.457855, 42.802818, 48.805771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076061, 42.920551, 48.786446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231973, 0.834342, 0.500061,
		0.187496, 0.466091, -0.864641,
		-0.954481, 0.294333, -0.048316,
		36.789719, 43.008850, 48.771950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433487, 43.400059, 48.668022>,  <37.457855, 42.802818, 48.805771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433487, 43.400059, 48.668022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071262, 43.393143, 48.837563>,  <36.853928, 43.388992, 48.939289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071262, 43.393143, 48.837563>,  <37.433487, 43.400059, 48.668022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071262, 43.393143, 48.837563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283686, 0.718197, 0.635386,
		-0.315395, 0.695625, -0.645470,
		-0.905565, -0.017287, 0.423855,
		36.799591, 43.387959, 48.964718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233219, 44.073296, 48.703278>,  <37.433487, 43.400059, 48.668022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233219, 44.073296, 48.703278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009575, 43.894650, 48.982685>,  <36.875389, 43.787464, 49.150330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009575, 43.894650, 48.982685>,  <37.233219, 44.073296, 48.703278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009575, 43.894650, 48.982685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288091, 0.685363, 0.668791,
		-0.777433, 0.575165, -0.254527,
		-0.559108, -0.446613, 0.698523,
		36.841843, 43.760666, 49.192242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944908, 44.620102, 49.081932>,  <37.233219, 44.073296, 48.703278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944908, 44.620102, 49.081932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933098, 44.302113, 49.324303>,  <36.926010, 44.111317, 49.469723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933098, 44.302113, 49.324303>,  <36.944908, 44.620102, 49.081932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933098, 44.302113, 49.324303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353793, 0.558634, 0.750173,
		-0.934858, 0.236520, 0.264763,
		-0.029525, -0.794976, 0.605922,
		36.924240, 44.063622, 49.506081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598412, 44.837074, 49.719894>,  <36.944908, 44.620102, 49.081932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598412, 44.837074, 49.719894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870846, 44.544434, 49.731743>,  <37.034306, 44.368847, 49.738853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870846, 44.544434, 49.731743>,  <36.598412, 44.837074, 49.719894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870846, 44.544434, 49.731743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537048, 0.526644, 0.658958,
		-0.497698, -0.432896, 0.751596,
		0.681084, -0.731606, 0.029624,
		37.075172, 44.324951, 49.740631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849659, 44.678341, 50.421326>,  <36.598412, 44.837074, 49.719894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849659, 44.678341, 50.421326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150707, 44.534374, 50.200775>,  <37.331337, 44.447994, 50.068443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150707, 44.534374, 50.200775>,  <36.849659, 44.678341, 50.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150707, 44.534374, 50.200775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652123, 0.523268, 0.548568,
		0.091081, -0.772432, 0.628533,
		0.752622, -0.359916, -0.551380,
		37.376495, 44.426399, 50.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476295, 44.374161, 50.850273>,  <36.849659, 44.678341, 50.421326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476295, 44.374161, 50.850273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601414, 44.512722, 50.496513>,  <37.676487, 44.595860, 50.284256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601414, 44.512722, 50.496513>,  <37.476295, 44.374161, 50.850273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601414, 44.512722, 50.496513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682478, 0.565619, 0.462924,
		0.660592, -0.748385, -0.059488,
		0.312798, 0.346403, -0.884399,
		37.695251, 44.616642, 50.231194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134991, 44.409763, 50.844471>,  <37.476295, 44.374161, 50.850273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134991, 44.409763, 50.844471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074608, 44.669609, 50.546421>,  <38.038376, 44.825516, 50.367592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074608, 44.669609, 50.546421>,  <38.134991, 44.409763, 50.844471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074608, 44.669609, 50.546421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667118, 0.623187, 0.408157,
		0.729497, -0.435470, -0.527448,
		-0.150959, 0.649619, -0.745122,
		38.029320, 44.864494, 50.322884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633614, 44.447006, 50.421841>,  <38.134991, 44.409763, 50.844471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633614, 44.447006, 50.421841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408718, 44.772186, 50.482491>,  <38.273781, 44.967297, 50.518883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408718, 44.772186, 50.482491>,  <38.633614, 44.447006, 50.421841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408718, 44.772186, 50.482491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725507, 0.396895, 0.562240,
		0.396895, 0.426122, -0.812954,
		-0.562240, 0.812954, 0.151629,
		38.240047, 45.016071, 50.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884167, 45.113968, 50.091103>,  <38.633614, 44.447006, 50.421841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884167, 45.113968, 50.091103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704468, 45.174236, 50.443348>,  <38.596649, 45.210400, 50.654694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704468, 45.174236, 50.443348>,  <38.884167, 45.113968, 50.091103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704468, 45.174236, 50.443348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888498, 0.178548, 0.422719,
		-0.093538, 0.972326, -0.214085,
		-0.449245, 0.150674, 0.880611,
		38.569695, 45.219440, 50.707531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190414, 45.626854, 50.459999>,  <38.884167, 45.113968, 50.091103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190414, 45.626854, 50.459999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000908, 45.405708, 50.734192>,  <38.887203, 45.273022, 50.898708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000908, 45.405708, 50.734192>,  <39.190414, 45.626854, 50.459999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000908, 45.405708, 50.734192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816872, 0.014943, 0.576625,
		-0.329038, 0.833137, 0.444540,
		-0.473765, -0.552864, 0.685484,
		38.858780, 45.239849, 50.939838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560532, 45.666092, 51.058388>,  <39.190414, 45.626854, 50.459999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560532, 45.666092, 51.058388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267754, 45.428257, 51.191490>,  <39.092087, 45.285557, 51.271351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267754, 45.428257, 51.191490>,  <39.560532, 45.666092, 51.058388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267754, 45.428257, 51.191490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470528, -0.087861, 0.878000,
		-0.492810, 0.799217, 0.344078,
		-0.731944, -0.594586, 0.332755,
		39.048172, 45.249882, 51.291317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732635, 44.987339, 51.201462>,  <39.560532, 45.666092, 51.058388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732635, 44.987339, 51.201462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743343, 44.758163, 50.873798>,  <39.749767, 44.620659, 50.677200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743343, 44.758163, 50.873798>,  <39.732635, 44.987339, 51.201462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743343, 44.758163, 50.873798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269317, -0.793288, 0.546044,
		-0.962680, 0.205999, -0.175534,
		0.026765, -0.572939, -0.819161,
		39.751373, 44.586281, 50.628052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995934, 44.599037, 51.248302>,  <39.732635, 44.987339, 51.201462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995934, 44.599037, 51.248302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305569, 44.441566, 51.049984>,  <39.491348, 44.347084, 50.930992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305569, 44.441566, 51.049984>,  <38.995934, 44.599037, 51.248302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305569, 44.441566, 51.049984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276782, -0.914778, 0.294232,
		-0.569373, -0.090534, -0.817079,
		0.774084, -0.393681, -0.495792,
		39.537792, 44.323463, 50.901245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074650, 43.778851, 51.198666>,  <38.995934, 44.599037, 51.248302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074650, 43.778851, 51.198666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679291, 43.744652, 51.148460>,  <38.442074, 43.724133, 51.118336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679291, 43.744652, 51.148460>,  <39.074650, 43.778851, 51.198666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679291, 43.744652, 51.148460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137074, -0.858062, -0.494914,
		-0.065386, -0.506378, 0.859829,
		-0.988401, -0.085499, -0.125517,
		38.382771, 43.719002, 51.110806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939754, 43.116783, 51.340916>,  <39.074650, 43.778851, 51.198666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939754, 43.116783, 51.340916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632854, 43.235443, 51.113468>,  <38.448715, 43.306641, 50.977001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632854, 43.235443, 51.113468>,  <38.939754, 43.116783, 51.340916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632854, 43.235443, 51.113468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011047, -0.880355, -0.474186,
		-0.641254, -0.370101, 0.672175,
		-0.767250, 0.296648, -0.568619,
		38.402679, 43.324436, 50.942883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485607, 42.528126, 51.225677>,  <38.939754, 43.116783, 51.340916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485607, 42.528126, 51.225677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401417, 42.768486, 50.917229>,  <38.350903, 42.912701, 50.732159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401417, 42.768486, 50.917229>,  <38.485607, 42.528126, 51.225677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401417, 42.768486, 50.917229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008414, -0.789872, -0.613214,
		-0.977563, -0.122578, 0.171305,
		-0.210475, 0.600897, -0.771119,
		38.338276, 42.948753, 50.685894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848206, 42.146667, 50.893150>,  <38.485607, 42.528126, 51.225677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848206, 42.146667, 50.893150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051483, 42.394577, 50.653942>,  <38.173450, 42.543324, 50.510418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051483, 42.394577, 50.653942>,  <37.848206, 42.146667, 50.893150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051483, 42.394577, 50.653942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131763, -0.742140, -0.657165,
		-0.851104, 0.255170, -0.458813,
		0.508193, 0.619771, -0.598017,
		38.203941, 42.580509, 50.474537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605816, 41.989605, 50.222393>,  <37.848206, 42.146667, 50.893150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605816, 41.989605, 50.222393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951839, 42.180424, 50.160286>,  <38.159454, 42.294914, 50.123020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951839, 42.180424, 50.160286>,  <37.605816, 41.989605, 50.222393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951839, 42.180424, 50.160286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174956, -0.576943, -0.797827,
		-0.470180, 0.662998, -0.582549,
		0.865055, 0.477043, -0.155272,
		38.211357, 42.323536, 50.113705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620468, 41.961468, 49.526825>,  <37.605816, 41.989605, 50.222393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620468, 41.961468, 49.526825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995506, 42.038448, 49.642673>,  <38.220528, 42.084637, 49.712181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995506, 42.038448, 49.642673>,  <37.620468, 41.961468, 49.526825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995506, 42.038448, 49.642673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343130, -0.647066, -0.680858,
		0.056375, 0.737746, -0.672721,
		0.937595, 0.192447, 0.289621,
		38.276783, 42.096184, 49.729561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904202, 42.059093, 48.928318>,  <37.620468, 41.961468, 49.526825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904202, 42.059093, 48.928318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209259, 41.972885, 49.172264>,  <38.392292, 41.921158, 49.318630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209259, 41.972885, 49.172264>,  <37.904202, 42.059093, 48.928318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209259, 41.972885, 49.172264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266738, -0.754160, -0.600078,
		0.589263, 0.620317, -0.517664,
		0.762640, -0.215523, 0.609861,
		38.438049, 41.908230, 49.355221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476837, 41.833790, 48.481899>,  <37.904202, 42.059093, 48.928318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476837, 41.833790, 48.481899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568745, 41.687298, 48.842583>,  <38.623890, 41.599403, 49.058994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568745, 41.687298, 48.842583>,  <38.476837, 41.833790, 48.481899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568745, 41.687298, 48.842583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152453, -0.901519, -0.404995,
		0.961231, 0.230523, -0.151307,
		0.229767, -0.366227, 0.901712,
		38.637676, 41.577431, 49.113098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106922, 41.655010, 48.355789>,  <38.476837, 41.833790, 48.481899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106922, 41.655010, 48.355789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988682, 41.442421, 48.673317>,  <38.917736, 41.314865, 48.863834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988682, 41.442421, 48.673317>,  <39.106922, 41.655010, 48.355789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988682, 41.442421, 48.673317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102025, -0.843766, -0.526925,
		0.949847, -0.074771, 0.303645,
		-0.295604, -0.531477, 0.793820,
		38.900002, 41.282978, 48.911465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587990, 41.105507, 48.434994>,  <39.106922, 41.655010, 48.355789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587990, 41.105507, 48.434994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264820, 40.989780, 48.640347>,  <39.070919, 40.920345, 48.763557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264820, 40.989780, 48.640347>,  <39.587990, 41.105507, 48.434994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264820, 40.989780, 48.640347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035171, -0.893303, -0.448077,
		0.588238, -0.343956, 0.731895,
		-0.807923, -0.289317, 0.513378,
		39.022442, 40.902985, 48.794361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683594, 40.442982, 48.676586>,  <39.587990, 41.105507, 48.434994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683594, 40.442982, 48.676586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285397, 40.471836, 48.701210>,  <39.046478, 40.489147, 48.715984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285397, 40.471836, 48.701210>,  <39.683594, 40.442982, 48.676586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285397, 40.471836, 48.701210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091630, -0.898934, -0.428393,
		0.024438, -0.432103, 0.901493,
		-0.995493, 0.072135, 0.061562,
		38.986748, 40.493477, 48.719677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423527, 39.765743, 48.940701>,  <39.683594, 40.442982, 48.676586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423527, 39.765743, 48.940701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096291, 39.937271, 48.787422>,  <38.899948, 40.040188, 48.695454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096291, 39.937271, 48.787422>,  <39.423527, 39.765743, 48.940701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096291, 39.937271, 48.787422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230438, -0.854931, -0.464748,
		-0.526900, -0.291904, 0.798228,
		-0.818092, 0.428818, -0.383197,
		38.850864, 40.065918, 48.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828220, 39.251713, 48.956932>,  <39.423527, 39.765743, 48.940701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828220, 39.251713, 48.956932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720127, 39.508053, 48.669518>,  <38.655270, 39.661858, 48.497070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720127, 39.508053, 48.669518>,  <38.828220, 39.251713, 48.956932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720127, 39.508053, 48.669518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215303, -0.767622, -0.603656,
		-0.938413, -0.008426, 0.345414,
		-0.270234, 0.640847, -0.718533,
		38.639057, 39.700306, 48.453957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067371, 39.115494, 48.756947>,  <38.828220, 39.251713, 48.956932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067371, 39.115494, 48.756947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264538, 39.298870, 48.461143>,  <38.382839, 39.408897, 48.283661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264538, 39.298870, 48.461143>,  <38.067371, 39.115494, 48.756947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264538, 39.298870, 48.461143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227279, -0.752577, -0.618039,
		-0.839869, 0.472714, -0.266762,
		0.492915, 0.458443, -0.739504,
		38.412411, 39.436401, 48.239292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577927, 39.376141, 48.141388>,  <38.067371, 39.115494, 48.756947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577927, 39.376141, 48.141388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939480, 39.378181, 47.970291>,  <38.156414, 39.379406, 47.867634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939480, 39.378181, 47.970291>,  <37.577927, 39.376141, 48.141388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939480, 39.378181, 47.970291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392334, -0.388621, -0.833695,
		-0.170487, 0.921384, -0.349266,
		0.903885, 0.005105, -0.427745,
		38.210644, 39.379711, 47.841969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403858, 39.764751, 47.598480>,  <37.577927, 39.376141, 48.141388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403858, 39.764751, 47.598480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747082, 39.576897, 47.515362>,  <37.953014, 39.464184, 47.465492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747082, 39.576897, 47.515362>,  <37.403858, 39.764751, 47.598480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747082, 39.576897, 47.515362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336887, -0.209352, -0.917975,
		0.387609, 0.857681, -0.337850,
		0.858060, -0.469633, -0.207795,
		38.004501, 39.436008, 47.453022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736069, 39.950169, 46.888416>,  <37.403858, 39.764751, 47.598480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736069, 39.950169, 46.888416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889904, 39.592636, 46.980640>,  <37.982204, 39.378117, 47.035976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889904, 39.592636, 46.980640>,  <37.736069, 39.950169, 46.888416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889904, 39.592636, 46.980640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300519, -0.357407, -0.884278,
		0.872799, 0.270797, -0.406068,
		0.384592, -0.893828, 0.230565,
		38.005283, 39.324486, 47.049809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890858, 39.674507, 46.105377>,  <37.736069, 39.950169, 46.888416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890858, 39.674507, 46.105377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929581, 39.367619, 46.358990>,  <37.952812, 39.183487, 46.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929581, 39.367619, 46.358990>,  <37.890858, 39.674507, 46.105377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929581, 39.367619, 46.358990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207128, -0.638608, -0.741133,
		0.973513, -0.059581, -0.220733,
		0.096804, -0.767222, 0.634034,
		37.958622, 39.137451, 46.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244667, 39.168793, 45.711639>,  <37.890858, 39.674507, 46.105377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244667, 39.168793, 45.711639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059296, 38.958500, 45.996971>,  <37.948074, 38.832325, 46.168171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059296, 38.958500, 45.996971>,  <38.244667, 39.168793, 45.711639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059296, 38.958500, 45.996971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403150, -0.591773, -0.698050,
		0.789118, -0.611075, 0.062295,
		-0.463425, -0.525730, 0.713334,
		37.920269, 38.800781, 46.210972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314137, 38.352757, 45.622620>,  <38.244667, 39.168793, 45.711639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314137, 38.352757, 45.622620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004459, 38.362110, 45.875626>,  <37.818653, 38.367722, 46.027428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004459, 38.362110, 45.875626>,  <38.314137, 38.352757, 45.622620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004459, 38.362110, 45.875626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484849, -0.664289, -0.568896,
		0.406873, -0.747110, 0.525624,
		-0.774194, 0.023380, 0.632516,
		37.772202, 38.369125, 46.065380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175224, 37.603512, 45.790520>,  <38.314137, 38.352757, 45.622620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175224, 37.603512, 45.790520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841515, 37.801945, 45.886761>,  <37.641289, 37.921005, 45.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841515, 37.801945, 45.886761>,  <38.175224, 37.603512, 45.790520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841515, 37.801945, 45.886761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548677, -0.704078, -0.450808,
		-0.054231, -0.508112, 0.859582,
		-0.834274, 0.496080, 0.240607,
		37.591232, 37.950768, 45.958942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736801, 37.140751, 46.073578>,  <38.175224, 37.603512, 45.790520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736801, 37.140751, 46.073578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493431, 37.442806, 45.975941>,  <37.347408, 37.624039, 45.917358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493431, 37.442806, 45.975941>,  <37.736801, 37.140751, 46.073578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493431, 37.442806, 45.975941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625282, -0.645542, -0.438518,
		-0.488718, -0.114175, 0.864939,
		-0.608422, 0.755142, -0.244096,
		37.310905, 37.669350, 45.902710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967735, 37.000912, 46.301205>,  <37.736801, 37.140751, 46.073578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967735, 37.000912, 46.301205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946594, 37.272667, 46.008453>,  <36.933910, 37.435719, 45.832802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946594, 37.272667, 46.008453>,  <36.967735, 37.000912, 46.301205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946594, 37.272667, 46.008453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519286, -0.644712, -0.560971,
		-0.852965, 0.350404, 0.386869,
		-0.052852, 0.679384, -0.731877,
		36.930740, 37.476482, 45.788891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271900, 37.128227, 46.130333>,  <36.967735, 37.000912, 46.301205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271900, 37.128227, 46.130333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482941, 37.247219, 45.812050>,  <36.609566, 37.318615, 45.621082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482941, 37.247219, 45.812050>,  <36.271900, 37.128227, 46.130333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482941, 37.247219, 45.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695272, -0.386978, -0.605677,
		-0.488096, 0.872786, 0.002659,
		0.527598, 0.297478, -0.795706,
		36.641220, 37.336464, 45.573338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791428, 37.330868, 45.790985>,  <36.271900, 37.128227, 46.130333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791428, 37.330868, 45.790985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086754, 37.245758, 45.534977>,  <36.263950, 37.194691, 45.381374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086754, 37.245758, 45.534977>,  <35.791428, 37.330868, 45.790985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086754, 37.245758, 45.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611658, -0.611086, -0.502443,
		-0.284197, 0.762431, -0.581318,
		0.738313, -0.212775, -0.640016,
		36.308247, 37.181927, 45.342972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406094, 37.267262, 45.101643>,  <35.791428, 37.330868, 45.790985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406094, 37.267262, 45.101643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753525, 37.090248, 45.012440>,  <35.961983, 36.984039, 44.958920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753525, 37.090248, 45.012440>,  <35.406094, 37.267262, 45.101643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753525, 37.090248, 45.012440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464462, -0.570111, -0.677679,
		0.172759, 0.692196, -0.700727,
		0.868579, -0.442536, -0.223006,
		36.014099, 36.957489, 44.945538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528042, 37.274921, 44.301216>,  <35.406094, 37.267262, 45.101643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528042, 37.274921, 44.301216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746868, 36.981174, 44.461926>,  <35.878166, 36.804928, 44.558350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746868, 36.981174, 44.461926>,  <35.528042, 37.274921, 44.301216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746868, 36.981174, 44.461926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298105, -0.619414, -0.726265,
		0.782208, 0.277546, -0.557780,
		0.547069, -0.734367, 0.401772,
		35.910988, 36.760864, 44.582458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938354, 36.999771, 43.799488>,  <35.528042, 37.274921, 44.301216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938354, 36.999771, 43.799488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907955, 36.708347, 44.071789>,  <35.889717, 36.533493, 44.235168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907955, 36.708347, 44.071789>,  <35.938354, 36.999771, 43.799488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907955, 36.708347, 44.071789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310250, -0.631560, -0.710547,
		0.947613, -0.265202, -0.178040,
		-0.075996, -0.728561, 0.680753,
		35.885155, 36.489780, 44.276016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264633, 36.496235, 43.468189>,  <35.938354, 36.999771, 43.799488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264633, 36.496235, 43.468189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086491, 36.283794, 43.756519>,  <35.979607, 36.156330, 43.929520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086491, 36.283794, 43.756519>,  <36.264633, 36.496235, 43.468189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086491, 36.283794, 43.756519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245722, -0.701666, -0.668794,
		0.860978, -0.474972, 0.181986,
		-0.445352, -0.531098, 0.720830,
		35.952885, 36.124466, 43.972767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546978, 35.764400, 43.386745>,  <36.264633, 36.496235, 43.468189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546978, 35.764400, 43.386745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206905, 35.718628, 43.592308>,  <36.002861, 35.691166, 43.715645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206905, 35.718628, 43.592308>,  <36.546978, 35.764400, 43.386745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206905, 35.718628, 43.592308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247728, -0.774351, -0.582246,
		0.464572, -0.622323, 0.629990,
		-0.850178, -0.114429, 0.513909,
		35.951851, 35.684299, 43.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556965, 35.064289, 43.739998>,  <36.546978, 35.764400, 43.386745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556965, 35.064289, 43.739998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188267, 35.203926, 43.672443>,  <35.967049, 35.287708, 43.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188267, 35.203926, 43.672443>,  <36.556965, 35.064289, 43.739998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188267, 35.203926, 43.672443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199292, -0.799999, -0.565937,
		-0.332679, -0.487989, 0.806964,
		-0.921742, 0.349097, -0.168890,
		35.911743, 35.308655, 43.621777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195869, 34.427101, 43.851135>,  <36.556965, 35.064289, 43.739998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195869, 34.427101, 43.851135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940086, 34.669018, 43.661263>,  <35.786617, 34.814167, 43.547340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940086, 34.669018, 43.661263>,  <36.195869, 34.427101, 43.851135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940086, 34.669018, 43.661263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391582, -0.787531, -0.475876,
		-0.661631, -0.118427, 0.740418,
		-0.639459, 0.604789, -0.474682,
		35.748249, 34.850456, 43.518856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658333, 34.080322, 43.761597>,  <36.195869, 34.427101, 43.851135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658333, 34.080322, 43.761597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574425, 34.366982, 43.495541>,  <35.524078, 34.538979, 43.335907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574425, 34.366982, 43.495541>,  <35.658333, 34.080322, 43.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574425, 34.366982, 43.495541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336585, -0.691625, -0.639035,
		-0.917991, 0.089826, 0.386295,
		-0.209769, 0.716649, -0.665139,
		35.511494, 34.581978, 43.295998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072475, 33.837433, 43.499981>,  <35.658333, 34.080322, 43.761597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072475, 33.837433, 43.499981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205681, 34.094418, 43.223911>,  <35.285606, 34.248608, 43.058270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205681, 34.094418, 43.223911>,  <35.072475, 33.837433, 43.499981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205681, 34.094418, 43.223911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399924, -0.566621, -0.720417,
		-0.853909, 0.515929, 0.068240,
		0.333018, 0.642462, -0.690175,
		35.305588, 34.287155, 43.016857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455681, 33.987900, 43.036655>,  <35.072475, 33.837433, 43.499981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455681, 33.987900, 43.036655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801258, 34.066235, 42.851074>,  <35.008606, 34.113235, 42.739727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801258, 34.066235, 42.851074>,  <34.455681, 33.987900, 43.036655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801258, 34.066235, 42.851074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304009, -0.531655, -0.790520,
		-0.401474, 0.824009, -0.399784,
		0.863943, 0.195835, -0.463952,
		35.060440, 34.124985, 42.711887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222717, 33.957195, 42.369850>,  <34.455681, 33.987900, 43.036655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222717, 33.957195, 42.369850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614799, 33.917221, 42.301495>,  <34.850048, 33.893234, 42.260479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614799, 33.917221, 42.301495>,  <34.222717, 33.957195, 42.369850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614799, 33.917221, 42.301495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197799, -0.530237, -0.824454,
		-0.008219, 0.841939, -0.539510,
		0.980208, -0.099938, -0.170893,
		34.908863, 33.887241, 42.250225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378780, 34.249580, 41.669331>,  <34.222717, 33.957195, 42.369850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378780, 34.249580, 41.669331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684177, 34.006828, 41.757679>,  <34.867416, 33.861179, 41.810688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684177, 34.006828, 41.757679>,  <34.378780, 34.249580, 41.669331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684177, 34.006828, 41.757679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190813, -0.538707, -0.820601,
		0.616988, 0.584375, -0.527097,
		0.763489, -0.606878, 0.220869,
		34.913223, 33.824764, 41.823940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703094, 34.086037, 41.051235>,  <34.378780, 34.249580, 41.669331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703094, 34.086037, 41.051235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860073, 33.794117, 41.275158>,  <34.954262, 33.618965, 41.409512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860073, 33.794117, 41.275158>,  <34.703094, 34.086037, 41.051235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860073, 33.794117, 41.275158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262233, -0.672150, -0.692422,
		0.881600, 0.124941, -0.455161,
		0.392448, -0.729797, 0.559804,
		34.977806, 33.575176, 41.443100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146706, 33.677593, 40.646107>,  <34.703094, 34.086037, 41.051235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146706, 33.677593, 40.646107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053886, 33.446026, 40.958775>,  <34.998196, 33.307087, 41.146374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053886, 33.446026, 40.958775>,  <35.146706, 33.677593, 40.646107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053886, 33.446026, 40.958775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019879, -0.800616, -0.598848,
		0.972501, -0.154501, 0.174275,
		-0.232050, -0.578916, 0.781671,
		34.984272, 33.272350, 41.193275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534855, 33.026047, 40.624397>,  <35.146706, 33.677593, 40.646107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534855, 33.026047, 40.624397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191471, 32.973186, 40.822624>,  <34.985439, 32.941471, 40.941559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191471, 32.973186, 40.822624>,  <35.534855, 33.026047, 40.624397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191471, 32.973186, 40.822624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171544, -0.836607, -0.520250,
		0.483343, -0.531625, 0.695525,
		-0.858459, -0.132146, 0.495565,
		34.933933, 32.933544, 40.971294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859108, 33.711643, 40.681152>,  <35.534855, 33.026047, 40.624397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859108, 33.711643, 40.681152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195503, 33.575172, 40.513180>,  <36.397339, 33.493290, 40.412395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195503, 33.575172, 40.513180>,  <35.859108, 33.711643, 40.681152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195503, 33.575172, 40.513180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522491, 0.310521, 0.794091,
		-0.140530, -0.887228, 0.439406,
		0.840984, -0.341179, -0.419931,
		36.447800, 33.472820, 40.387199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260792, 33.392078, 41.274227>,  <35.859108, 33.711643, 40.681152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260792, 33.392078, 41.274227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483547, 33.527237, 40.970730>,  <36.617203, 33.608334, 40.788631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483547, 33.527237, 40.970730>,  <36.260792, 33.392078, 41.274227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483547, 33.527237, 40.970730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682440, 0.334562, 0.649880,
		0.473443, -0.879711, -0.044283,
		0.556891, 0.337901, -0.758746,
		36.650616, 33.628609, 40.743107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933880, 33.196896, 41.485477>,  <36.260792, 33.392078, 41.274227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933880, 33.196896, 41.485477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964584, 33.485771, 41.210506>,  <36.983006, 33.659096, 41.045525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964584, 33.485771, 41.210506>,  <36.933880, 33.196896, 41.485477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964584, 33.485771, 41.210506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811273, 0.355559, 0.464127,
		0.579607, -0.593313, -0.558601,
		0.076757, 0.722189, -0.687423,
		36.987610, 33.702427, 41.004280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579884, 33.095592, 41.317856>,  <36.933880, 33.196896, 41.485477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579884, 33.095592, 41.317856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447227, 33.467010, 41.251137>,  <37.367634, 33.689861, 41.211105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447227, 33.467010, 41.251137>,  <37.579884, 33.095592, 41.317856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447227, 33.467010, 41.251137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807509, 0.370814, 0.458723,
		0.487794, 0.017442, -0.872784,
		-0.331642, 0.928543, -0.166796,
		37.347736, 33.745575, 41.201099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190292, 33.449249, 41.302135>,  <37.579884, 33.095592, 41.317856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190292, 33.449249, 41.302135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930134, 33.752567, 41.319859>,  <37.774036, 33.934559, 41.330494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930134, 33.752567, 41.319859>,  <38.190292, 33.449249, 41.302135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930134, 33.752567, 41.319859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613724, 0.490234, 0.618880,
		0.447574, 0.429713, -0.784235,
		-0.650400, 0.758299, 0.044309,
		37.735012, 33.980057, 41.333153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514477, 34.006935, 41.055695>,  <38.190292, 33.449249, 41.302135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514477, 34.006935, 41.055695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220615, 34.140991, 41.291649>,  <38.044300, 34.221424, 41.433224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220615, 34.140991, 41.291649>,  <38.514477, 34.006935, 41.055695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220615, 34.140991, 41.291649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662546, 0.541514, 0.517489,
		-0.146004, 0.771004, -0.619868,
		-0.734653, 0.335136, 0.589889,
		38.000221, 34.241531, 41.468616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673862, 34.749245, 41.089478>,  <38.514477, 34.006935, 41.055695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673862, 34.749245, 41.089478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421780, 34.644337, 41.381794>,  <38.270531, 34.581390, 41.557182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421780, 34.644337, 41.381794>,  <38.673862, 34.749245, 41.089478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421780, 34.644337, 41.381794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385409, 0.711407, 0.587674,
		-0.674019, 0.652009, -0.347251,
		-0.630205, -0.262269, 0.730792,
		38.232719, 34.565655, 41.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497990, 35.345959, 41.341812>,  <38.673862, 34.749245, 41.089478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497990, 35.345959, 41.341812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406105, 35.088551, 41.633869>,  <38.350975, 34.934105, 41.809105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406105, 35.088551, 41.633869>,  <38.497990, 35.345959, 41.341812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406105, 35.088551, 41.633869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429790, 0.606022, 0.669341,
		-0.873219, 0.467566, 0.137367,
		-0.229714, -0.643521, 0.730145,
		38.337193, 34.895493, 41.852913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127316, 35.752674, 41.829521>,  <38.497990, 35.345959, 41.341812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127316, 35.752674, 41.829521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313938, 35.436970, 41.989212>,  <38.425911, 35.247547, 42.085026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313938, 35.436970, 41.989212>,  <38.127316, 35.752674, 41.829521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313938, 35.436970, 41.989212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401037, 0.591073, 0.699859,
		-0.788348, -0.166419, 0.592294,
		0.466559, -0.789264, 0.399231,
		38.453907, 35.200191, 42.108982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876564, 35.776772, 42.619339>,  <38.127316, 35.752674, 41.829521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876564, 35.776772, 42.619339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217960, 35.574776, 42.567902>,  <38.422798, 35.453579, 42.537037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217960, 35.574776, 42.567902>,  <37.876564, 35.776772, 42.619339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217960, 35.574776, 42.567902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393486, 0.462749, 0.794375,
		-0.341641, -0.728594, 0.593659,
		0.853492, -0.504988, -0.128598,
		38.474007, 35.423279, 42.529324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185017, 35.842339, 43.285488>,  <37.876564, 35.776772, 42.619339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185017, 35.842339, 43.285488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489056, 35.723286, 43.054432>,  <38.671478, 35.651852, 42.915798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489056, 35.723286, 43.054432>,  <38.185017, 35.842339, 43.285488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489056, 35.723286, 43.054432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634123, 0.533900, 0.559319,
		0.141928, -0.791431, 0.594553,
		0.760095, -0.297637, -0.577640,
		38.717083, 35.633995, 42.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676174, 35.638256, 43.763683>,  <38.185017, 35.842339, 43.285488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676174, 35.638256, 43.763683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888115, 35.671848, 43.426113>,  <39.015282, 35.692001, 43.223572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888115, 35.671848, 43.426113>,  <38.676174, 35.638256, 43.763683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888115, 35.671848, 43.426113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783128, 0.333500, 0.524871,
		0.325530, -0.939002, 0.110933,
		0.529851, 0.083986, -0.843922,
		39.047070, 35.697041, 43.172935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362057, 35.426018, 43.985126>,  <38.676174, 35.638256, 43.763683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362057, 35.426018, 43.985126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381577, 35.677685, 43.674831>,  <39.393288, 35.828686, 43.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381577, 35.677685, 43.674831>,  <39.362057, 35.426018, 43.985126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381577, 35.677685, 43.674831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774563, 0.466514, 0.427103,
		0.630611, -0.621698, -0.464565,
		0.048803, 0.629171, -0.775733,
		39.396217, 35.866436, 43.442112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021236, 35.696869, 44.021378>,  <39.362057, 35.426018, 43.985126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021236, 35.696869, 44.021378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855099, 35.954094, 43.764019>,  <39.755417, 36.108429, 43.609604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855099, 35.954094, 43.764019>,  <40.021236, 35.696869, 44.021378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855099, 35.954094, 43.764019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506453, 0.751002, 0.423676,
		0.755642, -0.149877, -0.637607,
		-0.415345, 0.643065, -0.643394,
		39.730495, 36.147015, 43.570999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563026, 36.043728, 43.791374>,  <40.021236, 35.696869, 44.021378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563026, 36.043728, 43.791374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232121, 36.266304, 43.760395>,  <40.033577, 36.399849, 43.741806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232121, 36.266304, 43.760395>,  <40.563026, 36.043728, 43.791374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232121, 36.266304, 43.760395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467591, 0.758379, 0.454115,
		0.311423, 0.339461, -0.887571,
		-0.827270, 0.556441, -0.077448,
		39.983940, 36.433235, 43.737160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801289, 36.676949, 43.482819>,  <40.563026, 36.043728, 43.791374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801289, 36.676949, 43.482819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449745, 36.754601, 43.657139>,  <40.238819, 36.801193, 43.761730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449745, 36.754601, 43.657139>,  <40.801289, 36.676949, 43.482819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449745, 36.754601, 43.657139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404713, 0.787055, 0.465566,
		-0.252621, 0.585541, -0.770276,
		-0.878857, 0.194129, 0.435803,
		40.186089, 36.812840, 43.787880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912502, 37.401409, 43.552147>,  <40.801289, 36.676949, 43.482819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912502, 37.401409, 43.552147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588749, 37.315815, 43.770908>,  <40.394497, 37.264458, 43.902164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588749, 37.315815, 43.770908>,  <40.912502, 37.401409, 43.552147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588749, 37.315815, 43.770908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101239, 0.866474, 0.488850,
		-0.578483, 0.451037, -0.679650,
		-0.809388, -0.213984, 0.546903,
		40.345932, 37.251621, 43.934978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559490, 38.044628, 43.603687>,  <40.912502, 37.401409, 43.552147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559490, 38.044628, 43.603687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423759, 37.815491, 43.902138>,  <40.342319, 37.678009, 44.081207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423759, 37.815491, 43.902138>,  <40.559490, 38.044628, 43.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423759, 37.815491, 43.902138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034572, 0.800248, 0.598672,
		-0.940032, 0.177353, -0.291353,
		-0.339331, -0.572843, 0.746127,
		40.321960, 37.643639, 44.125977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929073, 38.325787, 43.885712>,  <40.559490, 38.044628, 43.603687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929073, 38.325787, 43.885712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073490, 38.093029, 44.177204>,  <40.160141, 37.953373, 44.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073490, 38.093029, 44.177204>,  <39.929073, 38.325787, 43.885712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073490, 38.093029, 44.177204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058377, 0.765803, 0.640420,
		-0.930722, -0.273758, 0.242515,
		0.361039, -0.581895, 0.728731,
		40.181801, 37.918461, 44.395824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485622, 38.485767, 44.433514>,  <39.929073, 38.325787, 43.885712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485622, 38.485767, 44.433514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817348, 38.336376, 44.599766>,  <40.016384, 38.246742, 44.699516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817348, 38.336376, 44.599766>,  <39.485622, 38.485767, 44.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817348, 38.336376, 44.599766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054396, 0.686328, 0.725255,
		-0.556122, -0.624076, 0.548869,
		0.829319, -0.373474, 0.415629,
		40.066143, 38.224335, 44.724453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338959, 38.305634, 45.095631>,  <39.485622, 38.485767, 44.433514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338959, 38.305634, 45.095631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737110, 38.341179, 45.110180>,  <39.976002, 38.362507, 45.118908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737110, 38.341179, 45.110180>,  <39.338959, 38.305634, 45.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737110, 38.341179, 45.110180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087547, 0.684331, 0.723897,
		0.039436, -0.723737, 0.688949,
		0.995380, 0.088863, 0.036374,
		40.035725, 38.367840, 45.121094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493862, 38.407066, 45.784557>,  <39.338959, 38.305634, 45.095631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493862, 38.407066, 45.784557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819241, 38.537674, 45.592018>,  <40.014465, 38.616039, 45.476494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819241, 38.537674, 45.592018>,  <39.493862, 38.407066, 45.784557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819241, 38.537674, 45.592018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032311, 0.800918, 0.597901,
		0.580746, -0.501912, 0.640952,
		0.813444, 0.326519, -0.481347,
		40.063274, 38.635632, 45.447613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947613, 38.420322, 46.268867>,  <39.493862, 38.407066, 45.784557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947613, 38.420322, 46.268867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091644, 38.667030, 45.988884>,  <40.178062, 38.815056, 45.820892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091644, 38.667030, 45.988884>,  <39.947613, 38.420322, 46.268867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091644, 38.667030, 45.988884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016362, 0.754346, 0.656273,
		0.932777, -0.224859, 0.281718,
		0.360082, 0.616766, -0.699958,
		40.199669, 38.852058, 45.778896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470123, 38.804707, 46.597881>,  <39.947613, 38.420322, 46.268867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470123, 38.804707, 46.597881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366299, 39.028812, 46.283241>,  <40.304005, 39.163277, 46.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366299, 39.028812, 46.283241>,  <40.470123, 38.804707, 46.597881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366299, 39.028812, 46.283241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067117, 0.823008, 0.564051,
		0.963392, 0.093611, -0.251224,
		-0.259560, 0.560264, -0.786596,
		40.288429, 39.196892, 46.047264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014103, 39.272312, 46.435806>,  <40.470123, 38.804707, 46.597881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014103, 39.272312, 46.435806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691563, 39.441822, 46.270782>,  <40.498039, 39.543526, 46.171768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691563, 39.441822, 46.270782>,  <41.014103, 39.272312, 46.435806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691563, 39.441822, 46.270782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187592, 0.844807, 0.501109,
		0.560893, 0.326678, -0.760710,
		-0.806355, 0.423772, -0.412564,
		40.449657, 39.568954, 46.147015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223862, 39.857937, 46.217075>,  <41.014103, 39.272312, 46.435806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223862, 39.857937, 46.217075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831055, 39.917953, 46.262905>,  <40.595371, 39.953964, 46.290401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831055, 39.917953, 46.262905>,  <41.223862, 39.857937, 46.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831055, 39.917953, 46.262905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187604, 0.843255, 0.503712,
		-0.021037, 0.516149, -0.856240,
		-0.982019, 0.150037, 0.114571,
		40.536449, 39.962963, 46.297276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150536, 40.530575, 45.913345>,  <41.223862, 39.857937, 46.217075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150536, 40.530575, 45.913345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857735, 40.416058, 46.160637>,  <40.682053, 40.347347, 46.309010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857735, 40.416058, 46.160637>,  <41.150536, 40.530575, 45.913345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857735, 40.416058, 46.160637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035998, 0.922408, 0.384535,
		-0.680347, 0.259226, -0.685514,
		-0.732005, -0.286294, 0.618226,
		40.638134, 40.330170, 46.346104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843773, 41.206554, 46.001049>,  <41.150536, 40.530575, 45.913345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843773, 41.206554, 46.001049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660015, 40.979721, 46.274509>,  <40.549763, 40.843620, 46.438583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660015, 40.979721, 46.274509>,  <40.843773, 41.206554, 46.001049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660015, 40.979721, 46.274509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357608, 0.822619, 0.442058,
		-0.813066, -0.041401, -0.580697,
		-0.459390, -0.567084, 0.683649,
		40.522198, 40.809597, 46.479603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275295, 41.580811, 46.027096>,  <40.843773, 41.206554, 46.001049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275295, 41.580811, 46.027096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319050, 41.365578, 46.361401>,  <40.345303, 41.236439, 46.561985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319050, 41.365578, 46.361401>,  <40.275295, 41.580811, 46.027096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319050, 41.365578, 46.361401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245528, 0.800131, 0.547272,
		-0.963199, -0.265065, -0.044594,
		0.109382, -0.538081, 0.835766,
		40.351864, 41.204155, 46.612129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739765, 41.638313, 46.391590>,  <40.275295, 41.580811, 46.027096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739765, 41.638313, 46.391590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029758, 41.545849, 46.651115>,  <40.203754, 41.490368, 46.806831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029758, 41.545849, 46.651115>,  <39.739765, 41.638313, 46.391590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029758, 41.545849, 46.651115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163457, 0.857343, 0.488103,
		-0.669091, -0.459920, 0.583774,
		0.724983, -0.231164, 0.648817,
		40.247253, 41.476501, 46.845760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407532, 41.827503, 47.003193>,  <39.739765, 41.638313, 46.391590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407532, 41.827503, 47.003193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795338, 41.798443, 47.096802>,  <40.028019, 41.781006, 47.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795338, 41.798443, 47.096802>,  <39.407532, 41.827503, 47.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795338, 41.798443, 47.096802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088146, 0.787706, 0.609712,
		-0.228636, -0.611752, 0.757288,
		0.969513, -0.072650, 0.234022,
		40.086193, 41.776649, 47.167007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464909, 41.921879, 47.754993>,  <39.407532, 41.827503, 47.003193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464909, 41.921879, 47.754993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816120, 42.019371, 47.590237>,  <40.026848, 42.077866, 47.491383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816120, 42.019371, 47.590237>,  <39.464909, 41.921879, 47.754993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816120, 42.019371, 47.590237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039071, 0.821240, 0.569243,
		0.477003, -0.515907, 0.711554,
		0.878033, 0.243730, -0.411891,
		40.079529, 42.092491, 47.466671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966644, 42.120609, 48.374763>,  <39.464909, 41.921879, 47.754993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966644, 42.120609, 48.374763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136803, 42.263504, 48.042156>,  <40.238899, 42.349239, 47.842590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136803, 42.263504, 48.042156>,  <39.966644, 42.120609, 48.374763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136803, 42.263504, 48.042156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316454, 0.802080, 0.506482,
		0.847876, -0.478593, 0.228155,
		0.425397, 0.357234, -0.831517,
		40.264423, 42.370674, 47.792702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591721, 42.353561, 48.610664>,  <39.966644, 42.120609, 48.374763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591721, 42.353561, 48.610664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492950, 42.528397, 48.264721>,  <40.433689, 42.633297, 48.057156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492950, 42.528397, 48.264721>,  <40.591721, 42.353561, 48.610664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492950, 42.528397, 48.264721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381645, 0.864229, 0.327805,
		0.890715, -0.249124, -0.380215,
		-0.246929, 0.437088, -0.864859,
		40.418873, 42.659523, 48.005264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074287, 42.724159, 48.503815>,  <40.591721, 42.353561, 48.610664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074287, 42.724159, 48.503815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824615, 42.909863, 48.252460>,  <40.674812, 43.021286, 48.101650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824615, 42.909863, 48.252460>,  <41.074287, 42.724159, 48.503815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824615, 42.909863, 48.252460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355536, 0.884977, 0.300681,
		0.695697, -0.035733, -0.717446,
		-0.624179, 0.464261, -0.628381,
		40.637363, 43.049141, 48.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356678, 43.339828, 48.273499>,  <41.074287, 42.724159, 48.503815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356678, 43.339828, 48.273499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971500, 43.401905, 48.185265>,  <40.740395, 43.439152, 48.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971500, 43.401905, 48.185265>,  <41.356678, 43.339828, 48.273499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971500, 43.401905, 48.185265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108848, 0.971917, 0.208636,
		0.246774, 0.176893, -0.952792,
		-0.962941, 0.155195, -0.220589,
		40.682617, 43.448463, 48.119087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349346, 44.040962, 47.973660>,  <41.356678, 43.339828, 48.273499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349346, 44.040962, 47.973660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975498, 43.967388, 48.095413>,  <40.751190, 43.923244, 48.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975498, 43.967388, 48.095413>,  <41.349346, 44.040962, 47.973660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975498, 43.967388, 48.095413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089940, 0.950295, 0.298078,
		-0.344085, 0.251214, -0.904708,
		-0.934621, -0.183934, 0.304388,
		40.695110, 43.912209, 48.186729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745628, 44.547993, 47.672523>,  <41.349346, 44.040962, 47.973660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745628, 44.547993, 47.672523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641323, 44.374767, 48.017651>,  <40.578739, 44.270832, 48.224728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641323, 44.374767, 48.017651>,  <40.745628, 44.547993, 47.672523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641323, 44.374767, 48.017651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060630, 0.899323, 0.433062,
		-0.963498, 0.060612, -0.260765,
		-0.260761, -0.433064, 0.862821,
		40.563095, 44.244846, 48.276497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449856, 44.807373, 47.337326>,  <40.745628, 44.547993, 47.672523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449856, 44.807373, 47.337326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474014, 45.105854, 47.072140>,  <41.488510, 45.284943, 46.913029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474014, 45.105854, 47.072140>,  <41.449856, 44.807373, 47.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474014, 45.105854, 47.072140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115853, -0.654452, -0.747175,
		-0.991428, 0.121936, 0.046922,
		0.060399, 0.746206, -0.662969,
		41.492134, 45.329716, 46.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975464, 44.691612, 46.884960>,  <41.449856, 44.807373, 47.337326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975464, 44.691612, 46.884960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218857, 44.929707, 46.675030>,  <41.364895, 45.072563, 46.549072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218857, 44.929707, 46.675030>,  <40.975464, 44.691612, 46.884960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218857, 44.929707, 46.675030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061842, -0.623770, -0.779158,
		-0.791152, 0.506563, -0.342744,
		0.608485, 0.595236, -0.524823,
		41.401402, 45.108276, 46.517582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557995, 44.981750, 46.394283>,  <40.975464, 44.691612, 46.884960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557995, 44.981750, 46.394283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935360, 44.982143, 46.261635>,  <41.161777, 44.982380, 46.182045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935360, 44.982143, 46.261635>,  <40.557995, 44.981750, 46.394283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935360, 44.982143, 46.261635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275419, -0.554685, -0.785155,
		-0.184718, 0.832060, -0.523025,
		0.943411, 0.000981, -0.331626,
		41.218384, 44.982437, 46.162148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542645, 45.236305, 45.703892>,  <40.557995, 44.981750, 46.394283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542645, 45.236305, 45.703892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885509, 45.038155, 45.760273>,  <41.091228, 44.919266, 45.794102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885509, 45.038155, 45.760273>,  <40.542645, 45.236305, 45.703892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885509, 45.038155, 45.760273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202415, -0.575667, -0.792235,
		0.473596, 0.650546, -0.593714,
		0.857167, -0.495376, 0.140953,
		41.142658, 44.889542, 45.802559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776581, 45.184673, 44.996555>,  <40.542645, 45.236305, 45.703892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776581, 45.184673, 44.996555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003933, 44.936295, 45.212471>,  <41.140343, 44.787266, 45.342022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003933, 44.936295, 45.212471>,  <40.776581, 45.184673, 44.996555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003933, 44.936295, 45.212471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073225, -0.615284, -0.784897,
		0.819502, 0.485645, -0.304246,
		0.568379, -0.620947, 0.539788,
		41.174446, 44.750011, 45.374409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377106, 44.982304, 44.588612>,  <40.776581, 45.184673, 44.996555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377106, 44.982304, 44.588612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301392, 44.706314, 44.868069>,  <41.255962, 44.540722, 45.035744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301392, 44.706314, 44.868069>,  <41.377106, 44.982304, 44.588612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301392, 44.706314, 44.868069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059374, -0.718249, -0.693248,
		0.980125, -0.089739, 0.176920,
		-0.189284, -0.689974, 0.698646,
		41.244606, 44.499321, 45.077663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774498, 44.454578, 44.463860>,  <41.377106, 44.982304, 44.588612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774498, 44.454578, 44.463860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477825, 44.276150, 44.664227>,  <41.299820, 44.169094, 44.784447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477825, 44.276150, 44.664227>,  <41.774498, 44.454578, 44.463860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477825, 44.276150, 44.664227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064956, -0.791068, -0.608269,
		0.667594, -0.418607, 0.615700,
		-0.741687, -0.446071, 0.500921,
		41.255318, 44.142330, 44.814503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082752, 43.744434, 44.391171>,  <41.774498, 44.454578, 44.463860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082752, 43.744434, 44.391171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705872, 43.701939, 44.518269>,  <41.479744, 43.676441, 44.594528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705872, 43.701939, 44.518269>,  <42.082752, 43.744434, 44.391171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705872, 43.701939, 44.518269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107242, -0.802852, -0.586454,
		0.317407, -0.586636, 0.745058,
		-0.942206, -0.106243, 0.317743,
		41.423210, 43.670067, 44.613590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958042, 43.010544, 44.344051>,  <42.082752, 43.744434, 44.391171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958042, 43.010544, 44.344051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589077, 43.157131, 44.392811>,  <41.367699, 43.245083, 44.422066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589077, 43.157131, 44.392811>,  <41.958042, 43.010544, 44.344051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589077, 43.157131, 44.392811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362689, -0.713493, -0.599487,
		-0.132720, -0.597184, 0.791048,
		-0.922411, 0.366468, 0.121898,
		41.312355, 43.267071, 44.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515911, 42.473640, 44.663052>,  <41.958042, 43.010544, 44.344051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515911, 42.473640, 44.663052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286415, 42.723137, 44.450726>,  <41.148716, 42.872837, 44.323330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286415, 42.723137, 44.450726>,  <41.515911, 42.473640, 44.663052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286415, 42.723137, 44.450726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388199, -0.777771, -0.494341,
		-0.721194, -0.077564, 0.688377,
		-0.573743, 0.623743, -0.530813,
		41.114292, 42.910259, 44.291481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892769, 42.098263, 44.551937>,  <41.515911, 42.473640, 44.663052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892769, 42.098263, 44.551937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821510, 42.382839, 44.280022>,  <40.778755, 42.553585, 44.116871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821510, 42.382839, 44.280022>,  <40.892769, 42.098263, 44.551937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821510, 42.382839, 44.280022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535779, -0.649588, -0.539423,
		-0.825351, 0.268121, 0.496897,
		-0.178148, 0.711440, -0.679791,
		40.768066, 42.596272, 44.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073441, 42.136597, 44.341915>,  <40.892769, 42.098263, 44.551937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073441, 42.136597, 44.341915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325356, 42.227917, 44.044930>,  <40.476505, 42.282707, 43.866737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325356, 42.227917, 44.044930>,  <40.073441, 42.136597, 44.341915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325356, 42.227917, 44.044930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400180, -0.723868, -0.562025,
		-0.665755, 0.651073, -0.364520,
		0.629783, 0.228297, -0.742464,
		40.514290, 42.296406, 43.822189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632408, 42.020832, 43.771503>,  <40.073441, 42.136597, 44.341915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632408, 42.020832, 43.771503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000622, 42.024612, 43.615284>,  <40.221550, 42.026882, 43.521553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000622, 42.024612, 43.615284>,  <39.632408, 42.020832, 43.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000622, 42.024612, 43.615284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229411, -0.796104, -0.559990,
		-0.316211, 0.605086, -0.730672,
		0.920533, 0.009451, -0.390550,
		40.276783, 42.027447, 43.498119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605747, 41.951485, 43.050549>,  <39.632408, 42.020832, 43.771503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605747, 41.951485, 43.050549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973206, 41.821110, 43.139858>,  <40.193680, 41.742886, 43.193443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973206, 41.821110, 43.139858>,  <39.605747, 41.951485, 43.050549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973206, 41.821110, 43.139858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128905, -0.781493, -0.610452,
		0.373461, 0.532008, -0.759930,
		0.918646, -0.325939, 0.223279,
		40.248798, 41.723328, 43.206841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738739, 41.690331, 42.441002>,  <39.605747, 41.951485, 43.050549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738739, 41.690331, 42.441002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026810, 41.534142, 42.670395>,  <40.199650, 41.440430, 42.808033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026810, 41.534142, 42.670395>,  <39.738739, 41.690331, 42.441002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026810, 41.534142, 42.670395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026377, -0.841405, -0.539762,
		0.693294, 0.373594, -0.616255,
		0.720172, -0.390469, 0.573486,
		40.242863, 41.417000, 42.842442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208794, 41.310989, 42.020191>,  <39.738739, 41.690331, 42.441002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208794, 41.310989, 42.020191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289696, 41.139896, 42.372585>,  <40.338238, 41.037243, 42.584023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289696, 41.139896, 42.372585>,  <40.208794, 41.310989, 42.020191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289696, 41.139896, 42.372585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122062, -0.881556, -0.456027,
		0.971696, 0.199770, -0.126091,
		0.202257, -0.427729, 0.880988,
		40.350372, 41.011578, 42.636883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737652, 40.806843, 41.982296>,  <40.208794, 41.310989, 42.020191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737652, 40.806843, 41.982296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508514, 40.717995, 42.297894>,  <40.371033, 40.664684, 42.487251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508514, 40.717995, 42.297894>,  <40.737652, 40.806843, 41.982296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508514, 40.717995, 42.297894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024679, -0.957472, -0.287470,
		0.819293, -0.184147, 0.542999,
		-0.572843, -0.222122, 0.788995,
		40.336662, 40.651360, 42.534592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989361, 40.058167, 42.171612>,  <40.737652, 40.806843, 41.982296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989361, 40.058167, 42.171612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627007, 40.106560, 42.333961>,  <40.409595, 40.135597, 42.431370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627007, 40.106560, 42.333961>,  <40.989361, 40.058167, 42.171612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627007, 40.106560, 42.333961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194368, -0.970211, -0.144607,
		0.376286, -0.209886, 0.902417,
		-0.905886, 0.120987, 0.405872,
		40.355240, 40.142857, 42.455723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027866, 39.578491, 42.749462>,  <40.989361, 40.058167, 42.171612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027866, 39.578491, 42.749462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640659, 39.667412, 42.702930>,  <40.408337, 39.720764, 42.675011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640659, 39.667412, 42.702930>,  <41.027866, 39.578491, 42.749462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640659, 39.667412, 42.702930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220698, -0.974978, -0.026655,
		-0.119347, -0.000128, 0.992853,
		-0.968013, 0.222301, -0.116332,
		40.350254, 39.734100, 42.668030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614773, 38.998901, 43.066357>,  <41.027866, 39.578491, 42.749462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614773, 38.998901, 43.066357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386623, 39.174492, 42.788658>,  <40.249733, 39.279846, 42.622040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386623, 39.174492, 42.788658>,  <40.614773, 38.998901, 43.066357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386623, 39.174492, 42.788658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351343, -0.894375, -0.276860,
		-0.742448, 0.086003, 0.664361,
		-0.570377, 0.438972, -0.694244,
		40.215511, 39.306183, 42.580383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914146, 38.666786, 43.132545>,  <40.614773, 38.998901, 43.066357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914146, 38.666786, 43.132545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950970, 38.833488, 42.770809>,  <39.973064, 38.933510, 42.553768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950970, 38.833488, 42.770809>,  <39.914146, 38.666786, 43.132545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950970, 38.833488, 42.770809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273637, -0.862647, -0.425399,
		-0.957417, 0.286624, 0.034624,
		0.092062, 0.416759, -0.904343,
		39.978588, 38.958515, 42.499508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282261, 38.445580, 42.746571>,  <39.914146, 38.666786, 43.132545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282261, 38.445580, 42.746571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582180, 38.555023, 42.505589>,  <39.762131, 38.620689, 42.361000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582180, 38.555023, 42.505589>,  <39.282261, 38.445580, 42.746571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582180, 38.555023, 42.505589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134191, -0.828699, -0.543370,
		-0.647922, 0.488258, -0.584637,
		0.749793, 0.273608, -0.602452,
		39.807117, 38.637104, 42.324852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973595, 38.236542, 42.139652>,  <39.282261, 38.445580, 42.746571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973595, 38.236542, 42.139652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360771, 38.283867, 42.051018>,  <39.593075, 38.312263, 41.997837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360771, 38.283867, 42.051018>,  <38.973595, 38.236542, 42.139652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360771, 38.283867, 42.051018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047408, -0.780236, -0.623686,
		-0.246679, 0.614193, -0.749610,
		0.967937, 0.118313, -0.221586,
		39.651154, 38.319359, 41.984543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068527, 38.172783, 41.384586>,  <38.973595, 38.236542, 42.139652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068527, 38.172783, 41.384586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447742, 38.122032, 41.501289>,  <39.675274, 38.091583, 41.571312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447742, 38.122032, 41.501289>,  <39.068527, 38.172783, 41.384586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447742, 38.122032, 41.501289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156472, -0.612535, -0.774801,
		0.277014, 0.780195, -0.560856,
		0.948040, -0.126873, 0.291760,
		39.732155, 38.083969, 41.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447872, 38.331108, 40.789211>,  <39.068527, 38.172783, 41.384586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447872, 38.331108, 40.789211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697586, 38.125843, 41.024815>,  <39.847416, 38.002686, 41.166176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697586, 38.125843, 41.024815>,  <39.447872, 38.331108, 40.789211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697586, 38.125843, 41.024815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028829, -0.738332, -0.673821,
		0.780661, 0.437639, -0.446139,
		0.624289, -0.513164, 0.589004,
		39.884872, 37.971893, 41.201515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948116, 38.057014, 40.416801>,  <39.447872, 38.331108, 40.789211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948116, 38.057014, 40.416801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985661, 37.819218, 40.736244>,  <40.008186, 37.676540, 40.927910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985661, 37.819218, 40.736244>,  <39.948116, 38.057014, 40.416801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985661, 37.819218, 40.736244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002738, -0.801992, -0.597329,
		0.995582, 0.058251, -0.073647,
		0.093859, -0.594488, 0.798608,
		40.013817, 37.640873, 40.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498276, 37.620903, 40.283401>,  <39.948116, 38.057014, 40.416801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498276, 37.620903, 40.283401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277790, 37.410919, 40.542812>,  <40.145500, 37.284927, 40.698460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277790, 37.410919, 40.542812>,  <40.498276, 37.620903, 40.283401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277790, 37.410919, 40.542812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107615, -0.815505, -0.568656,
		0.827397, -0.243658, 0.506008,
		-0.551210, -0.524959, 0.648525,
		40.112427, 37.253433, 40.737370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784142, 36.988476, 40.128105>,  <40.498276, 37.620903, 40.283401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784142, 36.988476, 40.128105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453754, 36.898491, 40.334858>,  <40.255524, 36.844501, 40.458912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453754, 36.898491, 40.334858>,  <40.784142, 36.988476, 40.128105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453754, 36.898491, 40.334858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215848, -0.720833, -0.658642,
		0.520758, -0.655585, 0.546826,
		-0.825966, -0.224962, 0.516887,
		40.205963, 36.831001, 40.489925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872494, 36.256870, 40.298374>,  <40.784142, 36.988476, 40.128105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872494, 36.256870, 40.298374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488834, 36.368610, 40.316250>,  <40.258640, 36.435654, 40.326977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488834, 36.368610, 40.316250>,  <40.872494, 36.256870, 40.298374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488834, 36.368610, 40.316250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253886, -0.780275, -0.571588,
		-0.124802, -0.559584, 0.819323,
		-0.959149, 0.279350, 0.044690,
		40.201088, 36.452415, 40.329659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432014, 35.620132, 40.423824>,  <40.872494, 36.256870, 40.298374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432014, 35.620132, 40.423824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166489, 35.888199, 40.291023>,  <40.007172, 36.049038, 40.211342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166489, 35.888199, 40.291023>,  <40.432014, 35.620132, 40.423824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166489, 35.888199, 40.291023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389593, -0.688783, -0.611389,
		-0.638409, -0.276504, 0.718317,
		-0.663816, 0.670167, -0.332001,
		39.967346, 36.089249, 40.191422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849064, 35.254833, 40.282780>,  <40.432014, 35.620132, 40.423824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849064, 35.254833, 40.282780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777477, 35.584736, 40.068211>,  <39.734528, 35.782677, 39.939468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777477, 35.584736, 40.068211>,  <39.849064, 35.254833, 40.282780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777477, 35.584736, 40.068211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180076, -0.563478, -0.806266,
		-0.967235, -0.047695, 0.249361,
		-0.178965, 0.824753, -0.536427,
		39.723789, 35.832161, 39.907284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330242, 35.025047, 39.984688>,  <39.849064, 35.254833, 40.282780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330242, 35.025047, 39.984688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445732, 35.341045, 39.768337>,  <39.515026, 35.530643, 39.638527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445732, 35.341045, 39.768337>,  <39.330242, 35.025047, 39.984688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445732, 35.341045, 39.768337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305429, -0.459414, -0.834057,
		-0.907387, 0.406011, 0.108644,
		0.288724, 0.789996, -0.540874,
		39.532349, 35.578045, 39.606075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901333, 35.014931, 39.427124>,  <39.330242, 35.025047, 39.984688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901333, 35.014931, 39.427124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177711, 35.278099, 39.307301>,  <39.343540, 35.436001, 39.235405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177711, 35.278099, 39.307301>,  <38.901333, 35.014931, 39.427124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177711, 35.278099, 39.307301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029798, -0.388107, -0.921133,
		-0.722291, 0.645380, -0.248556,
		0.690947, 0.657920, -0.299557,
		39.384995, 35.475475, 39.217434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523605, 35.469925, 39.001827>,  <38.901333, 35.014931, 39.427124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523605, 35.469925, 39.001827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906834, 35.466930, 38.887253>,  <39.136772, 35.465134, 38.818508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906834, 35.466930, 38.887253>,  <38.523605, 35.469925, 39.001827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906834, 35.466930, 38.887253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285548, -0.107806, -0.952282,
		-0.023754, 0.994144, -0.105423,
		0.958070, -0.007483, -0.286436,
		39.194256, 35.464687, 38.801323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577805, 35.903843, 38.374477>,  <38.523605, 35.469925, 39.001827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577805, 35.903843, 38.374477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909275, 35.679974, 38.377594>,  <39.108158, 35.545650, 38.379463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909275, 35.679974, 38.377594>,  <38.577805, 35.903843, 38.374477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909275, 35.679974, 38.377594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145035, -0.228150, -0.962763,
		0.540614, 0.796687, -0.270235,
		0.828675, -0.559676, 0.007794,
		39.157879, 35.512070, 38.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872307, 36.061909, 37.654324>,  <38.577805, 35.903843, 38.374477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872307, 36.061909, 37.654324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053600, 35.738419, 37.804276>,  <39.162376, 35.544323, 37.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053600, 35.738419, 37.804276>,  <38.872307, 36.061909, 37.654324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053600, 35.738419, 37.804276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100371, -0.464188, -0.880031,
		0.885721, 0.361235, -0.291560,
		0.453237, -0.808726, 0.374883,
		39.189571, 35.495800, 37.916740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515919, 35.889751, 37.308857>,  <38.872307, 36.061909, 37.654324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515919, 35.889751, 37.308857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391731, 35.545242, 37.469765>,  <39.317219, 35.338535, 37.566311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391731, 35.545242, 37.469765>,  <39.515919, 35.889751, 37.308857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391731, 35.545242, 37.469765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017514, -0.417928, -0.908311,
		0.950424, -0.289044, 0.114667,
		-0.310465, -0.861272, 0.402271,
		39.298592, 35.286861, 37.590446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909294, 35.321552, 36.940628>,  <39.515919, 35.889751, 37.308857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909294, 35.321552, 36.940628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590164, 35.166924, 37.125683>,  <39.398685, 35.074146, 37.236717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590164, 35.166924, 37.125683>,  <39.909294, 35.321552, 36.940628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590164, 35.166924, 37.125683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165815, -0.597080, -0.784857,
		0.579633, -0.702894, 0.412269,
		-0.797829, -0.386569, 0.462637,
		39.350815, 35.050953, 37.264473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106441, 34.579048, 36.957985>,  <39.909294, 35.321552, 36.940628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106441, 34.579048, 36.957985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706673, 34.591919, 36.962406>,  <39.466812, 34.599640, 36.965057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706673, 34.591919, 36.962406>,  <40.106441, 34.579048, 36.957985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706673, 34.591919, 36.962406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030843, -0.719795, -0.693501,
		-0.014361, -0.693440, 0.720371,
		-0.999421, 0.032178, 0.011050,
		39.406845, 34.601574, 36.965721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997238, 34.067848, 36.469307>,  <40.106441, 34.579048, 36.957985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997238, 34.067848, 36.469307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634239, 34.136086, 36.622852>,  <39.416439, 34.177029, 36.714981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634239, 34.136086, 36.622852>,  <39.997238, 34.067848, 36.469307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634239, 34.136086, 36.622852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367036, -0.766467, -0.527079,
		0.204306, -0.619214, 0.758178,
		-0.907493, 0.170593, 0.383868,
		39.361992, 34.187263, 36.738014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600674, 33.815796, 36.969639>,  <39.997238, 34.067848, 36.469307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600674, 33.815796, 36.969639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893158, 33.778790, 37.239979>,  <41.068649, 33.756584, 37.402184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893158, 33.778790, 37.239979>,  <40.600674, 33.815796, 36.969639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893158, 33.778790, 37.239979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610125, 0.531823, -0.587292,
		-0.305098, 0.841786, 0.445321,
		0.731206, -0.092520, 0.675853,
		41.112518, 33.751034, 37.442734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214031, 34.320717, 36.795731>,  <40.600674, 33.815796, 36.969639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214031, 34.320717, 36.795731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552269, 34.518776, 36.875538>,  <41.755211, 34.637611, 36.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552269, 34.518776, 36.875538>,  <41.214031, 34.320717, 36.795731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552269, 34.518776, 36.875538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533619, -0.794520, -0.289806,
		0.015023, 0.351523, -0.936059,
		0.845591, 0.495145, 0.199516,
		41.805946, 34.667320, 36.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750866, 34.156925, 36.283146>,  <41.214031, 34.320717, 36.795731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750866, 34.156925, 36.283146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977669, 34.294819, 36.582390>,  <42.113750, 34.377556, 36.761936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977669, 34.294819, 36.582390>,  <41.750866, 34.156925, 36.283146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977669, 34.294819, 36.582390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766198, -0.554152, -0.325354,
		0.302403, 0.757675, -0.578343,
		0.567003, 0.344737, 0.748107,
		42.147770, 34.398239, 36.806824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391258, 34.544510, 36.170174>,  <41.750866, 34.156925, 36.283146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391258, 34.544510, 36.170174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460640, 34.359726, 36.518082>,  <42.502270, 34.248856, 36.726826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460640, 34.359726, 36.518082>,  <42.391258, 34.544510, 36.170174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460640, 34.359726, 36.518082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717217, -0.545980, -0.433019,
		0.674916, 0.698927, 0.236621,
		0.173459, -0.461960, 0.869773,
		42.512676, 34.221138, 36.779015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048229, 34.679375, 36.460953>,  <42.391258, 34.544510, 36.170174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048229, 34.679375, 36.460953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919140, 34.314049, 36.560307>,  <42.841686, 34.094852, 36.619919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919140, 34.314049, 36.560307>,  <43.048229, 34.679375, 36.460953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919140, 34.314049, 36.560307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586654, -0.398960, -0.704747,
		0.742756, -0.081722, 0.664557,
		-0.322725, -0.913319, 0.248388,
		42.822323, 34.040054, 36.634823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987240, 34.828892, 35.689621>,  <43.048229, 34.679375, 36.460953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987240, 34.828892, 35.689621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102547, 35.194065, 35.574066>,  <43.171730, 35.413170, 35.504734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102547, 35.194065, 35.574066>,  <42.987240, 34.828892, 35.689621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102547, 35.194065, 35.574066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166748, 0.249225, 0.953982,
		0.942921, -0.323170, -0.080387,
		0.288264, 0.912934, -0.288887,
		43.189026, 35.467945, 35.487400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671207, 35.063698, 35.764408>,  <42.987240, 34.828892, 35.689621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671207, 35.063698, 35.764408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435257, 34.918861, 35.475704>,  <43.293686, 34.831959, 35.302483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435257, 34.918861, 35.475704>,  <43.671207, 35.063698, 35.764408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435257, 34.918861, 35.475704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167345, -0.929237, 0.329414,
		-0.789964, 0.073531, 0.608729,
		-0.589875, -0.362093, -0.721759,
		43.258293, 34.810234, 35.259178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211849, 34.734467, 35.481243>,  <43.671207, 35.063698, 35.764408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211849, 34.734467, 35.481243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378654, 34.784912, 35.121201>,  <44.478737, 34.815182, 34.905174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378654, 34.784912, 35.121201>,  <44.211849, 34.734467, 35.481243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378654, 34.784912, 35.121201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688314, 0.690565, -0.222137,
		0.593566, 0.712190, 0.374786,
		0.417018, 0.126117, -0.900106,
		44.503761, 34.822746, 34.851170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279438, 35.475758, 35.397892>,  <44.211849, 34.734467, 35.481243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279438, 35.475758, 35.397892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285873, 35.311375, 35.033287>,  <44.289734, 35.212746, 34.814522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285873, 35.311375, 35.033287>,  <44.279438, 35.475758, 35.397892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285873, 35.311375, 35.033287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656638, 0.683147, -0.319588,
		0.754034, 0.603678, -0.258853,
		0.016093, -0.410953, -0.911514,
		44.290703, 35.188087, 34.759834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369080, 36.047264, 35.017929>,  <44.279438, 35.475758, 35.397892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369080, 36.047264, 35.017929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249027, 35.754902, 34.772755>,  <44.176994, 35.579483, 34.625648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249027, 35.754902, 34.772755>,  <44.369080, 36.047264, 35.017929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249027, 35.754902, 34.772755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465133, 0.673132, -0.574930,
		0.832810, 0.112543, -0.541998,
		-0.300132, -0.730909, -0.612938,
		44.158989, 35.535629, 34.588875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364517, 36.344898, 34.292023>,  <44.369080, 36.047264, 35.017929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364517, 36.344898, 34.292023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130249, 36.020954, 34.305370>,  <43.989689, 35.826588, 34.313377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130249, 36.020954, 34.305370>,  <44.364517, 36.344898, 34.292023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130249, 36.020954, 34.305370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645299, 0.440962, -0.623812,
		0.490488, -0.386880, -0.780862,
		-0.585671, -0.809862, 0.033367,
		43.954548, 35.777996, 34.315380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014771, 36.330803, 33.618618>,  <44.364517, 36.344898, 34.292023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014771, 36.330803, 33.618618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770493, 36.088287, 33.822369>,  <43.623924, 35.942776, 33.944618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770493, 36.088287, 33.822369>,  <44.014771, 36.330803, 33.618618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770493, 36.088287, 33.822369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768795, 0.299809, -0.564862,
		0.189758, -0.736561, -0.649207,
		-0.610694, -0.606293, 0.509373,
		43.587284, 35.906399, 33.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647884, 36.099152, 33.151455>,  <44.014771, 36.330803, 33.618618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647884, 36.099152, 33.151455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419685, 36.004253, 33.465969>,  <43.282764, 35.947315, 33.654678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419685, 36.004253, 33.465969>,  <43.647884, 36.099152, 33.151455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419685, 36.004253, 33.465969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811120, 0.313010, -0.494074,
		-0.128898, -0.919641, -0.371006,
		-0.570499, -0.237245, 0.786286,
		43.248535, 35.933079, 33.701855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206997, 35.673241, 32.799473>,  <43.647884, 36.099152, 33.151455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206997, 35.673241, 32.799473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051567, 35.810486, 33.141533>,  <42.958309, 35.892834, 33.346771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051567, 35.810486, 33.141533>,  <43.206997, 35.673241, 32.799473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051567, 35.810486, 33.141533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864454, 0.185510, -0.467231,
		-0.318951, -0.920794, 0.224519,
		-0.388573, 0.343111, 0.855153,
		42.934994, 35.913418, 33.398079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535488, 35.382114, 32.723637>,  <43.206997, 35.673241, 32.799473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535488, 35.382114, 32.723637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497787, 35.651627, 33.016796>,  <42.475166, 35.813332, 33.192692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497787, 35.651627, 33.016796>,  <42.535488, 35.382114, 32.723637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497787, 35.651627, 33.016796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926235, 0.210539, -0.312670,
		-0.364974, -0.708306, 0.604232,
		-0.094251, 0.673778, 0.732898,
		42.469513, 35.853760, 33.236668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982491, 35.139122, 33.193695>,  <42.535488, 35.382114, 32.723637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982491, 35.139122, 33.193695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045204, 35.534077, 33.202492>,  <42.082832, 35.771049, 33.207771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045204, 35.534077, 33.202492>,  <41.982491, 35.139122, 33.193695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045204, 35.534077, 33.202492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966911, 0.157994, -0.200299,
		-0.201248, 0.010139, 0.979488,
		0.156784, 0.987388, 0.021993,
		42.092239, 35.830292, 33.209091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345577, 35.411167, 33.514744>,  <41.982491, 35.139122, 33.193695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345577, 35.411167, 33.514744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503452, 35.712212, 33.303921>,  <41.598179, 35.892838, 33.177425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503452, 35.712212, 33.303921>,  <41.345577, 35.411167, 33.514744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503452, 35.712212, 33.303921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792849, -0.010923, -0.609320,
		-0.464340, 0.658372, 0.592397,
		0.394689, 0.752613, -0.527062,
		41.621861, 35.937996, 33.145802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836033, 35.923325, 33.466499>,  <41.345577, 35.411167, 33.514744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836033, 35.923325, 33.466499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094227, 36.057053, 33.191814>,  <41.249146, 36.137287, 33.027004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094227, 36.057053, 33.191814>,  <40.836033, 35.923325, 33.466499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094227, 36.057053, 33.191814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757746, 0.167607, -0.630657,
		-0.095741, 0.927437, 0.361516,
		0.645488, 0.334317, -0.686715,
		41.287872, 36.157349, 32.985802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573845, 36.539516, 33.177784>,  <40.836033, 35.923325, 33.466499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573845, 36.539516, 33.177784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821209, 36.441803, 32.879013>,  <40.969627, 36.383175, 32.699753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821209, 36.441803, 32.879013>,  <40.573845, 36.539516, 33.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821209, 36.441803, 32.879013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722579, 0.196902, -0.662653,
		0.308944, 0.949503, -0.054745,
		0.618412, -0.244280, -0.746923,
		41.006733, 36.368519, 32.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374142, 37.014004, 32.663387>,  <40.573845, 36.539516, 33.177784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374142, 37.014004, 32.663387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588684, 36.728252, 32.483616>,  <40.717411, 36.556801, 32.375751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588684, 36.728252, 32.483616>,  <40.374142, 37.014004, 32.663387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588684, 36.728252, 32.483616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561460, 0.095574, -0.821966,
		0.630147, 0.693204, -0.349833,
		0.536355, -0.714377, -0.449432,
		40.749592, 36.513939, 32.348785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698784, 37.278259, 32.054325>,  <40.374142, 37.014004, 32.663387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698784, 37.278259, 32.054325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662941, 36.883888, 31.997864>,  <40.641434, 36.647266, 31.963985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662941, 36.883888, 31.997864>,  <40.698784, 37.278259, 32.054325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662941, 36.883888, 31.997864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614402, 0.166267, -0.771275,
		0.783888, 0.017613, -0.620652,
		-0.089610, -0.985923, -0.141156,
		40.636059, 36.588112, 31.955517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862438, 37.219692, 31.378891>,  <40.698784, 37.278259, 32.054325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862438, 37.219692, 31.378891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689316, 36.861721, 31.422321>,  <40.585442, 36.646938, 31.448380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689316, 36.861721, 31.422321>,  <40.862438, 37.219692, 31.378891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689316, 36.861721, 31.422321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243769, 0.000226, -0.969833,
		0.867903, -0.446218, -0.218252,
		-0.432807, -0.894924, 0.108578,
		40.559475, 36.593243, 31.454895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174458, 36.751999, 30.900974>,  <40.862438, 37.219692, 31.378891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174458, 36.751999, 30.900974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806080, 36.632469, 31.001030>,  <40.585052, 36.560753, 31.061064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806080, 36.632469, 31.001030>,  <41.174458, 36.751999, 30.900974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806080, 36.632469, 31.001030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200690, -0.186546, -0.961730,
		0.334051, -0.935898, 0.111827,
		-0.920942, -0.298824, 0.250141,
		40.529797, 36.542824, 31.076073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021896, 36.303074, 30.353674>,  <41.174458, 36.751999, 30.900974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021896, 36.303074, 30.353674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668530, 36.379925, 30.524632>,  <40.456509, 36.426037, 30.627207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668530, 36.379925, 30.524632>,  <41.021896, 36.303074, 30.353674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668530, 36.379925, 30.524632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454237, -0.127079, -0.881771,
		-0.115075, -0.973113, 0.199524,
		-0.883417, 0.192101, 0.427400,
		40.403503, 36.437561, 30.652849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555092, 35.760796, 30.125923>,  <41.021896, 36.303074, 30.353674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555092, 35.760796, 30.125923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322964, 36.064404, 30.243984>,  <40.183689, 36.246571, 30.314821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322964, 36.064404, 30.243984>,  <40.555092, 35.760796, 30.125923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322964, 36.064404, 30.243984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432859, 0.019515, -0.901250,
		-0.689828, -0.650773, 0.317225,
		-0.580319, 0.759022, 0.295155,
		40.148869, 36.292110, 30.332531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892761, 35.584911, 29.792906>,  <40.555092, 35.760796, 30.125923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892761, 35.584911, 29.792906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883659, 35.974129, 29.884701>,  <39.878197, 36.207661, 29.939777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883659, 35.974129, 29.884701>,  <39.892761, 35.584911, 29.792906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883659, 35.974129, 29.884701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511322, 0.185922, -0.839037,
		-0.859088, -0.136437, 0.493308,
		-0.022759, 0.973046, 0.229486,
		39.876831, 36.266041, 29.953547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171791, 35.798050, 29.636284>,  <39.892761, 35.584911, 29.792906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171791, 35.798050, 29.636284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386604, 36.135033, 29.653584>,  <39.515491, 36.337223, 29.663963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386604, 36.135033, 29.653584>,  <39.171791, 35.798050, 29.636284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386604, 36.135033, 29.653584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425267, 0.314656, -0.848611,
		-0.728522, 0.437339, 0.527247,
		0.537032, 0.842453, 0.043248,
		39.547714, 36.387768, 29.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691174, 36.345245, 29.427179>,  <39.171791, 35.798050, 29.636284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691174, 36.345245, 29.427179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065872, 36.462379, 29.350500>,  <39.290691, 36.532661, 29.304493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065872, 36.462379, 29.350500>,  <38.691174, 36.345245, 29.427179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065872, 36.462379, 29.350500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276328, 0.282627, -0.918567,
		-0.214812, 0.913438, 0.345669,
		0.936749, 0.292837, -0.191697,
		39.346897, 36.550232, 29.292992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602608, 36.982719, 29.031904>,  <38.691174, 36.345245, 29.427179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602608, 36.982719, 29.031904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946110, 36.796406, 28.946501>,  <39.152210, 36.684620, 28.895258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946110, 36.796406, 28.946501>,  <38.602608, 36.982719, 29.031904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946110, 36.796406, 28.946501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085705, 0.280251, -0.956093,
		0.505167, 0.839349, 0.200747,
		0.858755, -0.465782, -0.213511,
		39.203735, 36.656670, 28.882448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809410, 37.746513, 29.037161>,  <38.602608, 36.982719, 29.031904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809410, 37.746513, 29.037161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181686, 37.658073, 28.920591>,  <39.405052, 37.605011, 28.850651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181686, 37.658073, 28.920591>,  <38.809410, 37.746513, 29.037161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181686, 37.658073, 28.920591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362703, -0.454282, -0.813680,
		0.047513, 0.862986, -0.502989,
		0.930693, -0.221096, -0.291423,
		39.460896, 37.591743, 28.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654961, 37.724972, 28.339077>,  <38.809410, 37.746513, 29.037161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654961, 37.724972, 28.339077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961243, 37.488335, 28.440041>,  <39.145012, 37.346352, 28.500618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961243, 37.488335, 28.440041>,  <38.654961, 37.724972, 28.339077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961243, 37.488335, 28.440041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261196, -0.644627, -0.718494,
		0.587764, 0.484229, -0.648117,
		0.765709, -0.591590, 0.252410,
		39.190956, 37.310856, 28.515764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161987, 37.660809, 27.797285>,  <38.654961, 37.724972, 28.339077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161987, 37.660809, 27.797285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118763, 37.330360, 28.018497>,  <39.092827, 37.132092, 28.151224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118763, 37.330360, 28.018497>,  <39.161987, 37.660809, 27.797285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118763, 37.330360, 28.018497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440522, -0.458900, -0.771590,
		0.891214, -0.327002, -0.314335,
		-0.108063, -0.826124, 0.553030,
		39.086346, 37.082523, 28.184406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434570, 37.166378, 27.387197>,  <39.161987, 37.660809, 27.797285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434570, 37.166378, 27.387197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173111, 37.004841, 27.643217>,  <39.016235, 36.907921, 27.796829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173111, 37.004841, 27.643217>,  <39.434570, 37.166378, 27.387197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173111, 37.004841, 27.643217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539244, -0.344871, -0.768296,
		0.531003, -0.847335, 0.007654,
		-0.653644, -0.403841, 0.640048,
		38.977016, 36.883690, 27.835232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365894, 36.383987, 27.377138>,  <39.434570, 37.166378, 27.387197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365894, 36.383987, 27.377138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036419, 36.594276, 27.462137>,  <38.838734, 36.720451, 27.513136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036419, 36.594276, 27.462137>,  <39.365894, 36.383987, 27.377138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036419, 36.594276, 27.462137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455798, -0.390911, -0.799648,
		-0.337323, -0.755517, 0.561611,
		-0.823687, 0.525721, 0.212500,
		38.789314, 36.751995, 27.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115685, 36.280964, 27.291945>,  <39.365894, 36.383987, 27.377138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115685, 36.280964, 27.291945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287956, 36.636612, 27.229992>,  <40.391319, 36.849998, 27.192822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287956, 36.636612, 27.229992>,  <40.115685, 36.280964, 27.291945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287956, 36.636612, 27.229992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619942, -0.166735, 0.766728,
		0.655886, -0.426231, -0.623009,
		0.430681, 0.889115, -0.154880,
		40.417160, 36.903347, 27.183529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845455, 36.064907, 27.427011>,  <40.115685, 36.280964, 27.291945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845455, 36.064907, 27.427011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819729, 36.463951, 27.416922>,  <40.804295, 36.703377, 27.410868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819729, 36.463951, 27.416922>,  <40.845455, 36.064907, 27.427011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819729, 36.463951, 27.416922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630120, 0.060196, 0.774161,
		0.773830, 0.033892, -0.632486,
		-0.064311, 0.997611, -0.025226,
		40.800434, 36.763233, 27.409353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587082, 36.322453, 27.544151>,  <40.845455, 36.064907, 27.427011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587082, 36.322453, 27.544151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296833, 36.553963, 27.693010>,  <41.122684, 36.692867, 27.782326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296833, 36.553963, 27.693010>,  <41.587082, 36.322453, 27.544151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296833, 36.553963, 27.693010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492878, 0.059786, 0.868042,
		0.480151, 0.813293, -0.328647,
		-0.725621, 0.578775, 0.372148,
		41.079147, 36.727596, 27.804655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794106, 36.974564, 27.766680>,  <41.587082, 36.322453, 27.544151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794106, 36.974564, 27.766680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488628, 36.825642, 27.977642>,  <41.305340, 36.736286, 28.104219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488628, 36.825642, 27.977642>,  <41.794106, 36.974564, 27.766680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488628, 36.825642, 27.977642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635441, -0.289317, 0.715898,
		-0.113948, 0.881862, 0.457531,
		-0.763695, -0.372310, 0.527405,
		41.259521, 36.713947, 28.135864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763771, 37.351013, 28.324728>,  <41.794106, 36.974564, 27.766680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763771, 37.351013, 28.324728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657085, 36.967682, 28.365648>,  <41.593075, 36.737682, 28.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657085, 36.967682, 28.365648>,  <41.763771, 37.351013, 28.324728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657085, 36.967682, 28.365648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811781, -0.166170, 0.559821,
		-0.519493, 0.232362, 0.822274,
		-0.266719, -0.958329, 0.102302,
		41.577068, 36.680183, 28.396339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827427, 37.233528, 29.006340>,  <41.763771, 37.351013, 28.324728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827427, 37.233528, 29.006340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825092, 36.857571, 28.869772>,  <41.823692, 36.631996, 28.787830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825092, 36.857571, 28.869772>,  <41.827427, 37.233528, 29.006340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825092, 36.857571, 28.869772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572515, -0.283071, 0.769478,
		-0.819873, -0.190976, 0.539756,
		-0.005837, -0.939893, -0.341420,
		41.823341, 36.575603, 28.767345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629379, 36.797184, 29.626642>,  <41.827427, 37.233528, 29.006340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629379, 36.797184, 29.626642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785278, 36.555210, 29.348894>,  <41.878819, 36.410027, 29.182245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785278, 36.555210, 29.348894>,  <41.629379, 36.797184, 29.626642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785278, 36.555210, 29.348894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676275, -0.323790, 0.661675,
		-0.625099, -0.727473, 0.282903,
		0.389749, -0.604932, -0.694372,
		41.902203, 36.373730, 29.140583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674023, 36.204426, 29.957066>,  <41.629379, 36.797184, 29.626642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674023, 36.204426, 29.957066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903442, 36.172035, 29.631002>,  <42.041096, 36.152599, 29.435366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903442, 36.172035, 29.631002>,  <41.674023, 36.204426, 29.957066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903442, 36.172035, 29.631002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644736, -0.569229, 0.510190,
		-0.505323, -0.818181, -0.274276,
		0.573555, -0.080975, -0.815156,
		42.075508, 36.147743, 29.386456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070873, 35.535107, 29.925100>,  <41.674023, 36.204426, 29.957066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070873, 35.535107, 29.925100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330765, 35.756519, 29.716694>,  <42.486702, 35.889366, 29.591650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330765, 35.756519, 29.716694>,  <42.070873, 35.535107, 29.925100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330765, 35.756519, 29.716694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759380, -0.441507, 0.477926,
		0.034514, -0.706171, -0.707200,
		0.649731, 0.553529, -0.521014,
		42.525684, 35.922577, 29.560390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684223, 35.191612, 29.941580>,  <42.070873, 35.535107, 29.925100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684223, 35.191612, 29.941580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832371, 35.523010, 29.773569>,  <42.921257, 35.721848, 29.672762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832371, 35.523010, 29.773569>,  <42.684223, 35.191612, 29.941580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832371, 35.523010, 29.773569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858658, -0.132883, 0.495025,
		0.354311, -0.544001, -0.760609,
		0.370367, 0.828495, -0.420029,
		42.943481, 35.771561, 29.647560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432785, 35.048054, 29.730188>,  <42.684223, 35.191612, 29.941580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432785, 35.048054, 29.730188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405102, 35.440735, 29.801155>,  <43.388493, 35.676342, 29.843735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405102, 35.440735, 29.801155>,  <43.432785, 35.048054, 29.730188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405102, 35.440735, 29.801155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911713, -0.009947, 0.410708,
		0.404957, 0.190180, -0.894339,
		-0.069212, 0.981699, 0.177417,
		43.384338, 35.735245, 29.854380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112309, 35.228783, 29.685953>,  <43.432785, 35.048054, 29.730188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112309, 35.228783, 29.685953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963619, 35.564682, 29.844263>,  <43.874405, 35.766224, 29.939249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963619, 35.564682, 29.844263>,  <44.112309, 35.228783, 29.685953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963619, 35.564682, 29.844263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883118, 0.188428, 0.429647,
		0.286222, 0.509226, -0.811644,
		-0.371724, 0.839752, 0.395775,
		43.852100, 35.816608, 29.962996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620560, 35.786289, 29.617758>,  <44.112309, 35.228783, 29.685953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620560, 35.786289, 29.617758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380455, 35.888638, 29.920868>,  <44.236393, 35.950047, 30.102734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380455, 35.888638, 29.920868>,  <44.620560, 35.786289, 29.617758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380455, 35.888638, 29.920868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789995, 0.337617, 0.511783,
		-0.124888, 0.905840, -0.404793,
		-0.600259, 0.255869, 0.757774,
		44.200378, 35.965397, 30.148199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994141, 36.307056, 29.960569>,  <44.620560, 35.786289, 29.617758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994141, 36.307056, 29.960569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726566, 36.192936, 30.235123>,  <44.566021, 36.124462, 30.399855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726566, 36.192936, 30.235123>,  <44.994141, 36.307056, 29.960569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726566, 36.192936, 30.235123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655605, 0.208706, 0.725689,
		-0.350295, 0.935437, 0.047436,
		-0.668936, -0.285305, 0.686386,
		44.525887, 36.107346, 30.441038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060020, 36.888058, 30.529531>,  <44.994141, 36.307056, 29.960569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060020, 36.888058, 30.529531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886017, 36.565842, 30.690464>,  <44.781616, 36.372513, 30.787024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886017, 36.565842, 30.690464>,  <45.060020, 36.888058, 30.529531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886017, 36.565842, 30.690464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608948, 0.065956, 0.790463,
		-0.663288, 0.588857, 0.461841,
		-0.435009, -0.805542, 0.402331,
		44.755516, 36.324181, 30.811163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044811, 37.051720, 31.201859>,  <45.060020, 36.888058, 30.529531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044811, 37.051720, 31.201859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026173, 36.652412, 31.187445>,  <45.014988, 36.412830, 31.178797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026173, 36.652412, 31.187445>,  <45.044811, 37.051720, 31.201859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026173, 36.652412, 31.187445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678222, -0.058104, 0.732556,
		-0.733378, 0.009695, 0.679752,
		-0.046599, -0.998263, -0.036037,
		45.012192, 36.352932, 31.176634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937019, 36.834610, 31.903040>,  <45.044811, 37.051720, 31.201859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937019, 36.834610, 31.903040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108158, 36.537235, 31.697420>,  <45.210842, 36.358810, 31.574047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108158, 36.537235, 31.697420>,  <44.937019, 36.834610, 31.903040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108158, 36.537235, 31.697420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683462, -0.106063, 0.722240,
		-0.591462, -0.660342, 0.462733,
		0.427846, -0.743437, -0.514050,
		45.236511, 36.314205, 31.543205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948048, 36.217499, 32.392754>,  <44.937019, 36.834610, 31.903040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948048, 36.217499, 32.392754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218185, 36.136387, 32.109123>,  <45.380268, 36.087719, 31.938944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218185, 36.136387, 32.109123>,  <44.948048, 36.217499, 32.392754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218185, 36.136387, 32.109123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638304, -0.320904, 0.699706,
		-0.369434, -0.925149, -0.087283,
		0.675342, -0.202782, -0.709079,
		45.420788, 36.075554, 31.896400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078972, 35.513378, 32.397633>,  <44.948048, 36.217499, 32.392754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078972, 35.513378, 32.397633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405121, 35.672493, 32.229378>,  <45.600811, 35.767960, 32.128426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405121, 35.672493, 32.229378>,  <45.078972, 35.513378, 32.397633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.405121, 35.672493, 32.229378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578028, -0.600039, 0.553026,
		-0.032414, -0.694062, -0.719185,
		0.815373, 0.397783, -0.420636,
		45.649734, 35.791828, 32.103188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522820, 34.893063, 32.209881>,  <45.078972, 35.513378, 32.397633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522820, 34.893063, 32.209881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760292, 35.214920, 32.213825>,  <45.902775, 35.408035, 32.216190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760292, 35.214920, 32.213825>,  <45.522820, 34.893063, 32.209881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760292, 35.214920, 32.213825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584069, -0.439300, 0.682554,
		0.553540, -0.399463, -0.730769,
		0.593682, 0.804640, 0.009857,
		45.938396, 35.456310, 32.216782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252113, 34.616871, 32.166775>,  <45.522820, 34.893063, 32.209881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252113, 34.616871, 32.166775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293652, 34.993534, 32.294838>,  <46.318577, 35.219532, 32.371677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293652, 34.993534, 32.294838>,  <46.252113, 34.616871, 32.166775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293652, 34.993534, 32.294838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673251, -0.303494, 0.674259,
		0.732085, 0.145525, -0.665488,
		0.103850, 0.941655, 0.320158,
		46.324806, 35.276031, 32.390884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049885, 34.732929, 32.256889>,  <46.252113, 34.616871, 32.166775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049885, 34.732929, 32.256889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858089, 35.014156, 32.466949>,  <46.743011, 35.182892, 32.592987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858089, 35.014156, 32.466949>,  <47.049885, 34.732929, 32.256889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858089, 35.014156, 32.466949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645070, -0.123334, 0.754104,
		0.594955, 0.700346, -0.394390,
		-0.479492, 0.703067, 0.525151,
		46.714241, 35.225075, 32.624496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.540897, 35.272415, 32.488613>,  <47.049885, 34.732929, 32.256889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.540897, 35.272415, 32.488613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.238377, 35.294571, 32.749363>,  <47.056866, 35.307865, 32.905815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.238377, 35.294571, 32.749363>,  <47.540897, 35.272415, 32.488613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.238377, 35.294571, 32.749363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624775, -0.234454, 0.744774,
		0.194090, 0.970548, 0.142711,
		-0.756297, 0.055391, 0.651879,
		47.011486, 35.311188, 32.944927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.834320, 35.628254, 33.053143>,  <47.540897, 35.272415, 32.488613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.834320, 35.628254, 33.053143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504463, 35.453743, 33.197159>,  <47.306549, 35.349037, 33.283569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504463, 35.453743, 33.197159>,  <47.834320, 35.628254, 33.053143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504463, 35.453743, 33.197159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481501, -0.207374, 0.851559,
		-0.296855, 0.875589, 0.381079,
		-0.824642, -0.436279, 0.360037,
		47.257072, 35.322861, 33.305168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.580341, 35.938248, 33.630001>,  <47.834320, 35.628254, 33.053143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.580341, 35.938248, 33.630001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475143, 35.553047, 33.653557>,  <47.412025, 35.321926, 33.667690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475143, 35.553047, 33.653557>,  <47.580341, 35.938248, 33.630001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475143, 35.553047, 33.653557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471525, -0.075046, 0.878654,
		-0.841723, 0.258849, 0.473814,
		-0.262997, -0.962998, 0.058886,
		47.396244, 35.264149, 33.671223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178047, 35.796936, 34.325993>,  <47.580341, 35.938248, 33.630001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178047, 35.796936, 34.325993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336319, 35.458431, 34.183292>,  <47.431282, 35.255329, 34.097672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336319, 35.458431, 34.183292>,  <47.178047, 35.796936, 34.325993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336319, 35.458431, 34.183292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157561, -0.320136, 0.934177,
		-0.904770, -0.425848, 0.006665,
		0.395684, -0.846266, -0.356747,
		47.455025, 35.204552, 34.076267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777668, 35.315441, 34.670742>,  <47.178047, 35.796936, 34.325993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777668, 35.315441, 34.670742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121990, 35.143307, 34.562065>,  <47.328583, 35.040028, 34.496857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121990, 35.143307, 34.562065>,  <46.777668, 35.315441, 34.670742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121990, 35.143307, 34.562065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025448, -0.569590, 0.821535,
		-0.508287, -0.700273, -0.501261,
		0.860811, -0.430332, -0.271695,
		47.380234, 35.014206, 34.480556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.954483, 34.751747, 34.868462>,  <46.777668, 35.315441, 34.670742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.954483, 34.751747, 34.868462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236343, 34.534023, 34.686386>,  <47.405460, 34.403389, 34.577141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236343, 34.534023, 34.686386>,  <46.954483, 34.751747, 34.868462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236343, 34.534023, 34.686386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709550, 0.542233, 0.450025,
		0.001863, -0.640087, 0.768300,
		0.704653, -0.544309, -0.455184,
		47.447739, 34.370731, 34.549831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442745, 35.290543, 35.205505>,  <46.954483, 34.751747, 34.868462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442745, 35.290543, 35.205505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712742, 35.069527, 35.009922>,  <47.874741, 34.936916, 34.892570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712742, 35.069527, 35.009922>,  <47.442745, 35.290543, 35.205505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712742, 35.069527, 35.009922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390180, 0.829776, -0.399038,
		0.626213, 0.078565, 0.775684,
		0.674994, -0.552539, -0.488962,
		47.915241, 34.903767, 34.863232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.285885, 41.230129, 41.829945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073498, 41.173100, 42.164070>,  <35.946064, 41.138882, 42.364544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073498, 41.173100, 42.164070>,  <36.285885, 41.230129, 41.829945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073498, 41.173100, 42.164070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562837, -0.677561, -0.473419,
		0.633474, -0.721514, 0.279515,
		-0.530966, -0.142577, 0.835312,
		35.914207, 41.130325, 42.414665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451050, 40.563213, 41.990635>,  <36.285885, 41.230129, 41.829945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451050, 40.563213, 41.990635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099354, 40.689877, 42.132996>,  <35.888336, 40.765877, 42.218410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099354, 40.689877, 42.132996>,  <36.451050, 40.563213, 41.990635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099354, 40.689877, 42.132996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450959, -0.794051, -0.407576,
		0.153539, -0.518853, 0.840962,
		-0.879239, 0.316661, 0.355899,
		35.835583, 40.784874, 42.239765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297619, 40.046040, 42.368877>,  <36.451050, 40.563213, 41.990635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297619, 40.046040, 42.368877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956257, 40.236137, 42.283234>,  <35.751438, 40.350197, 42.231846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956257, 40.236137, 42.283234>,  <36.297619, 40.046040, 42.368877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956257, 40.236137, 42.283234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424974, -0.872223, -0.242123,
		-0.301818, -0.115638, 0.946326,
		-0.853406, 0.475241, -0.214109,
		35.700233, 40.378712, 42.219002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834106, 39.481575, 42.604889>,  <36.297619, 40.046040, 42.368877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834106, 39.481575, 42.604889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651279, 39.746605, 42.367542>,  <35.541584, 39.905624, 42.225136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651279, 39.746605, 42.367542>,  <35.834106, 39.481575, 42.604889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651279, 39.746605, 42.367542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504835, -0.742515, -0.440243,
		-0.732272, 0.098324, 0.673877,
		-0.457078, 0.662574, -0.593360,
		35.514156, 39.945377, 42.189533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127560, 39.280548, 42.634308>,  <35.834106, 39.481575, 42.604889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127560, 39.280548, 42.634308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134991, 39.508228, 42.305511>,  <35.139450, 39.644836, 42.108234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134991, 39.508228, 42.305511>,  <35.127560, 39.280548, 42.634308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134991, 39.508228, 42.305511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425380, -0.739512, -0.521703,
		-0.904824, 0.359347, 0.228391,
		0.018574, 0.569202, -0.821988,
		35.140564, 39.678989, 42.058914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529472, 39.186504, 42.411922>,  <35.127560, 39.280548, 42.634308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529472, 39.186504, 42.411922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.752274, 39.315136, 42.105633>,  <34.885952, 39.392315, 41.921860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.752274, 39.315136, 42.105633>,  <34.529472, 39.186504, 42.411922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752274, 39.315136, 42.105633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428686, -0.678348, -0.596718,
		-0.711321, 0.660629, -0.239983,
		0.557001, 0.321581, -0.765726,
		34.919373, 39.411610, 41.875916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098457, 39.305767, 41.853859>,  <34.529472, 39.186504, 42.411922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098457, 39.305767, 41.853859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.457371, 39.230255, 41.694241>,  <34.672718, 39.184948, 41.598469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.457371, 39.230255, 41.694241>,  <34.098457, 39.305767, 41.853859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457371, 39.230255, 41.694241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399256, -0.732714, -0.551112,
		-0.188347, 0.653827, -0.732826,
		0.897285, -0.188785, -0.399049,
		34.726555, 39.173618, 41.574524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904057, 38.936497, 41.169003>,  <34.098457, 39.305767, 41.853859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904057, 38.936497, 41.169003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302765, 38.905060, 41.175518>,  <34.541992, 38.886196, 41.179428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302765, 38.905060, 41.175518>,  <33.904057, 38.936497, 41.169003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302765, 38.905060, 41.175518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053468, -0.801563, -0.595516,
		0.059860, 0.592723, -0.803179,
		0.996774, -0.078592, 0.016290,
		34.601795, 38.881481, 41.180405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161648, 38.929535, 40.415337>,  <33.904057, 38.936497, 41.169003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161648, 38.929535, 40.415337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415436, 38.750027, 40.667068>,  <34.567707, 38.642323, 40.818108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415436, 38.750027, 40.667068>,  <34.161648, 38.929535, 40.415337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415436, 38.750027, 40.667068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072673, -0.775953, -0.626591,
		0.769526, 0.443286, -0.459703,
		0.634467, -0.448770, 0.629331,
		34.605778, 38.615395, 40.855869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646729, 38.729332, 39.994385>,  <34.161648, 38.929535, 40.415337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646729, 38.729332, 39.994385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708748, 38.504131, 40.319099>,  <34.745960, 38.369011, 40.513927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708748, 38.504131, 40.319099>,  <34.646729, 38.729332, 39.994385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708748, 38.504131, 40.319099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286447, -0.760798, -0.582353,
		0.945467, 0.322827, 0.043306,
		0.155052, -0.563000, 0.811782,
		34.755264, 38.335232, 40.562634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319294, 38.510830, 40.004082>,  <34.646729, 38.729332, 39.994385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319294, 38.510830, 40.004082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131649, 38.238708, 40.229336>,  <35.019062, 38.075436, 40.364491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131649, 38.238708, 40.229336>,  <35.319294, 38.510830, 40.004082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131649, 38.238708, 40.229336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203453, -0.703753, -0.680690,
		0.859385, -0.204746, 0.468547,
		-0.469110, -0.680302, 0.563138,
		34.990917, 38.034618, 40.398277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726711, 38.014397, 40.064953>,  <35.319294, 38.510830, 40.004082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726711, 38.014397, 40.064953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368118, 37.855499, 40.143459>,  <35.152962, 37.760162, 40.190563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368118, 37.855499, 40.143459>,  <35.726711, 38.014397, 40.064953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368118, 37.855499, 40.143459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245594, -0.814181, -0.526111,
		0.368790, -0.423446, 0.827458,
		-0.896481, -0.397243, 0.196266,
		35.099174, 37.736328, 40.202339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833481, 37.307442, 40.231171>,  <35.726711, 38.014397, 40.064953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833481, 37.307442, 40.231171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446911, 37.337093, 40.132767>,  <35.214970, 37.354885, 40.073723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446911, 37.337093, 40.132767>,  <35.833481, 37.307442, 40.231171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446911, 37.337093, 40.132767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080281, -0.822426, -0.563179,
		-0.244072, -0.564022, 0.788865,
		-0.966429, 0.074125, -0.246011,
		35.156982, 37.359329, 40.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555820, 36.691025, 40.359135>,  <35.833481, 37.307442, 40.231171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555820, 36.691025, 40.359135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282211, 36.845680, 40.111710>,  <35.118046, 36.938473, 39.963253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282211, 36.845680, 40.111710>,  <35.555820, 36.691025, 40.359135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282211, 36.845680, 40.111710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064047, -0.876534, -0.477060,
		-0.726645, -0.286702, 0.624331,
		-0.684021, 0.386640, -0.618567,
		35.077003, 36.961674, 39.926140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048347, 36.180695, 40.193985>,  <35.555820, 36.691025, 40.359135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048347, 36.180695, 40.193985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019085, 36.428478, 39.881340>,  <35.001526, 36.577148, 39.693752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019085, 36.428478, 39.881340>,  <35.048347, 36.180695, 40.193985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019085, 36.428478, 39.881340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002950, -0.783846, -0.620949,
		-0.997316, -0.043120, 0.059170,
		-0.073155, 0.619457, -0.781614,
		34.997139, 36.614315, 39.646854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408676, 35.914909, 39.769344>,  <35.048347, 36.180695, 40.193985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408676, 35.914909, 39.769344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629993, 36.155254, 39.538578>,  <34.762783, 36.299461, 39.400120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629993, 36.155254, 39.538578>,  <34.408676, 35.914909, 39.769344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629993, 36.155254, 39.538578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065772, -0.721939, -0.688824,
		-0.830383, 0.343180, -0.438967,
		0.553298, 0.600859, -0.576914,
		34.795982, 36.335510, 39.365505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153866, 35.758884, 39.107033>,  <34.408676, 35.914909, 39.769344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153866, 35.758884, 39.107033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.498440, 35.936668, 39.008736>,  <34.705185, 36.043339, 38.949757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.498440, 35.936668, 39.008736>,  <34.153866, 35.758884, 39.107033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498440, 35.936668, 39.008736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159013, -0.695580, -0.700631,
		-0.482333, 0.564471, -0.669871,
		0.861434, 0.444456, -0.245743,
		34.756870, 36.070004, 38.935013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204800, 35.668327, 38.386433>,  <34.153866, 35.758884, 39.107033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204800, 35.668327, 38.386433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578709, 35.753616, 38.500095>,  <34.803055, 35.804790, 38.568291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578709, 35.753616, 38.500095>,  <34.204800, 35.668327, 38.386433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578709, 35.753616, 38.500095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353113, -0.645334, -0.677388,
		0.038941, 0.733540, -0.678530,
		0.934770, 0.213219, 0.284153,
		34.859138, 35.817581, 38.585342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570137, 35.733398, 37.834412>,  <34.204800, 35.668327, 38.386433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570137, 35.733398, 37.834412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847832, 35.655769, 38.111649>,  <35.014446, 35.609192, 38.277992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847832, 35.655769, 38.111649>,  <34.570137, 35.733398, 37.834412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847832, 35.655769, 38.111649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450875, -0.633342, -0.628958,
		0.561027, 0.749142, -0.352186,
		0.694233, -0.194071, 0.693092,
		35.056103, 35.597549, 38.319576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100071, 35.837147, 37.458435>,  <34.570137, 35.733398, 37.834412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100071, 35.837147, 37.458435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201900, 35.597225, 37.761864>,  <35.262997, 35.453270, 37.943920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201900, 35.597225, 37.761864>,  <35.100071, 35.837147, 37.458435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201900, 35.597225, 37.761864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293075, -0.699670, -0.651590,
		0.921574, 0.388195, -0.002330,
		0.254574, -0.599806, 0.758568,
		35.278275, 35.417282, 37.989433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577995, 35.458496, 37.188869>,  <35.100071, 35.837147, 37.458435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577995, 35.458496, 37.188869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507763, 35.240379, 37.516731>,  <35.465622, 35.109509, 37.713448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507763, 35.240379, 37.516731>,  <35.577995, 35.458496, 37.188869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507763, 35.240379, 37.516731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360640, -0.810336, -0.461838,
		0.916029, 0.214507, 0.338937,
		-0.175585, -0.545291, 0.819651,
		35.455086, 35.076794, 37.762627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149174, 35.073486, 37.421009>,  <35.577995, 35.458496, 37.188869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149174, 35.073486, 37.421009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818722, 34.885674, 37.545616>,  <35.620449, 34.772987, 37.620380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818722, 34.885674, 37.545616>,  <36.149174, 35.073486, 37.421009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818722, 34.885674, 37.545616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296373, -0.832280, -0.468480,
		0.479236, -0.294701, 0.826731,
		-0.826133, -0.469533, 0.311517,
		35.570881, 34.744812, 37.639072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307377, 34.584129, 36.945755>,  <36.149174, 35.073486, 37.421009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307377, 34.584129, 36.945755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535213, 34.772644, 36.676403>,  <36.671917, 34.885754, 36.514790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535213, 34.772644, 36.676403>,  <36.307377, 34.584129, 36.945755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535213, 34.772644, 36.676403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170417, 0.733755, 0.657694,
		0.804065, -0.489375, 0.337627,
		0.569594, 0.471291, -0.673385,
		36.706093, 34.914032, 36.474388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906673, 34.718998, 37.299107>,  <36.307377, 34.584129, 36.945755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906673, 34.718998, 37.299107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871941, 34.971901, 36.991158>,  <36.851101, 35.123642, 36.806389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871941, 34.971901, 36.991158>,  <36.906673, 34.718998, 37.299107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871941, 34.971901, 36.991158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346985, 0.743600, 0.571543,
		0.933842, -0.217504, -0.283956,
		-0.086836, 0.632259, -0.769876,
		36.845890, 35.161579, 36.760197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630615, 35.130890, 37.348949>,  <36.906673, 34.718998, 37.299107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630615, 35.130890, 37.348949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348282, 35.349068, 37.168156>,  <37.178883, 35.479973, 37.059681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348282, 35.349068, 37.168156>,  <37.630615, 35.130890, 37.348949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348282, 35.349068, 37.168156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225341, 0.777797, 0.586731,
		0.671582, 0.312283, -0.671905,
		-0.705832, 0.545446, -0.451985,
		37.136532, 35.512703, 37.032558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902355, 35.821102, 37.346180>,  <37.630615, 35.130890, 37.348949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902355, 35.821102, 37.346180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526234, 35.909237, 37.242420>,  <37.300560, 35.962120, 37.180164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526234, 35.909237, 37.242420>,  <37.902355, 35.821102, 37.346180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526234, 35.909237, 37.242420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079612, 0.883407, 0.461795,
		0.330906, 0.413574, -0.848208,
		-0.940299, 0.220339, -0.259399,
		37.244144, 35.975338, 37.164600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949974, 36.390800, 36.970558>,  <37.902355, 35.821102, 37.346180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949974, 36.390800, 36.970558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586468, 36.373890, 37.136620>,  <37.368362, 36.363743, 37.236256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586468, 36.373890, 37.136620>,  <37.949974, 36.390800, 36.970558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586468, 36.373890, 37.136620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087954, 0.953101, 0.289590,
		-0.407922, 0.299685, -0.862431,
		-0.908770, -0.042276, 0.415150,
		37.313835, 36.361206, 37.261166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836056, 37.090199, 36.956383>,  <37.949974, 36.390800, 36.970558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836056, 37.090199, 36.956383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548676, 36.950905, 37.197235>,  <37.376247, 36.867329, 37.341747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548676, 36.950905, 37.197235>,  <37.836056, 37.090199, 36.956383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548676, 36.950905, 37.197235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019417, 0.855277, 0.517807,
		-0.695308, 0.383710, -0.607711,
		-0.718449, -0.348236, 0.602132,
		37.333141, 36.846436, 37.377876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180141, 37.556049, 36.975544>,  <37.836056, 37.090199, 36.956383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180141, 37.556049, 36.975544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229649, 37.351826, 37.315899>,  <37.259354, 37.229290, 37.520111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229649, 37.351826, 37.315899>,  <37.180141, 37.556049, 36.975544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229649, 37.351826, 37.315899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162578, 0.835460, 0.524953,
		-0.978903, -0.203308, 0.020396,
		0.123767, -0.510562, 0.850887,
		37.266777, 37.198658, 37.571163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910282, 38.004738, 37.592556>,  <37.180141, 37.556049, 36.975544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910282, 38.004738, 37.592556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104874, 37.746624, 37.828167>,  <37.221630, 37.591755, 37.969532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104874, 37.746624, 37.828167>,  <36.910282, 38.004738, 37.592556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104874, 37.746624, 37.828167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031000, 0.661004, 0.749742,
		-0.873142, -0.382993, 0.301561,
		0.486479, -0.645283, 0.589023,
		37.250816, 37.553040, 38.004875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562946, 38.112514, 38.247440>,  <36.910282, 38.004738, 37.592556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562946, 38.112514, 38.247440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894283, 37.896683, 38.307697>,  <37.093086, 37.767185, 38.343853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894283, 37.896683, 38.307697>,  <36.562946, 38.112514, 38.247440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894283, 37.896683, 38.307697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125653, 0.441006, 0.888665,
		-0.545942, -0.717194, 0.433106,
		0.828347, -0.539581, 0.150646,
		37.142788, 37.734810, 38.352890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503048, 37.769737, 38.911999>,  <36.562946, 38.112514, 38.247440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503048, 37.769737, 38.911999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891876, 37.815662, 38.830124>,  <37.125172, 37.843216, 38.780998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891876, 37.815662, 38.830124>,  <36.503048, 37.769737, 38.911999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891876, 37.815662, 38.830124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131681, 0.455107, 0.880646,
		0.194259, -0.883004, 0.427278,
		0.972072, 0.114809, -0.204684,
		37.183498, 37.850105, 38.768719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962227, 37.616333, 39.580971>,  <36.503048, 37.769737, 38.911999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962227, 37.616333, 39.580971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187538, 37.838314, 39.336105>,  <37.322723, 37.971504, 39.189186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187538, 37.838314, 39.336105>,  <36.962227, 37.616333, 39.580971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187538, 37.838314, 39.336105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206059, 0.623121, 0.754493,
		0.800164, -0.551129, 0.236634,
		0.563275, 0.554957, -0.612163,
		37.356522, 38.004803, 39.152458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371094, 38.043423, 40.081364>,  <36.962227, 37.616333, 39.580971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371094, 38.043423, 40.081364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468742, 38.229004, 39.740742>,  <37.527332, 38.340351, 39.536369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468742, 38.229004, 39.740742>,  <37.371094, 38.043423, 40.081364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468742, 38.229004, 39.740742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371973, 0.766158, 0.524059,
		0.895567, -0.444691, 0.014459,
		0.244122, 0.463952, -0.851559,
		37.541981, 38.368191, 39.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117035, 38.290005, 40.125275>,  <37.371094, 38.043423, 40.081364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117035, 38.290005, 40.125275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953732, 38.533703, 39.853352>,  <37.855747, 38.679924, 39.690197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953732, 38.533703, 39.853352>,  <38.117035, 38.290005, 40.125275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953732, 38.533703, 39.853352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399844, 0.788806, 0.466807,
		0.820639, -0.081239, -0.565643,
		-0.408260, 0.609249, -0.679808,
		37.831253, 38.716476, 39.649410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570152, 38.812683, 40.085545>,  <38.117035, 38.290005, 40.125275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570152, 38.812683, 40.085545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218899, 38.956654, 39.959473>,  <38.008148, 39.043034, 39.883831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218899, 38.956654, 39.959473>,  <38.570152, 38.812683, 40.085545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218899, 38.956654, 39.959473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190022, 0.866998, 0.460658,
		0.439058, 0.344629, -0.829734,
		-0.878134, 0.359923, -0.315176,
		37.955460, 39.064629, 39.864922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736469, 39.382156, 39.794106>,  <38.570152, 38.812683, 40.085545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736469, 39.382156, 39.794106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343002, 39.420681, 39.854939>,  <38.106922, 39.443794, 39.891438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343002, 39.420681, 39.854939>,  <38.736469, 39.382156, 39.794106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343002, 39.420681, 39.854939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136233, 0.950523, 0.279191,
		-0.117671, 0.295349, -0.948115,
		-0.983664, 0.096312, 0.152085,
		38.047905, 39.449574, 39.900562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623569, 40.021114, 39.548115>,  <38.736469, 39.382156, 39.794106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623569, 40.021114, 39.548115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296268, 39.945072, 39.765121>,  <38.099888, 39.899448, 39.895325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296268, 39.945072, 39.765121>,  <38.623569, 40.021114, 39.548115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296268, 39.945072, 39.765121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035796, 0.925054, 0.378145,
		-0.573741, 0.328838, -0.750125,
		-0.818254, -0.190105, 0.542512,
		38.050793, 39.888042, 39.927876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268028, 40.646233, 39.538021>,  <38.623569, 40.021114, 39.548115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268028, 40.646233, 39.538021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.140587, 40.442570, 39.857834>,  <38.064121, 40.320370, 40.049721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.140587, 40.442570, 39.857834>,  <38.268028, 40.646233, 39.538021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140587, 40.442570, 39.857834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007852, 0.844875, 0.534907,
		-0.947857, 0.164143, -0.273174,
		-0.318599, -0.509160, 0.799532,
		38.045006, 40.289822, 40.097694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741421, 41.102093, 39.845047>,  <38.268028, 40.646233, 39.538021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741421, 41.102093, 39.845047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841148, 40.848366, 40.137753>,  <37.900986, 40.696129, 40.313377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841148, 40.848366, 40.137753>,  <37.741421, 41.102093, 39.845047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841148, 40.848366, 40.137753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144135, 0.771515, 0.619669,
		-0.957636, -0.049022, 0.283780,
		0.249318, -0.634320, 0.731764,
		37.915943, 40.658070, 40.357281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.150223, 41.109726, 40.498577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494740, 40.975788, 40.651447>,  <37.701450, 40.895428, 40.743168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494740, 40.975788, 40.651447>,  <37.150223, 41.109726, 40.498577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494740, 40.975788, 40.651447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093159, 0.843460, 0.529052,
		-0.499495, -0.420066, 0.757660,
		0.861293, -0.334842, 0.382171,
		37.753128, 40.875336, 40.766098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168247, 41.175877, 41.165668>,  <37.150223, 41.109726, 40.498577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168247, 41.175877, 41.165668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564659, 41.135147, 41.131046>,  <37.802505, 41.110710, 41.110275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564659, 41.135147, 41.131046>,  <37.168247, 41.175877, 41.165668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564659, 41.135147, 41.131046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131541, 0.628953, 0.766234,
		-0.023584, -0.770746, 0.636706,
		0.991030, -0.101824, -0.086551,
		37.861969, 41.104599, 41.105080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362110, 41.063053, 41.793198>,  <37.168247, 41.175877, 41.165668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362110, 41.063053, 41.793198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678764, 41.205635, 41.594700>,  <37.868755, 41.291183, 41.475601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678764, 41.205635, 41.594700>,  <37.362110, 41.063053, 41.793198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678764, 41.205635, 41.594700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183999, 0.635409, 0.749933,
		0.582629, -0.684983, 0.437427,
		0.791636, 0.356447, -0.496244,
		37.916256, 41.312569, 41.445827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900318, 40.973118, 42.264366>,  <37.362110, 41.063053, 41.793198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900318, 40.973118, 42.264366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025295, 41.253441, 42.007854>,  <38.100281, 41.421635, 41.853947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025295, 41.253441, 42.007854>,  <37.900318, 40.973118, 42.264366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025295, 41.253441, 42.007854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261923, 0.585356, 0.767303,
		0.913114, -0.407704, -0.000669,
		0.312442, 0.700810, -0.641284,
		38.119026, 41.463684, 41.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398556, 41.290745, 42.601036>,  <37.900318, 40.973118, 42.264366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398556, 41.290745, 42.601036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331600, 41.546520, 42.300877>,  <38.291428, 41.699986, 42.120781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331600, 41.546520, 42.300877>,  <38.398556, 41.290745, 42.601036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331600, 41.546520, 42.300877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334205, 0.752876, 0.566996,
		0.927517, -0.155879, -0.339726,
		-0.167389, 0.639437, -0.750401,
		38.281384, 41.738350, 42.075756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830719, 41.802166, 42.773964>,  <38.398556, 41.290745, 42.601036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830719, 41.802166, 42.773964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607212, 41.968369, 42.486874>,  <38.473106, 42.068089, 42.314621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607212, 41.968369, 42.486874>,  <38.830719, 41.802166, 42.773964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607212, 41.968369, 42.486874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090062, 0.890719, 0.445542,
		0.824418, 0.184316, -0.535129,
		-0.558770, 0.415508, -0.717725,
		38.439583, 42.093021, 42.271557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165939, 42.417595, 42.493332>,  <38.830719, 41.802166, 42.773964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165939, 42.417595, 42.493332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775986, 42.454292, 42.412163>,  <38.542011, 42.476311, 42.363461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775986, 42.454292, 42.412163>,  <39.165939, 42.417595, 42.493332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775986, 42.454292, 42.412163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008957, 0.926625, 0.375879,
		0.222518, 0.364622, -0.904177,
		-0.974887, 0.091739, -0.202925,
		38.483521, 42.481815, 42.351284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058521, 43.011887, 41.969128>,  <39.165939, 42.417595, 42.493332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058521, 43.011887, 41.969128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724144, 42.969318, 42.184486>,  <38.523518, 42.943779, 42.313702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724144, 42.969318, 42.184486>,  <39.058521, 43.011887, 41.969128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724144, 42.969318, 42.184486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194640, 0.859760, 0.472152,
		-0.513139, 0.499487, -0.697998,
		-0.835945, -0.106421, 0.538396,
		38.473362, 42.937393, 42.346004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018642, 43.620464, 42.165695>,  <39.058521, 43.011887, 41.969128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018642, 43.620464, 42.165695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726665, 43.447617, 42.377529>,  <38.551479, 43.343906, 42.504631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726665, 43.447617, 42.377529>,  <39.018642, 43.620464, 42.165695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726665, 43.447617, 42.377529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015516, 0.764123, 0.644884,
		-0.683336, 0.478943, -0.551058,
		-0.729939, -0.432122, 0.529584,
		38.507683, 43.317982, 42.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422146, 44.015762, 42.251915>,  <39.018642, 43.620464, 42.165695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422146, 44.015762, 42.251915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413094, 43.772686, 42.569454>,  <38.407661, 43.626839, 42.759979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413094, 43.772686, 42.569454>,  <38.422146, 44.015762, 42.251915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413094, 43.772686, 42.569454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005743, 0.793962, 0.607940,
		-0.999728, 0.018315, -0.014475,
		-0.022627, -0.607691, 0.793851,
		38.406307, 43.590378, 42.807610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825802, 44.203934, 42.734043>,  <38.422146, 44.015762, 42.251915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825802, 44.203934, 42.734043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085682, 44.002602, 42.961918>,  <38.241611, 43.881802, 43.098644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085682, 44.002602, 42.961918>,  <37.825802, 44.203934, 42.734043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085682, 44.002602, 42.961918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072753, 0.704795, 0.705671,
		-0.756701, -0.499921, 0.421287,
		0.649701, -0.503332, 0.569690,
		38.280594, 43.851601, 43.132824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546581, 44.302544, 43.461411>,  <37.825802, 44.203934, 42.734043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546581, 44.302544, 43.461411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921680, 44.165485, 43.484127>,  <38.146740, 44.083252, 43.497757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921680, 44.165485, 43.484127>,  <37.546581, 44.302544, 43.461411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921680, 44.165485, 43.484127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214330, 0.699561, 0.681673,
		-0.273296, -0.627066, 0.729450,
		0.937748, -0.342642, 0.056788,
		38.203007, 44.062695, 43.501163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694374, 44.142200, 44.175751>,  <37.546581, 44.302544, 43.461411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694374, 44.142200, 44.175751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036762, 44.212379, 43.981213>,  <38.242195, 44.254486, 43.864491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036762, 44.212379, 43.981213>,  <37.694374, 44.142200, 44.175751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036762, 44.212379, 43.981213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244613, 0.691299, 0.679904,
		0.455501, -0.700944, 0.548814,
		0.855969, 0.175450, -0.486347,
		38.293552, 44.265015, 43.835308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177761, 44.201759, 44.690655>,  <37.694374, 44.142200, 44.175751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177761, 44.201759, 44.690655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429482, 44.355045, 44.420212>,  <38.580513, 44.447018, 44.257946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429482, 44.355045, 44.420212>,  <38.177761, 44.201759, 44.690655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429482, 44.355045, 44.420212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097844, 0.823983, 0.558103,
		0.770978, -0.417368, 0.481037,
		0.629300, 0.383218, -0.676110,
		38.618271, 44.470013, 44.217377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777344, 44.331871, 44.991932>,  <38.177761, 44.201759, 44.690655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777344, 44.331871, 44.991932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851978, 44.559425, 44.671543>,  <38.896759, 44.695957, 44.479309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851978, 44.559425, 44.671543>,  <38.777344, 44.331871, 44.991932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851978, 44.559425, 44.671543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541695, 0.620584, 0.566959,
		0.819605, -0.539668, -0.192372,
		0.186586, 0.568889, -0.800969,
		38.907955, 44.730091, 44.431252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482582, 44.497654, 45.062649>,  <38.777344, 44.331871, 44.991932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482582, 44.497654, 45.062649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.329891, 44.763779, 44.806011>,  <39.238277, 44.923454, 44.652027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.329891, 44.763779, 44.806011>,  <39.482582, 44.497654, 45.062649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329891, 44.763779, 44.806011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348006, 0.746532, 0.567082,
		0.856257, -0.006807, -0.516505,
		-0.381727, 0.665315, -0.641592,
		39.215374, 44.963371, 44.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010849, 44.953712, 44.834045>,  <39.482582, 44.497654, 45.062649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010849, 44.953712, 44.834045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676842, 45.169621, 44.791359>,  <39.476437, 45.299164, 44.765747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676842, 45.169621, 44.791359>,  <40.010849, 44.953712, 44.834045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676842, 45.169621, 44.791359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384302, 0.710953, 0.588947,
		0.393766, 0.450771, -0.801095,
		-0.835021, 0.539769, -0.106717,
		39.426334, 45.331551, 44.759342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142857, 45.771339, 44.653229>,  <40.010849, 44.953712, 44.834045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142857, 45.771339, 44.653229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781910, 45.725891, 44.819515>,  <39.565342, 45.698624, 44.919285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781910, 45.725891, 44.819515>,  <40.142857, 45.771339, 44.653229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781910, 45.725891, 44.819515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188397, 0.763568, 0.617632,
		-0.387599, 0.635653, -0.667617,
		-0.902371, -0.113617, 0.415714,
		39.511200, 45.691807, 44.944229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871372, 46.462826, 44.707962>,  <40.142857, 45.771339, 44.653229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871372, 46.462826, 44.707962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672966, 46.220325, 44.956615>,  <39.553921, 46.074825, 45.105808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672966, 46.220325, 44.956615>,  <39.871372, 46.462826, 44.707962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672966, 46.220325, 44.956615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176341, 0.630655, 0.755764,
		-0.850218, 0.484490, -0.205908,
		-0.496017, -0.606254, 0.621630,
		39.524162, 46.038448, 45.143105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695774, 46.947754, 45.135967>,  <39.871372, 46.462826, 44.707962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695774, 46.947754, 45.135967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622772, 46.613281, 45.342846>,  <39.578972, 46.412598, 45.466972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622772, 46.613281, 45.342846>,  <39.695774, 46.947754, 45.135967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622772, 46.613281, 45.342846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100039, 0.539096, 0.836282,
		-0.978101, 0.100889, -0.182041,
		-0.182510, -0.836180, 0.517198,
		39.568020, 46.362427, 45.498005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140110, 47.104546, 45.548607>,  <39.695774, 46.947754, 45.135967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140110, 47.104546, 45.548607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348938, 46.817463, 45.732925>,  <39.474236, 46.645214, 45.843517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348938, 46.817463, 45.732925>,  <39.140110, 47.104546, 45.548607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348938, 46.817463, 45.732925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046686, 0.563507, 0.824791,
		-0.851624, -0.409085, 0.327696,
		0.522069, -0.717711, 0.460798,
		39.505558, 46.602150, 45.871166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965633, 47.150074, 46.298363>,  <39.140110, 47.104546, 45.548607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965633, 47.150074, 46.298363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317093, 46.960300, 46.276859>,  <39.527969, 46.846436, 46.263958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317093, 46.960300, 46.276859>,  <38.965633, 47.150074, 46.298363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317093, 46.960300, 46.276859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348379, 0.560019, 0.751672,
		-0.326517, -0.679181, 0.657343,
		0.878646, -0.474438, -0.053757,
		39.580688, 46.817970, 46.260731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748287, 46.840630, 47.046776>,  <38.965633, 47.150074, 46.298363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748287, 46.840630, 47.046776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.860123, 47.069588, 47.355114>,  <38.927223, 47.206963, 47.540115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.860123, 47.069588, 47.355114>,  <38.748287, 46.840630, 47.046776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860123, 47.069588, 47.355114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571022, -0.546302, 0.612771,
		0.771858, -0.611491, 0.174109,
		0.279588, 0.572392, 0.770842,
		38.944000, 47.241306, 47.586369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925529, 46.504360, 47.616173>,  <38.748287, 46.840630, 47.046776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925529, 46.504360, 47.616173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820747, 46.849884, 47.788319>,  <38.757877, 47.057198, 47.891605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820747, 46.849884, 47.788319>,  <38.925529, 46.504360, 47.616173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820747, 46.849884, 47.788319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573562, -0.497981, 0.650417,
		0.776148, -0.076457, 0.625898,
		-0.261956, 0.863811, 0.430360,
		38.742161, 47.109028, 47.917427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373547, 45.905773, 47.707306>,  <38.925529, 46.504360, 47.616173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373547, 45.905773, 47.707306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129734, 45.846954, 48.018909>,  <38.983448, 45.811665, 48.205872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129734, 45.846954, 48.018909>,  <39.373547, 45.905773, 47.707306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129734, 45.846954, 48.018909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425512, -0.768417, -0.477990,
		0.668889, -0.622826, 0.405803,
		-0.609531, -0.147048, 0.779005,
		38.946877, 45.802841, 48.252609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510281, 45.252617, 47.988373>,  <39.373547, 45.905773, 47.707306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510281, 45.252617, 47.988373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137569, 45.364258, 48.081226>,  <38.913940, 45.431244, 48.136940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137569, 45.364258, 48.081226>,  <39.510281, 45.252617, 47.988373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137569, 45.364258, 48.081226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361175, -0.777145, -0.515363,
		0.036563, -0.564046, 0.824933,
		-0.931781, 0.279102, 0.232134,
		38.858036, 45.447990, 48.150867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134430, 44.606907, 47.945236>,  <39.510281, 45.252617, 47.988373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134430, 44.606907, 47.945236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839882, 44.877487, 47.939907>,  <38.663155, 45.039833, 47.936710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839882, 44.877487, 47.939907>,  <39.134430, 44.606907, 47.945236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839882, 44.877487, 47.939907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528422, -0.587307, -0.613059,
		-0.422526, -0.444399, 0.789925,
		-0.736371, 0.676447, -0.013323,
		38.618969, 45.080421, 47.935909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545864, 44.228535, 48.198433>,  <39.134430, 44.606907, 47.945236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545864, 44.228535, 48.198433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407894, 44.543011, 47.993324>,  <38.325111, 44.731697, 47.870258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407894, 44.543011, 47.993324>,  <38.545864, 44.228535, 48.198433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407894, 44.543011, 47.993324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499655, -0.616256, -0.608747,
		-0.794589, 0.046238, 0.605384,
		-0.344924, 0.786187, -0.512774,
		38.304417, 44.778866, 47.839493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912601, 44.183777, 48.104816>,  <38.545864, 44.228535, 48.198433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912601, 44.183777, 48.104816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999958, 44.438042, 47.808643>,  <38.052372, 44.590599, 47.630939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999958, 44.438042, 47.808643>,  <37.912601, 44.183777, 48.104816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999958, 44.438042, 47.808643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757545, -0.367874, -0.539254,
		-0.615169, 0.678678, 0.401202,
		0.218388, 0.635661, -0.740434,
		38.065475, 44.628738, 47.586514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297039, 44.449570, 47.837257>,  <37.912601, 44.183777, 48.104816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297039, 44.449570, 47.837257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512199, 44.526825, 47.509022>,  <37.641296, 44.573177, 47.312080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512199, 44.526825, 47.509022>,  <37.297039, 44.449570, 47.837257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512199, 44.526825, 47.509022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737807, -0.363025, -0.569081,
		-0.407805, 0.911543, -0.052772,
		0.537899, 0.193138, -0.820587,
		37.673569, 44.584766, 47.262844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774025, 44.606750, 47.310261>,  <37.297039, 44.449570, 47.837257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774025, 44.606750, 47.310261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104771, 44.530624, 47.098572>,  <37.303219, 44.484947, 46.971558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104771, 44.530624, 47.098572>,  <36.774025, 44.606750, 47.310261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104771, 44.530624, 47.098572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562395, -0.285628, -0.775970,
		-0.003483, 0.939254, -0.343207,
		0.826862, -0.190315, -0.529226,
		37.352829, 44.473530, 46.939804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704102, 44.915283, 46.612160>,  <36.774025, 44.606750, 47.310261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704102, 44.915283, 46.612160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977123, 44.623775, 46.590187>,  <37.140938, 44.448872, 46.577003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977123, 44.623775, 46.590187>,  <36.704102, 44.915283, 46.612160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977123, 44.623775, 46.590187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379828, -0.289516, -0.878585,
		0.624379, 0.620548, -0.474416,
		0.682555, -0.728766, -0.054934,
		37.181889, 44.405144, 46.573708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785854, 44.811920, 45.888737>,  <36.704102, 44.915283, 46.612160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785854, 44.811920, 45.888737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941559, 44.478374, 46.045273>,  <37.034981, 44.278248, 46.139194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941559, 44.478374, 46.045273>,  <36.785854, 44.811920, 45.888737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941559, 44.478374, 46.045273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202259, -0.491858, -0.846858,
		0.898647, 0.250497, -0.360118,
		0.389262, -0.833863, 0.391341,
		37.058338, 44.228214, 46.162674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290928, 44.542110, 45.424255>,  <36.785854, 44.811920, 45.888737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290928, 44.542110, 45.424255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155689, 44.247318, 45.658371>,  <37.074547, 44.070442, 45.798840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155689, 44.247318, 45.658371>,  <37.290928, 44.542110, 45.424255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155689, 44.247318, 45.658371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150486, -0.571570, -0.806636,
		0.929003, -0.360796, 0.082340,
		-0.338094, -0.736977, 0.585285,
		37.054260, 44.026226, 45.833958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699936, 43.954475, 45.275101>,  <37.290928, 44.542110, 45.424255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699936, 43.954475, 45.275101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371262, 43.802982, 45.445461>,  <37.174057, 43.712086, 45.547680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371262, 43.802982, 45.445461>,  <37.699936, 43.954475, 45.275101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371262, 43.802982, 45.445461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170624, -0.549539, -0.817860,
		0.543805, -0.744691, 0.386926,
		-0.821684, -0.378737, 0.425904,
		37.124756, 43.689362, 45.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786854, 43.240437, 45.275257>,  <37.699936, 43.954475, 45.275101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786854, 43.240437, 45.275257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389759, 43.280880, 45.301308>,  <37.151501, 43.305145, 45.316936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389759, 43.280880, 45.301308>,  <37.786854, 43.240437, 45.275257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389759, 43.280880, 45.301308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110401, -0.551277, -0.826986,
		-0.047714, -0.828173, 0.558438,
		-0.992741, 0.101111, 0.065128,
		37.091938, 43.311214, 45.320847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474079, 42.518787, 45.208214>,  <37.786854, 43.240437, 45.275257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474079, 42.518787, 45.208214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193630, 42.786724, 45.110451>,  <37.025360, 42.947487, 45.051792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193630, 42.786724, 45.110451>,  <37.474079, 42.518787, 45.208214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193630, 42.786724, 45.110451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148691, -0.472581, -0.868653,
		-0.697366, -0.572690, 0.430936,
		-0.701121, 0.669845, -0.244408,
		36.983295, 42.987679, 45.037128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958481, 42.004375, 44.945183>,  <37.474079, 42.518787, 45.208214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958481, 42.004375, 44.945183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823132, 42.366241, 44.841579>,  <36.741920, 42.583363, 44.779419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823132, 42.366241, 44.841579>,  <36.958481, 42.004375, 44.945183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823132, 42.366241, 44.841579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479474, -0.402588, -0.779761,
		-0.809695, -0.139666, 0.569989,
		-0.338377, 0.904664, -0.259007,
		36.721619, 42.637642, 44.763878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230679, 41.960720, 44.897701>,  <36.958481, 42.004375, 44.945183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230679, 41.960720, 44.897701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336010, 42.277016, 44.676655>,  <36.399208, 42.466793, 44.544025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336010, 42.277016, 44.676655>,  <36.230679, 41.960720, 44.897701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336010, 42.277016, 44.676655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454025, -0.403844, -0.794211,
		-0.851187, 0.460039, 0.252673,
		0.263328, 0.790742, -0.552617,
		36.415009, 42.514240, 44.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551830, 42.293407, 44.676731>,  <36.230679, 41.960720, 44.897701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551830, 42.293407, 44.676731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841167, 42.391216, 44.418434>,  <36.014771, 42.449902, 44.263454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841167, 42.391216, 44.418434>,  <35.551830, 42.293407, 44.676731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841167, 42.391216, 44.418434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505773, -0.449035, -0.736588,
		-0.470073, 0.859405, -0.201134,
		0.723343, 0.244522, -0.645743,
		36.058170, 42.464573, 44.224712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195606, 42.530910, 44.147427>,  <35.551830, 42.293407, 44.676731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195606, 42.530910, 44.147427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554237, 42.428635, 44.002777>,  <35.769417, 42.367268, 43.915989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554237, 42.428635, 44.002777>,  <35.195606, 42.530910, 44.147427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554237, 42.428635, 44.002777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434538, -0.350105, -0.829821,
		0.085571, 0.901138, -0.425003,
		0.896579, -0.255689, -0.361620,
		35.823212, 42.351929, 43.894291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165371, 42.691296, 43.338352>,  <35.195606, 42.530910, 44.147427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165371, 42.691296, 43.338352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504364, 42.480732, 43.365685>,  <35.707760, 42.354393, 43.382084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504364, 42.480732, 43.365685>,  <35.165371, 42.691296, 43.338352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504364, 42.480732, 43.365685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309513, -0.594612, -0.742050,
		0.431253, 0.607724, -0.666853,
		0.847480, -0.526411, 0.068330,
		35.758610, 42.322807, 43.386185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374638, 42.587681, 42.607063>,  <35.165371, 42.691296, 43.338352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374638, 42.587681, 42.607063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564514, 42.300404, 42.810581>,  <35.678440, 42.128036, 42.932693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564514, 42.300404, 42.810581>,  <35.374638, 42.587681, 42.607063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564514, 42.300404, 42.810581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304277, -0.676338, -0.670807,
		0.825886, 0.163609, -0.539578,
		0.474687, -0.718192, 0.508795,
		35.706921, 42.084946, 42.963219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697685, 42.282413, 42.022194>,  <35.374638, 42.587681, 42.607063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697685, 42.282413, 42.022194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689796, 42.004467, 42.309742>,  <35.685062, 41.837700, 42.482269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689796, 42.004467, 42.309742>,  <35.697685, 42.282413, 42.022194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689796, 42.004467, 42.309742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426602, -0.644423, -0.634609,
		0.904224, -0.319190, -0.283719,
		-0.019726, -0.694865, 0.718870,
		35.683880, 41.796009, 42.525402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.555725, 37.022835, 29.172033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166740, 37.001068, 29.262674>,  <39.933350, 36.988007, 29.317059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166740, 37.001068, 29.262674>,  <40.555725, 37.022835, 29.172033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166740, 37.001068, 29.262674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232154, -0.311263, 0.921531,
		0.020384, 0.948764, 0.315327,
		-0.972465, -0.054420, 0.226605,
		39.875000, 36.984741, 29.330656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321415, 37.454369, 29.749212>,  <40.555725, 37.022835, 29.172033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321415, 37.454369, 29.749212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062122, 37.150501, 29.728437>,  <39.906548, 36.968182, 29.715973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062122, 37.150501, 29.728437>,  <40.321415, 37.454369, 29.749212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062122, 37.150501, 29.728437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253313, -0.279476, 0.926135,
		-0.718069, 0.587197, 0.373600,
		-0.648236, -0.759666, -0.051938,
		39.867653, 36.922600, 29.712856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679516, 37.546738, 30.224274>,  <40.321415, 37.454369, 29.749212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679516, 37.546738, 30.224274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761467, 37.163639, 30.143526>,  <39.810638, 36.933781, 30.095078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761467, 37.163639, 30.143526>,  <39.679516, 37.546738, 30.224274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761467, 37.163639, 30.143526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127544, -0.178363, 0.975663,
		-0.970443, -0.225635, 0.085613,
		0.204873, -0.957745, -0.201869,
		39.822929, 36.876316, 30.082966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284988, 37.254028, 30.689297>,  <39.679516, 37.546738, 30.224274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284988, 37.254028, 30.689297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543659, 36.964642, 30.592632>,  <39.698860, 36.791008, 30.534634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543659, 36.964642, 30.592632>,  <39.284988, 37.254028, 30.689297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543659, 36.964642, 30.592632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166993, -0.174854, 0.970329,
		-0.744262, -0.667843, 0.007740,
		0.646675, -0.723472, -0.241662,
		39.737663, 36.747601, 30.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219414, 36.683605, 31.201437>,  <39.284988, 37.254028, 30.689297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219414, 36.683605, 31.201437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580898, 36.607246, 31.048147>,  <39.797791, 36.561432, 30.956173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580898, 36.607246, 31.048147>,  <39.219414, 36.683605, 31.201437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580898, 36.607246, 31.048147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324140, -0.279709, 0.903712,
		-0.279709, -0.940915, -0.190898,
		-0.903712, 0.190898, 0.383225,
		39.852013, 36.549976, 30.933180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411129, 35.981915, 31.474226>,  <39.219414, 36.683605, 31.201437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411129, 35.981915, 31.474226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751572, 36.156742, 31.357895>,  <39.955837, 36.261639, 31.288095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751572, 36.156742, 31.357895>,  <39.411129, 35.981915, 31.474226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751572, 36.156742, 31.357895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462603, -0.362455, 0.809089,
		0.248218, -0.823161, -0.510680,
		0.851109, 0.437073, -0.290829,
		40.006905, 36.287865, 31.270647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974503, 35.503761, 31.745405>,  <39.411129, 35.981915, 31.474226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974503, 35.503761, 31.745405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.163933, 35.845375, 31.659288>,  <40.277592, 36.050343, 31.607618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.163933, 35.845375, 31.659288>,  <39.974503, 35.503761, 31.745405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163933, 35.845375, 31.659288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657717, -0.180350, 0.731357,
		0.585777, -0.487953, -0.647122,
		0.473576, 0.854035, -0.215290,
		40.306007, 36.101585, 31.594702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663780, 35.320881, 31.847170>,  <39.974503, 35.503761, 31.745405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663780, 35.320881, 31.847170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687393, 35.720161, 31.851454>,  <40.701561, 35.959728, 31.854025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687393, 35.720161, 31.851454>,  <40.663780, 35.320881, 31.847170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687393, 35.720161, 31.851454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700566, -0.049070, 0.711898,
		0.711142, -0.034521, -0.702201,
		0.059033, 0.998199, 0.010711,
		40.705105, 36.019623, 31.854668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381958, 35.437702, 31.878389>,  <40.663780, 35.320881, 31.847170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381958, 35.437702, 31.878389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209709, 35.779453, 31.994738>,  <41.106361, 35.984505, 32.064548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209709, 35.779453, 31.994738>,  <41.381958, 35.437702, 31.878389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209709, 35.779453, 31.994738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684310, 0.098948, 0.722447,
		0.588461, 0.510146, -0.627268,
		-0.430620, 0.854378, 0.290871,
		41.080524, 36.035767, 32.082001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826382, 35.993690, 31.744379>,  <41.381958, 35.437702, 31.878389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826382, 35.993690, 31.744379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568691, 36.092411, 32.033947>,  <41.414078, 36.151642, 32.207687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568691, 36.092411, 32.033947>,  <41.826382, 35.993690, 31.744379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568691, 36.092411, 32.033947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754584, 0.050654, 0.654245,
		0.124797, 0.967742, -0.218863,
		-0.644227, 0.246799, 0.723921,
		41.375423, 36.166451, 32.251122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149395, 36.528084, 32.097073>,  <41.826382, 35.993690, 31.744379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149395, 36.528084, 32.097073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871677, 36.405418, 32.357506>,  <41.705048, 36.331818, 32.513767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871677, 36.405418, 32.357506>,  <42.149395, 36.528084, 32.097073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871677, 36.405418, 32.357506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693291, -0.042206, 0.719420,
		-0.193144, 0.950880, 0.241914,
		-0.694293, -0.306668, 0.651085,
		41.663391, 36.313419, 32.552830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238441, 37.024929, 32.647804>,  <42.149395, 36.528084, 32.097073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238441, 37.024929, 32.647804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068531, 36.689835, 32.785069>,  <41.966583, 36.488777, 32.867428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068531, 36.689835, 32.785069>,  <42.238441, 37.024929, 32.647804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068531, 36.689835, 32.785069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603132, 0.020802, 0.797370,
		-0.675125, 0.545677, 0.496431,
		-0.424780, -0.837738, 0.343159,
		41.941097, 36.438515, 32.888016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258198, 37.137028, 33.334072>,  <42.238441, 37.024929, 32.647804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258198, 37.137028, 33.334072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.208244, 36.742268, 33.293201>,  <42.178272, 36.505413, 33.268681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.208244, 36.742268, 33.293201>,  <42.258198, 37.137028, 33.334072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208244, 36.742268, 33.293201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538212, -0.153895, 0.828640,
		-0.833506, 0.048489, 0.550378,
		-0.124880, -0.986897, -0.102175,
		42.170780, 36.446198, 33.262550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115089, 36.805527, 34.048401>,  <42.258198, 37.137028, 33.334072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115089, 36.805527, 34.048401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239254, 36.519058, 33.798363>,  <42.313755, 36.347179, 33.648338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239254, 36.519058, 33.798363>,  <42.115089, 36.805527, 34.048401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239254, 36.519058, 33.798363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585173, -0.374261, 0.719376,
		-0.749144, -0.589094, 0.302907,
		0.310413, -0.716169, -0.625097,
		42.332378, 36.304207, 33.610832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324753, 36.344234, 34.468323>,  <42.115089, 36.805527, 34.048401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324753, 36.344234, 34.468323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521103, 36.214794, 34.144760>,  <42.638912, 36.137131, 33.950623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521103, 36.214794, 34.144760>,  <42.324753, 36.344234, 34.468323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521103, 36.214794, 34.144760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663775, -0.462473, 0.587812,
		-0.564313, -0.825471, -0.012217,
		0.490871, -0.323600, -0.808906,
		42.668365, 36.117714, 33.902088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424400, 35.609901, 34.669395>,  <42.324753, 36.344234, 34.468323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424400, 35.609901, 34.669395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679493, 35.708736, 34.377575>,  <42.832550, 35.768040, 34.202484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679493, 35.708736, 34.377575>,  <42.424400, 35.609901, 34.669395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679493, 35.708736, 34.377575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684167, -0.616830, 0.389148,
		-0.353853, -0.747306, -0.562425,
		0.637734, 0.247091, -0.729549,
		42.870811, 35.782864, 34.158710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771412, 34.977367, 34.455566>,  <42.424400, 35.609901, 34.669395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771412, 34.977367, 34.455566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.021236, 35.255016, 34.312397>,  <43.171131, 35.421608, 34.226494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.021236, 35.255016, 34.312397>,  <42.771412, 34.977367, 34.455566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021236, 35.255016, 34.312397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780563, -0.569710, 0.257201,
		-0.025386, -0.440023, -0.897627,
		0.624562, 0.694125, -0.357928,
		43.208607, 35.463253, 34.205017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271767, 34.637211, 34.166962>,  <42.771412, 34.977367, 34.455566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271767, 34.637211, 34.166962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458893, 34.987213, 34.216782>,  <43.571167, 35.197216, 34.246674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458893, 34.987213, 34.216782>,  <43.271767, 34.637211, 34.166962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458893, 34.987213, 34.216782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842156, -0.484067, 0.237596,
		0.268191, -0.006257, -0.963345,
		0.467811, 0.875008, 0.124553,
		43.599236, 35.249714, 34.254147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839455, 34.545410, 33.793247>,  <43.271767, 34.637211, 34.166962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839455, 34.545410, 33.793247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947937, 34.860245, 34.014858>,  <44.013027, 35.049145, 34.147823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947937, 34.860245, 34.014858>,  <43.839455, 34.545410, 33.793247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947937, 34.860245, 34.014858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826233, -0.485640, 0.285471,
		0.493747, 0.380335, -0.782022,
		0.271207, 0.787083, 0.554028,
		44.029301, 35.096371, 34.181068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524158, 34.784256, 33.547474>,  <43.839455, 34.545410, 33.793247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524158, 34.784256, 33.547474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458488, 34.898285, 33.925209>,  <44.419086, 34.966702, 34.151852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458488, 34.898285, 33.925209>,  <44.524158, 34.784256, 33.547474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458488, 34.898285, 33.925209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867353, -0.414259, 0.275842,
		0.469837, 0.864362, -0.179251,
		-0.164172, 0.285074, 0.944341,
		44.409237, 34.983807, 34.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105148, 35.141624, 33.755066>,  <44.524158, 34.784256, 33.547474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105148, 35.141624, 33.755066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922398, 35.022999, 34.090523>,  <44.812748, 34.951824, 34.291798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922398, 35.022999, 34.090523>,  <45.105148, 35.141624, 33.755066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922398, 35.022999, 34.090523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809195, -0.530093, 0.253385,
		0.369412, 0.794388, 0.482165,
		-0.456878, -0.296562, 0.838638,
		44.785336, 34.934029, 34.342113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586769, 35.199673, 34.201626>,  <45.105148, 35.141624, 33.755066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586769, 35.199673, 34.201626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326832, 34.931362, 34.344604>,  <45.170872, 34.770374, 34.430389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326832, 34.931362, 34.344604>,  <45.586769, 35.199673, 34.201626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326832, 34.931362, 34.344604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709173, -0.704290, -0.032380,
		0.273465, 0.232448, 0.933373,
		-0.649839, -0.670778, 0.357445,
		45.131882, 34.730129, 34.451839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190617, 34.794422, 33.841507>,  <45.586769, 35.199673, 34.201626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190617, 34.794422, 33.841507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512703, 34.979729, 33.693443>,  <46.705956, 35.090912, 33.604607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512703, 34.979729, 33.693443>,  <46.190617, 34.794422, 33.841507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512703, 34.979729, 33.693443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575854, 0.461932, -0.674545,
		-0.141510, 0.756307, 0.638729,
		0.805212, 0.463270, -0.370155,
		46.754265, 35.118710, 33.582397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997837, 35.543499, 33.725971>,  <46.190617, 34.794422, 33.841507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997837, 35.543499, 33.725971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.300049, 35.437885, 33.486149>,  <46.481377, 35.374516, 33.342255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.300049, 35.437885, 33.486149>,  <45.997837, 35.543499, 33.725971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300049, 35.437885, 33.486149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557364, 0.221876, -0.800073,
		0.344275, 0.938646, 0.020468,
		0.755527, -0.264037, -0.599554,
		46.526707, 35.358673, 33.306282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104950, 36.181602, 33.334324>,  <45.997837, 35.543499, 33.725971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104950, 36.181602, 33.334324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.279987, 35.893421, 33.119122>,  <46.385010, 35.720512, 32.989998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.279987, 35.893421, 33.119122>,  <46.104950, 36.181602, 33.334324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279987, 35.893421, 33.119122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317103, 0.436245, -0.842102,
		0.841401, 0.539105, -0.037560,
		0.437596, -0.720456, -0.538009,
		46.411266, 35.677284, 32.957718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468555, 36.503937, 32.775928>,  <46.104950, 36.181602, 33.334324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468555, 36.503937, 32.775928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405579, 36.124443, 32.666298>,  <46.367794, 35.896748, 32.600521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405579, 36.124443, 32.666298>,  <46.468555, 36.503937, 32.775928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405579, 36.124443, 32.666298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272790, 0.308522, -0.911263,
		0.949103, -0.068706, -0.307379,
		-0.157442, -0.948733, -0.274077,
		46.358345, 35.839825, 32.584076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715977, 36.505890, 32.051659>,  <46.468555, 36.503937, 32.775928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715977, 36.505890, 32.051659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.467388, 36.197792, 32.108925>,  <46.318237, 36.012932, 32.143284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.467388, 36.197792, 32.108925>,  <46.715977, 36.505890, 32.051659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467388, 36.197792, 32.108925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413460, 0.167235, -0.895033,
		0.665453, -0.615429, -0.422397,
		-0.621468, -0.770247, 0.143169,
		46.280949, 35.966717, 32.151875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574947, 36.313751, 31.381262>,  <46.715977, 36.505890, 32.051659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574947, 36.313751, 31.381262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.316338, 36.115013, 31.612831>,  <46.161171, 35.995770, 31.751772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.316338, 36.115013, 31.612831>,  <46.574947, 36.313751, 31.381262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316338, 36.115013, 31.612831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648250, -0.042307, -0.760251,
		0.402223, -0.866805, -0.294731,
		-0.646520, -0.496850, 0.578923,
		46.122383, 35.965958, 31.786509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278774, 35.753223, 30.911306>,  <46.574947, 36.313751, 31.381262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278774, 35.753223, 30.911306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.022820, 35.832676, 31.208248>,  <45.869247, 35.880348, 31.386414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.022820, 35.832676, 31.208248>,  <46.278774, 35.753223, 30.911306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022820, 35.832676, 31.208248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768434, -0.156341, -0.620538,
		-0.007194, -0.967525, 0.252671,
		-0.639889, 0.198625, 0.742354,
		45.830853, 35.892265, 31.430954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754215, 35.236790, 30.977699>,  <46.278774, 35.753223, 30.911306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754215, 35.236790, 30.977699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581581, 35.556763, 31.144474>,  <45.478001, 35.748749, 31.244539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581581, 35.556763, 31.144474>,  <45.754215, 35.236790, 30.977699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581581, 35.556763, 31.144474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766039, -0.080931, -0.637679,
		-0.476359, -0.594603, 0.647711,
		-0.431586, 0.799936, 0.416936,
		45.452106, 35.796745, 31.269554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989578, 35.044586, 31.112474>,  <45.754215, 35.236790, 30.977699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989578, 35.044586, 31.112474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003971, 35.444275, 31.118900>,  <45.012608, 35.684090, 31.122757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003971, 35.444275, 31.118900>,  <44.989578, 35.044586, 31.112474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003971, 35.444275, 31.118900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888703, 0.039346, -0.456792,
		-0.457069, 0.002158, 0.889429,
		0.035981, 0.999223, 0.016066,
		45.014767, 35.744041, 31.123720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289494, 35.288181, 31.439390>,  <44.989578, 35.044586, 31.112474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289494, 35.288181, 31.439390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435570, 35.594292, 31.227356>,  <44.523216, 35.777958, 31.100136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435570, 35.594292, 31.227356>,  <44.289494, 35.288181, 31.439390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435570, 35.594292, 31.227356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855128, 0.050693, -0.515934,
		-0.367960, 0.641702, 0.672922,
		0.365188, 0.765277, -0.530084,
		44.545128, 35.823875, 31.068331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822304, 35.847656, 31.496662>,  <44.289494, 35.288181, 31.439390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822304, 35.847656, 31.496662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018436, 35.899017, 31.151852>,  <44.136116, 35.929832, 30.944965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018436, 35.899017, 31.151852>,  <43.822304, 35.847656, 31.496662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018436, 35.899017, 31.151852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869407, 0.002990, -0.494088,
		-0.060863, 0.991718, 0.113098,
		0.490335, 0.128399, -0.862024,
		44.165535, 35.937538, 30.893244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427937, 36.291420, 31.080631>,  <43.822304, 35.847656, 31.496662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427937, 36.291420, 31.080631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685715, 36.192513, 30.791204>,  <43.840382, 36.133167, 30.617548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685715, 36.192513, 30.791204>,  <43.427937, 36.291420, 31.080631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685715, 36.192513, 30.791204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678057, 0.252615, -0.690235,
		0.353458, 0.935438, -0.004867,
		0.644443, -0.247270, -0.723569,
		43.879047, 36.118332, 30.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377651, 36.807632, 30.611147>,  <43.427937, 36.291420, 31.080631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377651, 36.807632, 30.611147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524342, 36.499401, 30.402639>,  <43.612354, 36.314461, 30.277534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524342, 36.499401, 30.402639>,  <43.377651, 36.807632, 30.611147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524342, 36.499401, 30.402639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656339, 0.182804, -0.731985,
		0.659342, 0.610567, -0.438722,
		0.366725, -0.770578, -0.521269,
		43.634357, 36.268227, 30.246258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267563, 36.992287, 29.901922>,  <43.377651, 36.807632, 30.611147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267563, 36.992287, 29.901922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311478, 36.594711, 29.904219>,  <43.337826, 36.356167, 29.905596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311478, 36.594711, 29.904219>,  <43.267563, 36.992287, 29.901922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311478, 36.594711, 29.904219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700798, -0.081498, -0.708689,
		0.704862, 0.073779, -0.705498,
		0.109783, -0.993939, 0.005740,
		43.344414, 36.296528, 29.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376335, 36.889645, 29.254269>,  <43.267563, 36.992287, 29.901922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376335, 36.889645, 29.254269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.235420, 36.541981, 29.393093>,  <43.150871, 36.333382, 29.476387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.235420, 36.541981, 29.393093>,  <43.376335, 36.889645, 29.254269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235420, 36.541981, 29.393093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637867, -0.048379, -0.768625,
		0.684851, -0.492154, -0.537367,
		-0.352285, -0.869162, 0.347061,
		43.129734, 36.281231, 29.497211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273144, 36.586246, 28.683996>,  <43.376335, 36.889645, 29.254269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273144, 36.586246, 28.683996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.053902, 36.395370, 28.958769>,  <42.922356, 36.280846, 29.123632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.053902, 36.395370, 28.958769>,  <43.273144, 36.586246, 28.683996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053902, 36.395370, 28.958769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772564, -0.025882, -0.634409,
		0.320514, -0.878418, -0.354475,
		-0.548102, -0.477192, 0.686930,
		42.889473, 36.252213, 29.164848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898693, 35.994621, 28.393860>,  <43.273144, 36.586246, 28.683996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898693, 35.994621, 28.393860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667831, 36.064907, 28.712864>,  <42.529316, 36.107079, 28.904266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667831, 36.064907, 28.712864>,  <42.898693, 35.994621, 28.393860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667831, 36.064907, 28.712864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816194, -0.091995, -0.570407,
		-0.026862, -0.980134, 0.196512,
		-0.577153, 0.175714, 0.797508,
		42.494686, 36.117619, 28.952116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440453, 35.611202, 28.205141>,  <42.898693, 35.994621, 28.393860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440453, 35.611202, 28.205141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259258, 35.830753, 28.486149>,  <42.150543, 35.962486, 28.654753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259258, 35.830753, 28.486149>,  <42.440453, 35.611202, 28.205141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259258, 35.830753, 28.486149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868084, -0.092076, -0.487804,
		-0.203063, -0.830812, 0.518186,
		-0.452986, 0.548884, 0.702517,
		42.123363, 35.995419, 28.696905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787781, 35.326923, 28.282974>,  <42.440453, 35.611202, 28.205141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787781, 35.326923, 28.282974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777401, 35.697113, 28.434139>,  <41.771172, 35.919228, 28.524837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777401, 35.697113, 28.434139>,  <41.787781, 35.326923, 28.282974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777401, 35.697113, 28.434139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940646, 0.105365, -0.322618,
		-0.338394, -0.363853, 0.867813,
		-0.025949, 0.925478, 0.377912,
		41.769615, 35.974758, 28.547512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171452, 35.430298, 28.641764>,  <41.787781, 35.326923, 28.282974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171452, 35.430298, 28.641764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277084, 35.809769, 28.572163>,  <41.340462, 36.037453, 28.530403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277084, 35.809769, 28.572163>,  <41.171452, 35.430298, 28.641764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277084, 35.809769, 28.572163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908660, 0.184214, -0.374702,
		-0.323418, 0.257059, 0.910671,
		0.264079, 0.948676, -0.174001,
		41.356308, 36.094372, 28.519962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.758110, 38.989109, 38.378002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712437, 38.798676, 38.726784>,  <37.685032, 38.684414, 38.936054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712437, 38.798676, 38.726784>,  <37.758110, 38.989109, 38.378002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712437, 38.798676, 38.726784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141759, -0.876521, -0.460016,
		0.983294, 0.071082, 0.167570,
		-0.114180, -0.476085, 0.871955,
		37.678181, 38.655849, 38.988369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253201, 38.536049, 38.370476>,  <37.758110, 38.989109, 38.378002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253201, 38.536049, 38.370476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983669, 38.378437, 38.620499>,  <37.821949, 38.283871, 38.770512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983669, 38.378437, 38.620499>,  <38.253201, 38.536049, 38.370476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983669, 38.378437, 38.620499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037122, -0.862931, -0.503957,
		0.737956, -0.316376, 0.596094,
		-0.673827, -0.394026, 0.625060,
		37.781521, 38.260231, 38.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432789, 37.784733, 38.466900>,  <38.253201, 38.536049, 38.370476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432789, 37.784733, 38.466900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045139, 37.815742, 38.560532>,  <37.812550, 37.834347, 38.616711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045139, 37.815742, 38.560532>,  <38.432789, 37.784733, 38.466900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045139, 37.815742, 38.560532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210323, -0.755408, -0.620583,
		0.128716, -0.650653, 0.748387,
		-0.969121, 0.077523, 0.234081,
		37.754402, 37.839001, 38.630756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218487, 37.244888, 38.793129>,  <38.432789, 37.784733, 38.466900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218487, 37.244888, 38.793129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888077, 37.389412, 38.620087>,  <37.689831, 37.476124, 38.516262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888077, 37.389412, 38.620087>,  <38.218487, 37.244888, 38.793129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888077, 37.389412, 38.620087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143202, -0.876864, -0.458914,
		-0.545140, -0.317125, 0.776051,
		-0.826024, 0.361304, -0.432601,
		37.640270, 37.497803, 38.490307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758217, 36.718327, 38.851761>,  <38.218487, 37.244888, 38.793129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758217, 36.718327, 38.851761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614361, 36.962280, 38.569286>,  <37.528049, 37.108654, 38.399799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614361, 36.962280, 38.569286>,  <37.758217, 36.718327, 38.851761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614361, 36.962280, 38.569286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317534, -0.791648, -0.521982,
		-0.877402, 0.036516, 0.478364,
		-0.359636, 0.609886, -0.706188,
		37.506470, 37.145245, 38.357430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189857, 36.356594, 38.620373>,  <37.758217, 36.718327, 38.851761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189857, 36.356594, 38.620373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218258, 36.617401, 38.318424>,  <37.235298, 36.773884, 38.137257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218258, 36.617401, 38.318424>,  <37.189857, 36.356594, 38.620373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218258, 36.617401, 38.318424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486663, -0.637953, -0.596804,
		-0.870700, 0.409744, 0.272015,
		0.071004, 0.652017, -0.754872,
		37.239559, 36.813007, 38.091961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578773, 36.401382, 38.289455>,  <37.189857, 36.356594, 38.620373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578773, 36.401382, 38.289455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802231, 36.536972, 37.986664>,  <36.936306, 36.618328, 37.804989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802231, 36.536972, 37.986664>,  <36.578773, 36.401382, 38.289455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802231, 36.536972, 37.986664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509001, -0.580481, -0.635579,
		-0.654858, 0.740362, -0.151740,
		0.558641, 0.338978, -0.756977,
		36.969822, 36.638664, 37.759571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070805, 36.403328, 37.671780>,  <36.578773, 36.401382, 38.289455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070805, 36.403328, 37.671780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449715, 36.383659, 37.545135>,  <36.677063, 36.371857, 37.469147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449715, 36.383659, 37.545135>,  <36.070805, 36.403328, 37.671780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449715, 36.383659, 37.545135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270319, -0.653162, -0.707324,
		-0.172019, 0.755620, -0.632019,
		0.947279, -0.049174, -0.316615,
		36.733898, 36.368908, 37.450150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010361, 36.284565, 37.024979>,  <36.070805, 36.403328, 37.671780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010361, 36.284565, 37.024979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394043, 36.181793, 37.072151>,  <36.624252, 36.120132, 37.100456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394043, 36.181793, 37.072151>,  <36.010361, 36.284565, 37.024979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394043, 36.181793, 37.072151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099263, -0.696701, -0.710460,
		0.264699, 0.669774, -0.693785,
		0.959209, -0.256925, 0.117932,
		36.681805, 36.104717, 37.107533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296616, 36.245914, 36.399887>,  <36.010361, 36.284565, 37.024979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296616, 36.245914, 36.399887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562866, 36.022167, 36.597492>,  <36.722618, 35.887920, 36.716057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562866, 36.022167, 36.597492>,  <36.296616, 36.245914, 36.399887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562866, 36.022167, 36.597492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026384, -0.643913, -0.764643,
		0.745816, 0.522003, -0.413850,
		0.665629, -0.559364, 0.494013,
		36.762554, 35.854359, 36.745697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756008, 36.060276, 35.852097>,  <36.296616, 36.245914, 36.399887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756008, 36.060276, 35.852097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789272, 35.777214, 36.132755>,  <36.809231, 35.607376, 36.301151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789272, 35.777214, 36.132755>,  <36.756008, 36.060276, 35.852097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789272, 35.777214, 36.132755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066720, -0.698549, -0.712445,
		0.994300, 0.106061, -0.010876,
		0.083161, -0.707658, 0.701644,
		36.814220, 35.564915, 36.343250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410297, 35.733555, 35.762196>,  <36.756008, 36.060276, 35.852097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410297, 35.733555, 35.762196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171806, 35.480751, 35.960217>,  <37.028713, 35.329067, 36.079029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171806, 35.480751, 35.960217>,  <37.410297, 35.733555, 35.762196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171806, 35.480751, 35.960217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106038, -0.673235, -0.731786,
		0.795785, -0.383813, 0.468416,
		-0.596224, -0.632014, 0.495051,
		36.992939, 35.291145, 36.108730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793503, 35.099758, 35.925373>,  <37.410297, 35.733555, 35.762196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793503, 35.099758, 35.925373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404316, 35.022804, 35.874252>,  <37.170803, 34.976631, 35.843578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404316, 35.022804, 35.874252>,  <37.793503, 35.099758, 35.925373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404316, 35.022804, 35.874252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229067, -0.733024, -0.640471,
		0.029535, -0.652429, 0.757274,
		-0.972962, -0.192382, -0.127800,
		37.112427, 34.965088, 35.835911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482235, 34.802338, 36.015636>,  <37.793503, 35.099758, 35.925373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482235, 34.802338, 36.015636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512711, 34.481133, 36.252068>,  <38.530994, 34.288410, 36.393925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512711, 34.481133, 36.252068>,  <38.482235, 34.802338, 36.015636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512711, 34.481133, 36.252068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241827, 0.589981, 0.770352,
		-0.967324, 0.084248, 0.239137,
		0.076186, -0.803010, 0.591076,
		38.535568, 34.240231, 36.429390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160435, 34.885311, 36.693447>,  <38.482235, 34.802338, 36.015636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160435, 34.885311, 36.693447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451145, 34.614910, 36.742146>,  <38.625572, 34.452671, 36.771366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451145, 34.614910, 36.742146>,  <38.160435, 34.885311, 36.693447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451145, 34.614910, 36.742146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283225, 0.456410, 0.843488,
		-0.625764, -0.578546, 0.523168,
		0.726776, -0.675999, 0.121746,
		38.669178, 34.412109, 36.778671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144474, 34.510262, 37.337727>,  <38.160435, 34.885311, 36.693447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144474, 34.510262, 37.337727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527328, 34.540447, 37.225868>,  <38.757042, 34.558559, 37.158752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527328, 34.540447, 37.225868>,  <38.144474, 34.510262, 37.337727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527328, 34.540447, 37.225868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168893, 0.638934, 0.750492,
		0.235311, -0.765551, 0.598799,
		0.957133, 0.075466, -0.279644,
		38.814468, 34.563087, 37.141975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569153, 34.258339, 37.877766>,  <38.144474, 34.510262, 37.337727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569153, 34.258339, 37.877766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809452, 34.497227, 37.665188>,  <38.953632, 34.640560, 37.537643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809452, 34.497227, 37.665188>,  <38.569153, 34.258339, 37.877766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809452, 34.497227, 37.665188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392450, 0.358841, 0.846886,
		0.696478, -0.717332, -0.018804,
		0.600751, 0.597217, -0.531442,
		38.989677, 34.676392, 37.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210144, 34.122227, 38.093559>,  <38.569153, 34.258339, 37.877766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210144, 34.122227, 38.093559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230206, 34.493549, 37.946198>,  <39.242241, 34.716343, 37.857780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230206, 34.493549, 37.946198>,  <39.210144, 34.122227, 38.093559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230206, 34.493549, 37.946198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231765, 0.347983, 0.908401,
		0.971478, -0.130944, -0.197697,
		0.050154, 0.928311, -0.368406,
		39.245251, 34.772041, 37.835674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874207, 34.370609, 38.194088>,  <39.210144, 34.122227, 38.093559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874207, 34.370609, 38.194088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638336, 34.690006, 38.145607>,  <39.496815, 34.881645, 38.116520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638336, 34.690006, 38.145607>,  <39.874207, 34.370609, 38.194088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638336, 34.690006, 38.145607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434090, 0.439895, 0.786167,
		0.681066, 0.410971, -0.606013,
		-0.589674, 0.798495, -0.121200,
		39.461433, 34.929554, 38.109245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234047, 34.836506, 38.445438>,  <39.874207, 34.370609, 38.194088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234047, 34.836506, 38.445438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885059, 35.030926, 38.425240>,  <39.675667, 35.147575, 38.413120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885059, 35.030926, 38.425240>,  <40.234047, 34.836506, 38.445438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885059, 35.030926, 38.425240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270744, 0.566835, 0.778072,
		0.406804, 0.665174, -0.626142,
		-0.872473, 0.486047, -0.050499,
		39.623318, 35.176739, 38.410091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446644, 35.503166, 38.441639>,  <40.234047, 34.836506, 38.445438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446644, 35.503166, 38.441639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064930, 35.493614, 38.560818>,  <39.835903, 35.487885, 38.632324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064930, 35.493614, 38.560818>,  <40.446644, 35.503166, 38.441639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064930, 35.493614, 38.560818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254955, 0.455251, 0.853079,
		-0.156011, 0.890043, -0.428351,
		-0.954284, -0.023880, 0.297945,
		39.778645, 35.486450, 38.650200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403316, 36.113430, 38.742310>,  <40.446644, 35.503166, 38.441639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403316, 36.113430, 38.742310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070721, 35.933723, 38.873024>,  <39.871162, 35.825901, 38.951454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070721, 35.933723, 38.873024>,  <40.403316, 36.113430, 38.742310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070721, 35.933723, 38.873024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032309, 0.548132, 0.835768,
		-0.554602, 0.705489, -0.441250,
		-0.831488, -0.449262, 0.326789,
		39.821274, 35.798946, 38.971062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810909, 36.626408, 38.867702>,  <40.403316, 36.113430, 38.742310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810909, 36.626408, 38.867702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715057, 36.313568, 39.097797>,  <39.657547, 36.125862, 39.235855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715057, 36.313568, 39.097797>,  <39.810909, 36.626408, 38.867702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715057, 36.313568, 39.097797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086657, 0.607364, 0.789683,
		-0.966988, 0.139386, -0.213319,
		-0.239633, -0.782100, 0.575235,
		39.643166, 36.078938, 39.270367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452278, 36.917496, 39.325768>,  <39.810909, 36.626408, 38.867702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452278, 36.917496, 39.325768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508556, 36.558941, 39.493908>,  <39.542324, 36.343807, 39.594791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508556, 36.558941, 39.493908>,  <39.452278, 36.917496, 39.325768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508556, 36.558941, 39.493908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095644, 0.434892, 0.895389,
		-0.985422, -0.085777, 0.146923,
		0.140699, -0.896388, 0.420348,
		39.550766, 36.290024, 39.620010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958599, 36.785866, 39.790089>,  <39.452278, 36.917496, 39.325768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958599, 36.785866, 39.790089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286644, 36.585232, 39.900238>,  <39.483471, 36.464851, 39.966328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286644, 36.585232, 39.900238>,  <38.958599, 36.785866, 39.790089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286644, 36.585232, 39.900238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030494, 0.442255, 0.896371,
		-0.571388, -0.743523, 0.347404,
		0.820114, -0.501581, 0.275373,
		39.532677, 36.434757, 39.982849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983543, 36.822021, 40.409836>,  <38.958599, 36.785866, 39.790089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983543, 36.822021, 40.409836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354675, 36.672970, 40.403175>,  <39.577354, 36.583538, 40.399178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354675, 36.672970, 40.403175>,  <38.983543, 36.822021, 40.409836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354675, 36.672970, 40.403175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197807, 0.453700, 0.868924,
		-0.316228, -0.809510, 0.494665,
		0.927832, -0.372627, -0.016654,
		39.633026, 36.561180, 40.398178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072784, 36.597610, 41.086918>,  <38.983543, 36.822021, 40.409836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072784, 36.597610, 41.086918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437325, 36.659794, 40.934456>,  <39.656048, 36.697102, 40.842979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437325, 36.659794, 40.934456>,  <39.072784, 36.597610, 41.086918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437325, 36.659794, 40.934456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230778, 0.573784, 0.785820,
		0.340857, -0.804119, 0.487042,
		0.911350, 0.155454, -0.381151,
		39.710728, 36.706429, 40.820110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592449, 36.413197, 41.593166>,  <39.072784, 36.597610, 41.086918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592449, 36.413197, 41.593166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730663, 36.683121, 41.332325>,  <39.813591, 36.845078, 41.175819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730663, 36.683121, 41.332325>,  <39.592449, 36.413197, 41.593166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730663, 36.683121, 41.332325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078318, 0.671739, 0.736636,
		0.935133, -0.305604, 0.179258,
		0.345534, 0.674814, -0.652100,
		39.834324, 36.885563, 41.136696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774765, 35.894890, 42.147957>,  <39.592449, 36.413197, 41.593166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774765, 35.894890, 42.147957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558388, 35.834000, 42.478825>,  <39.428562, 35.797466, 42.677345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558388, 35.834000, 42.478825>,  <39.774765, 35.894890, 42.147957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558388, 35.834000, 42.478825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523613, -0.708687, -0.472855,
		0.658185, -0.688904, 0.303652,
		-0.540946, -0.152230, 0.827166,
		39.396103, 35.788330, 42.726974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727459, 35.226456, 42.221695>,  <39.774765, 35.894890, 42.147957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727459, 35.226456, 42.221695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418472, 35.342670, 42.447575>,  <39.233082, 35.412399, 42.583103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418472, 35.342670, 42.447575>,  <39.727459, 35.226456, 42.221695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418472, 35.342670, 42.447575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555557, -0.739946, -0.379256,
		0.307659, -0.606685, 0.732993,
		-0.772464, 0.290538, 0.564700,
		39.186733, 35.429832, 42.616985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512672, 34.640606, 42.449738>,  <39.727459, 35.226456, 42.221695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512672, 34.640606, 42.449738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185654, 34.864803, 42.502609>,  <38.989445, 34.999321, 42.534332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185654, 34.864803, 42.502609>,  <39.512672, 34.640606, 42.449738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185654, 34.864803, 42.502609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555859, -0.708088, -0.435467,
		-0.150478, -0.429489, 0.890447,
		-0.817543, 0.560491, 0.132183,
		38.940392, 35.032951, 42.542263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942665, 34.159279, 42.680672>,  <39.512672, 34.640606, 42.449738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942665, 34.159279, 42.680672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783356, 34.488079, 42.517849>,  <38.687771, 34.685360, 42.420155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783356, 34.488079, 42.517849>,  <38.942665, 34.159279, 42.680672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783356, 34.488079, 42.517849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732479, -0.552133, -0.398277,
		-0.552133, 0.139536, 0.821997,
		0.398277, -0.821997, 0.407057,
		38.663872, 34.734676, 42.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207375, 34.017429, 42.833183>,  <38.942665, 34.159279, 42.680672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207375, 34.017429, 42.833183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245472, 34.293427, 42.546177>,  <38.268330, 34.459026, 42.373974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245472, 34.293427, 42.546177>,  <38.207375, 34.017429, 42.833183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245472, 34.293427, 42.546177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745503, -0.428211, -0.510745,
		-0.659662, 0.583557, 0.473611,
		0.095244, 0.689997, -0.717518,
		38.274044, 34.500427, 42.330921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490456, 34.289852, 42.609142>,  <38.207375, 34.017429, 42.833183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490456, 34.289852, 42.609142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720745, 34.371796, 42.292515>,  <37.858917, 34.420959, 42.102539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720745, 34.371796, 42.292515>,  <37.490456, 34.289852, 42.609142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720745, 34.371796, 42.292515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771322, -0.185156, -0.608916,
		-0.271302, 0.961120, 0.051410,
		0.575723, 0.204854, -0.791567,
		37.893463, 34.433250, 42.055046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966763, 34.648300, 42.236450>,  <37.490456, 34.289852, 42.609142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966763, 34.648300, 42.236450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271202, 34.555367, 41.994209>,  <37.453865, 34.499607, 41.848866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271202, 34.555367, 41.994209>,  <36.966763, 34.648300, 42.236450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271202, 34.555367, 41.994209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644586, -0.166722, -0.746132,
		0.072382, 0.958241, -0.276649,
		0.761097, -0.232331, -0.605601,
		37.499531, 34.485668, 41.812531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877846, 34.942078, 41.537334>,  <36.966763, 34.648300, 42.236450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877846, 34.942078, 41.537334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137196, 34.646351, 41.464649>,  <37.292805, 34.468914, 41.421036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137196, 34.646351, 41.464649>,  <36.877846, 34.942078, 41.537334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137196, 34.646351, 41.464649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636852, -0.395903, -0.661574,
		0.417173, 0.544672, -0.727529,
		0.648372, -0.739319, -0.181716,
		37.331707, 34.424557, 41.410133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081043, 34.974194, 40.843384>,  <36.877846, 34.942078, 41.537334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081043, 34.974194, 40.843384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140064, 34.595531, 40.957970>,  <37.175476, 34.368332, 41.026722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140064, 34.595531, 40.957970>,  <37.081043, 34.974194, 40.843384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140064, 34.595531, 40.957970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502619, -0.321220, -0.802616,
		0.851823, -0.025558, -0.523206,
		0.147551, -0.946660, 0.286469,
		37.184330, 34.311535, 41.043911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092102, 34.707108, 40.208019>,  <37.081043, 34.974194, 40.843384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092102, 34.707108, 40.208019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083378, 34.390419, 40.452217>,  <37.078144, 34.200405, 40.598736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083378, 34.390419, 40.452217>,  <37.092102, 34.707108, 40.208019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083378, 34.390419, 40.452217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332810, -0.570065, -0.751175,
		0.942741, -0.219564, -0.251058,
		-0.021812, -0.791718, 0.610497,
		37.076836, 34.152905, 40.635365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418270, 34.184055, 39.843655>,  <37.092102, 34.707108, 40.208019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418270, 34.184055, 39.843655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175865, 34.019501, 40.115978>,  <37.030422, 33.920769, 40.279373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175865, 34.019501, 40.115978>,  <37.418270, 34.184055, 39.843655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175865, 34.019501, 40.115978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560968, -0.385787, -0.732450,
		0.563969, -0.825790, 0.003018,
		-0.606015, -0.411386, 0.680814,
		36.994061, 33.896084, 40.320221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188286, 33.593872, 39.556385>,  <37.418270, 34.184055, 39.843655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188286, 33.593872, 39.556385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896450, 33.654255, 39.823193>,  <36.721348, 33.690483, 39.983276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896450, 33.654255, 39.823193>,  <37.188286, 33.593872, 39.556385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896450, 33.654255, 39.823193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675322, -0.312899, -0.667858,
		0.107890, -0.937713, 0.330234,
		-0.729589, 0.150958, 0.667016,
		36.677574, 33.699543, 40.023296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.351795, 38.467033, 45.116791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956074, 38.412258, 45.136883>,  <40.718639, 38.379391, 45.148937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956074, 38.412258, 45.136883>,  <41.351795, 38.467033, 45.116791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956074, 38.412258, 45.136883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067733, -0.736263, -0.673297,
		0.129183, -0.662694, 0.737664,
		-0.989305, -0.136943, 0.050226,
		40.659283, 38.371174, 45.151951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109486, 37.696606, 45.399132>,  <41.351795, 38.467033, 45.116791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109486, 37.696606, 45.399132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802608, 37.846943, 45.191223>,  <40.618481, 37.937145, 45.066479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802608, 37.846943, 45.191223>,  <41.109486, 37.696606, 45.399132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802608, 37.846943, 45.191223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086768, -0.863708, -0.496467,
		-0.635518, -0.335788, 0.695243,
		-0.767195, 0.375839, -0.519767,
		40.572449, 37.959694, 45.035294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652344, 37.111000, 45.286808>,  <41.109486, 37.696606, 45.399132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652344, 37.111000, 45.286808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492977, 37.365685, 45.022728>,  <40.397358, 37.518494, 44.864281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492977, 37.365685, 45.022728>,  <40.652344, 37.111000, 45.286808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492977, 37.365685, 45.022728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291123, -0.770361, -0.567266,
		-0.869777, -0.033809, 0.492286,
		-0.398416, 0.636711, -0.660200,
		40.373451, 37.556698, 44.824669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060986, 36.756985, 45.081387>,  <40.652344, 37.111000, 45.286808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060986, 36.756985, 45.081387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132641, 37.033264, 44.801147>,  <40.175632, 37.199032, 44.633003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132641, 37.033264, 44.801147>,  <40.060986, 36.756985, 45.081387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132641, 37.033264, 44.801147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398448, -0.600168, -0.693569,
		-0.899527, 0.403396, 0.167696,
		0.179137, 0.690702, -0.700600,
		40.186382, 37.240475, 44.590969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438232, 36.921356, 44.870781>,  <40.060986, 36.756985, 45.081387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438232, 36.921356, 44.870781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704033, 37.007530, 44.584557>,  <39.863514, 37.059235, 44.412823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704033, 37.007530, 44.584557>,  <39.438232, 36.921356, 44.870781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704033, 37.007530, 44.584557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344753, -0.761176, -0.549324,
		-0.663014, 0.611716, -0.431526,
		0.664498, 0.215439, -0.715562,
		39.903381, 37.072163, 44.369888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037609, 37.114342, 44.325886>,  <39.438232, 36.921356, 44.870781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037609, 37.114342, 44.325886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392368, 37.016640, 44.169041>,  <39.605225, 36.958019, 44.074932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392368, 37.016640, 44.169041>,  <39.037609, 37.114342, 44.325886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392368, 37.016640, 44.169041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459759, -0.549562, -0.697570,
		-0.045106, 0.798950, -0.599703,
		0.886897, -0.244254, -0.392113,
		39.658436, 36.943363, 44.051407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890266, 37.159649, 43.608692>,  <39.037609, 37.114342, 44.325886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890266, 37.159649, 43.608692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224030, 36.939995, 43.627502>,  <39.424290, 36.808201, 43.638790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224030, 36.939995, 43.627502>,  <38.890266, 37.159649, 43.608692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224030, 36.939995, 43.627502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351380, -0.595769, -0.722213,
		0.424608, 0.586098, -0.690070,
		0.834410, -0.549134, 0.047025,
		39.474354, 36.775253, 43.641609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126034, 37.063320, 42.984646>,  <38.890266, 37.159649, 43.608692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126034, 37.063320, 42.984646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313389, 36.763889, 43.172363>,  <39.425800, 36.584229, 43.284996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313389, 36.763889, 43.172363>,  <39.126034, 37.063320, 42.984646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313389, 36.763889, 43.172363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319496, -0.638727, -0.699965,
		0.823734, 0.177915, -0.538339,
		0.468386, -0.748581, 0.469298,
		39.453903, 36.539314, 43.313152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524624, 36.626884, 42.387096>,  <39.126034, 37.063320, 42.984646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524624, 36.626884, 42.387096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460121, 36.417568, 42.721798>,  <39.421417, 36.291977, 42.922619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460121, 36.417568, 42.721798>,  <39.524624, 36.626884, 42.387096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460121, 36.417568, 42.721798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436242, -0.722728, -0.536057,
		0.885262, -0.451472, -0.111736,
		-0.161260, -0.523294, 0.836755,
		39.411743, 36.260578, 42.972824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122662, 36.780582, 41.936592>,  <39.524624, 36.626884, 42.387096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122662, 36.780582, 41.936592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065838, 37.035133, 41.633316>,  <40.031746, 37.187862, 41.451351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065838, 37.035133, 41.633316>,  <40.122662, 36.780582, 41.936592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065838, 37.035133, 41.633316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251022, 0.764076, 0.594287,
		0.957501, -0.105900, -0.268285,
		-0.142056, 0.636375, -0.758186,
		40.023220, 37.226048, 41.405861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640469, 37.230633, 42.042938>,  <40.122662, 36.780582, 41.936592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640469, 37.230633, 42.042938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409477, 37.450428, 41.801418>,  <40.270882, 37.582306, 41.656506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409477, 37.450428, 41.801418>,  <40.640469, 37.230633, 42.042938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409477, 37.450428, 41.801418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150301, 0.798499, 0.582931,
		0.802450, 0.245880, -0.543707,
		-0.577481, 0.549493, -0.603799,
		40.236233, 37.615276, 41.620277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960285, 37.857136, 41.916321>,  <40.640469, 37.230633, 42.042938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960285, 37.857136, 41.916321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576256, 37.930500, 41.831829>,  <40.345837, 37.974518, 41.781136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.576256, 37.930500, 41.831829>,  <40.960285, 37.857136, 41.916321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576256, 37.930500, 41.831829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060705, 0.873670, 0.482717,
		0.273081, 0.450621, -0.849922,
		-0.960074, 0.183415, -0.211228,
		40.288235, 37.985523, 41.768459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860279, 38.531723, 41.573952>,  <40.960285, 37.857136, 41.916321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860279, 38.531723, 41.573952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488247, 38.470589, 41.707577>,  <40.265026, 38.433910, 41.787750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488247, 38.470589, 41.707577>,  <40.860279, 38.531723, 41.573952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488247, 38.470589, 41.707577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080603, 0.972092, 0.220319,
		-0.358407, 0.177988, -0.916442,
		-0.930080, -0.152831, 0.334058,
		40.209225, 38.424740, 41.807793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522797, 39.133430, 41.303680>,  <40.860279, 38.531723, 41.573952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522797, 39.133430, 41.303680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314884, 38.967537, 41.602428>,  <40.190136, 38.868000, 41.781677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314884, 38.967537, 41.602428>,  <40.522797, 39.133430, 41.303680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314884, 38.967537, 41.602428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273863, 0.909009, 0.314168,
		-0.809211, -0.041241, -0.586069,
		-0.519785, -0.414731, 0.746874,
		40.158947, 38.843117, 41.826492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824425, 39.490761, 41.288258>,  <40.522797, 39.133430, 41.303680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824425, 39.490761, 41.288258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.890987, 39.332191, 41.649403>,  <39.930923, 39.237049, 41.866089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.890987, 39.332191, 41.649403>,  <39.824425, 39.490761, 41.288258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890987, 39.332191, 41.649403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205468, 0.881588, 0.424952,
		-0.964413, -0.256224, 0.065250,
		0.166406, -0.396423, 0.902861,
		39.940910, 39.213264, 41.920261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387783, 39.857159, 41.701096>,  <39.824425, 39.490761, 41.288258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387783, 39.857159, 41.701096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632252, 39.686256, 41.967606>,  <39.778934, 39.583717, 42.127510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632252, 39.686256, 41.967606>,  <39.387783, 39.857159, 41.701096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632252, 39.686256, 41.967606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062580, 0.865240, 0.497436,
		-0.789017, -0.262325, 0.555551,
		0.611175, -0.427252, 0.666273,
		39.815605, 39.558083, 42.167488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116207, 40.072117, 42.347378>,  <39.387783, 39.857159, 41.701096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116207, 40.072117, 42.347378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487629, 39.955578, 42.439377>,  <39.710484, 39.885654, 42.494576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487629, 39.955578, 42.439377>,  <39.116207, 40.072117, 42.347378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487629, 39.955578, 42.439377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157867, 0.870765, 0.465668,
		-0.335943, -0.396091, 0.854549,
		0.928558, -0.291343, 0.229998,
		39.766197, 39.868176, 42.508377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256401, 40.248360, 43.177715>,  <39.116207, 40.072117, 42.347378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256401, 40.248360, 43.177715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591522, 40.215000, 42.961891>,  <39.792595, 40.194984, 42.832397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591522, 40.215000, 42.961891>,  <39.256401, 40.248360, 43.177715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591522, 40.215000, 42.961891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337596, 0.855819, 0.391921,
		0.429078, -0.510507, 0.745168,
		0.837808, -0.083401, -0.539558,
		39.842865, 40.189980, 42.800022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729324, 40.236725, 43.661442>,  <39.256401, 40.248360, 43.177715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729324, 40.236725, 43.661442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919933, 40.350189, 43.328587>,  <40.034298, 40.418266, 43.128872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919933, 40.350189, 43.328587>,  <39.729324, 40.236725, 43.661442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919933, 40.350189, 43.328587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277979, 0.849346, 0.448709,
		0.834054, -0.445141, 0.325889,
		0.476531, 0.283657, -0.832140,
		40.062893, 40.435287, 43.078945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312374, 40.509628, 43.782173>,  <39.729324, 40.236725, 43.661442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312374, 40.509628, 43.782173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325272, 40.675648, 43.418484>,  <40.333012, 40.775261, 43.200268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325272, 40.675648, 43.418484>,  <40.312374, 40.509628, 43.782173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325272, 40.675648, 43.418484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309579, 0.860816, 0.403927,
		0.950327, -0.294501, -0.100735,
		0.032242, 0.415048, -0.909228,
		40.334946, 40.800163, 43.145714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961960, 40.782986, 43.733467>,  <40.312374, 40.509628, 43.782173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961960, 40.782986, 43.733467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725899, 41.001740, 43.495937>,  <40.584263, 41.132992, 43.353420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725899, 41.001740, 43.495937>,  <40.961960, 40.782986, 43.733467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725899, 41.001740, 43.495937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327926, 0.834560, 0.442689,
		0.737686, 0.066524, -0.671859,
		-0.590156, 0.546885, -0.593828,
		40.548851, 41.165806, 43.317787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410587, 41.252487, 43.406845>,  <40.961960, 40.782986, 43.733467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410587, 41.252487, 43.406845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033195, 41.384850, 43.399361>,  <40.806763, 41.464268, 43.394871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033195, 41.384850, 43.399361>,  <41.410587, 41.252487, 43.406845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033195, 41.384850, 43.399361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307888, 0.895945, 0.320137,
		0.122700, 0.296281, -0.947186,
		-0.943478, 0.330908, -0.018711,
		40.750153, 41.484123, 43.393749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473560, 41.982792, 42.996777>,  <41.410587, 41.252487, 43.406845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473560, 41.982792, 42.996777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110447, 41.995472, 43.164070>,  <40.892578, 42.003078, 43.264446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110447, 41.995472, 43.164070>,  <41.473560, 41.982792, 42.996777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110447, 41.995472, 43.164070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169116, 0.940155, 0.295817,
		-0.383827, 0.339269, -0.858821,
		-0.907786, 0.031698, 0.418233,
		40.838112, 42.004982, 43.289539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.143883, 40.804501, 46.070614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481331, 40.595741, 46.121078>,  <34.683800, 40.470486, 46.151360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481331, 40.595741, 46.121078>,  <34.143883, 40.804501, 46.070614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481331, 40.595741, 46.121078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263351, -0.606956, -0.749834,
		0.467916, 0.599352, -0.649486,
		0.843623, -0.521902, 0.126165,
		34.734417, 40.439171, 46.158928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366322, 40.566746, 45.409863>,  <34.143883, 40.804501, 46.070614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366322, 40.566746, 45.409863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594818, 40.351974, 45.658180>,  <34.731915, 40.223110, 45.807171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594818, 40.351974, 45.658180>,  <34.366322, 40.566746, 45.409863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594818, 40.351974, 45.658180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078172, -0.717321, -0.692344,
		0.817050, 0.444026, -0.367791,
		0.571243, -0.536929, 0.620798,
		34.766190, 40.190895, 45.844418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897625, 40.402599, 45.088081>,  <34.366322, 40.566746, 45.409863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897625, 40.402599, 45.088081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857033, 40.121681, 45.369926>,  <34.832676, 39.953129, 45.539036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857033, 40.121681, 45.369926>,  <34.897625, 40.402599, 45.088081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857033, 40.121681, 45.369926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035530, -0.705260, -0.708057,
		0.994203, -0.096889, 0.046618,
		-0.101481, -0.702296, 0.704614,
		34.826588, 39.910992, 45.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373470, 40.004906, 44.975834>,  <34.897625, 40.402599, 45.088081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373470, 40.004906, 44.975834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.107521, 39.794930, 45.188393>,  <34.947952, 39.668945, 45.315926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.107521, 39.794930, 45.188393>,  <35.373470, 40.004906, 44.975834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107521, 39.794930, 45.188393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042750, -0.736992, -0.674549,
		0.745729, -0.425775, 0.512450,
		-0.664877, -0.524938, 0.531394,
		34.908058, 39.637447, 45.347813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638294, 39.299229, 44.921200>,  <35.373470, 40.004906, 44.975834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638294, 39.299229, 44.921200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266102, 39.255589, 45.061085>,  <35.042786, 39.229404, 45.145016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266102, 39.255589, 45.061085>,  <35.638294, 39.299229, 44.921200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266102, 39.255589, 45.061085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032063, -0.926701, -0.374430,
		0.364928, -0.359613, 0.858782,
		-0.930484, -0.109105, 0.349709,
		34.986958, 39.222858, 45.165997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557331, 38.551510, 45.090736>,  <35.638294, 39.299229, 44.921200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557331, 38.551510, 45.090736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200306, 38.715981, 45.016689>,  <34.986092, 38.814663, 44.972263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200306, 38.715981, 45.016689>,  <35.557331, 38.551510, 45.090736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200306, 38.715981, 45.016689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251060, -0.794153, -0.553434,
		-0.374567, -0.447500, 0.812061,
		-0.892563, 0.411174, -0.185115,
		34.932537, 38.839333, 44.961155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183811, 38.049335, 45.027412>,  <35.557331, 38.551510, 45.090736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183811, 38.049335, 45.027412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936565, 38.302158, 44.840462>,  <34.788219, 38.453854, 44.728291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936565, 38.302158, 44.840462>,  <35.183811, 38.049335, 45.027412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936565, 38.302158, 44.840462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363101, -0.756895, -0.543385,
		-0.697206, -0.166167, 0.697346,
		-0.618110, 0.632058, -0.467377,
		34.751133, 38.491776, 44.700249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633781, 37.681686, 44.765610>,  <35.183811, 38.049335, 45.027412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633781, 37.681686, 44.765610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598431, 38.000038, 44.526020>,  <34.577221, 38.191048, 44.382267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598431, 38.000038, 44.526020>,  <34.633781, 37.681686, 44.765610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598431, 38.000038, 44.526020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271886, -0.597765, -0.754158,
		-0.958263, 0.096205, 0.269214,
		-0.088372, 0.795878, -0.598973,
		34.571918, 38.238800, 44.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997158, 37.578106, 44.548210>,  <34.633781, 37.681686, 44.765610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997158, 37.578106, 44.548210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197899, 37.810555, 44.291946>,  <34.318344, 37.950024, 44.138187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197899, 37.810555, 44.291946>,  <33.997158, 37.578106, 44.548210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197899, 37.810555, 44.291946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301875, -0.576442, -0.759333,
		-0.810567, 0.574471, -0.113862,
		0.501849, 0.581118, -0.640663,
		34.348454, 37.984890, 44.099747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551464, 37.901257, 43.987049>,  <33.997158, 37.578106, 44.548210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551464, 37.901257, 43.987049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923618, 37.919765, 43.841583>,  <34.146912, 37.930870, 43.754303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923618, 37.919765, 43.841583>,  <33.551464, 37.901257, 43.987049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923618, 37.919765, 43.841583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302416, -0.463830, -0.832710,
		-0.207210, 0.884715, -0.417545,
		0.930381, 0.046273, -0.363662,
		34.202732, 37.933647, 43.732483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346767, 38.040215, 43.399769>,  <33.551464, 37.901257, 43.987049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346767, 38.040215, 43.399769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721302, 37.899822, 43.396057>,  <33.946022, 37.815586, 43.393829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721302, 37.899822, 43.396057>,  <33.346767, 38.040215, 43.399769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721302, 37.899822, 43.396057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209627, -0.537629, -0.816708,
		0.281660, 0.766659, -0.576977,
		0.936336, -0.350984, -0.009284,
		34.002201, 37.794525, 43.393272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575283, 38.126884, 42.755527>,  <33.346767, 38.040215, 43.399769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575283, 38.126884, 42.755527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832615, 37.852036, 42.890575>,  <33.987015, 37.687126, 42.971603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832615, 37.852036, 42.890575>,  <33.575283, 38.126884, 42.755527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832615, 37.852036, 42.890575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198096, -0.575379, -0.793534,
		0.739514, 0.443625, -0.506276,
		0.643332, -0.687121, 0.337621,
		34.025616, 37.645901, 42.991863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817848, 37.927715, 42.177990>,  <33.575283, 38.126884, 42.755527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817848, 37.927715, 42.177990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900105, 37.628971, 42.430943>,  <33.949459, 37.449722, 42.582714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900105, 37.628971, 42.430943>,  <33.817848, 37.927715, 42.177990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900105, 37.628971, 42.430943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129677, -0.661288, -0.738838,
		0.969998, 0.069931, -0.232840,
		0.205642, -0.746865, 0.632379,
		33.961796, 37.404911, 42.620655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264450, 37.525833, 41.862335>,  <33.817848, 37.927715, 42.177990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264450, 37.525833, 41.862335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113750, 37.273045, 42.133240>,  <34.023331, 37.121372, 42.295780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113750, 37.273045, 42.133240>,  <34.264450, 37.525833, 41.862335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113750, 37.273045, 42.133240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071539, -0.709096, -0.701473,
		0.923548, -0.312730, 0.221942,
		-0.376750, -0.631967, 0.677257,
		34.000725, 37.083454, 42.336418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899220, 37.608093, 41.632931>,  <34.264450, 37.525833, 41.862335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899220, 37.608093, 41.632931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888451, 37.814415, 41.290417>,  <34.881989, 37.938206, 41.084908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888451, 37.814415, 41.290417>,  <34.899220, 37.608093, 41.632931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888451, 37.814415, 41.290417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140750, 0.850019, 0.507600,
		0.989679, -0.106856, -0.095483,
		-0.026923, 0.515800, -0.856286,
		34.880375, 37.969154, 41.033531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469601, 38.042850, 41.653122>,  <34.899220, 37.608093, 41.632931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469601, 38.042850, 41.653122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212269, 38.214958, 41.399826>,  <35.057869, 38.318222, 41.247849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212269, 38.214958, 41.399826>,  <35.469601, 38.042850, 41.653122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212269, 38.214958, 41.399826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216505, 0.895612, 0.388592,
		0.734339, 0.112893, -0.669329,
		-0.643328, 0.430272, -0.633242,
		35.019272, 38.344040, 41.209854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833927, 38.582027, 41.434292>,  <35.469601, 38.042850, 41.653122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833927, 38.582027, 41.434292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453693, 38.659904, 41.337566>,  <35.225552, 38.706631, 41.279530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453693, 38.659904, 41.337566>,  <35.833927, 38.582027, 41.434292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453693, 38.659904, 41.337566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112181, 0.941696, 0.317213,
		0.289479, 0.274411, -0.917006,
		-0.950588, 0.194697, -0.241817,
		35.168518, 38.718315, 41.265022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872162, 39.061874, 40.976376>,  <35.833927, 38.582027, 41.434292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872162, 39.061874, 40.976376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515968, 39.081772, 41.157291>,  <35.302254, 39.093708, 41.265842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515968, 39.081772, 41.157291>,  <35.872162, 39.061874, 40.976376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515968, 39.081772, 41.157291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221032, 0.916138, 0.334419,
		-0.397729, 0.397766, -0.826798,
		-0.890481, 0.049741, 0.452293,
		35.248825, 39.096695, 41.292980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529659, 39.653233, 40.741886>,  <35.872162, 39.061874, 40.976376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529659, 39.653233, 40.741886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378551, 39.585690, 41.106037>,  <35.287888, 39.545162, 41.324528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378551, 39.585690, 41.106037>,  <35.529659, 39.653233, 40.741886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378551, 39.585690, 41.106037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165359, 0.955119, 0.245773,
		-0.911016, 0.243383, -0.332889,
		-0.377765, -0.168857, 0.910374,
		35.265221, 39.535034, 41.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325684, 40.336685, 40.951569>,  <35.529659, 39.653233, 40.741886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325684, 40.336685, 40.951569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258362, 40.156925, 41.302502>,  <35.217968, 40.049068, 41.513062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258362, 40.156925, 41.302502>,  <35.325684, 40.336685, 40.951569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258362, 40.156925, 41.302502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212890, 0.852453, 0.477495,
		-0.962472, 0.267138, -0.047794,
		-0.168300, -0.449401, 0.877333,
		35.207870, 40.022106, 41.565701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897018, 40.805744, 41.341137>,  <35.325684, 40.336685, 40.951569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897018, 40.805744, 41.341137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057117, 40.552639, 41.606289>,  <35.153179, 40.400776, 41.765381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057117, 40.552639, 41.606289>,  <34.897018, 40.805744, 41.341137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057117, 40.552639, 41.606289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230493, 0.769604, 0.595468,
		-0.886946, -0.085547, 0.453882,
		0.400250, -0.632765, 0.662879,
		35.177193, 40.362808, 41.805153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562813, 40.888718, 41.934040>,  <34.897018, 40.805744, 41.341137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562813, 40.888718, 41.934040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929405, 40.753933, 42.020317>,  <35.149361, 40.673061, 42.072083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929405, 40.753933, 42.020317>,  <34.562813, 40.888718, 41.934040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929405, 40.753933, 42.020317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075882, 0.675742, 0.733222,
		-0.392819, -0.655615, 0.644873,
		0.916479, -0.336958, 0.215695,
		35.204350, 40.652847, 42.085026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614643, 40.919670, 42.708385>,  <34.562813, 40.888718, 41.934040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614643, 40.919670, 42.708385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992149, 40.897720, 42.577969>,  <35.218651, 40.884548, 42.499718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992149, 40.897720, 42.577969>,  <34.614643, 40.919670, 42.708385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992149, 40.897720, 42.577969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285623, 0.632036, 0.720382,
		0.166536, -0.772994, 0.612166,
		0.943761, -0.054879, -0.326041,
		35.275276, 40.881256, 42.480156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937340, 41.079262, 43.230045>,  <34.614643, 40.919670, 42.708385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937340, 41.079262, 43.230045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245975, 41.103043, 42.976711>,  <35.431156, 41.117310, 42.824711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245975, 41.103043, 42.976711>,  <34.937340, 41.079262, 43.230045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245975, 41.103043, 42.976711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473971, 0.610300, 0.634732,
		0.424260, -0.789936, 0.442724,
		0.771592, 0.059453, -0.633333,
		35.477451, 41.120880, 42.786713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623455, 40.934605, 43.492764>,  <34.937340, 41.079262, 43.230045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623455, 40.934605, 43.492764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652988, 41.194691, 43.190300>,  <35.670708, 41.350742, 43.008823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652988, 41.194691, 43.190300>,  <35.623455, 40.934605, 43.492764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652988, 41.194691, 43.190300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493093, 0.635258, 0.594395,
		0.866838, -0.416740, -0.273714,
		0.073829, 0.650211, -0.756158,
		35.675137, 41.389755, 42.963451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317791, 41.081696, 43.456181>,  <35.623455, 40.934605, 43.492764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317791, 41.081696, 43.456181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145767, 41.405727, 43.296768>,  <36.042553, 41.600147, 43.201122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145767, 41.405727, 43.296768>,  <36.317791, 41.081696, 43.456181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145767, 41.405727, 43.296768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608074, 0.586200, 0.535365,
		0.667305, -0.012098, -0.744686,
		-0.430058, 0.810076, -0.398530,
		36.016750, 41.648750, 43.177208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764492, 41.512081, 43.625240>,  <36.317791, 41.081696, 43.456181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764492, 41.512081, 43.625240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454720, 41.749493, 43.537628>,  <36.268856, 41.891941, 43.485062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454720, 41.749493, 43.537628>,  <36.764492, 41.512081, 43.625240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454720, 41.749493, 43.537628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353186, 0.692836, 0.628680,
		0.524897, 0.409509, -0.746181,
		-0.774431, 0.593533, -0.219035,
		36.222389, 41.927551, 43.471916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044846, 42.181541, 43.272438>,  <36.764492, 41.512081, 43.625240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044846, 42.181541, 43.272438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707615, 42.234127, 43.481030>,  <36.505276, 42.265678, 43.606186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707615, 42.234127, 43.481030>,  <37.044846, 42.181541, 43.272438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707615, 42.234127, 43.481030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445990, 0.712776, 0.541335,
		-0.300534, 0.688961, -0.659554,
		-0.843073, 0.131465, 0.521483,
		36.454693, 42.273567, 43.637474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289566, 42.712070, 42.844376>,  <37.044846, 42.181541, 43.272438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289566, 42.712070, 42.844376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666702, 42.771618, 42.725121>,  <37.892986, 42.807346, 42.653568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666702, 42.771618, 42.725121>,  <37.289566, 42.712070, 42.844376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666702, 42.771618, 42.725121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136451, -0.643750, -0.752972,
		-0.304020, 0.750615, -0.586642,
		0.942843, 0.148871, -0.298135,
		37.949554, 42.816280, 42.635681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280407, 42.830948, 42.131310>,  <37.289566, 42.712070, 42.844376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280407, 42.830948, 42.131310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656456, 42.716213, 42.204960>,  <37.882084, 42.647373, 42.249149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656456, 42.716213, 42.204960>,  <37.280407, 42.830948, 42.131310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656456, 42.716213, 42.204960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037421, -0.623791, -0.780695,
		0.338785, 0.727057, -0.597171,
		0.940119, -0.286835, 0.184124,
		37.938492, 42.630161, 42.260197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465923, 42.614700, 41.560810>,  <37.280407, 42.830948, 42.131310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465923, 42.614700, 41.560810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772045, 42.470516, 41.774117>,  <37.955719, 42.384007, 41.902100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772045, 42.470516, 41.774117>,  <37.465923, 42.614700, 41.560810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772045, 42.470516, 41.774117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257874, -0.587385, -0.767125,
		0.589755, 0.724600, -0.356574,
		0.765304, -0.360464, 0.533268,
		38.001637, 42.362377, 41.934097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965244, 42.496246, 41.101807>,  <37.465923, 42.614700, 41.560810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965244, 42.496246, 41.101807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080936, 42.257713, 41.401333>,  <38.150352, 42.114594, 41.581051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080936, 42.257713, 41.401333>,  <37.965244, 42.496246, 41.101807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080936, 42.257713, 41.401333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281347, -0.694746, -0.661946,
		0.914980, 0.402134, -0.033167,
		0.289234, -0.596336, 0.748818,
		38.167706, 42.078812, 41.625977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588913, 42.251900, 40.890221>,  <37.965244, 42.496246, 41.101807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588913, 42.251900, 40.890221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461449, 42.003139, 41.176353>,  <38.384972, 41.853882, 41.348034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461449, 42.003139, 41.176353>,  <38.588913, 42.251900, 40.890221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461449, 42.003139, 41.176353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122570, -0.775370, -0.619499,
		0.939911, -0.109731, 0.323305,
		-0.318659, -0.621901, 0.715329,
		38.365852, 41.816570, 41.390953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030018, 41.655865, 40.858238>,  <38.588913, 42.251900, 40.890221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030018, 41.655865, 40.858238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689564, 41.533573, 41.028934>,  <38.485291, 41.460197, 41.131351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689564, 41.533573, 41.028934>,  <39.030018, 41.655865, 40.858238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689564, 41.533573, 41.028934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030831, -0.782399, -0.622014,
		0.524047, -0.542572, 0.656498,
		-0.851131, -0.305724, 0.426742,
		38.434223, 41.441856, 41.156956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120426, 40.903660, 41.072628>,  <39.030018, 41.655865, 40.858238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120426, 40.903660, 41.072628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726898, 40.973610, 41.057083>,  <38.490780, 41.015579, 41.047756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726898, 40.973610, 41.057083>,  <39.120426, 40.903660, 41.072628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726898, 40.973610, 41.057083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139287, -0.883144, -0.447946,
		-0.112654, -0.435287, 0.893216,
		-0.983823, 0.174876, -0.038860,
		38.431751, 41.026073, 41.045425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891296, 40.305069, 41.100643>,  <39.120426, 40.903660, 41.072628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891296, 40.305069, 41.100643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549454, 40.487175, 41.000736>,  <38.344349, 40.596439, 40.940792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549454, 40.487175, 41.000736>,  <38.891296, 40.305069, 41.100643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549454, 40.487175, 41.000736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298827, -0.824537, -0.480460,
		-0.424683, -0.335965, 0.840697,
		-0.854603, 0.455266, -0.249771,
		38.293072, 40.623756, 40.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325497, 39.823914, 41.302795>,  <38.891296, 40.305069, 41.100643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325497, 39.823914, 41.302795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220116, 40.081493, 41.015488>,  <38.156887, 40.236042, 40.843102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220116, 40.081493, 41.015488>,  <38.325497, 39.823914, 41.302795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220116, 40.081493, 41.015488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245715, -0.764814, -0.595553,
		-0.932854, 0.019590, 0.359721,
		-0.263453, 0.643953, -0.718274,
		38.141079, 40.274681, 40.800007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612984, 39.633827, 41.139847>,  <38.325497, 39.823914, 41.302795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612984, 39.633827, 41.139847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745049, 39.829411, 40.816883>,  <37.824287, 39.946758, 40.623104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745049, 39.829411, 40.816883>,  <37.612984, 39.633827, 41.139847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745049, 39.829411, 40.816883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328246, -0.742520, -0.583883,
		-0.885011, 0.457808, -0.084658,
		0.330166, 0.488954, -0.807412,
		37.844097, 39.976097, 40.574661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004532, 39.713577, 40.733864>,  <37.612984, 39.633827, 41.139847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004532, 39.713577, 40.733864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321922, 39.764858, 40.495884>,  <37.512356, 39.795628, 40.353096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321922, 39.764858, 40.495884>,  <37.004532, 39.713577, 40.733864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321922, 39.764858, 40.495884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325108, -0.737108, -0.592432,
		-0.514491, 0.663503, -0.543198,
		0.793476, 0.128203, -0.594945,
		37.559963, 39.803318, 40.317402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721546, 39.630901, 40.095505>,  <37.004532, 39.713577, 40.733864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721546, 39.630901, 40.095505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115234, 39.571751, 40.056652>,  <37.351448, 39.536259, 40.033340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115234, 39.571751, 40.056652>,  <36.721546, 39.630901, 40.095505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115234, 39.571751, 40.056652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174004, -0.709791, -0.682583,
		0.031998, 0.688716, -0.724325,
		0.984225, -0.147877, -0.097128,
		37.410503, 39.527390, 40.027515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847927, 39.499157, 39.404484>,  <36.721546, 39.630901, 40.095505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847927, 39.499157, 39.404484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197899, 39.364052, 39.543289>,  <37.407883, 39.282990, 39.626572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197899, 39.364052, 39.543289>,  <36.847927, 39.499157, 39.404484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197899, 39.364052, 39.543289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070707, -0.798014, -0.598476,
		0.479066, 0.499086, -0.722086,
		0.874927, -0.337766, 0.347013,
		37.460377, 39.262722, 39.647392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309525, 39.509937, 38.802109>,  <36.847927, 39.499157, 39.404484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309525, 39.509937, 38.802109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454464, 39.249321, 39.068699>,  <37.541428, 39.092949, 39.228653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454464, 39.249321, 39.068699>,  <37.309525, 39.509937, 38.802109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454464, 39.249321, 39.068699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025654, -0.721774, -0.691653,
		0.931689, 0.233522, -0.278250,
		0.362350, -0.651543, 0.666479,
		37.563168, 39.053860, 39.268642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.587494, 36.426456, 31.495888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323143, 36.374924, 31.200146>,  <32.164532, 36.344006, 31.022701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323143, 36.374924, 31.200146>,  <32.587494, 36.426456, 31.495888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323143, 36.374924, 31.200146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721306, -0.163047, 0.673152,
		-0.207273, 0.978171, 0.014827,
		-0.660875, -0.128832, -0.739356,
		32.124882, 36.336273, 30.978338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014305, 36.877148, 31.593624>,  <32.587494, 36.426456, 31.495888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014305, 36.877148, 31.593624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845922, 36.560196, 31.417023>,  <31.744892, 36.370026, 31.311062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845922, 36.560196, 31.417023>,  <32.014305, 36.877148, 31.593624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845922, 36.560196, 31.417023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611715, -0.111404, 0.783194,
		-0.669773, 0.599769, -0.437814,
		-0.420961, -0.792380, -0.441503,
		31.719635, 36.322483, 31.284573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246185, 36.911621, 31.657091>,  <32.014305, 36.877148, 31.593624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246185, 36.911621, 31.657091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.346458, 36.528114, 31.603535>,  <31.406622, 36.298012, 31.571402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.346458, 36.528114, 31.603535>,  <31.246185, 36.911621, 31.657091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346458, 36.528114, 31.603535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706878, -0.275784, 0.651358,
		-0.661425, -0.068638, -0.746864,
		0.250681, -0.958766, -0.133891,
		31.421663, 36.240486, 31.563368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650391, 36.567215, 31.430574>,  <31.246185, 36.911621, 31.657091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650391, 36.567215, 31.430574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873785, 36.265984, 31.569696>,  <31.007822, 36.085243, 31.653170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873785, 36.265984, 31.569696>,  <30.650391, 36.567215, 31.430574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873785, 36.265984, 31.569696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742033, -0.266130, 0.615274,
		-0.370788, -0.601704, -0.707438,
		0.558484, -0.753078, 0.347806,
		31.041330, 36.040062, 31.674038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190002, 36.133648, 31.448803>,  <30.650391, 36.567215, 31.430574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190002, 36.133648, 31.448803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489624, 36.007202, 31.681692>,  <30.669397, 35.931335, 31.821426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489624, 36.007202, 31.681692>,  <30.190002, 36.133648, 31.448803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489624, 36.007202, 31.681692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657292, -0.244553, 0.712854,
		-0.082959, -0.916660, -0.390964,
		0.749056, -0.316115, 0.582225,
		30.714340, 35.912369, 31.856359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006449, 35.429909, 31.677887>,  <30.190002, 36.133648, 31.448803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006449, 35.429909, 31.677887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.278322, 35.557949, 31.941877>,  <30.441446, 35.634773, 32.100269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.278322, 35.557949, 31.941877>,  <30.006449, 35.429909, 31.677887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278322, 35.557949, 31.941877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577284, -0.321640, 0.750527,
		0.452518, -0.891113, -0.033825,
		0.679684, 0.320101, 0.659974,
		30.482227, 35.653980, 32.139870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191017, 34.814518, 32.116413>,  <30.006449, 35.429909, 31.677887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191017, 34.814518, 32.116413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.263220, 35.159031, 32.306408>,  <30.306541, 35.365738, 32.420406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.263220, 35.159031, 32.306408>,  <30.191017, 34.814518, 32.116413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263220, 35.159031, 32.306408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504463, -0.333500, 0.796426,
		0.844354, -0.383376, 0.374284,
		0.180507, 0.861279, 0.474991,
		30.317371, 35.417416, 32.448906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302620, 34.597229, 32.845760>,  <30.191017, 34.814518, 32.116413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302620, 34.597229, 32.845760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266367, 34.992386, 32.896114>,  <30.244616, 35.229481, 32.926327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266367, 34.992386, 32.896114>,  <30.302620, 34.597229, 32.845760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266367, 34.992386, 32.896114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443920, -0.153225, 0.882869,
		0.891471, 0.024135, 0.452434,
		-0.090632, 0.987897, 0.125881,
		30.239178, 35.288754, 32.933880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413980, 34.725155, 33.594063>,  <30.302620, 34.597229, 32.845760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413980, 34.725155, 33.594063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213600, 35.046219, 33.464584>,  <30.093372, 35.238857, 33.386898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213600, 35.046219, 33.464584>,  <30.413980, 34.725155, 33.594063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213600, 35.046219, 33.464584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589434, -0.042550, 0.806696,
		0.633731, 0.594914, 0.494432,
		-0.500953, 0.802662, -0.323697,
		30.063314, 35.287018, 33.367474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512838, 35.248981, 34.116665>,  <30.413980, 34.725155, 33.594063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512838, 35.248981, 34.116665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180492, 35.285965, 33.897171>,  <29.981085, 35.308155, 33.765476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180492, 35.285965, 33.897171>,  <30.512838, 35.248981, 34.116665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180492, 35.285965, 33.897171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556154, -0.104687, 0.824459,
		0.018785, 0.990198, 0.138404,
		-0.830867, 0.092461, -0.548736,
		29.931232, 35.313702, 33.732552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031015, 35.604763, 34.509476>,  <30.512838, 35.248981, 34.116665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031015, 35.604763, 34.509476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794487, 35.461571, 34.220425>,  <29.652569, 35.375656, 34.046993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794487, 35.461571, 34.220425>,  <30.031015, 35.604763, 34.509476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794487, 35.461571, 34.220425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643111, -0.331324, 0.690386,
		-0.486566, 0.872970, -0.034299,
		-0.591322, -0.357976, -0.722628,
		29.617090, 35.354179, 34.003635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385221, 35.840637, 34.746056>,  <30.031015, 35.604763, 34.509476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385221, 35.840637, 34.746056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331255, 35.545631, 34.481369>,  <29.298874, 35.368626, 34.322559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331255, 35.545631, 34.481369>,  <29.385221, 35.840637, 34.746056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331255, 35.545631, 34.481369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723740, -0.382770, 0.574184,
		-0.676755, 0.556376, -0.482129,
		-0.134918, -0.737518, -0.661713,
		29.290779, 35.324375, 34.282856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690798, 35.845333, 34.553413>,  <29.385221, 35.840637, 34.746056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690798, 35.845333, 34.553413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.845972, 35.477428, 34.529606>,  <28.939075, 35.256683, 34.515324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.845972, 35.477428, 34.529606>,  <28.690798, 35.845333, 34.553413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845972, 35.477428, 34.529606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721967, -0.343377, 0.600712,
		-0.572950, -0.190069, -0.797247,
		0.387933, -0.919764, -0.059515,
		28.962353, 35.201500, 34.511753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218420, 35.351192, 34.795921>,  <28.690798, 35.845333, 34.553413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218420, 35.351192, 34.795921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486883, 35.058411, 34.748955>,  <28.647961, 34.882740, 34.720776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486883, 35.058411, 34.748955>,  <28.218420, 35.351192, 34.795921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486883, 35.058411, 34.748955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592355, -0.624760, 0.508715,
		-0.445712, -0.271878, -0.852891,
		0.671161, -0.731955, -0.117415,
		28.688231, 34.838825, 34.713730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880583, 34.784225, 34.486420>,  <28.218420, 35.351192, 34.795921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880583, 34.784225, 34.486420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209097, 34.662365, 34.679367>,  <28.406206, 34.589249, 34.795135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209097, 34.662365, 34.679367>,  <27.880583, 34.784225, 34.486420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209097, 34.662365, 34.679367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503053, -0.785528, 0.360395,
		0.269119, -0.538644, -0.798397,
		0.821288, -0.304647, 0.482367,
		28.455482, 34.570972, 34.824078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018347, 33.956009, 34.409336>,  <27.880583, 34.784225, 34.486420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018347, 33.956009, 34.409336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226957, 34.078365, 34.727943>,  <28.352123, 34.151779, 34.919109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226957, 34.078365, 34.727943>,  <28.018347, 33.956009, 34.409336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226957, 34.078365, 34.727943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215296, -0.856140, 0.469758,
		0.825627, -0.416477, -0.380640,
		0.521525, 0.305895, 0.796518,
		28.383415, 34.170135, 34.966900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248806, 33.356819, 34.696159>,  <28.018347, 33.956009, 34.409336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248806, 33.356819, 34.696159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282238, 33.608006, 35.005657>,  <28.302298, 33.758717, 35.191357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282238, 33.608006, 35.005657>,  <28.248806, 33.356819, 34.696159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282238, 33.608006, 35.005657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176952, -0.754767, 0.631675,
		0.980664, -0.189712, 0.048034,
		0.083582, 0.627961, 0.773743,
		28.307312, 33.796394, 35.237782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588135, 33.000847, 35.144554>,  <28.248806, 33.356819, 34.696159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588135, 33.000847, 35.144554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393587, 33.270939, 35.366371>,  <28.276859, 33.432995, 35.499462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393587, 33.270939, 35.366371>,  <28.588135, 33.000847, 35.144554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393587, 33.270939, 35.366371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245976, -0.714806, 0.654636,
		0.838416, 0.181992, 0.513749,
		-0.486369, 0.675227, 0.554539,
		28.247677, 33.473507, 35.532734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744144, 33.203106, 35.894314>,  <28.588135, 33.000847, 35.144554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744144, 33.203106, 35.894314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346891, 33.232235, 35.857697>,  <28.108540, 33.249710, 35.835728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346891, 33.232235, 35.857697>,  <28.744144, 33.203106, 35.894314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346891, 33.232235, 35.857697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115658, -0.728359, 0.675364,
		-0.017497, 0.681315, 0.731781,
		-0.993135, 0.072820, -0.091544,
		28.048950, 33.254082, 35.830235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527081, 33.055355, 35.995209>,  <28.744144, 33.203106, 35.894314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527081, 33.055355, 35.995209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780266, 32.891476, 36.257965>,  <29.932177, 32.793148, 36.415619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780266, 32.891476, 36.257965>,  <29.527081, 33.055355, 35.995209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780266, 32.891476, 36.257965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766073, 0.453932, -0.455057,
		-0.111748, 0.791261, 0.601181,
		0.632964, -0.409697, 0.656890,
		29.970156, 32.768566, 36.455032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994928, 33.570694, 36.183449>,  <29.527081, 33.055355, 35.995209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994928, 33.570694, 36.183449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187714, 33.224789, 36.239868>,  <30.303385, 33.017246, 36.273720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187714, 33.224789, 36.239868>,  <29.994928, 33.570694, 36.183449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187714, 33.224789, 36.239868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837519, 0.407384, -0.364144,
		0.257439, 0.293632, 0.920600,
		0.481962, -0.864765, 0.141046,
		30.332302, 32.965359, 36.282181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497398, 33.767971, 36.619194>,  <29.994928, 33.570694, 36.183449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497398, 33.767971, 36.619194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.598946, 33.435619, 36.421127>,  <30.659874, 33.236210, 36.302288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.598946, 33.435619, 36.421127>,  <30.497398, 33.767971, 36.619194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598946, 33.435619, 36.421127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842358, 0.441528, -0.309007,
		0.475377, -0.338660, 0.811989,
		0.253867, -0.830881, -0.495165,
		30.675106, 33.186356, 36.272579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200676, 33.726170, 36.728271>,  <30.497398, 33.767971, 36.619194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200676, 33.726170, 36.728271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151501, 33.473648, 36.421978>,  <31.121996, 33.322136, 36.238201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151501, 33.473648, 36.421978>,  <31.200676, 33.726170, 36.728271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151501, 33.473648, 36.421978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712718, 0.480757, -0.510788,
		0.690593, -0.608546, 0.390838,
		-0.122940, -0.631304, -0.765729,
		31.114618, 33.284256, 36.192261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797096, 33.522614, 36.645557>,  <31.200676, 33.726170, 36.728271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797096, 33.522614, 36.645557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.621679, 33.435154, 36.296875>,  <31.516430, 33.382679, 36.087666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.621679, 33.435154, 36.296875>,  <31.797096, 33.522614, 36.645557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621679, 33.435154, 36.296875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806888, 0.331324, -0.489037,
		0.395746, -0.917832, 0.031127,
		-0.438541, -0.218650, -0.871708,
		31.490118, 33.369560, 36.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358067, 33.203484, 36.276100>,  <31.797096, 33.522614, 36.645557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358067, 33.203484, 36.276100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076485, 33.340778, 36.027378>,  <31.907537, 33.423157, 35.878143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076485, 33.340778, 36.027378>,  <32.358067, 33.203484, 36.276100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076485, 33.340778, 36.027378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689329, 0.541094, -0.481709,
		0.171114, -0.767728, -0.617506,
		-0.703950, 0.343238, -0.621806,
		31.865299, 33.443748, 35.840836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599716, 33.000565, 35.575844>,  <32.358067, 33.203484, 36.276100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599716, 33.000565, 35.575844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.335041, 33.298080, 35.538017>,  <32.176235, 33.476589, 35.515324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.335041, 33.298080, 35.538017>,  <32.599716, 33.000565, 35.575844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335041, 33.298080, 35.538017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548143, 0.393832, -0.737859,
		-0.511570, -0.540068, -0.668298,
		-0.661692, 0.743789, -0.094562,
		32.136532, 33.521217, 35.509647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356377, 32.948925, 34.920029>,  <32.599716, 33.000565, 35.575844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356377, 32.948925, 34.920029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297997, 33.331844, 35.019844>,  <32.262970, 33.561596, 35.079735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297997, 33.331844, 35.019844>,  <32.356377, 32.948925, 34.920029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297997, 33.331844, 35.019844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502480, 0.289016, -0.814852,
		-0.852182, 0.006465, -0.523206,
		-0.145947, 0.957303, 0.249543,
		32.254211, 33.619034, 35.094707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013290, 33.284737, 34.355625>,  <32.356377, 32.948925, 34.920029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013290, 33.284737, 34.355625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.192654, 33.582230, 34.553936>,  <32.300270, 33.760727, 34.672924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.192654, 33.582230, 34.553936>,  <32.013290, 33.284737, 34.355625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192654, 33.582230, 34.553936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310795, 0.390323, -0.866634,
		-0.838056, 0.542690, -0.056125,
		0.448407, 0.743731, 0.495778,
		32.327175, 33.805347, 34.702671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060246, 33.892822, 33.911282>,  <32.013290, 33.284737, 34.355625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060246, 33.892822, 33.911282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.340034, 33.984383, 34.182087>,  <32.507908, 34.039318, 34.344570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.340034, 33.984383, 34.182087>,  <32.060246, 33.892822, 33.911282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340034, 33.984383, 34.182087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562724, 0.407563, -0.719190,
		-0.440547, 0.884023, 0.156271,
		0.699471, 0.228900, 0.677012,
		32.549877, 34.053051, 34.385189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238747, 34.638382, 33.767548>,  <32.060246, 33.892822, 33.911282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238747, 34.638382, 33.767548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.546185, 34.502480, 33.984375>,  <32.730648, 34.420937, 34.114471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.546185, 34.502480, 33.984375>,  <32.238747, 34.638382, 33.767548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546185, 34.502480, 33.984375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627449, 0.565636, -0.535129,
		-0.124798, 0.751413, 0.647923,
		0.768591, -0.339756, 0.542064,
		32.776760, 34.400555, 34.146996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543106, 35.251896, 33.920750>,  <32.238747, 34.638382, 33.767548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543106, 35.251896, 33.920750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.813046, 34.958405, 33.952282>,  <32.975010, 34.782310, 33.971203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.813046, 34.958405, 33.952282>,  <32.543106, 35.251896, 33.920750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813046, 34.958405, 33.952282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714210, 0.622520, -0.319958,
		0.185690, 0.272225, 0.944147,
		0.674851, -0.733732, 0.078830,
		33.015499, 34.738285, 33.975929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057053, 35.532906, 34.304157>,  <32.543106, 35.251896, 33.920750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057053, 35.532906, 34.304157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.200916, 35.237503, 34.076035>,  <33.287235, 35.060261, 33.939159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.200916, 35.237503, 34.076035>,  <33.057053, 35.532906, 34.304157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200916, 35.237503, 34.076035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634625, 0.641675, -0.430702,
		0.684029, -0.207026, 0.699460,
		0.359660, -0.738508, -0.570308,
		33.308815, 35.015949, 33.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729923, 35.695560, 34.188789>,  <33.057053, 35.532906, 34.304157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729923, 35.695560, 34.188789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689434, 35.419582, 33.902088>,  <33.665142, 35.253998, 33.730068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689434, 35.419582, 33.902088>,  <33.729923, 35.695560, 34.188789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689434, 35.419582, 33.902088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766149, 0.405529, -0.498560,
		0.634641, -0.599605, 0.487549,
		-0.101223, -0.689942, -0.716752,
		33.659065, 35.212601, 33.687061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407860, 35.463966, 34.038666>,  <33.729923, 35.695560, 34.188789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407860, 35.463966, 34.038666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.177006, 35.369755, 33.725887>,  <34.038494, 35.313229, 33.538219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.177006, 35.369755, 33.725887>,  <34.407860, 35.463966, 34.038666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177006, 35.369755, 33.725887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553195, 0.591606, -0.586495,
		0.600746, -0.771055, -0.211137,
		-0.577130, -0.235535, -0.781949,
		34.003864, 35.299095, 33.491302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893826, 35.432751, 33.519073>,  <34.407860, 35.463966, 34.038666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893826, 35.432751, 33.519073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.550186, 35.466000, 33.317066>,  <34.344002, 35.485947, 33.195862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.550186, 35.466000, 33.317066>,  <34.893826, 35.432751, 33.519073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550186, 35.466000, 33.317066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462849, 0.547328, -0.697282,
		0.218453, -0.832781, -0.508680,
		-0.859098, 0.083118, -0.505017,
		34.292458, 35.490936, 33.165562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988995, 35.238964, 32.764675>,  <34.893826, 35.432751, 33.519073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988995, 35.238964, 32.764675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.686848, 35.499359, 32.794693>,  <34.505558, 35.655598, 32.812706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.686848, 35.499359, 32.794693>,  <34.988995, 35.238964, 32.764675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686848, 35.499359, 32.794693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384749, 0.533292, -0.753371,
		-0.530457, -0.540199, -0.653299,
		-0.755370, 0.650987, 0.075048,
		34.460236, 35.694656, 32.817207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089573, 35.425007, 32.098045>,  <34.988995, 35.238964, 32.764675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089573, 35.425007, 32.098045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.794220, 35.655128, 32.238796>,  <34.617008, 35.793201, 32.323246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.794220, 35.655128, 32.238796>,  <35.089573, 35.425007, 32.098045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794220, 35.655128, 32.238796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223246, 0.700872, -0.677450,
		-0.636362, -0.421661, -0.645946,
		-0.738380, 0.575308, 0.351874,
		34.572704, 35.827721, 32.344357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678234, 35.636612, 31.565212>,  <35.089573, 35.425007, 32.098045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678234, 35.636612, 31.565212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.658497, 35.897362, 31.867901>,  <34.646656, 36.053810, 32.049515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.658497, 35.897362, 31.867901>,  <34.678234, 35.636612, 31.565212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658497, 35.897362, 31.867901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346200, 0.721836, -0.599248,
		-0.936862, 0.232409, -0.261296,
		-0.049343, 0.651873, 0.756721,
		34.643696, 36.092922, 32.094917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374599, 36.174229, 31.306822>,  <34.678234, 35.636612, 31.565212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374599, 36.174229, 31.306822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.550865, 36.329983, 31.630352>,  <34.656624, 36.423435, 31.824471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.550865, 36.329983, 31.630352>,  <34.374599, 36.174229, 31.306822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550865, 36.329983, 31.630352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304700, 0.782646, -0.542791,
		-0.844379, 0.485635, 0.226235,
		0.440661, 0.389388, 0.808823,
		34.683064, 36.446800, 31.872999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121941, 36.834785, 31.398909>,  <34.374599, 36.174229, 31.306822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121941, 36.834785, 31.398909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467693, 36.834366, 31.600042>,  <34.675144, 36.834114, 31.720722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467693, 36.834366, 31.600042>,  <34.121941, 36.834785, 31.398909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467693, 36.834366, 31.600042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302365, 0.800093, -0.518098,
		-0.401768, 0.599874, 0.691905,
		0.864383, -0.001053, 0.502833,
		34.727009, 36.834049, 31.750893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333977, 37.551208, 31.583393>,  <34.121941, 36.834785, 31.398909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333977, 37.551208, 31.583393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.678772, 37.365963, 31.665854>,  <34.885651, 37.254814, 31.715330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.678772, 37.365963, 31.665854>,  <34.333977, 37.551208, 31.583393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678772, 37.365963, 31.665854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503932, 0.826990, -0.249280,
		-0.055037, 0.318762, 0.946235,
		0.861988, -0.463118, 0.206150,
		34.937370, 37.227028, 31.727699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716816, 37.973351, 32.020947>,  <34.333977, 37.551208, 31.583393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716816, 37.973351, 32.020947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994041, 37.737732, 31.854721>,  <35.160378, 37.596363, 31.754986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994041, 37.737732, 31.854721>,  <34.716816, 37.973351, 32.020947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994041, 37.737732, 31.854721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559646, 0.803010, -0.204868,
		0.454375, -0.090579, 0.886194,
		0.693065, -0.589042, -0.415560,
		35.201962, 37.561020, 31.730053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.071564, 42.751678, 42.815575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.900181, 42.606796, 43.146690>,  <40.797352, 42.519867, 43.345360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.900181, 42.606796, 43.146690>,  <41.071564, 42.751678, 42.815575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900181, 42.606796, 43.146690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227413, 0.843417, 0.486757,
		-0.874475, 0.396805, -0.278998,
		-0.428459, -0.362208, 0.827785,
		40.771645, 42.498135, 43.395027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654114, 43.308285, 43.076138>,  <41.071564, 42.751678, 42.815575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654114, 43.308285, 43.076138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.723839, 43.080002, 43.397114>,  <40.765675, 42.943031, 43.589699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.723839, 43.080002, 43.397114>,  <40.654114, 43.308285, 43.076138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723839, 43.080002, 43.397114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155560, 0.820641, 0.549863,
		-0.972325, 0.028978, 0.231828,
		0.174314, -0.570708, 0.802438,
		40.776134, 42.908791, 43.637844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432407, 43.777710, 43.654316>,  <40.654114, 43.308285, 43.076138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432407, 43.777710, 43.654316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.639832, 43.497105, 43.849854>,  <40.764286, 43.328739, 43.967175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.639832, 43.497105, 43.849854>,  <40.432407, 43.777710, 43.654316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639832, 43.497105, 43.849854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284696, 0.680758, 0.674919,
		-0.806251, -0.210817, 0.552735,
		0.518563, -0.701516, 0.488844,
		40.795399, 43.286652, 43.996506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122574, 43.855907, 44.357052>,  <40.432407, 43.777710, 43.654316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122574, 43.855907, 44.357052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.480843, 43.678024, 44.357655>,  <40.695805, 43.571293, 44.358017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.480843, 43.678024, 44.357655>,  <40.122574, 43.855907, 44.357052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480843, 43.678024, 44.357655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247627, 0.501554, 0.828930,
		-0.369391, -0.742076, 0.559351,
		0.895674, -0.444710, 0.001512,
		40.749546, 43.544613, 44.358109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174320, 43.460358, 44.962936>,  <40.122574, 43.855907, 44.357052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174320, 43.460358, 44.962936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546490, 43.553135, 44.849438>,  <40.769791, 43.608803, 44.781338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546490, 43.553135, 44.849438>,  <40.174320, 43.460358, 44.962936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546490, 43.553135, 44.849438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126649, 0.523054, 0.842837,
		0.343906, -0.820132, 0.457287,
		0.930424, 0.231942, -0.283751,
		40.825615, 43.622719, 44.764313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505287, 43.484825, 45.590473>,  <40.174320, 43.460358, 44.962936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505287, 43.484825, 45.590473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738335, 43.702271, 45.348801>,  <40.878162, 43.832737, 45.203796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738335, 43.702271, 45.348801>,  <40.505287, 43.484825, 45.590473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738335, 43.702271, 45.348801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308062, 0.540207, 0.783118,
		0.752099, -0.642385, 0.147267,
		0.582619, 0.543615, -0.604184,
		40.913120, 43.865356, 45.167545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060490, 43.615456, 45.987347>,  <40.505287, 43.484825, 45.590473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060490, 43.615456, 45.987347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.138855, 43.868530, 45.687660>,  <41.185875, 44.020374, 45.507847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.138855, 43.868530, 45.687660>,  <41.060490, 43.615456, 45.987347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138855, 43.868530, 45.687660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557277, 0.556831, 0.615939,
		0.806883, -0.538193, -0.243490,
		0.195912, 0.632683, -0.749220,
		41.197628, 44.058334, 45.462894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828831, 43.795860, 45.908276>,  <41.060490, 43.615456, 45.987347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828831, 43.795860, 45.908276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.647568, 44.114471, 45.748177>,  <41.538811, 44.305637, 45.652119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.647568, 44.114471, 45.748177>,  <41.828831, 43.795860, 45.908276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647568, 44.114471, 45.748177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487865, 0.597385, 0.636490,
		0.746081, 0.093164, -0.659306,
		-0.453157, 0.796525, -0.400246,
		41.511620, 44.353428, 45.628101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279312, 44.283695, 45.999069>,  <41.828831, 43.795860, 45.908276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279312, 44.283695, 45.999069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.945534, 44.484116, 45.907284>,  <41.745266, 44.604366, 45.852215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.945534, 44.484116, 45.907284>,  <42.279312, 44.283695, 45.999069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945534, 44.484116, 45.907284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327182, 0.785473, 0.525342,
		0.443458, 0.363293, -0.819368,
		-0.834444, 0.501049, -0.229461,
		41.695202, 44.634430, 45.838444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462822, 44.998253, 45.702030>,  <42.279312, 44.283695, 45.999069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462822, 44.998253, 45.702030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.102757, 44.977722, 45.875038>,  <41.886719, 44.965405, 45.978844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.102757, 44.977722, 45.875038>,  <42.462822, 44.998253, 45.702030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102757, 44.977722, 45.875038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277747, 0.697286, 0.660794,
		-0.335511, 0.714953, -0.613413,
		-0.900161, -0.051330, 0.432523,
		41.832706, 44.962322, 46.004795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337883, 45.734165, 45.967648>,  <42.462822, 44.998253, 45.702030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337883, 45.734165, 45.967648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.029747, 45.548225, 46.142231>,  <41.844868, 45.436661, 46.246983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.029747, 45.548225, 46.142231>,  <42.337883, 45.734165, 45.967648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029747, 45.548225, 46.142231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056526, 0.731586, 0.679402,
		-0.635127, 0.498697, -0.589843,
		-0.770336, -0.464848, 0.436461,
		41.798645, 45.408772, 46.273170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707893, 46.264454, 45.922649>,  <42.337883, 45.734165, 45.967648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707893, 46.264454, 45.922649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.652874, 46.003235, 46.220539>,  <41.619862, 45.846504, 46.399273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.652874, 46.003235, 46.220539>,  <41.707893, 46.264454, 45.922649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652874, 46.003235, 46.220539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064265, 0.756168, 0.651214,
		-0.988408, 0.041715, -0.145979,
		-0.137550, -0.653046, 0.744722,
		41.611610, 45.807320, 46.443954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262634, 46.610241, 46.444714>,  <41.707893, 46.264454, 45.922649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262634, 46.610241, 46.444714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.488552, 46.326061, 46.612648>,  <41.624104, 46.155552, 46.713409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.488552, 46.326061, 46.612648>,  <41.262634, 46.610241, 46.444714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488552, 46.326061, 46.612648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260674, 0.636297, 0.726068,
		-0.782977, -0.300640, 0.544575,
		0.564797, -0.710451, 0.419837,
		41.657990, 46.112926, 46.738598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716290, 46.578278, 46.853329>,  <41.262634, 46.610241, 46.444714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716290, 46.578278, 46.853329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.404438, 46.778988, 46.703445>,  <40.217327, 46.899414, 46.613518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.404438, 46.778988, 46.703445>,  <40.716290, 46.578278, 46.853329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404438, 46.778988, 46.703445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000550, -0.597786, -0.801655,
		-0.626247, -0.625196, 0.465773,
		-0.779625, 0.501778, -0.374706,
		40.170551, 46.929520, 46.591034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679573, 46.071136, 46.374882>,  <40.716290, 46.578278, 46.853329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679573, 46.071136, 46.374882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.337791, 46.278870, 46.380527>,  <40.132721, 46.403511, 46.383915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.337791, 46.278870, 46.380527>,  <40.679573, 46.071136, 46.374882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337791, 46.278870, 46.380527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376755, -0.600706, -0.705130,
		-0.357717, -0.607821, 0.708937,
		-0.854455, 0.519333, 0.014117,
		40.081455, 46.434669, 46.384762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163170, 45.596863, 46.319508>,  <40.679573, 46.071136, 46.374882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163170, 45.596863, 46.319508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946686, 45.910290, 46.197449>,  <39.816795, 46.098347, 46.124214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946686, 45.910290, 46.197449>,  <40.163170, 45.596863, 46.319508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946686, 45.910290, 46.197449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323273, -0.528881, -0.784716,
		-0.776267, -0.326047, 0.539540,
		-0.541207, 0.783568, -0.305151,
		39.784325, 46.145359, 46.105904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418873, 45.388454, 46.300552>,  <40.163170, 45.596863, 46.319508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418873, 45.388454, 46.300552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488647, 45.679523, 46.035206>,  <39.530514, 45.854164, 45.875999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488647, 45.679523, 46.035206>,  <39.418873, 45.388454, 46.300552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488647, 45.679523, 46.035206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557617, -0.482257, -0.675642,
		-0.811562, 0.487765, 0.321640,
		0.174441, 0.727677, -0.663367,
		39.540981, 45.897827, 45.836197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747967, 45.455490, 45.978596>,  <39.418873, 45.388454, 46.300552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747967, 45.455490, 45.978596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.017647, 45.595264, 45.718334>,  <39.179455, 45.679127, 45.562180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.017647, 45.595264, 45.718334>,  <38.747967, 45.455490, 45.978596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017647, 45.595264, 45.718334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434871, -0.524245, -0.732157,
		-0.596941, 0.776572, -0.201489,
		0.674202, 0.349433, -0.650652,
		39.219906, 45.700096, 45.523140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309227, 45.757874, 45.334743>,  <38.747967, 45.455490, 45.978596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309227, 45.757874, 45.334743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.695755, 45.723194, 45.237820>,  <38.927670, 45.702385, 45.179665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.695755, 45.723194, 45.237820>,  <38.309227, 45.757874, 45.334743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695755, 45.723194, 45.237820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255791, -0.427133, -0.867253,
		-0.028307, 0.900023, -0.434923,
		0.966318, -0.086700, -0.242308,
		38.985649, 45.697186, 45.165127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319885, 45.948505, 44.628422>,  <38.309227, 45.757874, 45.334743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319885, 45.948505, 44.628422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659428, 45.746262, 44.690132>,  <38.863155, 45.624916, 44.727158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659428, 45.746262, 44.690132>,  <38.319885, 45.948505, 44.628422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659428, 45.746262, 44.690132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124090, -0.474276, -0.871587,
		0.513846, 0.720712, -0.465334,
		0.848860, -0.505605, 0.154272,
		38.914085, 45.594582, 44.736412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611652, 45.933475, 43.969372>,  <38.319885, 45.948505, 44.628422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611652, 45.933475, 43.969372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766247, 45.626541, 44.174046>,  <38.859005, 45.442379, 44.296852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766247, 45.626541, 44.174046>,  <38.611652, 45.933475, 43.969372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766247, 45.626541, 44.174046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025842, -0.545571, -0.837666,
		0.921932, 0.336972, -0.191028,
		0.386489, -0.767335, 0.511687,
		38.882195, 45.396339, 44.327553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092010, 45.631950, 43.513607>,  <38.611652, 45.933475, 43.969372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092010, 45.631950, 43.513607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.006245, 45.346645, 43.780525>,  <38.954784, 45.175465, 43.940678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.006245, 45.346645, 43.780525>,  <39.092010, 45.631950, 43.513607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006245, 45.346645, 43.780525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150360, -0.699148, -0.698988,
		0.965101, -0.049537, 0.257152,
		-0.214413, -0.713259, 0.667300,
		38.941921, 45.132668, 43.980717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353882, 45.063408, 43.306545>,  <39.092010, 45.631950, 43.513607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353882, 45.063408, 43.306545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134300, 44.864105, 43.574993>,  <39.002552, 44.744526, 43.736061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134300, 44.864105, 43.574993>,  <39.353882, 45.063408, 43.306545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134300, 44.864105, 43.574993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017848, -0.795741, -0.605374,
		0.835665, -0.344298, 0.427929,
		-0.548950, -0.498252, 0.671118,
		38.969616, 44.714630, 43.776329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508965, 44.319004, 43.333302>,  <39.353882, 45.063408, 43.306545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508965, 44.319004, 43.333302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.135887, 44.317238, 43.477554>,  <38.912041, 44.316177, 43.564106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.135887, 44.317238, 43.477554>,  <39.508965, 44.319004, 43.333302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135887, 44.317238, 43.477554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110094, -0.948714, -0.296345,
		0.343445, -0.316104, 0.884378,
		-0.932697, -0.004413, 0.360633,
		38.856079, 44.315914, 43.585743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434528, 43.722904, 43.746567>,  <39.508965, 44.319004, 43.333302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434528, 43.722904, 43.746567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.051670, 43.815750, 43.677296>,  <38.821953, 43.871456, 43.635731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.051670, 43.815750, 43.677296>,  <39.434528, 43.722904, 43.746567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051670, 43.815750, 43.677296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165512, -0.929156, -0.330568,
		-0.237641, -0.287739, 0.927757,
		-0.957148, 0.232111, -0.173181,
		38.764526, 43.885384, 43.625340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145710, 43.093803, 43.783684>,  <39.434528, 43.722904, 43.746567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145710, 43.093803, 43.783684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879440, 43.329243, 43.600193>,  <38.719677, 43.470505, 43.490097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879440, 43.329243, 43.600193>,  <39.145710, 43.093803, 43.783684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879440, 43.329243, 43.600193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383561, -0.797170, -0.466263,
		-0.640125, -0.134430, 0.756418,
		-0.665674, 0.588599, -0.458727,
		38.679737, 43.505821, 43.462574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497627, 42.721973, 43.722385>,  <39.145710, 43.093803, 43.783684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497627, 42.721973, 43.722385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474644, 42.994232, 43.430244>,  <38.460854, 43.157589, 43.254959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474644, 42.994232, 43.430244>,  <38.497627, 42.721973, 43.722385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474644, 42.994232, 43.430244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431358, -0.676676, -0.596690,
		-0.900349, 0.280758, 0.332485,
		-0.057459, 0.680650, -0.730352,
		38.457405, 43.198425, 43.211140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849075, 42.654598, 43.473877>,  <38.497627, 42.721973, 43.722385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849075, 42.654598, 43.473877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007420, 42.861286, 43.170219>,  <38.102425, 42.985298, 42.988026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007420, 42.861286, 43.170219>,  <37.849075, 42.654598, 43.473877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007420, 42.861286, 43.170219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385154, -0.657031, -0.648049,
		-0.833639, 0.548923, -0.061076,
		0.395857, 0.516715, -0.759146,
		38.126175, 43.016300, 42.942474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056465, 42.931259, 43.532166>,  <37.849075, 42.654598, 43.473877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056465, 42.931259, 43.532166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716522, 42.819954, 43.711193>,  <36.512558, 42.753170, 43.818607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716522, 42.819954, 43.711193>,  <37.056465, 42.931259, 43.532166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716522, 42.819954, 43.711193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223025, 0.579563, 0.783815,
		-0.477499, 0.765948, -0.430485,
		-0.849855, -0.278262, 0.447567,
		36.461567, 42.736477, 43.845463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849274, 43.527344, 43.825134>,  <37.056465, 42.931259, 43.532166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849274, 43.527344, 43.825134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694752, 43.228161, 44.041035>,  <36.602039, 43.048653, 44.170574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694752, 43.228161, 44.041035>,  <36.849274, 43.527344, 43.825134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694752, 43.228161, 44.041035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316652, 0.442069, 0.839230,
		-0.866313, 0.495114, 0.066067,
		-0.386308, -0.747956, 0.539748,
		36.578861, 43.003773, 44.202961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434303, 43.850029, 44.285931>,  <36.849274, 43.527344, 43.825134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434303, 43.850029, 44.285931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509537, 43.489319, 44.441582>,  <36.554676, 43.272892, 44.534973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509537, 43.489319, 44.441582>,  <36.434303, 43.850029, 44.285931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509537, 43.489319, 44.441582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232239, 0.425794, 0.874508,
		-0.954301, -0.074112, 0.289513,
		0.188085, -0.901780, 0.389124,
		36.565964, 43.218784, 44.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997082, 43.814548, 44.822441>,  <36.434303, 43.850029, 44.285931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997082, 43.814548, 44.822441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290447, 43.553135, 44.897274>,  <36.466465, 43.396286, 44.942173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290447, 43.553135, 44.897274>,  <35.997082, 43.814548, 44.822441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290447, 43.553135, 44.897274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107181, 0.382938, 0.917535,
		-0.671283, -0.652878, 0.350898,
		0.733411, -0.653535, 0.187084,
		36.510471, 43.357075, 44.953400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834633, 43.528500, 45.473911>,  <35.997082, 43.814548, 44.822441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834633, 43.528500, 45.473911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224331, 43.461143, 45.413921>,  <36.458149, 43.420731, 45.377926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224331, 43.461143, 45.413921>,  <35.834633, 43.528500, 45.473911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224331, 43.461143, 45.413921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202435, 0.360110, 0.910682,
		-0.099340, -0.917587, 0.384923,
		0.974244, -0.168389, -0.149978,
		36.516605, 43.410625, 45.368927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025604, 43.242470, 46.148949>,  <35.834633, 43.528500, 45.473911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025604, 43.242470, 46.148949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356739, 43.372063, 45.965767>,  <36.555420, 43.449818, 45.855858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356739, 43.372063, 45.965767>,  <36.025604, 43.242470, 46.148949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356739, 43.372063, 45.965767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307648, 0.420442, 0.853570,
		0.469089, -0.847503, 0.248382,
		0.827833, 0.323986, -0.457957,
		36.605091, 43.469257, 45.828381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632938, 42.995102, 46.506374>,  <36.025604, 43.242470, 46.148949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632938, 42.995102, 46.506374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723095, 43.323246, 46.296154>,  <36.777191, 43.520134, 46.170021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723095, 43.323246, 46.296154>,  <36.632938, 42.995102, 46.506374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723095, 43.323246, 46.296154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301425, 0.454248, 0.838333,
		0.926467, -0.347369, -0.144893,
		0.225393, 0.820362, -0.525552,
		36.790714, 43.569355, 46.138489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961624, 42.462807, 46.948513>,  <36.632938, 42.995102, 46.506374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961624, 42.462807, 46.948513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646564, 42.387150, 47.183064>,  <36.457531, 42.341755, 47.323795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646564, 42.387150, 47.183064>,  <36.961624, 42.462807, 46.948513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646564, 42.387150, 47.183064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147404, -0.866230, -0.477408,
		0.598238, -0.462462, 0.654401,
		-0.787644, -0.189142, 0.586380,
		36.410271, 42.330406, 47.358978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799088, 41.723141, 46.875435>,  <36.961624, 42.462807, 46.948513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799088, 41.723141, 46.875435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453468, 41.866405, 47.016937>,  <36.246098, 41.952366, 47.101841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453468, 41.866405, 47.016937>,  <36.799088, 41.723141, 46.875435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453468, 41.866405, 47.016937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472246, -0.820103, -0.323133,
		0.174385, -0.446263, 0.877747,
		-0.864045, 0.358163, 0.353759,
		36.194256, 41.973854, 47.123066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437683, 41.195194, 47.416931>,  <36.799088, 41.723141, 46.875435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437683, 41.195194, 47.416931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154594, 41.432899, 47.264107>,  <35.984741, 41.575523, 47.172413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154594, 41.432899, 47.264107>,  <36.437683, 41.195194, 47.416931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154594, 41.432899, 47.264107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571062, -0.799587, -0.185870,
		-0.415949, 0.086637, 0.905251,
		-0.707724, 0.594267, -0.382063,
		35.942276, 41.611179, 47.149487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811714, 41.009342, 47.729309>,  <36.437683, 41.195194, 47.416931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811714, 41.009342, 47.729309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702808, 41.194550, 47.391911>,  <35.637466, 41.305676, 47.189472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702808, 41.194550, 47.391911>,  <35.811714, 41.009342, 47.729309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702808, 41.194550, 47.391911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499513, -0.817250, -0.287383,
		-0.822411, 0.343093, 0.453791,
		-0.272262, 0.463022, -0.843495,
		35.621128, 41.333458, 47.138863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138081, 40.954525, 47.675537>,  <35.811714, 41.009342, 47.729309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138081, 40.954525, 47.675537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248436, 41.042198, 47.301193>,  <35.314651, 41.094803, 47.076584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248436, 41.042198, 47.301193>,  <35.138081, 40.954525, 47.675537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248436, 41.042198, 47.301193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651576, -0.673150, -0.349739,
		-0.706635, 0.706277, -0.042900,
		0.275891, 0.219185, -0.935864,
		35.331203, 41.107952, 47.020435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516605, 40.826538, 47.335224>,  <35.138081, 40.954525, 47.675537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516605, 40.826538, 47.335224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824963, 40.801933, 47.081627>,  <35.009975, 40.787170, 46.929470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824963, 40.801933, 47.081627>,  <34.516605, 40.826538, 47.335224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824963, 40.801933, 47.081627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499013, -0.676913, -0.541086,
		-0.395875, 0.733488, -0.552520,
		0.770889, -0.061512, -0.633993,
		35.056229, 40.783478, 46.891430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187481, 40.855583, 46.782925>,  <34.516605, 40.826538, 47.335224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187481, 40.855583, 46.782925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541367, 40.734509, 46.641132>,  <34.753700, 40.661865, 46.556057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541367, 40.734509, 46.641132>,  <34.187481, 40.855583, 46.782925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541367, 40.734509, 46.641132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462779, -0.661390, -0.590254,
		-0.055789, 0.686254, -0.725219,
		0.884717, -0.302686, -0.354482,
		34.806782, 40.643703, 46.534786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.917171, 43.670139, 49.183460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.057468, 43.933743, 48.917320>,  <40.141647, 44.091904, 48.757637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.057468, 43.933743, 48.917320>,  <39.917171, 43.670139, 49.183460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057468, 43.933743, 48.917320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261860, -0.613126, -0.745323,
		-0.899115, 0.435646, -0.042483,
		0.350744, 0.659006, -0.665349,
		40.162693, 44.131443, 48.717716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497429, 43.670219, 48.579235>,  <39.917171, 43.670139, 49.183460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497429, 43.670219, 48.579235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.854073, 43.780663, 48.435684>,  <40.068058, 43.846928, 48.349552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.854073, 43.780663, 48.435684>,  <39.497429, 43.670219, 48.579235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854073, 43.780663, 48.435684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050937, -0.726385, -0.685397,
		-0.449926, 0.629389, -0.633590,
		0.891612, 0.276105, -0.358879,
		40.121555, 43.863495, 48.328022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421989, 43.629414, 47.904358>,  <39.497429, 43.670219, 48.579235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421989, 43.629414, 47.904358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.818382, 43.595516, 47.945862>,  <40.056217, 43.575176, 47.970764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.818382, 43.595516, 47.945862>,  <39.421989, 43.629414, 47.904358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818382, 43.595516, 47.945862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023097, -0.870968, -0.490797,
		0.131964, 0.483976, -0.865074,
		0.990986, -0.084748, 0.103758,
		40.115677, 43.570091, 47.976990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761395, 43.491219, 47.192261>,  <39.421989, 43.629414, 47.904358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761395, 43.491219, 47.192261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.038788, 43.377872, 47.457222>,  <40.205223, 43.309864, 47.616199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.038788, 43.377872, 47.457222>,  <39.761395, 43.491219, 47.192261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038788, 43.377872, 47.457222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137681, -0.850340, -0.507903,
		0.707191, 0.443425, -0.550686,
		0.693487, -0.283365, 0.662404,
		40.246834, 43.292862, 47.655945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257477, 43.263035, 46.782688>,  <39.761395, 43.491219, 47.192261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257477, 43.263035, 46.782688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.333771, 43.097672, 47.138828>,  <40.379547, 42.998455, 47.352512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.333771, 43.097672, 47.138828>,  <40.257477, 43.263035, 46.782688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333771, 43.097672, 47.138828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114304, -0.891475, -0.438414,
		0.974964, 0.185391, -0.122781,
		0.190734, -0.413404, 0.890347,
		40.390991, 42.973652, 47.405933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735264, 42.817039, 46.696434>,  <40.257477, 43.263035, 46.782688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735264, 42.817039, 46.696434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.610622, 42.668583, 47.046326>,  <40.535839, 42.579510, 47.256260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.610622, 42.668583, 47.046326>,  <40.735264, 42.817039, 46.696434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610622, 42.668583, 47.046326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050255, -0.912840, -0.405213,
		0.948883, -0.170225, 0.265792,
		-0.311603, -0.371142, 0.874733,
		40.517143, 42.557240, 47.308746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265026, 42.270210, 46.901535>,  <40.735264, 42.817039, 46.696434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265026, 42.270210, 46.901535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.910484, 42.218330, 47.079327>,  <40.697762, 42.187202, 47.186001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.910484, 42.218330, 47.079327>,  <41.265026, 42.270210, 46.901535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910484, 42.218330, 47.079327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002120, -0.958819, -0.284009,
		0.463010, -0.252674, 0.849575,
		-0.886351, -0.129698, 0.444478,
		40.644581, 42.179420, 47.212669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385254, 41.776970, 47.457962>,  <41.265026, 42.270210, 46.901535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385254, 41.776970, 47.457962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.000885, 41.762035, 47.348251>,  <40.770264, 41.753075, 47.282425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.000885, 41.762035, 47.348251>,  <41.385254, 41.776970, 47.457962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000885, 41.762035, 47.348251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106204, -0.964759, -0.240750,
		-0.255624, -0.260473, 0.931027,
		-0.960925, -0.037337, -0.274278,
		40.712608, 41.750835, 47.265968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159992, 41.210476, 47.753536>,  <41.385254, 41.776970, 47.457962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159992, 41.210476, 47.753536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.888000, 41.276001, 47.467655>,  <40.724804, 41.315315, 47.296127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.888000, 41.276001, 47.467655>,  <41.159992, 41.210476, 47.753536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888000, 41.276001, 47.467655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003349, -0.975409, -0.220377,
		-0.733224, -0.147458, 0.663806,
		-0.679979, 0.163809, -0.714699,
		40.684006, 41.325142, 47.253246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655682, 40.600067, 47.777184>,  <41.159992, 41.210476, 47.753536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655682, 40.600067, 47.777184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.606716, 40.778885, 47.422745>,  <40.577335, 40.886177, 47.210083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.606716, 40.778885, 47.422745>,  <40.655682, 40.600067, 47.777184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606716, 40.778885, 47.422745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143756, -0.891381, -0.429853,
		-0.982012, 0.074761, 0.173385,
		-0.122416, 0.447046, -0.886095,
		40.569992, 40.912998, 47.156918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053211, 40.235046, 47.516602>,  <40.655682, 40.600067, 47.777184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053211, 40.235046, 47.516602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.191299, 40.416389, 47.187897>,  <40.274155, 40.525196, 46.990673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.191299, 40.416389, 47.187897>,  <40.053211, 40.235046, 47.516602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191299, 40.416389, 47.187897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295306, -0.778647, -0.553628,
		-0.890851, 0.433796, -0.134928,
		0.345222, 0.453355, -0.821761,
		40.294865, 40.552395, 46.941368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520737, 40.175255, 47.116470>,  <40.053211, 40.235046, 47.516602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520737, 40.175255, 47.116470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.837444, 40.221783, 46.876614>,  <40.027470, 40.249699, 46.732700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.837444, 40.221783, 46.876614>,  <39.520737, 40.175255, 47.116470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837444, 40.221783, 46.876614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295866, -0.785818, -0.543097,
		-0.534384, 0.607421, -0.587770,
		0.791768, 0.116321, -0.599644,
		40.074974, 40.256680, 46.696720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908802, 40.150330, 47.350876>,  <39.520737, 40.175255, 47.116470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908802, 40.150330, 47.350876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.698936, 39.937660, 47.616825>,  <38.573017, 39.810059, 47.776394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.698936, 39.937660, 47.616825>,  <38.908802, 40.150330, 47.350876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698936, 39.937660, 47.616825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077638, 0.807626, 0.584562,
		-0.847761, 0.255079, -0.465011,
		-0.524665, -0.531671, 0.664870,
		38.541538, 39.778160, 47.816288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337589, 40.592495, 47.587315>,  <38.908802, 40.150330, 47.350876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337589, 40.592495, 47.587315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.404160, 40.315086, 47.867695>,  <38.444099, 40.148643, 48.035923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.404160, 40.315086, 47.867695>,  <38.337589, 40.592495, 47.587315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404160, 40.315086, 47.867695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019543, 0.713049, 0.700842,
		-0.985861, -0.102937, 0.132221,
		0.166423, -0.693517, 0.700955,
		38.454086, 40.107033, 48.077980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817928, 40.576870, 48.106853>,  <38.337589, 40.592495, 47.587315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817928, 40.576870, 48.106853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.145844, 40.425026, 48.278358>,  <38.342594, 40.333920, 48.381264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.145844, 40.425026, 48.278358>,  <37.817928, 40.576870, 48.106853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145844, 40.425026, 48.278358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073646, 0.672616, 0.736317,
		-0.567912, -0.635201, 0.523446,
		0.819788, -0.379614, 0.428767,
		38.391781, 40.311142, 48.406990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683571, 40.627865, 48.838421>,  <37.817928, 40.576870, 48.106853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683571, 40.627865, 48.838421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.078388, 40.579208, 48.796570>,  <38.315277, 40.550014, 48.771461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.078388, 40.579208, 48.796570>,  <37.683571, 40.627865, 48.838421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078388, 40.579208, 48.796570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159133, 0.658857, 0.735244,
		-0.020505, -0.742368, 0.669679,
		0.987044, -0.121644, -0.104625,
		38.374500, 40.542717, 48.765182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973873, 40.460106, 49.504227>,  <37.683571, 40.627865, 48.838421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973873, 40.460106, 49.504227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272682, 40.628204, 49.298180>,  <38.451969, 40.729065, 49.174553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272682, 40.628204, 49.298180>,  <37.973873, 40.460106, 49.504227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272682, 40.628204, 49.298180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267915, 0.518829, 0.811811,
		0.608418, -0.744452, 0.274989,
		0.747027, 0.420247, -0.515115,
		38.496792, 40.754280, 49.143646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541245, 40.551422, 49.975769>,  <37.973873, 40.460106, 49.504227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541245, 40.551422, 49.975769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.641319, 40.780293, 49.663353>,  <38.701363, 40.917614, 49.475903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.641319, 40.780293, 49.663353>,  <38.541245, 40.551422, 49.975769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641319, 40.780293, 49.663353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122950, 0.781389, 0.611812,
		0.960360, -0.249095, 0.125143,
		0.250185, 0.572173, -0.781041,
		38.716373, 40.951946, 49.429039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910915, 41.067581, 50.240349>,  <38.541245, 40.551422, 49.975769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910915, 41.067581, 50.240349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817360, 41.230236, 49.887093>,  <38.761227, 41.327827, 49.675137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817360, 41.230236, 49.887093>,  <38.910915, 41.067581, 50.240349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817360, 41.230236, 49.887093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021617, 0.910290, 0.413407,
		0.972023, 0.077600, -0.221697,
		-0.233888, 0.406634, -0.883145,
		38.747192, 41.352226, 49.622150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386051, 41.519478, 50.192188>,  <38.910915, 41.067581, 50.240349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386051, 41.519478, 50.192188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.082710, 41.641586, 49.961811>,  <38.900707, 41.714851, 49.823586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.082710, 41.641586, 49.961811>,  <39.386051, 41.519478, 50.192188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082710, 41.641586, 49.961811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046814, 0.855774, 0.515227,
		0.650163, 0.417685, -0.634686,
		-0.758351, 0.305270, -0.575946,
		38.855206, 41.733166, 49.789028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519524, 42.289028, 49.980625>,  <39.386051, 41.519478, 50.192188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519524, 42.289028, 49.980625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.127193, 42.232857, 49.926571>,  <38.891796, 42.199154, 49.894138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.127193, 42.232857, 49.926571>,  <39.519524, 42.289028, 49.980625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127193, 42.232857, 49.926571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186693, 0.875966, 0.444780,
		0.055917, 0.461481, -0.885386,
		-0.980826, -0.140424, -0.135137,
		38.832947, 42.190731, 49.886028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289909, 42.961765, 49.797497>,  <39.519524, 42.289028, 49.980625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289909, 42.961765, 49.797497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.948147, 42.774372, 49.887390>,  <38.743088, 42.661934, 49.941326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.948147, 42.774372, 49.887390>,  <39.289909, 42.961765, 49.797497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948147, 42.774372, 49.887390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351110, 0.839381, 0.414925,
		-0.383026, 0.275608, -0.881664,
		-0.854408, -0.468488, 0.224736,
		38.691826, 42.633827, 49.954811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829632, 43.457039, 49.694599>,  <39.289909, 42.961765, 49.797497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829632, 43.457039, 49.694599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.628342, 43.178009, 49.898621>,  <38.507568, 43.010590, 50.021034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.628342, 43.178009, 49.898621>,  <38.829632, 43.457039, 49.694599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628342, 43.178009, 49.898621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511992, 0.716159, 0.474322,
		-0.696155, -0.022453, -0.717541,
		-0.503223, -0.697576, 0.510054,
		38.477375, 42.968735, 50.051636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085209, 43.602753, 49.632435>,  <38.829632, 43.457039, 49.694599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085209, 43.602753, 49.632435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151917, 43.412762, 49.978058>,  <38.191940, 43.298767, 50.185432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151917, 43.412762, 49.978058>,  <38.085209, 43.602753, 49.632435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151917, 43.412762, 49.978058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406716, 0.765160, 0.499111,
		-0.898204, -0.434660, -0.065574,
		0.166769, -0.474974, 0.864053,
		38.201946, 43.270271, 50.237274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521725, 43.735611, 50.079422>,  <38.085209, 43.602753, 49.632435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521725, 43.735611, 50.079422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.789280, 43.605568, 50.346821>,  <37.949814, 43.527542, 50.507259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.789280, 43.605568, 50.346821>,  <37.521725, 43.735611, 50.079422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789280, 43.605568, 50.346821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273353, 0.728708, 0.627904,
		-0.691276, -0.602735, 0.398557,
		0.668891, -0.325108, 0.668498,
		37.989948, 43.508034, 50.547371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134613, 43.688690, 50.695736>,  <37.521725, 43.735611, 50.079422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134613, 43.688690, 50.695736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.517021, 43.717075, 50.809570>,  <37.746468, 43.734104, 50.877869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.517021, 43.717075, 50.809570>,  <37.134613, 43.688690, 50.695736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517021, 43.717075, 50.809570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251281, 0.698575, 0.669964,
		-0.151263, -0.712010, 0.685683,
		0.956022, 0.070958, 0.284583,
		37.803829, 43.738361, 50.894943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636761, 43.154926, 50.383614>,  <37.134613, 43.688690, 50.695736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636761, 43.154926, 50.383614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.691833, 43.456215, 50.126335>,  <36.724876, 43.636990, 49.971970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.691833, 43.456215, 50.126335>,  <36.636761, 43.154926, 50.383614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691833, 43.456215, 50.126335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486448, -0.514245, -0.706343,
		-0.862794, 0.410129, 0.295603,
		0.137679, 0.753224, -0.643194,
		36.733139, 43.682182, 49.933376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992378, 43.281487, 50.078323>,  <36.636761, 43.154926, 50.383614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992378, 43.281487, 50.078323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.255943, 43.418297, 49.810341>,  <36.414082, 43.500385, 49.649551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.255943, 43.418297, 49.810341>,  <35.992378, 43.281487, 50.078323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255943, 43.418297, 49.810341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454968, -0.528052, -0.717053,
		-0.599027, 0.777288, -0.192329,
		0.658916, 0.342030, -0.669959,
		36.453617, 43.520905, 49.609352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646652, 43.443932, 49.492748>,  <35.992378, 43.281487, 50.078323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646652, 43.443932, 49.492748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019108, 43.407436, 49.351528>,  <36.242580, 43.385540, 49.266796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019108, 43.407436, 49.351528>,  <35.646652, 43.443932, 49.492748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019108, 43.407436, 49.351528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344954, -0.534314, -0.771696,
		-0.118233, 0.840347, -0.528996,
		0.931143, -0.091239, -0.353055,
		36.298450, 43.380066, 49.245613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570507, 43.458206, 48.783672>,  <35.646652, 43.443932, 49.492748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570507, 43.458206, 48.783672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.948048, 43.326057, 48.784401>,  <36.174572, 43.246769, 48.784840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.948048, 43.326057, 48.784401>,  <35.570507, 43.458206, 48.783672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948048, 43.326057, 48.784401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219790, -0.632030, -0.743122,
		0.246656, 0.700995, -0.669154,
		0.943850, -0.330368, 0.001823,
		36.231201, 43.226948, 48.784946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689781, 43.538044, 48.102001>,  <35.570507, 43.458206, 48.783672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689781, 43.538044, 48.102001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986580, 43.295456, 48.216290>,  <36.164658, 43.149902, 48.284863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986580, 43.295456, 48.216290>,  <35.689781, 43.538044, 48.102001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986580, 43.295456, 48.216290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215416, -0.619269, -0.755051,
		0.634855, 0.498695, -0.590138,
		0.741994, -0.606473, 0.285719,
		36.209179, 43.113514, 48.302006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209850, 43.510117, 47.587917>,  <35.689781, 43.538044, 48.102001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209850, 43.510117, 47.587917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.266270, 43.179359, 47.805672>,  <36.300121, 42.980907, 47.936325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.266270, 43.179359, 47.805672>,  <36.209850, 43.510117, 47.587917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266270, 43.179359, 47.805672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062231, -0.556203, -0.828713,
		0.988044, 0.083014, -0.129912,
		0.141053, -0.826890, 0.544387,
		36.308586, 42.931293, 47.968987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838245, 43.126179, 47.280327>,  <36.209850, 43.510117, 47.587917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838245, 43.126179, 47.280327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.605850, 42.867722, 47.478294>,  <36.466412, 42.712646, 47.597076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.605850, 42.867722, 47.478294>,  <36.838245, 43.126179, 47.280327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605850, 42.867722, 47.478294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119077, -0.669017, -0.733646,
		0.805153, -0.367306, 0.465633,
		-0.580989, -0.646144, 0.494923,
		36.431553, 42.673878, 47.626770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410183, 43.195263, 46.833614>,  <36.838245, 43.126179, 47.280327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410183, 43.195263, 46.833614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.337807, 43.510937, 46.598854>,  <37.294380, 43.700340, 46.457996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.337807, 43.510937, 46.598854>,  <37.410183, 43.195263, 46.833614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337807, 43.510937, 46.598854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447892, 0.597398, 0.665214,
		0.875588, -0.142505, -0.461561,
		-0.180939, 0.789182, -0.586901,
		37.283524, 43.747692, 46.422783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057522, 43.463249, 46.565655>,  <37.410183, 43.195263, 46.833614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057522, 43.463249, 46.565655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.804878, 43.771984, 46.536442>,  <37.653290, 43.957226, 46.518913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.804878, 43.771984, 46.536442>,  <38.057522, 43.463249, 46.565655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804878, 43.771984, 46.536442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549305, 0.511992, 0.660400,
		0.547111, 0.377002, -0.747355,
		-0.631611, 0.771838, -0.073028,
		37.615395, 44.003536, 46.514534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415665, 44.075062, 46.347969>,  <38.057522, 43.463249, 46.565655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415665, 44.075062, 46.347969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.081474, 44.207287, 46.523567>,  <37.880962, 44.286621, 46.628925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.081474, 44.207287, 46.523567>,  <38.415665, 44.075062, 46.347969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081474, 44.207287, 46.523567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537904, 0.655401, 0.530197,
		-0.112456, 0.679102, -0.725379,
		-0.835471, 0.330561, 0.438996,
		37.830833, 44.306454, 46.655266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468529, 44.796318, 46.273834>,  <38.415665, 44.075062, 46.347969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468529, 44.796318, 46.273834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.223976, 44.705269, 46.576992>,  <38.077244, 44.650639, 46.758884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.223976, 44.705269, 46.576992>,  <38.468529, 44.796318, 46.273834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223976, 44.705269, 46.576992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499810, 0.631450, 0.592842,
		-0.613515, 0.741255, -0.272288,
		-0.611383, -0.227625, 0.757890,
		38.040562, 44.636982, 46.804359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374310, 45.416805, 46.629333>,  <38.468529, 44.796318, 46.273834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374310, 45.416805, 46.629333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261482, 45.166084, 46.919868>,  <38.193787, 45.015652, 47.094189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261482, 45.166084, 46.919868>,  <38.374310, 45.416805, 46.629333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261482, 45.166084, 46.919868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428462, 0.595083, 0.679924,
		-0.858405, 0.502989, 0.100708,
		-0.282065, -0.626800, 0.726334,
		38.176865, 44.978043, 47.137768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910847, 45.842468, 47.136219>,  <38.374310, 45.416805, 46.629333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910847, 45.842468, 47.136219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.029335, 45.522385, 47.344803>,  <38.100430, 45.330334, 47.469955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.029335, 45.522385, 47.344803>,  <37.910847, 45.842468, 47.136219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029335, 45.522385, 47.344803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166496, 0.580868, 0.796788,
		-0.940495, -0.149206, 0.305298,
		0.296223, -0.800206, 0.521462,
		38.118202, 45.282322, 47.501240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624214, 45.835808, 47.780468>,  <37.910847, 45.842468, 47.136219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624214, 45.835808, 47.780468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942570, 45.603703, 47.849586>,  <38.133583, 45.464439, 47.891060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942570, 45.603703, 47.849586>,  <37.624214, 45.835808, 47.780468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942570, 45.603703, 47.849586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285376, 0.611256, 0.738192,
		-0.533967, -0.538206, 0.652084,
		0.795889, -0.580259, 0.172800,
		38.181335, 45.429626, 47.901428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673244, 45.610168, 48.542377>,  <37.624214, 45.835808, 47.780468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673244, 45.610168, 48.542377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.047112, 45.619858, 48.400501>,  <38.271431, 45.625671, 48.315376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.047112, 45.619858, 48.400501>,  <37.673244, 45.610168, 48.542377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047112, 45.619858, 48.400501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306657, 0.449858, 0.838802,
		0.179878, -0.892772, 0.413041,
		0.934669, 0.024220, -0.354694,
		38.327511, 45.627125, 48.294094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940624, 45.844326, 49.141113>,  <37.673244, 45.610168, 48.542377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940624, 45.844326, 49.141113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.247581, 45.811111, 48.886803>,  <38.431755, 45.791183, 48.734215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.247581, 45.811111, 48.886803>,  <37.940624, 45.844326, 49.141113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247581, 45.811111, 48.886803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611773, 0.391661, 0.687267,
		0.191942, -0.916355, 0.351356,
		0.767393, -0.083035, -0.635777,
		38.477798, 45.786201, 48.696068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.773033, 34.324623, 38.350689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125938, 34.372864, 38.168674>,  <35.337681, 34.401806, 38.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125938, 34.372864, 38.168674>,  <34.773033, 34.324623, 38.350689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125938, 34.372864, 38.168674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120943, 0.876112, 0.466691,
		0.454947, -0.466780, 0.758380,
		0.882268, 0.120599, -0.455038,
		35.390617, 34.409042, 38.032162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336071, 34.322689, 38.816162>,  <34.773033, 34.324623, 38.350689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336071, 34.322689, 38.816162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400032, 34.562778, 38.502686>,  <35.438408, 34.706833, 38.314602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400032, 34.562778, 38.502686>,  <35.336071, 34.322689, 38.816162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400032, 34.562778, 38.502686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168165, 0.798861, 0.577531,
		0.972703, 0.039440, 0.228677,
		0.159904, 0.600222, -0.783687,
		35.448002, 34.742844, 38.267578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792191, 34.889938, 39.115341>,  <35.336071, 34.322689, 38.816162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792191, 34.889938, 39.115341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638767, 35.042221, 38.778782>,  <35.546715, 35.133591, 38.576847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638767, 35.042221, 38.778782>,  <35.792191, 34.889938, 39.115341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638767, 35.042221, 38.778782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031240, 0.905209, 0.423816,
		0.922988, 0.188844, -0.335307,
		-0.383558, 0.380702, -0.841397,
		35.523701, 35.156433, 38.526363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087399, 35.463024, 39.108559>,  <35.792191, 34.889938, 39.115341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087399, 35.463024, 39.108559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788174, 35.511787, 38.847626>,  <35.608639, 35.541046, 38.691067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788174, 35.511787, 38.847626>,  <36.087399, 35.463024, 39.108559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788174, 35.511787, 38.847626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195416, 0.898935, 0.392083,
		0.634200, 0.420780, -0.648641,
		-0.748066, 0.121904, -0.652331,
		35.563755, 35.548359, 38.651928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108479, 36.115292, 38.942719>,  <36.087399, 35.463024, 39.108559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108479, 36.115292, 38.942719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731201, 36.018539, 38.851612>,  <35.504833, 35.960487, 38.796947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731201, 36.018539, 38.851612>,  <36.108479, 36.115292, 38.942719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731201, 36.018539, 38.851612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312952, 0.876987, 0.364631,
		0.111551, 0.415198, -0.902866,
		-0.943195, -0.241879, -0.227765,
		35.448242, 35.945976, 38.783283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876709, 36.719501, 38.569527>,  <36.108479, 36.115292, 38.942719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876709, 36.719501, 38.569527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552246, 36.521851, 38.694656>,  <35.357567, 36.403259, 38.769733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552246, 36.521851, 38.694656>,  <35.876709, 36.719501, 38.569527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552246, 36.521851, 38.694656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278036, 0.796424, 0.537034,
		-0.514504, 0.348643, -0.783411,
		-0.811161, -0.494123, 0.312828,
		35.308899, 36.373615, 38.788506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408039, 37.170616, 38.570301>,  <35.876709, 36.719501, 38.569527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408039, 37.170616, 38.570301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232792, 36.902805, 38.810230>,  <35.127644, 36.742119, 38.954189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232792, 36.902805, 38.810230>,  <35.408039, 37.170616, 38.570301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232792, 36.902805, 38.810230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237554, 0.729785, 0.641079,
		-0.866961, 0.138378, -0.478780,
		-0.438117, -0.669527, 0.599823,
		35.101357, 36.701946, 38.990177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734077, 37.494362, 38.722843>,  <35.408039, 37.170616, 38.570301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734077, 37.494362, 38.722843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801010, 37.204605, 38.990349>,  <34.841171, 37.030750, 39.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801010, 37.204605, 38.990349>,  <34.734077, 37.494362, 38.722843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801010, 37.204605, 38.990349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275249, 0.617034, 0.737229,
		-0.946699, -0.307439, -0.096140,
		0.167331, -0.724396, 0.668767,
		34.851208, 36.987286, 39.190979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209110, 37.547176, 39.183399>,  <34.734077, 37.494362, 38.722843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209110, 37.547176, 39.183399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480942, 37.341789, 39.392979>,  <34.644043, 37.218559, 39.518726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480942, 37.341789, 39.392979>,  <34.209110, 37.547176, 39.183399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480942, 37.341789, 39.392979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204481, 0.553325, 0.807477,
		-0.704524, -0.655884, 0.271037,
		0.679583, -0.513465, 0.523947,
		34.684818, 37.187748, 39.550163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844418, 37.366547, 39.867420>,  <34.209110, 37.547176, 39.183399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844418, 37.366547, 39.867420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241280, 37.370567, 39.917274>,  <34.479397, 37.372978, 39.947186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241280, 37.370567, 39.917274>,  <33.844418, 37.366547, 39.867420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241280, 37.370567, 39.917274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110800, 0.532670, 0.839039,
		-0.057955, -0.846264, 0.529603,
		0.992151, 0.010053, 0.124637,
		34.538925, 37.373585, 39.954666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950790, 37.250412, 40.537399>,  <33.844418, 37.366547, 39.867420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950790, 37.250412, 40.537399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308250, 37.392719, 40.427986>,  <34.522728, 37.478104, 40.362339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308250, 37.392719, 40.427986>,  <33.950790, 37.250412, 40.537399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308250, 37.392719, 40.427986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068281, 0.494629, 0.866418,
		0.443540, -0.792951, 0.417733,
		0.893649, 0.355768, -0.273531,
		34.576344, 37.499451, 40.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318054, 37.272453, 41.200779>,  <33.950790, 37.250412, 40.537399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318054, 37.272453, 41.200779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511642, 37.519390, 40.952694>,  <34.627796, 37.667553, 40.803844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511642, 37.519390, 40.952694>,  <34.318054, 37.272453, 41.200779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511642, 37.519390, 40.952694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086929, 0.671323, 0.736049,
		0.870755, -0.410141, 0.271236,
		0.483971, 0.617340, -0.620211,
		34.656834, 37.704594, 40.766632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645927, 36.777596, 41.770386>,  <34.318054, 37.272453, 41.200779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645927, 36.777596, 41.770386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321941, 36.715771, 41.996681>,  <34.127548, 36.678677, 42.132458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321941, 36.715771, 41.996681>,  <34.645927, 36.777596, 41.770386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321941, 36.715771, 41.996681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266763, -0.761982, -0.590103,
		0.522292, -0.628883, 0.575949,
		-0.809968, -0.154564, 0.565739,
		34.078949, 36.669403, 42.166405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684731, 36.028236, 42.013760>,  <34.645927, 36.777596, 41.770386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684731, 36.028236, 42.013760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299133, 36.132893, 42.032810>,  <34.067776, 36.195686, 42.044239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299133, 36.132893, 42.032810>,  <34.684731, 36.028236, 42.013760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299133, 36.132893, 42.032810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237114, -0.764515, -0.599411,
		-0.120420, -0.589119, 0.799024,
		-0.963990, 0.261641, 0.047626,
		34.009937, 36.211384, 42.047096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207516, 35.475418, 42.160362>,  <34.684731, 36.028236, 42.013760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207516, 35.475418, 42.160362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964985, 35.743340, 41.988911>,  <33.819466, 35.904091, 41.886040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964985, 35.743340, 41.988911>,  <34.207516, 35.475418, 42.160362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964985, 35.743340, 41.988911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524145, -0.741979, -0.418018,
		-0.598027, -0.028790, 0.800958,
		-0.606329, 0.669805, -0.428633,
		33.783085, 35.944283, 41.860321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576969, 35.252998, 42.231640>,  <34.207516, 35.475418, 42.160362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576969, 35.252998, 42.231640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514339, 35.525627, 41.945717>,  <33.476761, 35.689205, 41.774162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514339, 35.525627, 41.945717>,  <33.576969, 35.252998, 42.231640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514339, 35.525627, 41.945717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568096, -0.654176, -0.499320,
		-0.807932, 0.327901, 0.489620,
		-0.156570, 0.681567, -0.714809,
		33.467369, 35.730099, 41.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842705, 35.256916, 42.180073>,  <33.576969, 35.252998, 42.231640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842705, 35.256916, 42.180073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009369, 35.368988, 41.834148>,  <33.109367, 35.436230, 41.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009369, 35.368988, 41.834148>,  <32.842705, 35.256916, 42.180073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009369, 35.368988, 41.834148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621809, -0.606119, -0.495957,
		-0.663134, 0.744391, -0.078329,
		0.416663, 0.280181, -0.864807,
		33.134369, 35.453041, 41.574707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321705, 35.199013, 41.767796>,  <32.842705, 35.256916, 42.180073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321705, 35.199013, 41.767796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639225, 35.212234, 41.524883>,  <32.829739, 35.220169, 41.379135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639225, 35.212234, 41.524883>,  <32.321705, 35.199013, 41.767796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639225, 35.212234, 41.524883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416027, -0.698842, -0.581843,
		-0.443626, 0.714512, -0.540989,
		0.793800, 0.033055, -0.607280,
		32.877365, 35.222153, 41.342701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983961, 34.956367, 41.150143>,  <32.321705, 35.199013, 41.767796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983961, 34.956367, 41.150143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364700, 34.949417, 41.027710>,  <32.593143, 34.945248, 40.954250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364700, 34.949417, 41.027710>,  <31.983961, 34.956367, 41.150143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364700, 34.949417, 41.027710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243416, -0.649786, -0.720088,
		-0.186378, 0.759918, -0.622726,
		0.951847, -0.017373, -0.306082,
		32.650253, 34.944206, 40.935886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975912, 34.981884, 40.509624>,  <31.983961, 34.956367, 41.150143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975912, 34.981884, 40.509624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333916, 34.812397, 40.565365>,  <32.548717, 34.710705, 40.598808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333916, 34.812397, 40.565365>,  <31.975912, 34.981884, 40.509624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333916, 34.812397, 40.565365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250302, -0.735687, -0.629375,
		0.369198, 0.528417, -0.764506,
		0.895009, -0.423721, 0.139350,
		32.602417, 34.685280, 40.607170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250935, 34.755188, 39.831635>,  <31.975912, 34.981884, 40.509624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250935, 34.755188, 39.831635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437012, 34.531715, 40.106289>,  <32.548656, 34.397633, 40.271080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437012, 34.531715, 40.106289>,  <32.250935, 34.755188, 39.831635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437012, 34.531715, 40.106289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141099, -0.812555, -0.565548,
		0.873892, 0.166205, -0.456824,
		0.465192, -0.558686, 0.686634,
		32.576569, 34.364109, 40.312279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918037, 34.431549, 39.473015>,  <32.250935, 34.755188, 39.831635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918037, 34.431549, 39.473015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807312, 34.212944, 39.789165>,  <32.740875, 34.081783, 39.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807312, 34.212944, 39.789165>,  <32.918037, 34.431549, 39.473015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807312, 34.212944, 39.789165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170632, -0.781495, -0.600125,
		0.945652, -0.300990, 0.123080,
		-0.276818, -0.546508, 0.790380,
		32.724266, 34.048992, 40.026279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251953, 33.803192, 39.332806>,  <32.918037, 34.431549, 39.473015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251953, 33.803192, 39.332806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962593, 33.734917, 39.600403>,  <32.788979, 33.693951, 39.760963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962593, 33.734917, 39.600403>,  <33.251953, 33.803192, 39.332806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962593, 33.734917, 39.600403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392831, -0.695081, -0.602118,
		0.567782, -0.698375, 0.435771,
		-0.723400, -0.170687, 0.668997,
		32.745571, 33.683712, 39.801102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358215, 33.062206, 39.456917>,  <33.251953, 33.803192, 39.332806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358215, 33.062206, 39.456917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990936, 33.173042, 39.570152>,  <32.770569, 33.239544, 39.638096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990936, 33.173042, 39.570152>,  <33.358215, 33.062206, 39.456917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990936, 33.173042, 39.570152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381405, -0.811444, -0.442820,
		0.107010, -0.514567, 0.850747,
		-0.918194, 0.277093, 0.283091,
		32.715477, 33.256168, 39.655079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273464, 32.590073, 39.859669>,  <33.358215, 33.062206, 39.456917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273464, 32.590073, 39.859669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951668, 32.739723, 39.675137>,  <32.758591, 32.829514, 39.564415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951668, 32.739723, 39.675137>,  <33.273464, 32.590073, 39.859669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951668, 32.739723, 39.675137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220331, -0.909251, -0.353154,
		-0.551591, -0.182462, 0.813913,
		-0.804488, 0.374127, -0.461333,
		32.710320, 32.851963, 39.536736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629822, 32.809319, 40.273663>,  <33.273464, 32.590073, 39.859669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629822, 32.809319, 40.273663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507156, 32.617596, 40.602592>,  <32.433559, 32.502563, 40.799950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507156, 32.617596, 40.602592>,  <32.629822, 32.809319, 40.273663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507156, 32.617596, 40.602592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766516, -0.636552, -0.085177,
		0.564281, 0.604207, 0.562602,
		-0.306661, -0.479308, 0.822328,
		32.415157, 32.473804, 40.849289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137924, 32.720795, 40.861511>,  <32.629822, 32.809319, 40.273663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137924, 32.720795, 40.861511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883339, 32.419300, 40.796036>,  <32.730587, 32.238403, 40.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883339, 32.419300, 40.796036>,  <33.137924, 32.720795, 40.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883339, 32.419300, 40.796036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770906, -0.614777, -0.166591,
		0.024934, -0.232218, 0.972344,
		-0.636460, -0.753740, -0.163689,
		32.692402, 32.193176, 40.746929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853275, 32.641052, 41.074791>,  <33.137924, 32.720795, 40.861511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853275, 32.641052, 41.074791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235092, 32.522903, 41.090855>,  <34.464180, 32.452015, 41.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235092, 32.522903, 41.090855>,  <33.853275, 32.641052, 41.074791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235092, 32.522903, 41.090855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207586, 0.755353, 0.621570,
		-0.213924, -0.584977, 0.782329,
		0.954539, -0.295370, 0.040155,
		34.521454, 32.434292, 41.102901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110939, 32.512039, 41.786259>,  <33.853275, 32.641052, 41.074791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110939, 32.512039, 41.786259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436741, 32.596161, 41.569977>,  <34.632221, 32.646633, 41.440208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436741, 32.596161, 41.569977>,  <34.110939, 32.512039, 41.786259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436741, 32.596161, 41.569977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316694, 0.619713, 0.718095,
		0.486096, -0.756127, 0.438157,
		0.814503, 0.210302, -0.540701,
		34.681091, 32.659252, 41.407768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754772, 32.407009, 42.157394>,  <34.110939, 32.512039, 41.786259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754772, 32.407009, 42.157394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825012, 32.678249, 41.871922>,  <34.867157, 32.840992, 41.700638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825012, 32.678249, 41.871922>,  <34.754772, 32.407009, 42.157394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825012, 32.678249, 41.871922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362707, 0.629387, 0.687252,
		0.915209, -0.379540, -0.135432,
		0.175601, 0.678102, -0.713683,
		34.877693, 32.881680, 41.657818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373642, 32.699574, 42.318123>,  <34.754772, 32.407009, 42.157394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373642, 32.699574, 42.318123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223331, 32.961342, 42.055668>,  <35.133144, 33.118404, 41.898193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223331, 32.961342, 42.055668>,  <35.373642, 32.699574, 42.318123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223331, 32.961342, 42.055668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346487, 0.755899, 0.555484,
		0.859497, -0.018604, -0.510802,
		-0.375780, 0.654423, -0.656140,
		35.110596, 33.157669, 41.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871841, 33.034489, 42.159927>,  <35.373642, 32.699574, 42.318123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871841, 33.034489, 42.159927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583122, 33.286491, 42.045322>,  <35.409889, 33.437695, 41.976559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583122, 33.286491, 42.045322>,  <35.871841, 33.034489, 42.159927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583122, 33.286491, 42.045322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452632, 0.742880, 0.493207,
		0.523570, 0.226314, -0.821375,
		-0.721803, 0.630009, -0.286512,
		35.366581, 33.475494, 41.959370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204483, 33.777264, 42.149147>,  <35.871841, 33.034489, 42.159927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204483, 33.777264, 42.149147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809628, 33.830456, 42.184624>,  <35.572712, 33.862373, 42.205910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809628, 33.830456, 42.184624>,  <36.204483, 33.777264, 42.149147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809628, 33.830456, 42.184624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159169, 0.868885, 0.468727,
		-0.014731, 0.476817, -0.878879,
		-0.987141, 0.132985, 0.088694,
		35.513485, 33.870350, 42.211231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199955, 34.451408, 42.138195>,  <36.204483, 33.777264, 42.149147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199955, 34.451408, 42.138195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852467, 34.350857, 42.308903>,  <35.643974, 34.290527, 42.411327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852467, 34.350857, 42.308903>,  <36.199955, 34.451408, 42.138195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852467, 34.350857, 42.308903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001913, 0.859929, 0.510410,
		-0.495301, 0.444219, -0.746556,
		-0.868719, -0.251379, 0.426774,
		35.591850, 34.275444, 42.436935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751141, 35.002129, 42.057362>,  <36.199955, 34.451408, 42.138195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751141, 35.002129, 42.057362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607811, 34.800385, 42.371616>,  <35.521812, 34.679340, 42.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607811, 34.800385, 42.371616>,  <35.751141, 35.002129, 42.057362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607811, 34.800385, 42.371616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189301, 0.784787, 0.590147,
		-0.914205, 0.360185, -0.185731,
		-0.358322, -0.504356, 0.785640,
		35.500313, 34.649078, 42.607307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273457, 35.468250, 42.399227>,  <35.751141, 35.002129, 42.057362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273457, 35.468250, 42.399227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333645, 35.192837, 42.682999>,  <35.369759, 35.027588, 42.853260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333645, 35.192837, 42.682999>,  <35.273457, 35.468250, 42.399227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333645, 35.192837, 42.682999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146029, 0.725203, 0.672871,
		-0.977770, 0.002351, 0.209666,
		0.150469, -0.688531, 0.709425,
		35.378784, 34.986279, 42.895824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916588, 35.712189, 42.948654>,  <35.273457, 35.468250, 42.399227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916588, 35.712189, 42.948654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171055, 35.455265, 43.119640>,  <35.323734, 35.301109, 43.222233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171055, 35.455265, 43.119640>,  <34.916588, 35.712189, 42.948654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171055, 35.455265, 43.119640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111135, 0.624545, 0.773041,
		-0.763505, -0.444276, 0.468698,
		0.636167, -0.642310, 0.427469,
		35.361904, 35.262573, 43.247879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684036, 35.749256, 43.622231>,  <34.916588, 35.712189, 42.948654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684036, 35.749256, 43.622231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044029, 35.575230, 43.633163>,  <35.260025, 35.470814, 43.639725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044029, 35.575230, 43.633163>,  <34.684036, 35.749256, 43.622231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044029, 35.575230, 43.633163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284866, 0.634421, 0.718584,
		-0.329970, -0.638928, 0.694904,
		0.899984, -0.435065, 0.027331,
		35.314026, 35.444710, 43.641361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835651, 35.576408, 44.373177>,  <34.684036, 35.749256, 43.622231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835651, 35.576408, 44.373177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192059, 35.585297, 44.191807>,  <35.405903, 35.590630, 44.082985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192059, 35.585297, 44.191807>,  <34.835651, 35.576408, 44.373177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192059, 35.585297, 44.191807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357800, 0.580359, 0.731548,
		0.279408, -0.814058, 0.509157,
		0.891016, 0.022224, -0.453427,
		35.459362, 35.591965, 44.055779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326599, 35.446369, 44.886745>,  <34.835651, 35.576408, 44.373177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326599, 35.446369, 44.886745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544296, 35.641842, 44.613983>,  <35.674915, 35.759125, 44.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544296, 35.641842, 44.613983>,  <35.326599, 35.446369, 44.886745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544296, 35.641842, 44.613983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463487, 0.502365, 0.729938,
		0.699274, -0.713313, 0.046907,
		0.544238, 0.488686, -0.681902,
		35.707569, 35.788448, 44.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048183, 35.457806, 45.145596>,  <35.326599, 35.446369, 44.886745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048183, 35.457806, 45.145596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999660, 35.759510, 44.887486>,  <35.970547, 35.940533, 44.732620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999660, 35.759510, 44.887486>,  <36.048183, 35.457806, 45.145596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999660, 35.759510, 44.887486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523540, 0.600921, 0.603986,
		0.843320, -0.264557, -0.467782,
		-0.121311, 0.754256, -0.645276,
		35.963268, 35.985786, 44.693901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644711, 35.873669, 45.160370>,  <36.048183, 35.457806, 45.145596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644711, 35.873669, 45.160370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406559, 36.138908, 44.978897>,  <36.263668, 36.298050, 44.870014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406559, 36.138908, 44.978897>,  <36.644711, 35.873669, 45.160370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406559, 36.138908, 44.978897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567581, 0.746788, 0.346641,
		0.568663, -0.051121, -0.820981,
		-0.595377, 0.663095, -0.453686,
		36.227947, 36.337837, 44.842793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172798, 36.390869, 44.841301>,  <36.644711, 35.873669, 45.160370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172798, 36.390869, 44.841301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813686, 36.566101, 44.859570>,  <36.598221, 36.671242, 44.870533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813686, 36.566101, 44.859570>,  <37.172798, 36.390869, 44.841301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813686, 36.566101, 44.859570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435775, 0.868374, 0.236700,
		0.064031, 0.232407, -0.970509,
		-0.897775, 0.438080, 0.045674,
		36.544353, 36.697525, 44.873272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133465, 36.998562, 44.396423>,  <37.172798, 36.390869, 44.841301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133465, 36.998562, 44.396423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883854, 37.044735, 44.705555>,  <36.734089, 37.072441, 44.891033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883854, 37.044735, 44.705555>,  <37.133465, 36.998562, 44.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883854, 37.044735, 44.705555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626975, 0.664249, 0.407033,
		-0.466366, 0.738545, -0.486882,
		-0.624023, 0.115437, 0.772832,
		36.696648, 37.079365, 44.937405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016983, 37.690018, 44.418846>,  <37.133465, 36.998562, 44.396423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016983, 37.690018, 44.418846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932629, 37.577374, 44.793274>,  <36.882015, 37.509789, 45.017929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932629, 37.577374, 44.793274>,  <37.016983, 37.690018, 44.418846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932629, 37.577374, 44.793274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505769, 0.788027, 0.351015,
		-0.836496, 0.547458, -0.023754,
		-0.210884, -0.281608, 0.936069,
		36.869362, 37.492889, 45.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012722, 38.328011, 44.853184>,  <37.016983, 37.690018, 44.418846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012722, 38.328011, 44.853184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001648, 38.043690, 45.134323>,  <36.995003, 37.873096, 45.303009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001648, 38.043690, 45.134323>,  <37.012722, 38.328011, 44.853184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001648, 38.043690, 45.134323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231593, 0.679429, 0.696233,
		-0.972419, 0.182048, 0.145808,
		-0.027682, -0.710799, 0.702851,
		36.993343, 37.830452, 45.345177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538467, 38.580025, 45.454510>,  <37.012722, 38.328011, 44.853184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538467, 38.580025, 45.454510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793289, 38.303463, 45.590820>,  <36.946182, 38.137527, 45.672607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793289, 38.303463, 45.590820>,  <36.538467, 38.580025, 45.454510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793289, 38.303463, 45.590820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214857, 0.583848, 0.782916,
		-0.740272, -0.425539, 0.520494,
		0.637051, -0.691403, 0.340776,
		36.984406, 38.096043, 45.693054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529953, 38.737461, 46.171364>,  <36.538467, 38.580025, 45.454510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529953, 38.737461, 46.171364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840286, 38.491238, 46.115982>,  <37.026485, 38.343502, 46.082752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840286, 38.491238, 46.115982>,  <36.529953, 38.737461, 46.171364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840286, 38.491238, 46.115982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466389, 0.411729, 0.782918,
		-0.424930, -0.671984, 0.606524,
		0.775832, -0.615562, -0.138450,
		37.073036, 38.306568, 46.074448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734123, 38.355263, 46.769707>,  <36.529953, 38.737461, 46.171364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734123, 38.355263, 46.769707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062183, 38.379360, 46.542122>,  <37.259018, 38.393818, 46.405571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062183, 38.379360, 46.542122>,  <36.734123, 38.355263, 46.769707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062183, 38.379360, 46.542122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513909, 0.359548, 0.778860,
		0.251490, -0.931180, 0.263926,
		0.820153, 0.060242, -0.568965,
		37.308228, 38.397434, 46.371433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318455, 38.070511, 47.149498>,  <36.734123, 38.355263, 46.769707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318455, 38.070511, 47.149498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488358, 38.314808, 46.882191>,  <37.590298, 38.461388, 46.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488358, 38.314808, 46.882191>,  <37.318455, 38.070511, 47.149498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488358, 38.314808, 46.882191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578777, 0.384413, 0.719197,
		0.696134, -0.692258, -0.190203,
		0.424753, 0.610742, -0.668266,
		37.615784, 38.498032, 46.681709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952850, 38.003017, 47.237564>,  <37.318455, 38.070511, 47.149498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952850, 38.003017, 47.237564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950436, 38.346745, 47.032997>,  <37.948986, 38.552979, 46.910259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950436, 38.346745, 47.032997>,  <37.952850, 38.003017, 47.237564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950436, 38.346745, 47.032997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606479, 0.409776, 0.681371,
		0.795077, -0.306046, -0.523630,
		-0.006040, 0.859313, -0.511414,
		37.948624, 38.604538, 46.879574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576035, 38.242420, 47.443211>,  <37.952850, 38.003017, 47.237564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576035, 38.242420, 47.443211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395435, 38.559692, 47.279747>,  <38.287075, 38.750057, 47.181667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395435, 38.559692, 47.279747>,  <38.576035, 38.242420, 47.443211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395435, 38.559692, 47.279747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626868, 0.607908, 0.487324,
		0.634967, -0.036149, -0.771693,
		-0.451502, 0.793184, -0.408662,
		38.259983, 38.797649, 47.157150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082497, 38.737999, 47.200951>,  <38.576035, 38.242420, 47.443211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082497, 38.737999, 47.200951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759727, 38.967609, 47.256630>,  <38.566067, 39.105373, 47.290035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759727, 38.967609, 47.256630>,  <39.082497, 38.737999, 47.200951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759727, 38.967609, 47.256630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516261, 0.570922, 0.638375,
		0.286971, 0.586980, -0.757035,
		-0.806921, 0.574023, 0.139197,
		38.517651, 39.139816, 47.298389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297543, 39.488480, 47.166405>,  <39.082497, 38.737999, 47.200951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297543, 39.488480, 47.166405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972328, 39.439087, 47.393993>,  <38.777199, 39.409451, 47.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972328, 39.439087, 47.393993>,  <39.297543, 39.488480, 47.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972328, 39.439087, 47.393993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438164, 0.513742, 0.737619,
		-0.383387, 0.849012, -0.363584,
		-0.813036, -0.123484, 0.568968,
		38.728416, 39.402042, 47.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228722, 39.930439, 46.463409>,  <39.297543, 39.488480, 47.166405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228722, 39.930439, 46.463409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628414, 39.941032, 46.451820>,  <39.868229, 39.947388, 46.444866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628414, 39.941032, 46.451820>,  <39.228722, 39.930439, 46.463409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628414, 39.941032, 46.451820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014001, -0.449091, -0.893376,
		-0.036667, 0.893093, -0.448374,
		0.999229, 0.026480, -0.028972,
		39.928185, 39.948975, 46.443130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329731, 40.031841, 45.725296>,  <39.228722, 39.930439, 46.463409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329731, 40.031841, 45.725296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663643, 39.874504, 45.879398>,  <39.863991, 39.780102, 45.971859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663643, 39.874504, 45.879398>,  <39.329731, 40.031841, 45.725296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663643, 39.874504, 45.879398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056632, -0.634671, -0.770705,
		0.547667, 0.665185, -0.507533,
		0.834778, -0.393347, 0.385259,
		39.914078, 39.756500, 45.994976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806229, 39.817150, 45.030655>,  <39.329731, 40.031841, 45.725296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806229, 39.817150, 45.030655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964981, 39.639286, 45.351841>,  <40.060234, 39.532566, 45.544552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964981, 39.639286, 45.351841>,  <39.806229, 39.817150, 45.030655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964981, 39.639286, 45.351841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293678, -0.767313, -0.570074,
		0.869618, 0.462068, -0.173948,
		0.396885, -0.444662, 0.802968,
		40.084045, 39.505886, 45.592731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566437, 39.697792, 44.873444>,  <39.806229, 39.817150, 45.030655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566437, 39.697792, 44.873444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463551, 39.438282, 45.159920>,  <40.401817, 39.282574, 45.331806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463551, 39.438282, 45.159920>,  <40.566437, 39.697792, 44.873444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463551, 39.438282, 45.159920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364944, -0.751459, -0.549659,
		0.894794, 0.119988, 0.430055,
		-0.257216, -0.648777, 0.716190,
		40.386387, 39.243649, 45.374775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000278, 39.217152, 44.749111>,  <40.566437, 39.697792, 44.873444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000278, 39.217152, 44.749111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747456, 39.024590, 44.992012>,  <40.595764, 38.909054, 45.137753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747456, 39.024590, 44.992012>,  <41.000278, 39.217152, 44.749111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747456, 39.024590, 44.992012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164417, -0.849100, -0.501993,
		0.757280, -0.217444, 0.615828,
		-0.632055, -0.481402, 0.607255,
		40.557838, 38.880169, 45.174187>
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
