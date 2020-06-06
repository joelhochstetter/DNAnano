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
	<23.729635, 35.188313, 34.934170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104139, 35.159763, 34.796577>,  <24.328842, 35.142635, 34.714024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104139, 35.159763, 34.796577>,  <23.729635, 35.188313, 34.934170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.104139, 35.159763, 34.796577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342510, 0.403138, 0.848626,
		0.078103, -0.912352, 0.401888,
		0.936262, -0.071370, -0.343976,
		24.385017, 35.138351, 34.693386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112276, 35.021336, 35.476124>,  <23.729635, 35.188313, 34.934170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112276, 35.021336, 35.476124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396217, 35.134201, 35.217979>,  <24.566582, 35.201920, 35.063091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396217, 35.134201, 35.217979>,  <24.112276, 35.021336, 35.476124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.396217, 35.134201, 35.217979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589068, 0.264491, 0.763573,
		0.386143, -0.922188, 0.021537,
		0.709854, 0.282161, -0.645363,
		24.609173, 35.218849, 35.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684196, 34.849445, 35.877300>,  <24.112276, 35.021336, 35.476124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684196, 34.849445, 35.877300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802465, 35.089870, 35.580299>,  <24.873426, 35.234123, 35.402100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802465, 35.089870, 35.580299>,  <24.684196, 34.849445, 35.877300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802465, 35.089870, 35.580299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666201, 0.427317, 0.611209,
		0.684655, -0.675372, -0.274080,
		0.295674, 0.601059, -0.742499,
		24.891169, 35.270187, 35.357552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485666, 34.757671, 35.741684>,  <24.684196, 34.849445, 35.877300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485666, 34.757671, 35.741684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351862, 35.123116, 35.649235>,  <25.271580, 35.342381, 35.593765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351862, 35.123116, 35.649235>,  <25.485666, 34.757671, 35.741684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351862, 35.123116, 35.649235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716266, 0.405859, 0.567663,
		0.612427, 0.024343, -0.790152,
		-0.334509, 0.913611, -0.231123,
		25.251509, 35.397198, 35.579899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895845, 35.256565, 35.353119>,  <25.485666, 34.757671, 35.741684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895845, 35.256565, 35.353119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684372, 35.490463, 35.599228>,  <25.557487, 35.630802, 35.746895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684372, 35.490463, 35.599228>,  <25.895845, 35.256565, 35.353119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684372, 35.490463, 35.599228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845818, 0.302015, 0.439748,
		0.071320, 0.752898, -0.654261,
		-0.528682, 0.584749, 0.615275,
		25.525766, 35.665890, 35.783810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326363, 35.424988, 34.715908>,  <25.895845, 35.256565, 35.353119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326363, 35.424988, 34.715908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190769, 35.579418, 34.372738>,  <26.109413, 35.672077, 34.166836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190769, 35.579418, 34.372738>,  <26.326363, 35.424988, 34.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190769, 35.579418, 34.372738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896833, -0.142889, -0.418656,
		-0.284222, -0.911332, -0.297810,
		-0.338981, 0.386077, -0.857925,
		26.089075, 35.695240, 34.115360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207796, 34.857994, 34.164707>,  <26.326363, 35.424988, 34.715908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207796, 34.857994, 34.164707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319265, 35.230690, 34.071583>,  <26.386147, 35.454308, 34.015709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319265, 35.230690, 34.071583>,  <26.207796, 34.857994, 34.164707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319265, 35.230690, 34.071583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881627, -0.344330, -0.322754,
		-0.380887, -0.115308, -0.917404,
		0.278674, 0.931741, -0.232809,
		26.402868, 35.510212, 34.001740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327303, 34.924534, 33.390598>,  <26.207796, 34.857994, 34.164707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327303, 34.924534, 33.390598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542433, 35.144333, 33.646347>,  <26.671511, 35.276211, 33.799797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542433, 35.144333, 33.646347>,  <26.327303, 34.924534, 33.390598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542433, 35.144333, 33.646347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830153, -0.477363, -0.288047,
		0.146933, 0.685697, -0.712902,
		0.537826, 0.549494, 0.639374,
		26.703781, 35.309181, 33.838158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957783, 35.179272, 32.938217>,  <26.327303, 34.924534, 33.390598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957783, 35.179272, 32.938217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047466, 35.190880, 33.327862>,  <27.101276, 35.197845, 33.561649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047466, 35.190880, 33.327862>,  <26.957783, 35.179272, 32.938217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047466, 35.190880, 33.327862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815559, -0.552752, -0.171253,
		0.533472, 0.832840, -0.147597,
		0.224211, 0.029016, 0.974109,
		27.114729, 35.199585, 33.620094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705156, 35.349995, 33.022057>,  <26.957783, 35.179272, 32.938217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705156, 35.349995, 33.022057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583334, 35.157761, 33.351002>,  <27.510241, 35.042419, 33.548370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583334, 35.157761, 33.351002>,  <27.705156, 35.349995, 33.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583334, 35.157761, 33.351002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649476, -0.736321, -0.189769,
		0.696725, 0.476313, 0.536377,
		-0.304556, -0.480581, 0.822367,
		27.491966, 35.013588, 33.597713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374659, 35.091049, 33.432800>,  <27.705156, 35.349995, 33.022057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374659, 35.091049, 33.432800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073956, 34.851879, 33.544041>,  <27.893534, 34.708378, 33.610783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073956, 34.851879, 33.544041>,  <28.374659, 35.091049, 33.432800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073956, 34.851879, 33.544041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632875, -0.772669, 0.049508,
		0.185275, 0.213219, 0.959276,
		-0.751759, -0.597930, 0.278097,
		27.848427, 34.672501, 33.627468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568684, 34.607815, 33.958794>,  <28.374659, 35.091049, 33.432800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568684, 34.607815, 33.958794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255409, 34.410698, 33.807125>,  <28.067444, 34.292427, 33.716125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255409, 34.410698, 33.807125>,  <28.568684, 34.607815, 33.958794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255409, 34.410698, 33.807125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504289, -0.860158, 0.076295,
		-0.363744, -0.131458, 0.922176,
		-0.783188, -0.492795, -0.379171,
		28.020452, 34.262859, 33.693375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804628, 33.962715, 33.951302>,  <28.568684, 34.607815, 33.958794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804628, 33.962715, 33.951302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743259, 33.630333, 34.165207>,  <28.706438, 33.430904, 34.293552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743259, 33.630333, 34.165207>,  <28.804628, 33.962715, 33.951302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743259, 33.630333, 34.165207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941714, -0.041015, -0.333904,
		0.299393, -0.554823, -0.776231,
		-0.153420, -0.830957, 0.534765,
		28.697233, 33.381046, 34.325638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500916, 33.295368, 33.566700>,  <28.804628, 33.962715, 33.951302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500916, 33.295368, 33.566700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391001, 33.350628, 33.947311>,  <28.325052, 33.383785, 34.175678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391001, 33.350628, 33.947311>,  <28.500916, 33.295368, 33.566700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391001, 33.350628, 33.947311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955484, 0.071339, -0.286289,
		-0.107434, -0.987838, 0.112402,
		-0.274789, 0.138155, 0.951527,
		28.308563, 33.392075, 34.232769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875708, 33.734043, 33.242374>,  <28.500916, 33.295368, 33.566700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875708, 33.734043, 33.242374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926207, 33.739319, 33.639137>,  <27.956507, 33.742485, 33.877197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926207, 33.739319, 33.639137>,  <27.875708, 33.734043, 33.242374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926207, 33.739319, 33.639137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522409, 0.850908, 0.055175,
		-0.843297, -0.525149, 0.114316,
		0.126248, 0.013190, 0.991911,
		27.964081, 33.743275, 33.936710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213434, 33.722919, 33.614712>,  <27.875708, 33.734043, 33.242374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213434, 33.722919, 33.614712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509975, 33.903656, 33.813198>,  <27.687901, 34.012100, 33.932289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509975, 33.903656, 33.813198>,  <27.213434, 33.722919, 33.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509975, 33.903656, 33.813198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542777, 0.838540, 0.047356,
		-0.394701, -0.304444, 0.866905,
		0.741352, 0.451845, 0.496218,
		27.732382, 34.039211, 33.962063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010296, 33.990028, 34.252182>,  <27.213434, 33.722919, 33.614712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010296, 33.990028, 34.252182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315861, 34.206287, 34.111252>,  <27.499199, 34.336044, 34.026691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315861, 34.206287, 34.111252>,  <27.010296, 33.990028, 34.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315861, 34.206287, 34.111252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572784, 0.819555, 0.015711,
		0.297248, 0.189807, 0.935744,
		0.763912, 0.540650, -0.352329,
		27.545034, 34.368481, 34.005554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220774, 34.570446, 34.749081>,  <27.010296, 33.990028, 34.252182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220774, 34.570446, 34.749081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307161, 34.694706, 34.378815>,  <27.358994, 34.769260, 34.156654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307161, 34.694706, 34.378815>,  <27.220774, 34.570446, 34.749081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307161, 34.694706, 34.378815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492375, 0.853321, 0.171493,
		0.843163, 0.418737, 0.337246,
		0.215969, 0.310648, -0.925665,
		27.371952, 34.787899, 34.101116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458950, 35.265221, 34.862427>,  <27.220774, 34.570446, 34.749081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458950, 35.265221, 34.862427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341949, 35.242435, 34.480598>,  <27.271749, 35.228764, 34.251503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341949, 35.242435, 34.480598>,  <27.458950, 35.265221, 34.862427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341949, 35.242435, 34.480598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570893, 0.811216, 0.126525,
		0.767153, 0.581965, -0.269801,
		-0.292500, -0.056963, -0.954567,
		27.254200, 35.225346, 34.194229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536707, 35.925648, 34.569344>,  <27.458950, 35.265221, 34.862427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536707, 35.925648, 34.569344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252100, 35.742401, 34.356224>,  <27.081337, 35.632454, 34.228352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252100, 35.742401, 34.356224>,  <27.536707, 35.925648, 34.569344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252100, 35.742401, 34.356224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604884, 0.785186, 0.132655,
		0.357574, 0.416668, -0.835780,
		-0.711516, -0.458116, -0.532798,
		27.038645, 35.604965, 34.196384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172607, 36.320900, 34.754391>,  <27.536707, 35.925648, 34.569344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172607, 36.320900, 34.754391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146315, 36.129890, 35.104855>,  <28.130539, 36.015285, 35.315132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146315, 36.129890, 35.104855>,  <28.172607, 36.320900, 34.754391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146315, 36.129890, 35.104855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985785, 0.104982, 0.131176,
		-0.154620, 0.872325, 0.463834,
		-0.065734, -0.477523, 0.876157,
		28.126595, 35.986633, 35.367702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599869, 36.628254, 35.079746>,  <28.172607, 36.320900, 34.754391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599869, 36.628254, 35.079746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582703, 36.294716, 35.299877>,  <28.572403, 36.094593, 35.431957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582703, 36.294716, 35.299877>,  <28.599869, 36.628254, 35.079746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582703, 36.294716, 35.299877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940215, 0.152573, 0.304495,
		-0.337866, 0.530497, 0.777444,
		-0.042917, -0.833843, 0.550330,
		28.569828, 36.044563, 35.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058420, 36.768936, 35.627571>,  <28.599869, 36.628254, 35.079746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058420, 36.768936, 35.627571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998608, 36.374020, 35.606033>,  <28.962721, 36.137070, 35.593109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998608, 36.374020, 35.606033>,  <29.058420, 36.768936, 35.627571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998608, 36.374020, 35.606033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955637, -0.158284, 0.248405,
		-0.253770, -0.014310, 0.967159,
		-0.149531, -0.987290, -0.053843,
		28.953749, 36.077831, 35.589882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359617, 36.812408, 36.326317>,  <29.058420, 36.768936, 35.627571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359617, 36.812408, 36.326317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584812, 37.141914, 36.353001>,  <29.719929, 37.339619, 36.369011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584812, 37.141914, 36.353001>,  <29.359617, 36.812408, 36.326317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584812, 37.141914, 36.353001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006982, -0.075969, 0.997086,
		0.826435, -0.561814, -0.037018,
		0.562989, 0.823768, 0.066706,
		29.753710, 37.389046, 36.373013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128859, 36.728111, 36.606659>,  <29.359617, 36.812408, 36.326317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128859, 36.728111, 36.606659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952530, 37.077343, 36.689991>,  <29.846733, 37.286884, 36.739990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952530, 37.077343, 36.689991>,  <30.128859, 36.728111, 36.606659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952530, 37.077343, 36.689991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065441, -0.200221, 0.977563,
		0.895205, 0.444566, 0.031127,
		-0.440823, 0.873083, 0.208331,
		29.820282, 37.339268, 36.752491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256626, 37.029129, 35.837799>,  <30.128859, 36.728111, 36.606659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256626, 37.029129, 35.837799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070169, 36.772972, 35.593632>,  <29.958296, 36.619278, 35.447132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070169, 36.772972, 35.593632>,  <30.256626, 37.029129, 35.837799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070169, 36.772972, 35.593632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398197, -0.767994, 0.501621,
		-0.790032, -0.009240, 0.612996,
		-0.466142, -0.640390, -0.610419,
		29.930326, 36.580856, 35.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940775, 36.761379, 35.725269>,  <30.256626, 37.029129, 35.837799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940775, 36.761379, 35.725269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664192, 36.866581, 35.456131>,  <30.498243, 36.929703, 35.294647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664192, 36.866581, 35.456131>,  <30.940775, 36.761379, 35.725269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664192, 36.866581, 35.456131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380376, 0.924359, -0.029583,
		0.614168, -0.276388, -0.739194,
		-0.691456, 0.263003, -0.672843,
		30.456755, 36.945480, 35.254276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363331, 37.032707, 35.153515>,  <30.940775, 36.761379, 35.725269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363331, 37.032707, 35.153515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165213, 37.370468, 35.071865>,  <31.046343, 37.573124, 35.022873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165213, 37.370468, 35.071865>,  <31.363331, 37.032707, 35.153515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165213, 37.370468, 35.071865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868667, 0.484131, -0.105046,
		0.010124, -0.229348, -0.973292,
		-0.495293, 0.844403, -0.204129,
		31.016624, 37.623791, 35.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496582, 37.303864, 34.406883>,  <31.363331, 37.032707, 35.153515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496582, 37.303864, 34.406883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439127, 37.579174, 34.691319>,  <31.404654, 37.744358, 34.861980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439127, 37.579174, 34.691319>,  <31.496582, 37.303864, 34.406883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439127, 37.579174, 34.691319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920649, 0.356502, -0.159093,
		-0.363004, 0.631811, -0.684867,
		-0.143640, 0.688274, 0.711088,
		31.396034, 37.785656, 34.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959864, 37.788162, 34.451939>,  <31.496582, 37.303864, 34.406883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959864, 37.788162, 34.451939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050430, 38.044640, 34.745224>,  <32.104771, 38.198524, 34.921196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050430, 38.044640, 34.745224>,  <31.959864, 37.788162, 34.451939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050430, 38.044640, 34.745224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740177, -0.602581, 0.298387,
		0.633145, 0.475150, -0.611032,
		0.226418, 0.641194, 0.733216,
		32.118355, 38.237000, 34.965187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555676, 37.629917, 34.640354>,  <31.959864, 37.788162, 34.451939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555676, 37.629917, 34.640354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505764, 37.872498, 34.954460>,  <32.475819, 38.018047, 35.142925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505764, 37.872498, 34.954460>,  <32.555676, 37.629917, 34.640354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505764, 37.872498, 34.954460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859172, -0.329803, 0.391220,
		0.496240, 0.723496, -0.479895,
		-0.124776, 0.606452, 0.785269,
		32.468330, 38.054432, 35.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077911, 38.142632, 34.648109>,  <32.555676, 37.629917, 34.640354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077911, 38.142632, 34.648109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951385, 38.008694, 35.003147>,  <32.875469, 37.928329, 35.216171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951385, 38.008694, 35.003147>,  <33.077911, 38.142632, 34.648109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951385, 38.008694, 35.003147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907650, -0.378929, 0.180511,
		0.275892, 0.862724, 0.423783,
		-0.316314, -0.334845, 0.887595,
		32.856491, 37.908241, 35.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488365, 38.387314, 35.315434>,  <33.077911, 38.142632, 34.648109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488365, 38.387314, 35.315434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344326, 38.016838, 35.360172>,  <33.257904, 37.794552, 35.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344326, 38.016838, 35.360172>,  <33.488365, 38.387314, 35.315434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344326, 38.016838, 35.360172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931384, -0.350051, 0.099937,
		-0.053408, 0.140159, 0.988687,
		-0.360098, -0.926186, 0.111847,
		33.236298, 37.738983, 35.393726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923637, 38.245213, 35.767952>,  <33.488365, 38.387314, 35.315434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923637, 38.245213, 35.767952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783440, 37.913151, 35.594521>,  <33.699322, 37.713913, 35.490459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783440, 37.913151, 35.594521>,  <33.923637, 38.245213, 35.767952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783440, 37.913151, 35.594521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856049, -0.471757, 0.211249,
		-0.379915, -0.297125, 0.876003,
		-0.350493, -0.830158, -0.433581,
		33.678291, 37.664104, 35.464447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558014, 38.932213, 36.067295>,  <33.923637, 38.245213, 35.767952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558014, 38.932213, 36.067295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520199, 38.604492, 36.293503>,  <33.497509, 38.407860, 36.429226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520199, 38.604492, 36.293503>,  <33.558014, 38.932213, 36.067295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520199, 38.604492, 36.293503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646514, 0.482498, 0.590945,
		-0.757022, -0.309750, -0.575301,
		-0.094536, -0.819299, 0.565520,
		33.491837, 38.358704, 36.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821194, 38.697453, 36.231022>,  <33.558014, 38.932213, 36.067295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821194, 38.697453, 36.231022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062229, 38.574764, 36.525726>,  <33.206848, 38.501152, 36.702549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062229, 38.574764, 36.525726>,  <32.821194, 38.697453, 36.231022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062229, 38.574764, 36.525726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700105, 0.239966, 0.672510,
		-0.383072, -0.921052, -0.070140,
		0.602585, -0.306725, 0.736757,
		33.243004, 38.482746, 36.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555050, 38.069237, 36.560177>,  <32.821194, 38.697453, 36.231022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555050, 38.069237, 36.560177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772350, 38.311703, 36.792538>,  <32.902729, 38.457180, 36.931953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772350, 38.311703, 36.792538>,  <32.555050, 38.069237, 36.560177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772350, 38.311703, 36.792538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781696, 0.112740, 0.613385,
		0.306321, -0.787309, 0.535082,
		0.543249, 0.606164, 0.580901,
		32.935326, 38.493553, 36.966808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275181, 37.928169, 37.207100>,  <32.555050, 38.069237, 36.560177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275181, 37.928169, 37.207100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527401, 38.222912, 37.304630>,  <32.678734, 38.399757, 37.363148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527401, 38.222912, 37.304630>,  <32.275181, 37.928169, 37.207100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527401, 38.222912, 37.304630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526478, 0.175238, 0.831933,
		0.570290, -0.652940, 0.498436,
		0.630547, 0.736859, 0.243822,
		32.716564, 38.443970, 37.377777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466480, 37.868301, 37.900959>,  <32.275181, 37.928169, 37.207100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466480, 37.868301, 37.900959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514626, 38.251968, 37.798584>,  <32.543514, 38.482170, 37.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514626, 38.251968, 37.798584>,  <32.466480, 37.868301, 37.900959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514626, 38.251968, 37.798584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661365, 0.269740, 0.699884,
		0.740344, 0.085026, 0.666829,
		0.120362, 0.959172, -0.255934,
		32.550735, 38.539719, 37.721806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286179, 38.179169, 38.575180>,  <32.466480, 37.868301, 37.900959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286179, 38.179169, 38.575180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255695, 38.424351, 38.260605>,  <32.237404, 38.571461, 38.071861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255695, 38.424351, 38.260605>,  <32.286179, 38.179169, 38.575180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255695, 38.424351, 38.260605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764138, 0.470778, 0.440978,
		0.640535, 0.634551, 0.432504,
		-0.076210, 0.612954, -0.786434,
		32.232834, 38.608238, 38.024673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623613, 38.402996, 38.238022>,  <32.286179, 38.179169, 38.575180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623613, 38.402996, 38.238022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703751, 38.778019, 38.351757>,  <31.751833, 39.003033, 38.419998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703751, 38.778019, 38.351757>,  <31.623613, 38.402996, 38.238022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703751, 38.778019, 38.351757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834522, -0.011262, -0.550860,
		-0.513259, 0.347652, -0.784667,
		0.200345, 0.937556, 0.284343,
		31.763853, 39.059284, 38.437061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380873, 38.854298, 37.608532>,  <31.623613, 38.402996, 38.238022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380873, 38.854298, 37.608532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682943, 38.950264, 37.852547>,  <31.864185, 39.007843, 37.998955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682943, 38.950264, 37.852547>,  <31.380873, 38.854298, 37.608532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682943, 38.950264, 37.852547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625372, 0.015299, -0.780177,
		-0.196512, 0.970672, -0.138485,
		0.755177, 0.239919, 0.610038,
		31.909496, 39.022240, 38.035557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860788, 39.383095, 37.212944>,  <31.380873, 38.854298, 37.608532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860788, 39.383095, 37.212944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065277, 39.216984, 37.513927>,  <32.187969, 39.117317, 37.694519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065277, 39.216984, 37.513927>,  <31.860788, 39.383095, 37.212944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065277, 39.216984, 37.513927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770068, -0.167445, -0.615595,
		0.381638, 0.894152, 0.234190,
		0.511221, -0.415277, 0.752461,
		32.218643, 39.092400, 37.739666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513390, 39.721333, 37.171364>,  <31.860788, 39.383095, 37.212944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513390, 39.721333, 37.171364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541622, 39.377274, 37.373417>,  <32.558563, 39.170837, 37.494648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541622, 39.377274, 37.373417>,  <32.513390, 39.721333, 37.171364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541622, 39.377274, 37.373417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792853, -0.258915, -0.551676,
		0.605311, 0.439435, 0.663699,
		0.070584, -0.860151, 0.505131,
		32.562798, 39.119228, 37.524956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311161, 39.604244, 37.369324>,  <32.513390, 39.721333, 37.171364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311161, 39.604244, 37.369324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142269, 39.244404, 37.413940>,  <33.040936, 39.028500, 37.440712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142269, 39.244404, 37.413940>,  <33.311161, 39.604244, 37.369324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142269, 39.244404, 37.413940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745914, -0.414716, -0.521174,
		0.515107, -0.136853, 0.846130,
		-0.422228, -0.899601, 0.111543,
		33.015602, 38.974525, 37.447403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820114, 39.096870, 37.655304>,  <33.311161, 39.604244, 37.369324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820114, 39.096870, 37.655304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541931, 38.895100, 37.450603>,  <33.375023, 38.774036, 37.327782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541931, 38.895100, 37.450603>,  <33.820114, 39.096870, 37.655304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541931, 38.895100, 37.450603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718492, -0.477975, -0.505280,
		0.010270, -0.719094, 0.694837,
		-0.695459, -0.504424, -0.511755,
		33.333294, 38.743771, 37.297077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797062, 38.372669, 37.823765>,  <33.820114, 39.096870, 37.655304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797062, 38.372669, 37.823765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693733, 38.472519, 37.450462>,  <33.631737, 38.532429, 37.226482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693733, 38.472519, 37.450462>,  <33.797062, 38.372669, 37.823765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693733, 38.472519, 37.450462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747693, -0.560068, -0.356763,
		-0.611741, -0.789944, -0.041967,
		-0.258318, 0.249625, -0.933252,
		33.616238, 38.547405, 37.170486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709682, 37.794514, 37.580109>,  <33.797062, 38.372669, 37.823765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709682, 37.794514, 37.580109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782894, 38.057819, 37.288029>,  <33.826820, 38.215801, 37.112782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782894, 38.057819, 37.288029>,  <33.709682, 37.794514, 37.580109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782894, 38.057819, 37.288029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758903, -0.566759, -0.320702,
		-0.624954, -0.495455, -0.603289,
		0.183026, 0.658262, -0.730200,
		33.837803, 38.255299, 37.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653980, 37.395252, 36.976433>,  <33.709682, 37.794514, 37.580109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653980, 37.395252, 36.976433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882484, 37.721680, 36.941353>,  <34.019585, 37.917538, 36.920303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882484, 37.721680, 36.941353>,  <33.653980, 37.395252, 36.976433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882484, 37.721680, 36.941353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745062, -0.560419, -0.361680,
		-0.344308, 0.141268, -0.928168,
		0.571257, 0.816072, -0.087703,
		34.053860, 37.966503, 36.915043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223251, 36.890373, 37.249966>,  <33.653980, 37.395252, 36.976433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223251, 36.890373, 37.249966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554928, 36.785622, 37.052433>,  <34.753933, 36.722771, 36.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554928, 36.785622, 37.052433>,  <34.223251, 36.890373, 37.249966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554928, 36.785622, 37.052433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489465, -0.086478, 0.867724,
		-0.269944, -0.961219, 0.056473,
		0.829189, -0.261878, -0.493827,
		34.803684, 36.707058, 36.904285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562855, 36.302090, 37.655785>,  <34.223251, 36.890373, 37.249966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562855, 36.302090, 37.655785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846237, 36.438099, 37.408409>,  <35.016266, 36.519703, 37.259983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846237, 36.438099, 37.408409>,  <34.562855, 36.302090, 37.655785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846237, 36.438099, 37.408409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686491, -0.128689, 0.715659,
		0.163752, -0.931571, -0.324593,
		0.708459, 0.340021, -0.618443,
		35.058777, 36.540104, 37.222878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158131, 35.805595, 37.858978>,  <34.562855, 36.302090, 37.655785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158131, 35.805595, 37.858978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324383, 36.124912, 37.684631>,  <35.424133, 36.316502, 37.580025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324383, 36.124912, 37.684631>,  <35.158131, 35.805595, 37.858978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324383, 36.124912, 37.684631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756844, -0.037781, 0.652503,
		0.504422, -0.601081, -0.619887,
		0.415627, 0.798294, -0.435867,
		35.449070, 36.364399, 37.553871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863773, 35.689262, 37.871330>,  <35.158131, 35.805595, 37.858978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863773, 35.689262, 37.871330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853027, 36.082443, 37.798573>,  <35.846581, 36.318352, 37.754917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853027, 36.082443, 37.798573>,  <35.863773, 35.689262, 37.871330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853027, 36.082443, 37.798573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740143, 0.141866, 0.657315,
		0.671913, -0.116973, -0.731335,
		-0.026863, 0.982950, -0.181899,
		35.844967, 36.377327, 37.744003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550911, 36.020622, 37.707100>,  <35.863773, 35.689262, 37.871330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550911, 36.020622, 37.707100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303417, 36.294399, 37.861347>,  <36.154919, 36.458664, 37.953896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303417, 36.294399, 37.861347>,  <36.550911, 36.020622, 37.707100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303417, 36.294399, 37.861347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597270, 0.090974, 0.796864,
		0.510326, 0.723370, -0.465085,
		-0.618738, 0.684442, 0.385621,
		36.117794, 36.499733, 37.977032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918961, 36.683048, 37.831280>,  <36.550911, 36.020622, 37.707100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918961, 36.683048, 37.831280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606457, 36.648449, 38.078552>,  <36.418953, 36.627689, 38.226917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606457, 36.648449, 38.078552>,  <36.918961, 36.683048, 37.831280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606457, 36.648449, 38.078552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612567, 0.084098, 0.785932,
		-0.119968, 0.992696, -0.012718,
		-0.781261, -0.086496, 0.618182,
		36.372078, 36.622501, 38.264008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818974, 37.324764, 38.219433>,  <36.918961, 36.683048, 37.831280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818974, 37.324764, 38.219433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697922, 37.021564, 38.450554>,  <36.625290, 36.839645, 38.589226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697922, 37.021564, 38.450554>,  <36.818974, 37.324764, 38.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697922, 37.021564, 38.450554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452652, 0.419198, 0.787007,
		-0.838764, 0.499711, 0.216249,
		-0.302625, -0.757999, 0.577803,
		36.607136, 36.794167, 38.623894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326134, 37.547207, 38.794708>,  <36.818974, 37.324764, 38.219433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326134, 37.547207, 38.794708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582191, 37.244747, 38.849037>,  <36.735825, 37.063271, 38.881634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582191, 37.244747, 38.849037>,  <36.326134, 37.547207, 38.794708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582191, 37.244747, 38.849037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505110, 0.547457, 0.667199,
		-0.578861, -0.358500, 0.732392,
		0.640144, -0.756154, 0.135819,
		36.774235, 37.017902, 38.889782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373814, 38.107208, 39.399235>,  <36.326134, 37.547207, 38.794708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373814, 38.107208, 39.399235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575333, 38.329006, 39.134293>,  <36.696243, 38.462086, 38.975327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575333, 38.329006, 39.134293>,  <36.373814, 38.107208, 39.399235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575333, 38.329006, 39.134293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094886, -0.726615, -0.680461,
		-0.858595, 0.405663, -0.313452,
		0.503796, 0.554499, -0.662360,
		36.726471, 38.495358, 38.935585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032768, 38.248810, 38.726551>,  <36.373814, 38.107208, 39.399235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032768, 38.248810, 38.726551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430679, 38.236500, 38.687641>,  <36.669426, 38.229115, 38.664295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430679, 38.236500, 38.687641>,  <36.032768, 38.248810, 38.726551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430679, 38.236500, 38.687641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075712, -0.861759, -0.501636,
		-0.068385, 0.506383, -0.859593,
		0.994782, -0.030777, -0.097270,
		36.729115, 38.227268, 38.658459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164627, 37.970329, 38.038231>,  <36.032768, 38.248810, 38.726551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164627, 37.970329, 38.038231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504829, 37.936157, 38.245827>,  <36.708950, 37.915653, 38.370384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504829, 37.936157, 38.245827>,  <36.164627, 37.970329, 38.038231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504829, 37.936157, 38.245827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076530, -0.956121, -0.282800,
		0.520375, 0.280240, -0.806644,
		0.850502, -0.085430, 0.518988,
		36.759979, 37.910526, 38.401524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503399, 37.640530, 38.118023>,  <36.164627, 37.970329, 38.038231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503399, 37.640530, 38.118023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727406, 37.310814, 38.084721>,  <35.861809, 37.112984, 38.064739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727406, 37.310814, 38.084721>,  <35.503399, 37.640530, 38.118023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727406, 37.310814, 38.084721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336536, -0.134507, -0.932015,
		0.757048, 0.549965, -0.352728,
		0.560020, -0.824285, -0.083255,
		35.895412, 37.063530, 38.059746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781845, 37.633965, 37.469273>,  <35.503399, 37.640530, 38.118023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781845, 37.633965, 37.469273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788929, 37.244835, 37.561615>,  <35.793179, 37.011356, 37.617020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788929, 37.244835, 37.561615>,  <35.781845, 37.633965, 37.469273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788929, 37.244835, 37.561615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364509, -0.221286, -0.904525,
		0.931032, -0.068135, -0.358521,
		0.017706, -0.972826, 0.230861,
		35.794239, 36.952988, 37.630875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231148, 37.168674, 37.145779>,  <35.781845, 37.633965, 37.469273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231148, 37.168674, 37.145779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913738, 36.936619, 37.219269>,  <35.723293, 36.797386, 37.263363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913738, 36.936619, 37.219269>,  <36.231148, 37.168674, 37.145779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913738, 36.936619, 37.219269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138991, -0.121150, -0.982855,
		0.592455, -0.805454, 0.015501,
		-0.793523, -0.580143, 0.183727,
		35.675682, 36.762577, 37.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065857, 36.954422, 36.554153>,  <36.231148, 37.168674, 37.145779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065857, 36.954422, 36.554153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749722, 36.823849, 36.761543>,  <35.560040, 36.745506, 36.885975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749722, 36.823849, 36.761543>,  <36.065857, 36.954422, 36.554153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749722, 36.823849, 36.761543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433104, -0.300881, -0.849642,
		0.433346, -0.896055, 0.096420,
		-0.790337, -0.326429, 0.518471,
		35.512619, 36.725922, 36.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908237, 36.377296, 36.313751>,  <36.065857, 36.954422, 36.554153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908237, 36.377296, 36.313751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561878, 36.472664, 36.489651>,  <35.354061, 36.529884, 36.595188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561878, 36.472664, 36.489651>,  <35.908237, 36.377296, 36.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561878, 36.472664, 36.489651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496822, -0.307632, -0.811499,
		-0.058193, -0.921152, 0.384828,
		-0.865899, 0.238415, 0.439747,
		35.302109, 36.544189, 36.621574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400505, 35.890190, 36.062672>,  <35.908237, 36.377296, 36.313751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400505, 35.890190, 36.062672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226067, 36.233624, 36.170483>,  <35.121403, 36.439686, 36.235168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226067, 36.233624, 36.170483>,  <35.400505, 35.890190, 36.062672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226067, 36.233624, 36.170483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506648, 0.013274, -0.862051,
		-0.743723, -0.512497, 0.429212,
		-0.436101, 0.858586, 0.269528,
		35.095238, 36.491199, 36.251343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725883, 35.780251, 35.946644>,  <35.400505, 35.890190, 36.062672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725883, 35.780251, 35.946644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807716, 36.168709, 35.897602>,  <34.856815, 36.401783, 35.868176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807716, 36.168709, 35.897602>,  <34.725883, 35.780251, 35.946644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807716, 36.168709, 35.897602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615485, 0.030230, -0.787568,
		-0.761134, 0.236582, 0.603908,
		0.204581, 0.971141, -0.122604,
		34.869091, 36.460052, 35.860821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151131, 36.218147, 35.904877>,  <34.725883, 35.780251, 35.946644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151131, 36.218147, 35.904877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431942, 36.402340, 35.687580>,  <34.600430, 36.512856, 35.557201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431942, 36.402340, 35.687580>,  <34.151131, 36.218147, 35.904877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431942, 36.402340, 35.687580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665462, 0.152535, -0.730680,
		-0.253605, 0.874463, 0.413520,
		0.702029, 0.460486, -0.543238,
		34.642551, 36.540485, 35.524609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792114, 36.773628, 35.573086>,  <34.151131, 36.218147, 35.904877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792114, 36.773628, 35.573086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118301, 36.665703, 35.368259>,  <34.314014, 36.600948, 35.245361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118301, 36.665703, 35.368259>,  <33.792114, 36.773628, 35.573086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118301, 36.665703, 35.368259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562288, -0.159459, -0.811422,
		0.137278, 0.949618, -0.281746,
		0.815467, -0.269813, -0.512069,
		34.362942, 36.584759, 35.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708187, 37.215309, 35.014397>,  <33.792114, 36.773628, 35.573086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708187, 37.215309, 35.014397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974274, 36.935085, 34.911091>,  <34.133926, 36.766949, 34.849106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974274, 36.935085, 34.911091>,  <33.708187, 37.215309, 35.014397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974274, 36.935085, 34.911091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489552, -0.148064, -0.859311,
		0.563763, 0.698059, -0.441457,
		0.665214, -0.700564, -0.258263,
		34.173840, 36.724915, 34.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072887, 37.519627, 34.418415>,  <33.708187, 37.215309, 35.014397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072887, 37.519627, 34.418415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105812, 37.121315, 34.402180>,  <34.125565, 36.882328, 34.392437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105812, 37.121315, 34.402180>,  <34.072887, 37.519627, 34.418415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105812, 37.121315, 34.402180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521314, -0.008306, -0.853325,
		0.849386, 0.091396, -0.519798,
		0.082308, -0.995780, -0.040591,
		34.130505, 36.822582, 34.390003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326599, 37.505981, 33.869831>,  <34.072887, 37.519627, 34.418415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326599, 37.505981, 33.869831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227818, 37.119289, 33.896519>,  <34.168549, 36.887276, 33.912533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227818, 37.119289, 33.896519>,  <34.326599, 37.505981, 33.869831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227818, 37.119289, 33.896519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433895, 0.048751, -0.899644,
		0.866457, -0.251123, -0.431497,
		-0.246957, -0.966727, 0.066721,
		34.153728, 36.829273, 33.916534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792656, 37.090111, 33.437008>,  <34.326599, 37.505981, 33.869831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792656, 37.090111, 33.437008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478199, 36.851910, 33.503170>,  <34.289524, 36.708988, 33.542866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478199, 36.851910, 33.503170>,  <34.792656, 37.090111, 33.437008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478199, 36.851910, 33.503170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349523, 0.207654, -0.913627,
		0.509721, -0.776051, -0.371387,
		-0.786141, -0.595503, 0.165402,
		34.242355, 36.673260, 33.552792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855175, 36.644382, 32.844158>,  <34.792656, 37.090111, 33.437008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855175, 36.644382, 32.844158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484592, 36.654888, 32.994354>,  <34.262245, 36.661194, 33.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484592, 36.654888, 32.994354>,  <34.855175, 36.644382, 32.844158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484592, 36.654888, 32.994354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375690, -0.002771, -0.926741,
		-0.023332, -0.999650, 0.012447,
		-0.926452, 0.026299, 0.375494,
		34.206657, 36.662769, 33.107002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591480, 36.110958, 32.424015>,  <34.855175, 36.644382, 32.844158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591480, 36.110958, 32.424015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311161, 36.350807, 32.578587>,  <34.142967, 36.494717, 32.671329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311161, 36.350807, 32.578587>,  <34.591480, 36.110958, 32.424015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311161, 36.350807, 32.578587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377429, 0.148001, -0.914135,
		-0.605331, -0.786476, 0.122597,
		-0.700800, 0.599626, 0.386429,
		34.100922, 36.530697, 32.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983387, 35.798401, 32.234287>,  <34.591480, 36.110958, 32.424015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983387, 35.798401, 32.234287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891113, 36.174835, 32.333187>,  <33.835751, 36.400696, 32.392529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891113, 36.174835, 32.333187>,  <33.983387, 35.798401, 32.234287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891113, 36.174835, 32.333187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350840, 0.156568, -0.923254,
		-0.907577, -0.299727, 0.294054,
		-0.230685, 0.941090, 0.247253,
		33.821907, 36.457161, 32.407364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297447, 35.804871, 32.029133>,  <33.983387, 35.798401, 32.234287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297447, 35.804871, 32.029133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430614, 36.181736, 32.044556>,  <33.510513, 36.407856, 32.053810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430614, 36.181736, 32.044556>,  <33.297447, 35.804871, 32.029133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430614, 36.181736, 32.044556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332892, 0.155688, -0.930024,
		-0.882240, 0.296788, 0.365471,
		0.332919, 0.942167, 0.038556,
		33.530491, 36.464386, 32.056122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727528, 36.285488, 31.780788>,  <33.297447, 35.804871, 32.029133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727528, 36.285488, 31.780788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074284, 36.484047, 31.762468>,  <33.282337, 36.603180, 31.751476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074284, 36.484047, 31.762468>,  <32.727528, 36.285488, 31.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074284, 36.484047, 31.762468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191918, 0.247539, -0.949680,
		-0.460078, 0.832056, 0.309855,
		0.866888, 0.496394, -0.045799,
		33.334351, 36.632965, 31.748728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614937, 36.972641, 31.596018>,  <32.727528, 36.285488, 31.780788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614937, 36.972641, 31.596018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995892, 36.913780, 31.489202>,  <33.224464, 36.878464, 31.425114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995892, 36.913780, 31.489202>,  <32.614937, 36.972641, 31.596018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995892, 36.913780, 31.489202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190500, 0.396639, -0.897990,
		0.238062, 0.906103, 0.349720,
		0.952384, -0.147156, -0.267038,
		33.281609, 36.869633, 31.409092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763130, 37.538010, 31.246944>,  <32.614937, 36.972641, 31.596018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763130, 37.538010, 31.246944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050026, 37.284939, 31.130131>,  <33.222164, 37.133099, 31.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050026, 37.284939, 31.130131>,  <32.763130, 37.538010, 31.246944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050026, 37.284939, 31.130131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078679, 0.342882, -0.936078,
		0.692366, 0.694373, 0.196151,
		0.717244, -0.632675, -0.292032,
		33.265198, 37.095135, 31.042521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070477, 37.870686, 30.675955>,  <32.763130, 37.538010, 31.246944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070477, 37.870686, 30.675955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191322, 37.489948, 30.655066>,  <33.263832, 37.261505, 30.642532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191322, 37.489948, 30.655066>,  <33.070477, 37.870686, 30.675955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191322, 37.489948, 30.655066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199158, 0.116599, -0.973006,
		0.932234, 0.283562, 0.224793,
		0.302118, -0.951839, -0.052224,
		33.281960, 37.204395, 30.639399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743481, 37.984566, 30.419117>,  <33.070477, 37.870686, 30.675955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743481, 37.984566, 30.419117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601532, 37.621380, 30.329969>,  <33.516361, 37.403469, 30.276482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601532, 37.621380, 30.329969>,  <33.743481, 37.984566, 30.419117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601532, 37.621380, 30.329969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192034, 0.162508, -0.967840,
		0.914979, -0.386261, 0.116690,
		-0.354875, -0.907961, -0.222867,
		33.495068, 37.348991, 30.263109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290859, 37.663551, 30.113045>,  <33.743481, 37.984566, 30.419117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290859, 37.663551, 30.113045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968109, 37.460922, 29.991497>,  <33.774460, 37.339344, 29.918570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968109, 37.460922, 29.991497>,  <34.290859, 37.663551, 30.113045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968109, 37.460922, 29.991497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348991, 0.006248, -0.937105,
		0.476614, -0.862172, 0.171750,
		-0.806873, -0.506577, -0.303868,
		33.726048, 37.308949, 29.900337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532150, 37.330959, 29.629480>,  <34.290859, 37.663551, 30.113045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532150, 37.330959, 29.629480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136074, 37.310619, 29.577431>,  <33.898426, 37.298416, 29.546202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136074, 37.310619, 29.577431>,  <34.532150, 37.330959, 29.629480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136074, 37.310619, 29.577431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117508, 0.200621, -0.972596,
		0.075564, -0.978348, -0.192678,
		-0.990193, -0.050853, -0.130123,
		33.839016, 37.295364, 29.538393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564850, 36.981052, 29.075788>,  <34.532150, 37.330959, 29.629480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564850, 36.981052, 29.075788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193031, 37.125603, 29.105047>,  <33.969940, 37.212334, 29.122602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193031, 37.125603, 29.105047>,  <34.564850, 36.981052, 29.075788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193031, 37.125603, 29.105047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000824, 0.196351, -0.980533,
		-0.368700, -0.911513, -0.182220,
		-0.929548, 0.361373, 0.073146,
		33.914165, 37.234013, 29.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110947, 36.808197, 28.450378>,  <34.564850, 36.981052, 29.075788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110947, 36.808197, 28.450378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979069, 37.143665, 28.623785>,  <33.899940, 37.344948, 28.727829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979069, 37.143665, 28.623785>,  <34.110947, 36.808197, 28.450378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979069, 37.143665, 28.623785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035370, 0.447894, -0.893387,
		-0.943425, -0.309878, -0.118004,
		-0.329694, 0.838670, 0.433515,
		33.880161, 37.395267, 28.753839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838860, 37.074970, 27.937107>,  <34.110947, 36.808197, 28.450378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838860, 37.074970, 27.937107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853428, 37.395397, 28.176096>,  <33.862167, 37.587654, 28.319489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853428, 37.395397, 28.176096>,  <33.838860, 37.074970, 27.937107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853428, 37.395397, 28.176096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034202, 0.598516, -0.800380,
		-0.998751, 0.008716, 0.049197,
		0.036421, 0.801063, 0.597471,
		33.864353, 37.635715, 28.355337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252121, 37.474384, 27.711355>,  <33.838860, 37.074970, 27.937107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252121, 37.474384, 27.711355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494301, 37.724995, 27.907679>,  <33.639610, 37.875359, 28.025473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494301, 37.724995, 27.907679>,  <33.252121, 37.474384, 27.711355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494301, 37.724995, 27.907679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128472, 0.685537, -0.716613,
		-0.785443, 0.370821, 0.495552,
		0.605454, 0.626523, 0.490810,
		33.675938, 37.912952, 28.054922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867092, 38.117817, 27.842705>,  <33.252121, 37.474384, 27.711355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867092, 38.117817, 27.842705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260303, 38.191196, 27.843031>,  <33.496231, 38.235226, 27.843227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260303, 38.191196, 27.843031>,  <32.867092, 38.117817, 27.842705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260303, 38.191196, 27.843031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140360, 0.754982, -0.640548,
		-0.118124, 0.629562, 0.767918,
		0.983029, 0.183450, 0.000816,
		33.555214, 38.246231, 27.843275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957405, 38.809139, 27.857014>,  <32.867092, 38.117817, 27.842705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957405, 38.809139, 27.857014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320702, 38.705994, 27.725189>,  <33.538677, 38.644108, 27.646095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320702, 38.705994, 27.725189>,  <32.957405, 38.809139, 27.857014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320702, 38.705994, 27.725189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053921, 0.708885, -0.703260,
		0.414965, 0.656498, 0.629932,
		0.908238, -0.257862, -0.329562,
		33.593174, 38.628635, 27.626320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292068, 39.460567, 27.722424>,  <32.957405, 38.809139, 27.857014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292068, 39.460567, 27.722424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486721, 39.175861, 27.519810>,  <33.603512, 39.005035, 27.398241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486721, 39.175861, 27.519810>,  <33.292068, 39.460567, 27.722424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486721, 39.175861, 27.519810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106782, 0.623932, -0.774149,
		0.867057, 0.322636, 0.379629,
		0.486631, -0.711768, -0.506533,
		33.632710, 38.962330, 27.367849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888329, 39.767799, 27.520323>,  <33.292068, 39.460567, 27.722424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888329, 39.767799, 27.520323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857502, 39.464340, 27.261551>,  <33.839008, 39.282265, 27.106287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857502, 39.464340, 27.261551>,  <33.888329, 39.767799, 27.520323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857502, 39.464340, 27.261551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185128, 0.626688, -0.756961,
		0.979688, -0.178099, 0.092152,
		-0.077064, -0.758646, -0.646930,
		33.834381, 39.236748, 27.067472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494133, 39.744617, 27.024567>,  <33.888329, 39.767799, 27.520323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494133, 39.744617, 27.024567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209469, 39.536770, 26.835447>,  <34.038670, 39.412060, 26.721975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209469, 39.536770, 26.835447>,  <34.494133, 39.744617, 27.024567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209469, 39.536770, 26.835447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077739, 0.610617, -0.788101,
		0.698211, -0.597614, -0.394156,
		-0.711659, -0.519620, -0.472798,
		33.995972, 39.380886, 26.693607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738213, 39.537392, 26.420364>,  <34.494133, 39.744617, 27.024567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738213, 39.537392, 26.420364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348488, 39.503029, 26.337095>,  <34.114655, 39.482410, 26.287134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348488, 39.503029, 26.337095>,  <34.738213, 39.537392, 26.420364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348488, 39.503029, 26.337095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174810, 0.294272, -0.939599,
		0.141977, -0.951853, -0.271695,
		-0.974312, -0.085906, -0.208173,
		34.056194, 39.477257, 26.274643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713699, 39.029457, 25.887854>,  <34.738213, 39.537392, 26.420364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713699, 39.029457, 25.887854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367603, 39.229652, 25.876108>,  <34.159943, 39.349770, 25.869061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367603, 39.229652, 25.876108>,  <34.713699, 39.029457, 25.887854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367603, 39.229652, 25.876108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099895, 0.114709, -0.988364,
		-0.491297, -0.858110, -0.149248,
		-0.865245, 0.500489, -0.029365,
		34.108028, 39.379799, 25.867298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425159, 38.681316, 25.458490>,  <34.713699, 39.029457, 25.887854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425159, 38.681316, 25.458490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198711, 39.011047, 25.459103>,  <34.062843, 39.208885, 25.459469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198711, 39.011047, 25.459103>,  <34.425159, 38.681316, 25.458490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198711, 39.011047, 25.459103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348828, 0.241243, -0.905605,
		-0.746881, -0.512145, -0.424119,
		-0.566116, 0.824324, 0.001529,
		34.028877, 39.258343, 25.459560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207390, 38.765221, 24.676353>,  <34.425159, 38.681316, 25.458490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207390, 38.765221, 24.676353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156693, 39.119366, 24.855267>,  <34.126274, 39.331852, 24.962614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156693, 39.119366, 24.855267>,  <34.207390, 38.765221, 24.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156693, 39.119366, 24.855267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220077, 0.464781, -0.857639,
		-0.967214, -0.010261, -0.253756,
		-0.126742, 0.885366, 0.447284,
		34.118671, 39.384975, 24.989452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659958, 39.054920, 24.325218>,  <34.207390, 38.765221, 24.676353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659958, 39.054920, 24.325218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847885, 39.368347, 24.487844>,  <33.960640, 39.556404, 24.585421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847885, 39.368347, 24.487844>,  <33.659958, 39.054920, 24.325218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847885, 39.368347, 24.487844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064764, 0.428726, -0.901110,
		-0.880385, 0.449687, 0.150675,
		0.469816, 0.783566, 0.406568,
		33.988831, 39.603416, 24.609816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397362, 39.624565, 24.019011>,  <33.659958, 39.054920, 24.325218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397362, 39.624565, 24.019011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720917, 39.800865, 24.174669>,  <33.915051, 39.906643, 24.268064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720917, 39.800865, 24.174669>,  <33.397362, 39.624565, 24.019011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720917, 39.800865, 24.174669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265229, 0.317159, -0.910529,
		-0.524736, 0.839733, 0.139648,
		0.808892, 0.440748, 0.389147,
		33.963585, 39.933090, 24.291412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360432, 40.277542, 23.740326>,  <33.397362, 39.624565, 24.019011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360432, 40.277542, 23.740326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748863, 40.239750, 23.828035>,  <33.981922, 40.217075, 23.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748863, 40.239750, 23.828035>,  <33.360432, 40.277542, 23.740326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748863, 40.239750, 23.828035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238749, 0.393878, -0.887614,
		-0.002506, 0.914294, 0.405043,
		0.971078, -0.094479, 0.219274,
		34.040188, 40.211407, 23.893818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774044, 40.934647, 23.505310>,  <33.360432, 40.277542, 23.740326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774044, 40.934647, 23.505310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070198, 40.667458, 23.535337>,  <34.247890, 40.507145, 23.553354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070198, 40.667458, 23.535337>,  <33.774044, 40.934647, 23.505310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070198, 40.667458, 23.535337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431957, 0.387245, -0.814527,
		0.515014, 0.635491, 0.575248,
		0.740387, -0.667976, 0.075068,
		34.292313, 40.467064, 23.557858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481224, 41.366730, 23.538864>,  <33.774044, 40.934647, 23.505310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481224, 41.366730, 23.538864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520672, 40.998234, 23.388350>,  <34.544338, 40.777138, 23.298040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520672, 40.998234, 23.388350>,  <34.481224, 41.366730, 23.538864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520672, 40.998234, 23.388350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511976, 0.371217, -0.774647,
		0.853320, -0.116256, 0.508261,
		0.098618, -0.921239, -0.376288,
		34.550259, 40.721863, 23.275463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796375, 41.483612, 22.998158>,  <34.481224, 41.366730, 23.538864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796375, 41.483612, 22.998158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797173, 41.088474, 22.935995>,  <34.797653, 40.851391, 22.898697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797173, 41.088474, 22.935995>,  <34.796375, 41.483612, 22.998158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797173, 41.088474, 22.935995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319583, 0.147888, -0.935947,
		0.947556, -0.047798, 0.315995,
		0.001995, -0.987849, -0.155407,
		34.797771, 40.792118, 22.889374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534161, 41.200447, 22.824820>,  <34.796375, 41.483612, 22.998158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534161, 41.200447, 22.824820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230209, 40.982086, 22.683638>,  <35.047836, 40.851070, 22.598928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230209, 40.982086, 22.683638>,  <35.534161, 41.200447, 22.824820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230209, 40.982086, 22.683638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319582, 0.159100, -0.934106,
		0.566082, -0.822607, 0.053562,
		-0.759881, -0.545898, -0.352954,
		35.002247, 40.818317, 22.577751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824924, 40.806499, 22.296627>,  <35.534161, 41.200447, 22.824820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824924, 40.806499, 22.296627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431702, 40.795200, 22.224186>,  <35.195766, 40.788422, 22.180721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431702, 40.795200, 22.224186>,  <35.824924, 40.806499, 22.296627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431702, 40.795200, 22.224186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163200, 0.314922, -0.934981,
		0.083441, -0.948697, -0.304978,
		-0.983058, -0.028243, -0.181105,
		35.136784, 40.786728, 22.169855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726131, 40.590637, 21.584553>,  <35.824924, 40.806499, 22.296627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726131, 40.590637, 21.584553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361805, 40.746567, 21.638903>,  <35.143211, 40.840122, 21.671513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361805, 40.746567, 21.638903>,  <35.726131, 40.590637, 21.584553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361805, 40.746567, 21.638903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039399, 0.409714, -0.911363,
		-0.410937, -0.824727, -0.388531,
		-0.910812, 0.389821, 0.135873,
		35.088562, 40.863514, 21.679665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225952, 40.404690, 21.022772>,  <35.726131, 40.590637, 21.584553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225952, 40.404690, 21.022772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112556, 40.756989, 21.174520>,  <35.044518, 40.968369, 21.265570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112556, 40.756989, 21.174520>,  <35.225952, 40.404690, 21.022772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112556, 40.756989, 21.174520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056309, 0.379629, -0.923424,
		-0.957320, -0.283146, -0.058029,
		-0.283493, 0.880744, 0.379370,
		35.027508, 41.021214, 21.288332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625095, 40.597088, 20.670595>,  <35.225952, 40.404690, 21.022772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625095, 40.597088, 20.670595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738003, 40.949333, 20.822832>,  <34.805748, 41.160679, 20.914175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738003, 40.949333, 20.822832>,  <34.625095, 40.597088, 20.670595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738003, 40.949333, 20.822832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308450, 0.458967, -0.833191,
		-0.908397, 0.117788, 0.401175,
		0.282266, 0.880611, 0.380593,
		34.822681, 41.213516, 20.937010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095268, 41.039928, 20.632406>,  <34.625095, 40.597088, 20.670595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095268, 41.039928, 20.632406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420685, 41.271805, 20.650751>,  <34.615936, 41.410931, 20.661758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420685, 41.271805, 20.650751>,  <34.095268, 41.039928, 20.632406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420685, 41.271805, 20.650751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200696, 0.353929, -0.913485,
		-0.545774, 0.733955, 0.404278,
		0.813542, 0.579694, 0.045863,
		34.664749, 41.445713, 20.664511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958294, 41.558537, 20.246429>,  <34.095268, 41.039928, 20.632406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958294, 41.558537, 20.246429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350750, 41.624493, 20.286776>,  <34.586224, 41.664066, 20.310984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350750, 41.624493, 20.286776>,  <33.958294, 41.558537, 20.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350750, 41.624493, 20.286776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040690, 0.333943, -0.941715,
		-0.188962, 0.928059, 0.320936,
		0.981141, 0.164890, 0.100865,
		34.645092, 41.673958, 20.317036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062462, 42.203178, 19.880573>,  <33.958294, 41.558537, 20.246429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062462, 42.203178, 19.880573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418293, 42.023117, 19.911591>,  <34.631794, 41.915081, 19.930201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418293, 42.023117, 19.911591>,  <34.062462, 42.203178, 19.880573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418293, 42.023117, 19.911591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279827, 0.402875, -0.871429,
		0.361032, 0.796905, 0.484353,
		0.889580, -0.450149, 0.077545,
		34.685165, 41.888073, 19.934855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599613, 42.648136, 19.722082>,  <34.062462, 42.203178, 19.880573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599613, 42.648136, 19.722082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755226, 42.297882, 19.607594>,  <34.848595, 42.087730, 19.538900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755226, 42.297882, 19.607594>,  <34.599613, 42.648136, 19.722082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755226, 42.297882, 19.607594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261496, 0.402879, -0.877102,
		0.883332, 0.266374, 0.385707,
		0.389031, -0.875633, -0.286220,
		34.871937, 42.035191, 19.521727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260170, 42.762413, 19.433388>,  <34.599613, 42.648136, 19.722082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260170, 42.762413, 19.433388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145065, 42.418797, 19.264040>,  <35.076004, 42.212627, 19.162430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145065, 42.418797, 19.264040>,  <35.260170, 42.762413, 19.433388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145065, 42.418797, 19.264040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166173, 0.390579, -0.905447,
		0.943176, -0.330904, 0.030356,
		-0.287760, -0.859040, -0.423372,
		35.058739, 42.161083, 19.137028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811874, 42.494591, 18.934999>,  <35.260170, 42.762413, 19.433388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811874, 42.494591, 18.934999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444389, 42.378899, 18.827431>,  <35.223900, 42.309483, 18.762890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444389, 42.378899, 18.827431>,  <35.811874, 42.494591, 18.934999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444389, 42.378899, 18.827431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069682, 0.551534, -0.831237,
		0.388738, -0.782404, -0.486545,
		-0.918709, -0.289230, -0.268922,
		35.168777, 42.292130, 18.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382156, 42.055210, 18.909714>,  <35.811874, 42.494591, 18.934999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382156, 42.055210, 18.909714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732445, 41.862667, 18.924694>,  <36.942619, 41.747143, 18.933683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732445, 41.862667, 18.924694>,  <36.382156, 42.055210, 18.909714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732445, 41.862667, 18.924694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482525, 0.875239, -0.033559,
		-0.016625, 0.047459, 0.998735,
		0.875724, -0.481357, 0.037452,
		36.995163, 41.718262, 18.935930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887146, 42.265038, 19.508602>,  <36.382156, 42.055210, 18.909714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887146, 42.265038, 19.508602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077427, 42.133556, 19.182251>,  <37.191597, 42.054668, 18.986441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077427, 42.133556, 19.182251>,  <36.887146, 42.265038, 19.508602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077427, 42.133556, 19.182251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574858, 0.818234, 0.005522,
		0.665766, -0.471642, 0.578194,
		0.475703, -0.328704, -0.815880,
		37.220139, 42.034946, 18.937487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495743, 42.314915, 19.594116>,  <36.887146, 42.265038, 19.508602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495743, 42.314915, 19.594116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430576, 42.362206, 19.202303>,  <37.391476, 42.390579, 18.967215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430576, 42.362206, 19.202303>,  <37.495743, 42.314915, 19.594116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430576, 42.362206, 19.202303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378139, 0.924468, 0.048689,
		0.911301, -0.362467, -0.195314,
		-0.162913, 0.118226, -0.979531,
		37.381702, 42.397675, 18.908443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127968, 42.564953, 19.295834>,  <37.495743, 42.314915, 19.594116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127968, 42.564953, 19.295834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836426, 42.685764, 19.050055>,  <37.661499, 42.758251, 18.902586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836426, 42.685764, 19.050055>,  <38.127968, 42.564953, 19.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836426, 42.685764, 19.050055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369229, 0.929149, 0.018746,
		0.576577, -0.213209, -0.788734,
		-0.728855, 0.302032, -0.614449,
		37.617771, 42.776375, 18.865719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821743, 43.027470, 19.726936>,  <38.127968, 42.564953, 19.295834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821743, 43.027470, 19.726936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547203, 43.298409, 19.832859>,  <37.382477, 43.460972, 19.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547203, 43.298409, 19.832859>,  <37.821743, 43.027470, 19.726936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547203, 43.298409, 19.832859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271496, -0.576422, 0.770732,
		0.674693, 0.457099, 0.579525,
		-0.686352, 0.677347, 0.264807,
		37.341297, 43.501614, 19.912302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989311, 43.237190, 20.485390>,  <37.821743, 43.027470, 19.726936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989311, 43.237190, 20.485390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598377, 43.287949, 20.417603>,  <37.363819, 43.318405, 20.376930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598377, 43.287949, 20.417603>,  <37.989311, 43.237190, 20.485390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598377, 43.287949, 20.417603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210013, -0.479885, 0.851824,
		0.026768, 0.868106, 0.495657,
		-0.977332, 0.126896, -0.169468,
		37.305176, 43.326015, 20.366762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706078, 43.714405, 20.993979>,  <37.989311, 43.237190, 20.485390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706078, 43.714405, 20.993979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407413, 43.490967, 20.849497>,  <37.228214, 43.356903, 20.762808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407413, 43.490967, 20.849497>,  <37.706078, 43.714405, 20.993979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407413, 43.490967, 20.849497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337766, -0.149426, 0.929293,
		-0.573071, 0.815871, -0.077104,
		-0.746662, -0.558594, -0.361205,
		37.183414, 43.323387, 20.741135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031788, 43.919598, 21.337337>,  <37.706078, 43.714405, 20.993979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031788, 43.919598, 21.337337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985786, 43.540028, 21.219820>,  <36.958183, 43.312286, 21.149309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985786, 43.540028, 21.219820>,  <37.031788, 43.919598, 21.337337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985786, 43.540028, 21.219820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511917, -0.196846, 0.836177,
		-0.851302, 0.246564, -0.463133,
		-0.115006, -0.948925, -0.293796,
		36.951286, 43.255352, 21.131681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341167, 43.721695, 21.623453>,  <37.031788, 43.919598, 21.337337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341167, 43.721695, 21.623453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547962, 43.386772, 21.552305>,  <36.672039, 43.185818, 21.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547962, 43.386772, 21.552305>,  <36.341167, 43.721695, 21.623453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547962, 43.386772, 21.552305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369882, -0.405912, 0.835717,
		-0.771953, -0.366265, -0.519556,
		0.516988, -0.837309, -0.177870,
		36.703060, 43.135578, 21.498943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859432, 43.087639, 21.637728>,  <36.341167, 43.721695, 21.623453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859432, 43.087639, 21.637728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233307, 42.997849, 21.747980>,  <36.457630, 42.943974, 21.814133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233307, 42.997849, 21.747980>,  <35.859432, 43.087639, 21.637728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233307, 42.997849, 21.747980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344100, -0.376763, 0.860026,
		-0.089206, -0.898700, -0.429396,
		0.934686, -0.224475, 0.275633,
		36.513714, 42.930508, 21.830669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702400, 42.596760, 22.091141>,  <35.859432, 43.087639, 21.637728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702400, 42.596760, 22.091141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087246, 42.687687, 22.151363>,  <36.318153, 42.742241, 22.187496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087246, 42.687687, 22.151363>,  <35.702400, 42.596760, 22.091141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087246, 42.687687, 22.151363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036028, -0.441360, 0.896606,
		0.270260, -0.868061, -0.416449,
		0.962113, 0.227313, 0.150556,
		36.375881, 42.755882, 22.196529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183659, 41.954506, 22.188885>,  <35.702400, 42.596760, 22.091141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183659, 41.954506, 22.188885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361271, 42.255352, 22.383682>,  <36.467838, 42.435860, 22.500561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361271, 42.255352, 22.383682>,  <36.183659, 41.954506, 22.188885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361271, 42.255352, 22.383682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132569, -0.592676, 0.794456,
		0.886151, -0.288202, -0.362872,
		0.444030, 0.752114, 0.486994,
		36.494480, 42.480988, 22.529779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693703, 41.666698, 22.455400>,  <36.183659, 41.954506, 22.188885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693703, 41.666698, 22.455400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657108, 41.997009, 22.678013>,  <36.635151, 42.195194, 22.811581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657108, 41.997009, 22.678013>,  <36.693703, 41.666698, 22.455400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657108, 41.997009, 22.678013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270540, -0.517245, 0.811952,
		0.958352, 0.224844, -0.176086,
		-0.091483, 0.825774, 0.556532,
		36.629662, 42.244743, 22.844973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171474, 41.543648, 22.929232>,  <36.693703, 41.666698, 22.455400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171474, 41.543648, 22.929232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969563, 41.839039, 23.108049>,  <36.848415, 42.016273, 23.215340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969563, 41.839039, 23.108049>,  <37.171474, 41.543648, 22.929232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969563, 41.839039, 23.108049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190065, -0.410079, 0.892026,
		0.842067, 0.535240, 0.066639,
		-0.504776, 0.738480, 0.447044,
		36.818130, 42.060581, 23.242163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587563, 41.794579, 23.483892>,  <37.171474, 41.543648, 22.929232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587563, 41.794579, 23.483892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213501, 41.900391, 23.578138>,  <36.989063, 41.963879, 23.634686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213501, 41.900391, 23.578138>,  <37.587563, 41.794579, 23.483892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213501, 41.900391, 23.578138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133792, -0.352113, 0.926346,
		0.328014, 0.897796, 0.293886,
		-0.935151, 0.264534, 0.235616,
		36.932957, 41.979752, 23.648823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628887, 42.065819, 24.173496>,  <37.587563, 41.794579, 23.483892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628887, 42.065819, 24.173496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236137, 41.998913, 24.137861>,  <37.000488, 41.958767, 24.116480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236137, 41.998913, 24.137861>,  <37.628887, 42.065819, 24.173496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236137, 41.998913, 24.137861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006491, -0.440127, 0.897912,
		-0.189403, 0.882218, 0.431065,
		-0.981878, -0.167269, -0.089088,
		36.941574, 41.948730, 24.111135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415298, 42.199261, 24.808256>,  <37.628887, 42.065819, 24.173496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415298, 42.199261, 24.808256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123711, 41.994358, 24.626625>,  <36.948757, 41.871414, 24.517647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123711, 41.994358, 24.626625>,  <37.415298, 42.199261, 24.808256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123711, 41.994358, 24.626625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182478, -0.493911, 0.850149,
		-0.659772, 0.702596, 0.266572,
		-0.728974, -0.512261, -0.454076,
		36.905018, 41.840679, 24.490402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923725, 42.263809, 25.335907>,  <37.415298, 42.199261, 24.808256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923725, 42.263809, 25.335907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835529, 41.933163, 25.128798>,  <36.782612, 41.734776, 25.004532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835529, 41.933163, 25.128798>,  <36.923725, 42.263809, 25.335907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835529, 41.933163, 25.128798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230763, -0.471559, 0.851106,
		-0.947698, 0.307144, -0.086778,
		-0.220491, -0.826616, -0.517773,
		36.769382, 41.685177, 24.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358498, 42.062634, 25.543911>,  <36.923725, 42.263809, 25.335907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358498, 42.062634, 25.543911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469185, 41.704174, 25.405151>,  <36.535595, 41.489098, 25.321896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469185, 41.704174, 25.405151>,  <36.358498, 42.062634, 25.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469185, 41.704174, 25.405151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159170, -0.398751, 0.903140,
		-0.947678, -0.194698, -0.252982,
		0.276716, -0.896153, -0.346897,
		36.552200, 41.435329, 25.301083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939434, 41.628368, 25.854010>,  <36.358498, 42.062634, 25.543911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939434, 41.628368, 25.854010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230495, 41.386337, 25.724760>,  <36.405132, 41.241119, 25.647211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230495, 41.386337, 25.724760>,  <35.939434, 41.628368, 25.854010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230495, 41.386337, 25.724760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121281, -0.577125, 0.807600,
		-0.675142, -0.548461, -0.493329,
		0.727650, -0.605076, -0.323124,
		36.448792, 41.204815, 25.627823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702724, 40.948170, 25.960146>,  <35.939434, 41.628368, 25.854010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702724, 40.948170, 25.960146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102154, 40.932381, 25.974503>,  <36.341812, 40.922909, 25.983116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102154, 40.932381, 25.974503>,  <35.702724, 40.948170, 25.960146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102154, 40.932381, 25.974503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052755, -0.630572, 0.774336,
		-0.007932, -0.775126, -0.631757,
		0.998576, -0.039470, 0.035890,
		36.401726, 40.920540, 25.985270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925121, 40.205685, 26.049383>,  <35.702724, 40.948170, 25.960146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925121, 40.205685, 26.049383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235126, 40.417122, 26.187920>,  <36.421127, 40.543983, 26.271042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235126, 40.417122, 26.187920>,  <35.925121, 40.205685, 26.049383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235126, 40.417122, 26.187920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076017, -0.622049, 0.779280,
		0.627361, -0.577622, -0.522276,
		0.775010, 0.528591, 0.346340,
		36.467628, 40.575699, 26.291822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195694, 39.785965, 26.450405>,  <35.925121, 40.205685, 26.049383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195694, 39.785965, 26.450405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378727, 40.107689, 26.602043>,  <36.488548, 40.300724, 26.693026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378727, 40.107689, 26.602043>,  <36.195694, 39.785965, 26.450405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378727, 40.107689, 26.602043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136633, -0.484886, 0.863839,
		0.878607, -0.343480, -0.331769,
		0.457582, 0.804306, 0.379093,
		36.516003, 40.348980, 26.715771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780319, 39.521530, 26.926931>,  <36.195694, 39.785965, 26.450405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780319, 39.521530, 26.926931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708717, 39.894855, 27.051430>,  <36.665756, 40.118851, 27.126129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708717, 39.894855, 27.051430>,  <36.780319, 39.521530, 26.926931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708717, 39.894855, 27.051430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192220, -0.277083, 0.941423,
		0.964887, 0.228351, -0.129802,
		-0.179009, 0.933317, 0.311248,
		36.655014, 40.174850, 27.144804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312279, 39.607594, 27.426634>,  <36.780319, 39.521530, 26.926931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312279, 39.607594, 27.426634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038719, 39.895622, 27.473585>,  <36.874584, 40.068439, 27.501755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038719, 39.895622, 27.473585>,  <37.312279, 39.607594, 27.426634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038719, 39.895622, 27.473585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076306, -0.089405, 0.993068,
		0.725572, 0.688118, 0.006198,
		-0.683903, 0.720069, 0.117377,
		36.833549, 40.111645, 27.508799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566559, 39.917854, 28.017214>,  <37.312279, 39.607594, 27.426634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566559, 39.917854, 28.017214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188236, 40.047707, 28.014160>,  <36.961243, 40.125618, 28.012327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188236, 40.047707, 28.014160>,  <37.566559, 39.917854, 28.017214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188236, 40.047707, 28.014160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067903, -0.174730, 0.982272,
		0.317545, 0.929560, 0.187305,
		-0.945809, 0.324635, -0.007635,
		36.904495, 40.145096, 28.011869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502399, 40.463043, 28.586723>,  <37.566559, 39.917854, 28.017214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502399, 40.463043, 28.586723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136940, 40.323944, 28.502525>,  <36.917664, 40.240482, 28.452007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136940, 40.323944, 28.502525>,  <37.502399, 40.463043, 28.586723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136940, 40.323944, 28.502525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164669, -0.156810, 0.973804,
		-0.371649, 0.924381, 0.086006,
		-0.913652, -0.347751, -0.210495,
		36.862843, 40.219620, 28.439377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086147, 40.785667, 29.036974>,  <37.502399, 40.463043, 28.586723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086147, 40.785667, 29.036974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856724, 40.475727, 28.930660>,  <36.719070, 40.289764, 28.866873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856724, 40.475727, 28.930660>,  <37.086147, 40.785667, 29.036974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856724, 40.475727, 28.930660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282345, -0.117578, 0.952080,
		-0.768971, 0.621112, -0.151338,
		-0.573555, -0.774851, -0.265783,
		36.684658, 40.243271, 28.850925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487236, 40.874428, 29.271988>,  <37.086147, 40.785667, 29.036974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487236, 40.874428, 29.271988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490993, 40.479450, 29.208902>,  <36.493248, 40.242466, 29.171051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490993, 40.479450, 29.208902>,  <36.487236, 40.874428, 29.271988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490993, 40.479450, 29.208902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286710, -0.153759, 0.945598,
		-0.957971, 0.036332, -0.284554,
		0.009397, -0.987440, -0.157714,
		36.493813, 40.183220, 29.161589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016155, 40.547626, 29.794159>,  <36.487236, 40.874428, 29.271988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016155, 40.547626, 29.794159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200016, 40.211525, 29.679129>,  <36.310333, 40.009865, 29.610111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200016, 40.211525, 29.679129>,  <36.016155, 40.547626, 29.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200016, 40.211525, 29.679129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270406, -0.440847, 0.855882,
		-0.845935, -0.315641, -0.429844,
		0.459647, -0.840253, -0.287576,
		36.337910, 39.959450, 29.592855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613377, 39.994469, 30.080988>,  <36.016155, 40.547626, 29.794159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613377, 39.994469, 30.080988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974369, 39.837326, 30.010344>,  <36.190964, 39.743042, 29.967957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974369, 39.837326, 30.010344>,  <35.613377, 39.994469, 30.080988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974369, 39.837326, 30.010344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010828, -0.430593, 0.902481,
		-0.430593, -0.812560, -0.392856,
		-0.902481, 0.392856, 0.176611,
		36.245113, 39.719471, 29.957359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531342, 39.250278, 30.171358>,  <35.613377, 39.994469, 30.080988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531342, 39.250278, 30.171358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911385, 39.367466, 30.214176>,  <36.139412, 39.437778, 30.239866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911385, 39.367466, 30.214176>,  <35.531342, 39.250278, 30.171358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911385, 39.367466, 30.214176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024121, -0.411169, 0.911240,
		0.310981, -0.863196, -0.397723,
		0.950110, 0.292972, 0.107045,
		36.196419, 39.455357, 30.246290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937031, 38.665993, 30.418051>,  <35.531342, 39.250278, 30.171358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937031, 38.665993, 30.418051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168308, 38.975349, 30.522017>,  <36.307076, 39.160965, 30.584396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168308, 38.975349, 30.522017>,  <35.937031, 38.665993, 30.418051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168308, 38.975349, 30.522017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120146, -0.395797, 0.910444,
		0.807002, -0.495189, -0.321768,
		0.578197, 0.773390, 0.259914,
		36.341766, 39.207367, 30.599991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542610, 38.445808, 30.837988>,  <35.937031, 38.665993, 30.418051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542610, 38.445808, 30.837988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485069, 38.828392, 30.939566>,  <36.450546, 39.057941, 31.000511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485069, 38.828392, 30.939566>,  <36.542610, 38.445808, 30.837988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485069, 38.828392, 30.939566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051239, -0.249068, 0.967130,
		0.988272, 0.152137, -0.013179,
		-0.143854, 0.956462, 0.253942,
		36.441914, 39.115330, 31.015749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014957, 38.542782, 31.238255>,  <36.542610, 38.445808, 30.837988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014957, 38.542782, 31.238255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795383, 38.867359, 31.318485>,  <36.663639, 39.062103, 31.366623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795383, 38.867359, 31.318485>,  <37.014957, 38.542782, 31.238255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795383, 38.867359, 31.318485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113683, -0.165254, 0.979677,
		0.828096, 0.560585, -0.001533,
		-0.548939, 0.811441, 0.200575,
		36.630703, 39.110790, 31.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362728, 38.847836, 31.634371>,  <37.014957, 38.542782, 31.238255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362728, 38.847836, 31.634371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982422, 38.963013, 31.680220>,  <36.754238, 39.032120, 31.707729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982422, 38.963013, 31.680220>,  <37.362728, 38.847836, 31.634371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982422, 38.963013, 31.680220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014481, -0.328169, 0.944508,
		0.309582, 0.899663, 0.307841,
		-0.950763, 0.287945, 0.114623,
		36.697193, 39.049397, 31.714607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371029, 39.200985, 32.369408>,  <37.362728, 38.847836, 31.634371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371029, 39.200985, 32.369408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987823, 39.115627, 32.292801>,  <36.757900, 39.064411, 32.246838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987823, 39.115627, 32.292801>,  <37.371029, 39.200985, 32.369408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987823, 39.115627, 32.292801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118772, -0.312597, 0.942431,
		-0.260978, 0.925606, 0.274125,
		-0.958010, -0.213395, -0.191517,
		36.700420, 39.051609, 32.235348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078247, 39.603416, 32.873566>,  <37.371029, 39.200985, 32.369408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078247, 39.603416, 32.873566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814896, 39.326191, 32.756126>,  <36.656883, 39.159855, 32.685665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814896, 39.326191, 32.756126>,  <37.078247, 39.603416, 32.873566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814896, 39.326191, 32.756126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053032, -0.346380, 0.936594,
		-0.750816, 0.632204, 0.191295,
		-0.658379, -0.693065, -0.293595,
		36.617382, 39.118271, 32.668049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512417, 39.671898, 33.372784>,  <37.078247, 39.603416, 32.873566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512417, 39.671898, 33.372784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470356, 39.318760, 33.189682>,  <36.445118, 39.106876, 33.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470356, 39.318760, 33.189682>,  <36.512417, 39.671898, 33.372784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470356, 39.318760, 33.189682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028821, -0.457403, 0.888792,
		-0.994039, 0.106650, 0.022652,
		-0.105151, -0.882841, -0.457750,
		36.438812, 39.053909, 33.052357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921436, 39.302322, 33.549408>,  <36.512417, 39.671898, 33.372784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921436, 39.302322, 33.549408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177288, 39.006020, 33.467281>,  <36.330799, 38.828239, 33.418007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177288, 39.006020, 33.467281>,  <35.921436, 39.302322, 33.549408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177288, 39.006020, 33.467281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079605, -0.329497, 0.940795,
		-0.764548, -0.585418, -0.269724,
		0.639632, -0.740754, -0.205314,
		36.369179, 38.783794, 33.405685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705650, 38.681709, 34.030693>,  <35.921436, 39.302322, 33.549408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705650, 38.681709, 34.030693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040970, 38.523693, 33.880383>,  <36.242161, 38.428883, 33.790195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040970, 38.523693, 33.880383>,  <35.705650, 38.681709, 34.030693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040970, 38.523693, 33.880383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011602, -0.701986, 0.712097,
		-0.545094, -0.592587, -0.593054,
		0.838295, -0.395040, -0.375773,
		36.292458, 38.405182, 33.767651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562397, 37.933758, 34.200489>,  <35.705650, 38.681709, 34.030693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562397, 37.933758, 34.200489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958931, 37.945045, 34.149178>,  <36.196854, 37.951820, 34.118393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958931, 37.945045, 34.149178>,  <35.562397, 37.933758, 34.200489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958931, 37.945045, 34.149178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124773, -0.507395, 0.852632,
		-0.041023, -0.861251, -0.506521,
		0.991337, 0.028223, -0.128275,
		36.256332, 37.953514, 34.110695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879265, 37.287888, 34.233395>,  <35.562397, 37.933758, 34.200489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879265, 37.287888, 34.233395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204445, 37.511627, 34.298195>,  <36.399551, 37.645870, 34.337074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204445, 37.511627, 34.298195>,  <35.879265, 37.287888, 34.233395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204445, 37.511627, 34.298195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234493, -0.569077, 0.788140,
		0.533036, -0.602728, -0.593793,
		0.812948, 0.559348, 0.162003,
		36.448330, 37.679432, 34.346794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420052, 36.814129, 34.276588>,  <35.879265, 37.287888, 34.233395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420052, 36.814129, 34.276588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466248, 37.147209, 34.493206>,  <36.493965, 37.347057, 34.623177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466248, 37.147209, 34.493206>,  <36.420052, 36.814129, 34.276588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466248, 37.147209, 34.493206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166398, -0.553703, 0.815920,
		0.979272, -0.004120, -0.202507,
		0.115490, 0.832704, 0.541540,
		36.500896, 37.397022, 34.655666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139202, 36.853138, 34.560127>,  <36.420052, 36.814129, 34.276588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139202, 36.853138, 34.560127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877720, 37.054863, 34.785812>,  <36.720829, 37.175900, 34.921223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877720, 37.054863, 34.785812>,  <37.139202, 36.853138, 34.560127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877720, 37.054863, 34.785812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294154, -0.517601, 0.803469,
		0.697237, 0.691198, 0.190014,
		-0.653708, 0.504316, 0.564209,
		36.681606, 37.206158, 34.955074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537903, 37.079033, 34.113770>,  <37.139202, 36.853138, 34.560127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537903, 37.079033, 34.113770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760372, 36.746872, 34.127056>,  <37.893852, 36.547573, 34.135029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760372, 36.746872, 34.127056>,  <37.537903, 37.079033, 34.113770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760372, 36.746872, 34.127056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402666, 0.234293, -0.884854,
		0.727006, 0.505504, 0.464682,
		0.556169, -0.830405, 0.033217,
		37.927223, 36.497749, 34.137020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241882, 37.290558, 34.104843>,  <37.537903, 37.079033, 34.113770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241882, 37.290558, 34.104843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238789, 36.912712, 33.973610>,  <38.236935, 36.686005, 33.894871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238789, 36.912712, 33.973610>,  <38.241882, 37.290558, 34.104843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238789, 36.912712, 33.973610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449224, 0.289838, -0.845099,
		0.893386, -0.153914, 0.422105,
		-0.007731, -0.944619, -0.328079,
		38.236469, 36.629326, 33.875187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882465, 37.148975, 33.930061>,  <38.241882, 37.290558, 34.104843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882465, 37.148975, 33.930061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656803, 36.880383, 33.737873>,  <38.521408, 36.719227, 33.622562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656803, 36.880383, 33.737873>,  <38.882465, 37.148975, 33.930061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656803, 36.880383, 33.737873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442567, 0.245335, -0.862523,
		0.697041, -0.699233, 0.158768,
		-0.564153, -0.671479, -0.480466,
		38.487556, 36.678940, 33.593735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359909, 36.774216, 33.513855>,  <38.882465, 37.148975, 33.930061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359909, 36.774216, 33.513855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991520, 36.736404, 33.362659>,  <38.770489, 36.713718, 33.271942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991520, 36.736404, 33.362659>,  <39.359909, 36.774216, 33.513855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991520, 36.736404, 33.362659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372648, 0.069611, -0.925358,
		0.113784, -0.993086, -0.028885,
		-0.920971, -0.094527, -0.377992,
		38.715229, 36.708046, 33.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559341, 36.440125, 32.864838>,  <39.359909, 36.774216, 33.513855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559341, 36.440125, 32.864838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186676, 36.581024, 32.829239>,  <38.963078, 36.665562, 32.807880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186676, 36.581024, 32.829239>,  <39.559341, 36.440125, 32.864838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186676, 36.581024, 32.829239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227221, 0.373774, -0.899257,
		-0.283494, -0.858030, -0.428270,
		-0.931666, 0.352247, -0.089000,
		38.907177, 36.686699, 32.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434937, 36.275291, 32.207153>,  <39.559341, 36.440125, 32.864838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434937, 36.275291, 32.207153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156918, 36.549828, 32.292805>,  <38.990105, 36.714550, 32.344196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156918, 36.549828, 32.292805>,  <39.434937, 36.275291, 32.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156918, 36.549828, 32.292805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066775, 0.358168, -0.931266,
		-0.715856, -0.632976, -0.294774,
		-0.695048, 0.686336, 0.214129,
		38.948402, 36.755730, 32.357044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052143, 36.372749, 31.579771>,  <39.434937, 36.275291, 32.207153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052143, 36.372749, 31.579771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942966, 36.702576, 31.778004>,  <38.877460, 36.900471, 31.896942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942966, 36.702576, 31.778004>,  <39.052143, 36.372749, 31.579771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942966, 36.702576, 31.778004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095863, 0.535887, -0.838830,
		-0.957242, -0.181445, -0.225311,
		-0.272943, 0.824562, 0.495580,
		38.861084, 36.949944, 31.926678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501286, 36.759483, 31.192776>,  <39.052143, 36.372749, 31.579771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501286, 36.759483, 31.192776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673393, 37.034119, 31.427198>,  <38.776657, 37.198902, 31.567852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673393, 37.034119, 31.427198>,  <38.501286, 36.759483, 31.192776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673393, 37.034119, 31.427198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088247, 0.678107, -0.729646,
		-0.898377, 0.262225, 0.352358,
		0.430268, 0.686592, 0.586056,
		38.802475, 37.240097, 31.603016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122566, 37.299492, 31.012842>,  <38.501286, 36.759483, 31.192776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122566, 37.299492, 31.012842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478222, 37.419033, 31.151476>,  <38.691616, 37.490757, 31.234657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478222, 37.419033, 31.151476>,  <38.122566, 37.299492, 31.012842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478222, 37.419033, 31.151476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104068, 0.605458, -0.789044,
		-0.445648, 0.737638, 0.507236,
		0.889139, 0.298849, 0.346585,
		38.744965, 37.508686, 31.255451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148949, 37.922337, 30.736977>,  <38.122566, 37.299492, 31.012842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148949, 37.922337, 30.736977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529419, 37.894558, 30.857277>,  <38.757702, 37.877892, 30.929457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529419, 37.894558, 30.857277>,  <38.148949, 37.922337, 30.736977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529419, 37.894558, 30.857277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299832, 0.439284, -0.846835,
		-0.073305, 0.895660, 0.438656,
		0.951171, -0.069446, 0.300749,
		38.814770, 37.873726, 30.947502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421684, 38.578972, 30.670767>,  <38.148949, 37.922337, 30.736977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421684, 38.578972, 30.670767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742214, 38.339848, 30.661884>,  <38.934532, 38.196373, 30.656555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742214, 38.339848, 30.661884>,  <38.421684, 38.578972, 30.670767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742214, 38.339848, 30.661884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269718, 0.394176, -0.878565,
		0.533969, 0.698031, 0.477105,
		0.801329, -0.597811, -0.022206,
		38.982613, 38.160503, 30.655222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935425, 39.032482, 30.513832>,  <38.421684, 38.578972, 30.670767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935425, 39.032482, 30.513832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061836, 38.661598, 30.433418>,  <39.137684, 38.439068, 30.385170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061836, 38.661598, 30.433418>,  <38.935425, 39.032482, 30.513832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061836, 38.661598, 30.433418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240024, 0.283137, -0.928559,
		0.917885, 0.245200, 0.312032,
		0.316031, -0.927205, -0.201034,
		39.156647, 38.383438, 30.373108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701221, 39.004482, 30.332794>,  <38.935425, 39.032482, 30.513832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701221, 39.004482, 30.332794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515148, 38.696327, 30.158388>,  <39.403503, 38.511433, 30.053743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515148, 38.696327, 30.158388>,  <39.701221, 39.004482, 30.332794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515148, 38.696327, 30.158388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312249, 0.318093, -0.895163,
		0.828317, -0.552558, 0.092582,
		-0.465180, -0.770387, -0.436017,
		39.375595, 38.465210, 30.027582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158062, 38.724354, 29.820345>,  <39.701221, 39.004482, 30.332794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158062, 38.724354, 29.820345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801689, 38.580173, 29.709843>,  <39.587868, 38.493664, 29.643541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801689, 38.580173, 29.709843>,  <40.158062, 38.724354, 29.820345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801689, 38.580173, 29.709843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112697, 0.413798, -0.903366,
		0.439939, -0.835967, -0.328042,
		-0.890928, -0.360457, -0.276257,
		39.534409, 38.472038, 29.626966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285526, 38.774799, 29.162193>,  <40.158062, 38.724354, 29.820345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285526, 38.774799, 29.162193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899647, 38.669773, 29.170317>,  <39.668118, 38.606758, 29.175190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899647, 38.669773, 29.170317>,  <40.285526, 38.774799, 29.162193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899647, 38.669773, 29.170317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049850, 0.106339, -0.993079,
		0.258593, -0.959036, -0.115674,
		-0.964699, -0.262569, 0.020309,
		39.610237, 38.591003, 29.176409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098988, 38.195469, 28.635229>,  <40.285526, 38.774799, 29.162193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098988, 38.195469, 28.635229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783752, 38.433308, 28.698946>,  <39.594612, 38.576012, 28.737177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783752, 38.433308, 28.698946>,  <40.098988, 38.195469, 28.635229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783752, 38.433308, 28.698946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071961, 0.168012, -0.983155,
		-0.611341, -0.786276, -0.089621,
		-0.788088, 0.594594, 0.159294,
		39.547325, 38.611687, 28.746735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631149, 38.009407, 28.149906>,  <40.098988, 38.195469, 28.635229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631149, 38.009407, 28.149906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462631, 38.356457, 28.255533>,  <39.361519, 38.564686, 28.318909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462631, 38.356457, 28.255533>,  <39.631149, 38.009407, 28.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462631, 38.356457, 28.255533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333177, 0.122743, -0.934841,
		-0.843506, -0.481826, 0.237363,
		-0.421296, 0.867628, 0.264068,
		39.336243, 38.616745, 28.334753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822807, 38.040054, 27.872684>,  <39.631149, 38.009407, 28.149906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822807, 38.040054, 27.872684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940353, 38.418098, 27.929821>,  <39.010883, 38.644924, 27.964102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940353, 38.418098, 27.929821>,  <38.822807, 38.040054, 27.872684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940353, 38.418098, 27.929821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450873, 0.268829, -0.851143,
		-0.842826, 0.185722, 0.505126,
		0.293869, 0.945113, 0.142839,
		39.028515, 38.701633, 27.972673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267025, 38.459469, 27.706478>,  <38.822807, 38.040054, 27.872684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267025, 38.459469, 27.706478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592297, 38.691082, 27.682938>,  <38.787460, 38.830051, 27.668814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592297, 38.691082, 27.682938>,  <38.267025, 38.459469, 27.706478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592297, 38.691082, 27.682938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319923, 0.360220, -0.876294,
		-0.486205, 0.731409, 0.478169,
		0.813175, 0.579036, -0.058853,
		38.836250, 38.864792, 27.665281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068836, 39.029964, 27.398718>,  <38.267025, 38.459469, 27.706478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068836, 39.029964, 27.398718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455978, 39.077271, 27.309925>,  <38.688263, 39.105656, 27.256649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455978, 39.077271, 27.309925>,  <38.068836, 39.029964, 27.398718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455978, 39.077271, 27.309925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247772, 0.296444, -0.922351,
		-0.043280, 0.947699, 0.316217,
		0.967851, 0.118269, -0.221983,
		38.746334, 39.112751, 27.243330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164452, 39.664410, 27.140848>,  <38.068836, 39.029964, 27.398718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164452, 39.664410, 27.140848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494678, 39.477772, 27.013905>,  <38.692814, 39.365788, 26.937738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494678, 39.477772, 27.013905>,  <38.164452, 39.664410, 27.140848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494678, 39.477772, 27.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128321, 0.392435, -0.910784,
		0.549514, 0.792642, 0.264109,
		0.825572, -0.466598, -0.317361,
		38.742352, 39.337791, 26.918695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572594, 40.107674, 26.565565>,  <38.164452, 39.664410, 27.140848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572594, 40.107674, 26.565565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661919, 39.719738, 26.526501>,  <38.715515, 39.486977, 26.503063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661919, 39.719738, 26.526501>,  <38.572594, 40.107674, 26.565565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661919, 39.719738, 26.526501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062316, 0.085780, -0.994363,
		0.972752, 0.228142, -0.041281,
		0.223315, -0.969842, -0.097660,
		38.728912, 39.428787, 26.497202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997143, 40.091045, 26.047613>,  <38.572594, 40.107674, 26.565565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997143, 40.091045, 26.047613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875462, 39.711433, 26.080629>,  <38.802452, 39.483665, 26.100439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875462, 39.711433, 26.080629>,  <38.997143, 40.091045, 26.047613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875462, 39.711433, 26.080629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107784, -0.051799, -0.992824,
		0.946491, -0.310914, -0.086532,
		-0.304201, -0.949025, 0.082539,
		38.784203, 39.426727, 26.105391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400841, 39.722965, 25.490585>,  <38.997143, 40.091045, 26.047613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400841, 39.722965, 25.490585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079491, 39.499836, 25.573940>,  <38.886681, 39.365959, 25.623953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079491, 39.499836, 25.573940>,  <39.400841, 39.722965, 25.490585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079491, 39.499836, 25.573940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258983, 0.012192, -0.965805,
		0.536205, -0.829872, -0.154261,
		-0.803375, -0.557820, 0.208386,
		38.838478, 39.332489, 25.636456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329758, 39.194454, 24.968435>,  <39.400841, 39.722965, 25.490585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329758, 39.194454, 24.968435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962418, 39.257389, 25.113695>,  <38.742012, 39.295151, 25.200851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962418, 39.257389, 25.113695>,  <39.329758, 39.194454, 24.968435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962418, 39.257389, 25.113695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383488, -0.126982, -0.914775,
		-0.097813, -0.979347, 0.176950,
		-0.918352, 0.157335, 0.363147,
		38.686913, 39.304588, 25.222639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962002, 38.705544, 24.566271>,  <39.329758, 39.194454, 24.968435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962002, 38.705544, 24.566271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663506, 38.929195, 24.710775>,  <38.484409, 39.063385, 24.797478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663506, 38.929195, 24.710775>,  <38.962002, 38.705544, 24.566271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663506, 38.929195, 24.710775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477576, -0.071613, -0.875667,
		-0.463738, -0.825984, 0.320465,
		-0.746237, 0.559126, 0.361261,
		38.439636, 39.096931, 24.819153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268040, 38.357121, 24.318989>,  <38.962002, 38.705544, 24.566271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268040, 38.357121, 24.318989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256378, 38.749531, 24.395664>,  <38.249382, 38.984978, 24.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256378, 38.749531, 24.395664>,  <38.268040, 38.357121, 24.318989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256378, 38.749531, 24.395664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350514, 0.169561, -0.921080,
		-0.936104, -0.094041, 0.338919,
		-0.029152, 0.981023, 0.191689,
		38.247631, 39.043839, 24.453171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694679, 38.555317, 23.973404>,  <38.268040, 38.357121, 24.318989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694679, 38.555317, 23.973404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860691, 38.913303, 24.038868>,  <37.960297, 39.128094, 24.078146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860691, 38.913303, 24.038868>,  <37.694679, 38.555317, 23.973404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860691, 38.913303, 24.038868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329657, 0.315588, -0.889793,
		-0.847984, 0.315339, 0.426010,
		0.415030, 0.894967, 0.163660,
		37.985199, 39.181793, 24.087965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225906, 38.999760, 23.592953>,  <37.694679, 38.555317, 23.973404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225906, 38.999760, 23.592953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545963, 39.225876, 23.673159>,  <37.737999, 39.361546, 23.721283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545963, 39.225876, 23.673159>,  <37.225906, 38.999760, 23.592953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545963, 39.225876, 23.673159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154283, 0.517026, -0.841951,
		-0.579622, 0.642748, 0.500912,
		0.800147, 0.565295, 0.200514,
		37.786007, 39.395466, 23.733313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952763, 39.640820, 23.463978>,  <37.225906, 38.999760, 23.592953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952763, 39.640820, 23.463978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347755, 39.685516, 23.419464>,  <37.584751, 39.712334, 23.392756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347755, 39.685516, 23.419464>,  <36.952763, 39.640820, 23.463978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347755, 39.685516, 23.419464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152120, 0.488772, -0.859047,
		-0.041599, 0.865226, 0.499654,
		0.987486, 0.111743, -0.111286,
		37.644001, 39.719040, 23.386078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081982, 40.370770, 23.301304>,  <36.952763, 39.640820, 23.463978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081982, 40.370770, 23.301304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365986, 40.124031, 23.165430>,  <37.536388, 39.975986, 23.083906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365986, 40.124031, 23.165430>,  <37.081982, 40.370770, 23.301304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365986, 40.124031, 23.165430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094522, 0.394527, -0.914010,
		0.697818, 0.681065, 0.221813,
		0.710011, -0.616846, -0.339684,
		37.578991, 39.938976, 23.063524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370304, 40.747971, 22.857679>,  <37.081982, 40.370770, 23.301304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370304, 40.747971, 22.857679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478046, 40.390060, 22.715235>,  <37.542694, 40.175312, 22.629768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478046, 40.390060, 22.715235>,  <37.370304, 40.747971, 22.857679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478046, 40.390060, 22.715235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205666, 0.307803, -0.928956,
		0.940823, 0.323463, -0.101116,
		0.269359, -0.894779, -0.356113,
		37.558853, 40.121628, 22.608400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685165, 40.995758, 22.262894>,  <37.370304, 40.747971, 22.857679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685165, 40.995758, 22.262894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645100, 40.603806, 22.193842>,  <37.621059, 40.368633, 22.152411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645100, 40.603806, 22.193842>,  <37.685165, 40.995758, 22.262894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645100, 40.603806, 22.193842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068333, 0.179864, -0.981315,
		0.992622, -0.086493, -0.084974,
		-0.100161, -0.979882, -0.172627,
		37.615051, 40.309841, 22.142054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205341, 40.759815, 21.729591>,  <37.685165, 40.995758, 22.262894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205341, 40.759815, 21.729591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900524, 40.500843, 21.725061>,  <37.717636, 40.345459, 21.722343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900524, 40.500843, 21.725061>,  <38.205341, 40.759815, 21.729591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900524, 40.500843, 21.725061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037379, 0.061445, -0.997410,
		0.646451, -0.759642, -0.071023,
		-0.762039, -0.647432, -0.011327,
		37.671913, 40.306614, 21.721663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411293, 40.237431, 21.095474>,  <38.205341, 40.759815, 21.729591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411293, 40.237431, 21.095474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022022, 40.222847, 21.186338>,  <37.788460, 40.214096, 21.240856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022022, 40.222847, 21.186338>,  <38.411293, 40.237431, 21.095474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022022, 40.222847, 21.186338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229981, 0.127251, -0.964840,
		0.006271, -0.991200, -0.132222,
		-0.973175, -0.036459, 0.227159,
		37.730068, 40.211910, 21.254486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187340, 39.664295, 20.716730>,  <38.411293, 40.237431, 21.095474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187340, 39.664295, 20.716730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873783, 39.899727, 20.795811>,  <37.685650, 40.040985, 20.843260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873783, 39.899727, 20.795811>,  <38.187340, 39.664295, 20.716730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873783, 39.899727, 20.795811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119868, 0.168963, -0.978306,
		-0.609216, -0.790585, -0.061897,
		-0.783892, 0.588581, 0.197701,
		37.638615, 40.076302, 20.855122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640060, 39.379498, 20.320356>,  <38.187340, 39.664295, 20.716730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640060, 39.379498, 20.320356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500027, 39.748734, 20.384041>,  <37.416008, 39.970276, 20.422251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500027, 39.748734, 20.384041>,  <37.640060, 39.379498, 20.320356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500027, 39.748734, 20.384041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312252, 0.045243, -0.948922,
		-0.883142, -0.381916, 0.272397,
		-0.350084, 0.923089, 0.159210,
		37.395000, 40.025661, 20.431805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075901, 39.244076, 19.973818>,  <37.640060, 39.379498, 20.320356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075901, 39.244076, 19.973818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156929, 38.930695, 19.738813>,  <37.205544, 38.742664, 19.597811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156929, 38.930695, 19.738813>,  <37.075901, 39.244076, 19.973818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156929, 38.930695, 19.738813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235219, -0.543457, 0.805808,
		-0.950599, -0.301423, 0.074198,
		0.202566, -0.783453, -0.587510,
		37.217697, 38.695660, 19.562561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649624, 38.516121, 20.176464>,  <37.075901, 39.244076, 19.973818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649624, 38.516121, 20.176464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998020, 38.438923, 19.995745>,  <37.207058, 38.392605, 19.887314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998020, 38.438923, 19.995745>,  <36.649624, 38.516121, 20.176464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998020, 38.438923, 19.995745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293467, -0.533134, 0.793502,
		-0.394013, -0.823723, -0.407719,
		0.870994, -0.192998, -0.451797,
		37.259319, 38.381023, 19.860205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812592, 37.851429, 20.467609>,  <36.649624, 38.516121, 20.176464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812592, 37.851429, 20.467609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156223, 37.980057, 20.308319>,  <37.362400, 38.057232, 20.212746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156223, 37.980057, 20.308319>,  <36.812592, 37.851429, 20.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156223, 37.980057, 20.308319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510821, -0.489372, 0.706808,
		0.032407, -0.810623, -0.584671,
		0.859076, 0.321568, -0.398224,
		37.413948, 38.076527, 20.188852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216545, 37.311394, 20.476330>,  <36.812592, 37.851429, 20.467609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216545, 37.311394, 20.476330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482052, 37.602226, 20.406168>,  <37.641357, 37.776726, 20.364071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482052, 37.602226, 20.406168>,  <37.216545, 37.311394, 20.476330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482052, 37.602226, 20.406168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578362, -0.350264, 0.736759,
		0.474243, -0.590486, -0.653009,
		0.663771, 0.727077, -0.175404,
		37.681183, 37.820351, 20.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932816, 36.955097, 20.396149>,  <37.216545, 37.311394, 20.476330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932816, 36.955097, 20.396149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981842, 37.338837, 20.497835>,  <38.011257, 37.569080, 20.558847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981842, 37.338837, 20.497835>,  <37.932816, 36.955097, 20.396149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981842, 37.338837, 20.497835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482393, -0.281440, 0.829511,
		0.867338, 0.020960, -0.497279,
		0.122568, 0.959350, 0.254215,
		38.018612, 37.626640, 20.574100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722363, 37.054085, 20.614958>,  <37.932816, 36.955097, 20.396149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722363, 37.054085, 20.614958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494583, 37.337307, 20.781998>,  <38.357914, 37.507240, 20.882221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494583, 37.337307, 20.781998>,  <38.722363, 37.054085, 20.614958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494583, 37.337307, 20.781998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244733, -0.338943, 0.908418,
		0.784749, 0.619499, 0.019727,
		-0.569451, 0.708053, 0.417597,
		38.323750, 37.549725, 20.907276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249611, 37.369465, 21.113663>,  <38.722363, 37.054085, 20.614958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249611, 37.369465, 21.113663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880322, 37.475727, 21.224720>,  <38.658749, 37.539486, 21.291355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880322, 37.475727, 21.224720>,  <39.249611, 37.369465, 21.113663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880322, 37.475727, 21.224720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200575, -0.283140, 0.937871,
		0.327766, 0.921551, 0.208117,
		-0.923222, 0.265659, 0.277644,
		38.603355, 37.555424, 21.308014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321629, 37.626221, 21.781263>,  <39.249611, 37.369465, 21.113663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321629, 37.626221, 21.781263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934280, 37.535381, 21.739912>,  <38.701870, 37.480877, 21.715101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934280, 37.535381, 21.739912>,  <39.321629, 37.626221, 21.781263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934280, 37.535381, 21.739912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056021, -0.205859, 0.976977,
		-0.243153, 0.951866, 0.186625,
		-0.968369, -0.227100, -0.103379,
		38.643768, 37.467251, 21.708899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930859, 38.039322, 22.313110>,  <39.321629, 37.626221, 21.781263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930859, 38.039322, 22.313110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695782, 37.725220, 22.235151>,  <38.554733, 37.536758, 22.188375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695782, 37.725220, 22.235151>,  <38.930859, 38.039322, 22.313110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695782, 37.725220, 22.235151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061305, -0.283413, 0.957037,
		-0.806755, 0.550499, 0.214701,
		-0.587697, -0.785256, -0.194897,
		38.519474, 37.489643, 22.176682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430241, 38.052418, 22.844177>,  <38.930859, 38.039322, 22.313110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430241, 38.052418, 22.844177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469849, 37.678825, 22.706844>,  <38.493614, 37.454670, 22.624445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469849, 37.678825, 22.706844>,  <38.430241, 38.052418, 22.844177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469849, 37.678825, 22.706844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008415, -0.345803, 0.938269,
		-0.995049, -0.090020, -0.042102,
		0.099022, -0.933979, -0.343333,
		38.499554, 37.398632, 22.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195019, 37.602982, 23.366039>,  <38.430241, 38.052418, 22.844177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195019, 37.602982, 23.366039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355007, 37.320423, 23.132448>,  <38.451000, 37.150887, 22.992292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355007, 37.320423, 23.132448>,  <38.195019, 37.602982, 23.366039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355007, 37.320423, 23.132448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155279, -0.575726, 0.802763,
		-0.903280, -0.411758, -0.120583,
		0.399966, -0.706396, -0.583979,
		38.474998, 37.108505, 22.957254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860844, 36.867470, 23.546705>,  <38.195019, 37.602982, 23.366039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860844, 36.867470, 23.546705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203121, 36.781841, 23.358255>,  <38.408489, 36.730465, 23.245186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203121, 36.781841, 23.358255>,  <37.860844, 36.867470, 23.546705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203121, 36.781841, 23.358255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265395, -0.600026, 0.754675,
		-0.444245, -0.770805, -0.456624,
		0.855694, -0.214075, -0.471126,
		38.459831, 36.717617, 23.216917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906548, 36.150047, 23.402956>,  <37.860844, 36.867470, 23.546705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906548, 36.150047, 23.402956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280136, 36.292953, 23.400156>,  <38.504292, 36.378696, 23.398476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280136, 36.292953, 23.400156>,  <37.906548, 36.150047, 23.402956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280136, 36.292953, 23.400156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242632, -0.619665, 0.746422,
		0.262338, -0.698837, -0.665436,
		0.933975, 0.357270, -0.006999,
		38.560329, 36.400135, 23.398056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421200, 35.596550, 23.500349>,  <37.906548, 36.150047, 23.402956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421200, 35.596550, 23.500349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602833, 35.919537, 23.650976>,  <38.711815, 36.113327, 23.741352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602833, 35.919537, 23.650976>,  <38.421200, 35.596550, 23.500349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602833, 35.919537, 23.650976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311036, -0.539732, 0.782270,
		0.834904, -0.238089, -0.496236,
		0.454084, 0.807467, 0.376570,
		38.739059, 36.161777, 23.763947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841942, 35.237423, 24.023876>,  <38.421200, 35.596550, 23.500349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841942, 35.237423, 24.023876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911823, 35.620178, 24.116692>,  <38.953751, 35.849831, 24.172380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911823, 35.620178, 24.116692>,  <38.841942, 35.237423, 24.023876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911823, 35.620178, 24.116692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365220, -0.281826, 0.887236,
		0.914382, -0.070256, -0.398711,
		0.174701, 0.956890, 0.232038,
		38.964233, 35.907246, 24.186302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485691, 35.198299, 24.392382>,  <38.841942, 35.237423, 24.023876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485691, 35.198299, 24.392382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316212, 35.543839, 24.501379>,  <39.214523, 35.751160, 24.566778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316212, 35.543839, 24.501379>,  <39.485691, 35.198299, 24.392382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316212, 35.543839, 24.501379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374199, -0.107036, 0.921151,
		0.824898, 0.492256, -0.277899,
		-0.423697, 0.863845, 0.272495,
		39.189102, 35.802994, 24.583128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998516, 35.498489, 24.755180>,  <39.485691, 35.198299, 24.392382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998516, 35.498489, 24.755180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677250, 35.701717, 24.879627>,  <39.484489, 35.823654, 24.954294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677250, 35.701717, 24.879627>,  <39.998516, 35.498489, 24.755180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677250, 35.701717, 24.879627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343430, -0.031875, 0.938637,
		0.486810, 0.860726, -0.148886,
		-0.803164, 0.508070, 0.311116,
		39.436302, 35.854137, 24.972961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149788, 35.920177, 25.237906>,  <39.998516, 35.498489, 24.755180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149788, 35.920177, 25.237906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764835, 35.961849, 25.338282>,  <39.533863, 35.986855, 25.398508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764835, 35.961849, 25.338282>,  <40.149788, 35.920177, 25.237906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764835, 35.961849, 25.338282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247924, -0.041165, 0.967905,
		0.111169, 0.993706, 0.013787,
		-0.962380, 0.104183, 0.250940,
		39.476120, 35.993103, 25.413563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204067, 36.305897, 25.787992>,  <40.149788, 35.920177, 25.237906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204067, 36.305897, 25.787992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835426, 36.153206, 25.816072>,  <39.614243, 36.061592, 25.832920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835426, 36.153206, 25.816072>,  <40.204067, 36.305897, 25.787992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835426, 36.153206, 25.816072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114584, -0.094783, 0.988882,
		-0.370829, 0.919403, 0.131092,
		-0.921605, -0.381727, 0.070200,
		39.558945, 36.038689, 25.837133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712620, 36.889931, 26.044434>,  <40.204067, 36.305897, 25.787992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712620, 36.889931, 26.044434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545872, 36.533791, 26.117636>,  <39.445824, 36.320107, 26.161556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545872, 36.533791, 26.117636>,  <39.712620, 36.889931, 26.044434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545872, 36.533791, 26.117636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028484, 0.214029, 0.976412,
		-0.908518, 0.401827, -0.114584,
		-0.416873, -0.890352, 0.183004,
		39.420811, 36.266685, 26.172537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371231, 36.855320, 26.622452>,  <39.712620, 36.889931, 26.044434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371231, 36.855320, 26.622452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384125, 36.455608, 26.614336>,  <39.391861, 36.215782, 26.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384125, 36.455608, 26.614336>,  <39.371231, 36.855320, 26.622452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384125, 36.455608, 26.614336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093755, -0.017189, 0.995447,
		-0.995073, -0.033985, 0.093133,
		0.032230, -0.999275, -0.020290,
		39.393795, 36.155827, 26.608250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910366, 36.575699, 27.093040>,  <39.371231, 36.855320, 26.622452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910366, 36.575699, 27.093040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193665, 36.296738, 27.049192>,  <39.363644, 36.129360, 27.022884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193665, 36.296738, 27.049192>,  <38.910366, 36.575699, 27.093040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193665, 36.296738, 27.049192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077610, -0.077417, 0.993973,
		-0.701685, -0.712487, -0.000705,
		0.708248, -0.697402, -0.109618,
		39.406139, 36.087517, 27.016308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752628, 36.236107, 27.592354>,  <38.910366, 36.575699, 27.093040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752628, 36.236107, 27.592354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127266, 36.128838, 27.502131>,  <39.352047, 36.064476, 27.447996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127266, 36.128838, 27.502131>,  <38.752628, 36.236107, 27.592354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127266, 36.128838, 27.502131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178645, -0.188343, 0.965719,
		-0.301465, -0.944779, -0.128492,
		0.936592, -0.268176, -0.225559,
		39.408245, 36.048386, 27.434464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772057, 35.708168, 27.991590>,  <38.752628, 36.236107, 27.592354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772057, 35.708168, 27.991590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155224, 35.795563, 27.917128>,  <39.385124, 35.848000, 27.872450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155224, 35.795563, 27.917128>,  <38.772057, 35.708168, 27.991590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155224, 35.795563, 27.917128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238260, -0.243553, 0.940167,
		0.160077, -0.944957, -0.285361,
		0.957919, 0.218489, -0.186159,
		39.442600, 35.861111, 27.861280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293266, 35.216900, 28.309013>,  <38.772057, 35.708168, 27.991590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293266, 35.216900, 28.309013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555626, 35.514065, 28.255524>,  <39.713043, 35.692364, 28.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555626, 35.514065, 28.255524>,  <39.293266, 35.216900, 28.309013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555626, 35.514065, 28.255524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383733, -0.175604, 0.906594,
		0.650033, -0.645950, -0.400257,
		0.655901, 0.742908, -0.133724,
		39.752396, 35.736938, 28.215406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995018, 35.007359, 28.543871>,  <39.293266, 35.216900, 28.309013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995018, 35.007359, 28.543871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996826, 35.405895, 28.578018>,  <39.997913, 35.645016, 28.598507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996826, 35.405895, 28.578018>,  <39.995018, 35.007359, 28.543871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996826, 35.405895, 28.578018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540178, -0.074276, 0.838267,
		0.841539, 0.042321, -0.538537,
		0.004524, 0.996339, 0.085367,
		39.998184, 35.704796, 28.603628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602757, 35.244926, 28.737204>,  <39.995018, 35.007359, 28.543871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602757, 35.244926, 28.737204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378242, 35.558834, 28.842354>,  <40.243534, 35.747177, 28.905443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378242, 35.558834, 28.842354>,  <40.602757, 35.244926, 28.737204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378242, 35.558834, 28.842354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433070, 0.007823, 0.901326,
		0.705273, 0.619744, -0.344250,
		-0.561284, 0.784765, 0.262875,
		40.209858, 35.794262, 28.921217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058109, 35.688362, 28.928061>,  <40.602757, 35.244926, 28.737204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058109, 35.688362, 28.928061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714790, 35.787251, 29.107931>,  <40.508801, 35.846584, 29.215853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714790, 35.787251, 29.107931>,  <41.058109, 35.688362, 28.928061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714790, 35.787251, 29.107931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383862, -0.272235, 0.882348,
		0.340553, 0.929930, 0.138759,
		-0.858297, 0.247222, 0.449675,
		40.457302, 35.861416, 29.242834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172119, 36.193043, 29.572849>,  <41.058109, 35.688362, 28.928061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172119, 36.193043, 29.572849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798573, 36.059032, 29.622892>,  <40.574444, 35.978626, 29.652918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798573, 36.059032, 29.622892>,  <41.172119, 36.193043, 29.572849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798573, 36.059032, 29.622892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260857, -0.398817, 0.879146,
		-0.244644, 0.853639, 0.459836,
		-0.933864, -0.335030, 0.125110,
		40.518414, 35.958523, 29.660425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045326, 36.299046, 30.303493>,  <41.172119, 36.193043, 29.572849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045326, 36.299046, 30.303493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771915, 36.034004, 30.181021>,  <40.607868, 35.874981, 30.107536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771915, 36.034004, 30.181021>,  <41.045326, 36.299046, 30.303493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771915, 36.034004, 30.181021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024809, -0.398140, 0.916989,
		-0.729501, 0.634385, 0.255702,
		-0.683529, -0.662601, -0.306182,
		40.566856, 35.835224, 30.089167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540104, 36.226444, 30.846609>,  <41.045326, 36.299046, 30.303493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540104, 36.226444, 30.846609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509640, 35.892658, 30.628304>,  <40.491360, 35.692387, 30.497320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509640, 35.892658, 30.628304>,  <40.540104, 36.226444, 30.846609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509640, 35.892658, 30.628304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186714, -0.525738, 0.829902,
		-0.979458, 0.165110, -0.115765,
		-0.076163, -0.834469, -0.545766,
		40.486790, 35.642319, 30.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874001, 35.931652, 31.084209>,  <40.540104, 36.226444, 30.846609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874001, 35.931652, 31.084209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087826, 35.636116, 30.920084>,  <40.216122, 35.458794, 30.821608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087826, 35.636116, 30.920084>,  <39.874001, 35.931652, 31.084209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087826, 35.636116, 30.920084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171101, -0.570065, 0.803586,
		-0.827629, -0.359360, -0.431151,
		0.534560, -0.738842, -0.410315,
		40.248196, 35.414463, 30.796989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451878, 35.403633, 31.263720>,  <39.874001, 35.931652, 31.084209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451878, 35.403633, 31.263720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778809, 35.202888, 31.150503>,  <39.974968, 35.082443, 31.082573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778809, 35.202888, 31.150503>,  <39.451878, 35.403633, 31.263720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778809, 35.202888, 31.150503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258940, -0.758785, 0.597658,
		-0.514707, -0.415193, -0.750128,
		0.817329, -0.501857, -0.283042,
		40.024006, 35.052330, 31.065590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175144, 34.773823, 31.048161>,  <39.451878, 35.403633, 31.263720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175144, 34.773823, 31.048161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563602, 34.715843, 31.123909>,  <39.796677, 34.681053, 31.169357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563602, 34.715843, 31.123909>,  <39.175144, 34.773823, 31.048161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563602, 34.715843, 31.123909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237779, -0.649336, 0.722374,
		0.018257, -0.746561, -0.665067,
		0.971148, -0.144951, 0.189371,
		39.854946, 34.672359, 31.180719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259892, 34.031528, 31.169142>,  <39.175144, 34.773823, 31.048161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259892, 34.031528, 31.169142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600857, 34.186264, 31.309853>,  <39.805435, 34.279106, 31.394279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600857, 34.186264, 31.309853>,  <39.259892, 34.031528, 31.169142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600857, 34.186264, 31.309853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100609, -0.538861, 0.836365,
		0.513102, -0.748319, -0.420411,
		0.852411, 0.386843, 0.351778,
		39.856579, 34.302319, 31.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592445, 33.429890, 31.438789>,  <39.259892, 34.031528, 31.169142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592445, 33.429890, 31.438789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747181, 33.759689, 31.603983>,  <39.840023, 33.957569, 31.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747181, 33.759689, 31.603983>,  <39.592445, 33.429890, 31.438789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747181, 33.759689, 31.603983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039034, -0.432806, 0.900642,
		0.921321, -0.364523, -0.135242,
		0.386838, 0.824501, 0.412982,
		39.863232, 34.007038, 31.727877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165901, 33.214001, 31.818867>,  <39.592445, 33.429890, 31.438789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165901, 33.214001, 31.818867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056839, 33.565174, 31.976294>,  <39.991402, 33.775879, 32.070751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056839, 33.565174, 31.976294>,  <40.165901, 33.214001, 31.818867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056839, 33.565174, 31.976294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040973, -0.398101, 0.916426,
		0.961239, 0.265995, 0.072573,
		-0.272656, 0.877931, 0.393568,
		39.975040, 33.828552, 32.094364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311821, 33.157082, 32.452400>,  <40.165901, 33.214001, 31.818867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311821, 33.157082, 32.452400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058289, 33.465267, 32.479652>,  <39.906170, 33.650181, 32.496002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058289, 33.465267, 32.479652>,  <40.311821, 33.157082, 32.452400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058289, 33.465267, 32.479652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040851, -0.121307, 0.991774,
		0.772394, 0.625832, 0.108362,
		-0.633829, 0.770467, 0.068131,
		39.868141, 33.696407, 32.500092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495827, 33.349476, 33.124996>,  <40.311821, 33.157082, 32.452400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495827, 33.349476, 33.124996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153000, 33.533230, 33.031700>,  <39.947304, 33.643482, 32.975723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153000, 33.533230, 33.031700>,  <40.495827, 33.349476, 33.124996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153000, 33.533230, 33.031700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305870, -0.089413, 0.947865,
		0.414578, 0.883727, 0.217144,
		-0.857070, 0.459382, -0.233237,
		39.895878, 33.671043, 32.961727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382046, 33.968914, 33.579468>,  <40.495827, 33.349476, 33.124996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382046, 33.968914, 33.579468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043667, 33.817719, 33.429001>,  <39.840641, 33.727001, 33.338718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043667, 33.817719, 33.429001>,  <40.382046, 33.968914, 33.579468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043667, 33.817719, 33.429001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294802, -0.256334, 0.920535,
		-0.444375, 0.889617, 0.105413,
		-0.845945, -0.377987, -0.376170,
		39.789883, 33.704323, 33.316151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882442, 34.090302, 34.082909>,  <40.382046, 33.968914, 33.579468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882442, 34.090302, 34.082909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688519, 33.827950, 33.851467>,  <39.572166, 33.670540, 33.712601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688519, 33.827950, 33.851467>,  <39.882442, 34.090302, 34.082909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688519, 33.827950, 33.851467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299668, -0.496943, 0.814400,
		-0.821682, 0.568217, 0.044375,
		-0.484808, -0.655879, -0.578605,
		39.543076, 33.631187, 33.677887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160961, 34.106499, 34.160053>,  <39.882442, 34.090302, 34.082909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160961, 34.106499, 34.160053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233475, 33.731140, 34.042381>,  <39.276981, 33.505924, 33.971779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233475, 33.731140, 34.042381>,  <39.160961, 34.106499, 34.160053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233475, 33.731140, 34.042381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404948, -0.343832, 0.847229,
		-0.896188, -0.034459, -0.442333,
		0.181283, -0.938399, -0.294184,
		39.287861, 33.449619, 33.954124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566742, 33.731270, 34.191074>,  <39.160961, 34.106499, 34.160053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566742, 33.731270, 34.191074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839207, 33.438774, 34.205593>,  <39.002686, 33.263279, 34.214306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839207, 33.438774, 34.205593>,  <38.566742, 33.731270, 34.191074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839207, 33.438774, 34.205593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559220, -0.487643, 0.670431,
		-0.472544, -0.476966, -0.741084,
		0.681157, -0.731237, 0.036297,
		39.043552, 33.219402, 34.216484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248428, 32.976639, 34.070889>,  <38.566742, 33.731270, 34.191074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248428, 32.976639, 34.070889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589760, 32.932781, 34.274776>,  <38.794559, 32.906467, 34.397110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589760, 32.932781, 34.274776>,  <38.248428, 32.976639, 34.070889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589760, 32.932781, 34.274776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457967, -0.624900, 0.632271,
		0.249198, -0.772967, -0.583457,
		0.853327, -0.109643, 0.509717,
		38.845757, 32.899887, 34.427692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343403, 32.273174, 34.136578>,  <38.248428, 32.976639, 34.070889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343403, 32.273174, 34.136578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561657, 32.435806, 34.429691>,  <38.692608, 32.533386, 34.605560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561657, 32.435806, 34.429691>,  <38.343403, 32.273174, 34.136578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561657, 32.435806, 34.429691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471640, -0.573807, 0.669553,
		0.692704, -0.710943, -0.121330,
		0.545635, 0.406578, 0.732788,
		38.725346, 32.557781, 34.649529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544384, 31.738472, 34.477489>,  <38.343403, 32.273174, 34.136578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544384, 31.738472, 34.477489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546043, 32.044987, 34.734482>,  <38.547039, 32.228897, 34.888680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546043, 32.044987, 34.734482>,  <38.544384, 31.738472, 34.477489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546043, 32.044987, 34.734482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583476, -0.519929, 0.623883,
		0.812120, -0.377461, 0.444955,
		0.004147, 0.766288, 0.642484,
		38.547287, 32.274872, 34.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622658, 31.443281, 35.121414>,  <38.544384, 31.738472, 34.477489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622658, 31.443281, 35.121414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475941, 31.806330, 35.203083>,  <38.387909, 32.024158, 35.252087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475941, 31.806330, 35.203083>,  <38.622658, 31.443281, 35.121414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475941, 31.806330, 35.203083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684967, -0.411990, 0.600903,
		0.629511, 0.080553, 0.772805,
		-0.366792, 0.907621, 0.204176,
		38.365902, 32.078617, 35.264336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896576, 31.409733, 35.813160>,  <38.622658, 31.443281, 35.121414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896576, 31.409733, 35.813160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618965, 31.695482, 35.777393>,  <38.452396, 31.866932, 35.755936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618965, 31.695482, 35.777393>,  <38.896576, 31.409733, 35.813160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618965, 31.695482, 35.777393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327803, -0.202982, 0.922683,
		0.640989, 0.669680, 0.375049,
		-0.694031, 0.714372, -0.089414,
		38.410755, 31.909794, 35.750568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912296, 31.879232, 36.494244>,  <38.896576, 31.409733, 35.813160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912296, 31.879232, 36.494244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553741, 31.930037, 36.324368>,  <38.338608, 31.960520, 36.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553741, 31.930037, 36.324368>,  <38.912296, 31.879232, 36.494244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553741, 31.930037, 36.324368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439965, -0.138079, 0.887336,
		0.054060, 0.982244, 0.179652,
		-0.896387, 0.127010, -0.424688,
		38.284824, 31.968140, 36.196960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493740, 32.127598, 36.992012>,  <38.912296, 31.879232, 36.494244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493740, 32.127598, 36.992012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250362, 31.985407, 36.708202>,  <38.104336, 31.900093, 36.537914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250362, 31.985407, 36.708202>,  <38.493740, 32.127598, 36.992012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250362, 31.985407, 36.708202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662274, -0.265161, 0.700774,
		-0.437247, 0.896285, -0.074086,
		-0.608448, -0.355476, -0.709526,
		38.067829, 31.878763, 36.495346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958569, 32.440941, 37.113281>,  <38.493740, 32.127598, 36.992012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958569, 32.440941, 37.113281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855042, 32.112122, 36.910400>,  <37.792927, 31.914831, 36.788673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855042, 32.112122, 36.910400>,  <37.958569, 32.440941, 37.113281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855042, 32.112122, 36.910400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655845, -0.235946, 0.717075,
		-0.709141, 0.518238, -0.478067,
		-0.258818, -0.822046, -0.507202,
		37.777397, 31.865507, 36.758240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245872, 32.427753, 37.207775>,  <37.958569, 32.440941, 37.113281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245872, 32.427753, 37.207775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351715, 32.059013, 37.094517>,  <37.415222, 31.837769, 37.026562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351715, 32.059013, 37.094517>,  <37.245872, 32.427753, 37.207775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351715, 32.059013, 37.094517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745970, -0.381735, 0.545716,
		-0.611156, 0.066814, -0.788685,
		0.264607, -0.921853, -0.283141,
		37.431099, 31.782457, 37.009575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605286, 31.940788, 37.140442>,  <37.245872, 32.427753, 37.207775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605286, 31.940788, 37.140442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941807, 31.729681, 37.187206>,  <37.143719, 31.603016, 37.215267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941807, 31.729681, 37.187206>,  <36.605286, 31.940788, 37.140442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941807, 31.729681, 37.187206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477183, -0.623463, 0.619347,
		-0.253979, -0.576849, -0.776363,
		0.841303, -0.527768, 0.116916,
		37.194199, 31.571350, 37.222282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291241, 31.315454, 37.203880>,  <36.605286, 31.940788, 37.140442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291241, 31.315454, 37.203880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658768, 31.307745, 37.361565>,  <36.879284, 31.303120, 37.456173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658768, 31.307745, 37.361565>,  <36.291241, 31.315454, 37.203880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658768, 31.307745, 37.361565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331354, -0.580297, 0.743949,
		0.214418, -0.814177, -0.539575,
		0.918820, -0.019274, 0.394207,
		36.934414, 31.301962, 37.479828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354210, 30.602982, 37.355984>,  <36.291241, 31.315454, 37.203880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354210, 30.602982, 37.355984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579727, 30.817322, 37.607380>,  <36.715038, 30.945925, 37.758217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579727, 30.817322, 37.607380>,  <36.354210, 30.602982, 37.355984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579727, 30.817322, 37.607380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399445, -0.489136, 0.775364,
		0.722895, -0.688195, -0.061732,
		0.563797, 0.535848, 0.628490,
		36.748867, 30.978077, 37.795925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479134, 30.183685, 37.979698>,  <36.354210, 30.602982, 37.355984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479134, 30.183685, 37.979698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638580, 30.524851, 38.114544>,  <36.734249, 30.729549, 38.195450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638580, 30.524851, 38.114544>,  <36.479134, 30.183685, 37.979698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638580, 30.524851, 38.114544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300970, -0.225568, 0.926572,
		0.866327, -0.470807, 0.166786,
		0.398616, 0.852913, 0.337114,
		36.758163, 30.780725, 38.215679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715714, 29.977743, 38.632240>,  <36.479134, 30.183685, 37.979698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715714, 29.977743, 38.632240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714508, 30.376026, 38.669239>,  <36.713783, 30.614996, 38.691437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714508, 30.376026, 38.669239>,  <36.715714, 29.977743, 38.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714508, 30.376026, 38.669239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434331, -0.084620, 0.896770,
		0.900748, -0.037473, 0.432722,
		-0.003012, 0.995708, 0.092497,
		36.713604, 30.674738, 38.696987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895988, 30.121183, 39.285381>,  <36.715714, 29.977743, 38.632240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895988, 30.121183, 39.285381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713699, 30.467863, 39.204243>,  <36.604324, 30.675871, 39.155560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713699, 30.467863, 39.204243>,  <36.895988, 30.121183, 39.285381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713699, 30.467863, 39.204243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390297, 0.010245, 0.920632,
		0.799989, 0.498725, 0.333602,
		-0.455725, 0.866699, -0.202847,
		36.576981, 30.727873, 39.143387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884190, 30.534044, 39.942348>,  <36.895988, 30.121183, 39.285381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884190, 30.534044, 39.942348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594345, 30.692102, 39.716499>,  <36.420437, 30.786938, 39.580990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594345, 30.692102, 39.716499>,  <36.884190, 30.534044, 39.942348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594345, 30.692102, 39.716499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594795, 0.055215, 0.801979,
		0.348073, 0.916958, 0.195020,
		-0.724613, 0.395144, -0.564621,
		36.376961, 30.810646, 39.547112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642887, 31.114977, 40.237041>,  <36.884190, 30.534044, 39.942348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642887, 31.114977, 40.237041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332317, 30.997503, 40.014000>,  <36.145977, 30.927019, 39.880177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332317, 30.997503, 40.014000>,  <36.642887, 31.114977, 40.237041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332317, 30.997503, 40.014000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582520, -0.003217, 0.812810,
		-0.240505, 0.955897, -0.168580,
		-0.776420, -0.293686, -0.557602,
		36.099392, 30.909397, 39.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127357, 31.599472, 40.328457>,  <36.642887, 31.114977, 40.237041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127357, 31.599472, 40.328457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956253, 31.251257, 40.231152>,  <35.853588, 31.042328, 40.172768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956253, 31.251257, 40.231152>,  <36.127357, 31.599472, 40.328457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956253, 31.251257, 40.231152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479028, -0.009896, 0.877744,
		-0.766518, 0.491999, -0.412779,
		-0.427764, -0.870540, -0.243267,
		35.827923, 30.990095, 40.158173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293850, 31.660290, 40.312565>,  <36.127357, 31.599472, 40.328457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293850, 31.660290, 40.312565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477962, 31.313078, 40.387047>,  <35.588428, 31.104752, 40.431736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477962, 31.313078, 40.387047>,  <35.293850, 31.660290, 40.312565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477962, 31.313078, 40.387047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308419, 0.040330, 0.950395,
		-0.832480, -0.494874, -0.249153,
		0.460277, -0.868028, 0.186203,
		35.616047, 31.052670, 40.442909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799107, 31.462418, 40.923061>,  <35.293850, 31.660290, 40.312565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799107, 31.462418, 40.923061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780346, 31.112978, 41.116814>,  <34.769089, 30.903315, 41.233067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780346, 31.112978, 41.116814>,  <34.799107, 31.462418, 40.923061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780346, 31.112978, 41.116814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229630, -0.481359, -0.845910,
		0.972147, 0.071552, 0.223182,
		-0.046904, -0.873598, 0.484382,
		34.766273, 30.850899, 41.262127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433239, 31.117151, 41.059708>,  <34.799107, 31.462418, 40.923061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433239, 31.117151, 41.059708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121017, 30.881140, 40.977142>,  <34.933685, 30.739532, 40.927601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121017, 30.881140, 40.977142>,  <35.433239, 31.117151, 41.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121017, 30.881140, 40.977142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389967, -0.201556, -0.898499,
		0.488534, -0.781821, 0.387416,
		-0.780551, -0.590027, -0.206417,
		34.886852, 30.704132, 40.915218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591724, 30.344753, 40.862823>,  <35.433239, 31.117151, 41.059708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591724, 30.344753, 40.862823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287525, 30.532709, 40.683559>,  <35.105007, 30.645483, 40.576000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287525, 30.532709, 40.683559>,  <35.591724, 30.344753, 40.862823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287525, 30.532709, 40.683559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454979, -0.106829, -0.884071,
		-0.463293, -0.876237, -0.132546,
		-0.760496, 0.469890, -0.448162,
		35.059376, 30.673676, 40.549110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337204, 29.950411, 40.352161>,  <35.591724, 30.344753, 40.862823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337204, 29.950411, 40.352161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280956, 30.339706, 40.279465>,  <35.247208, 30.573284, 40.235847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280956, 30.339706, 40.279465>,  <35.337204, 29.950411, 40.352161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280956, 30.339706, 40.279465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485755, -0.092133, -0.869226,
		-0.862709, -0.210516, -0.459800,
		-0.140623, 0.973239, -0.181743,
		35.238770, 30.631678, 40.224941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239037, 30.084467, 39.608109>,  <35.337204, 29.950411, 40.352161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239037, 30.084467, 39.608109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360317, 30.433830, 39.760544>,  <35.433086, 30.643448, 39.852005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360317, 30.433830, 39.760544>,  <35.239037, 30.084467, 39.608109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360317, 30.433830, 39.760544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528727, 0.178522, -0.829806,
		-0.792791, 0.453091, -0.407666,
		0.303200, 0.873406, 0.381092,
		35.451279, 30.695852, 39.874870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183666, 30.646597, 39.035107>,  <35.239037, 30.084467, 39.608109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183666, 30.646597, 39.035107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470066, 30.744663, 39.296562>,  <35.641907, 30.803503, 39.453434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470066, 30.744663, 39.296562>,  <35.183666, 30.646597, 39.035107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470066, 30.744663, 39.296562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665136, 0.044754, -0.745380,
		-0.211993, 0.968448, -0.131023,
		0.715998, 0.245164, 0.653637,
		35.684864, 30.818213, 39.492653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418087, 31.192318, 38.808987>,  <35.183666, 30.646597, 39.035107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418087, 31.192318, 38.808987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723812, 31.062181, 39.031689>,  <35.907249, 30.984100, 39.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723812, 31.062181, 39.031689>,  <35.418087, 31.192318, 38.808987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723812, 31.062181, 39.031689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628526, 0.182876, -0.755984,
		0.144135, 0.927745, 0.344259,
		0.764317, -0.325339, 0.556753,
		35.953106, 30.964581, 39.198715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854851, 31.686884, 38.605759>,  <35.418087, 31.192318, 38.808987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854851, 31.686884, 38.605759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069351, 31.399761, 38.783379>,  <36.198051, 31.227488, 38.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069351, 31.399761, 38.783379>,  <35.854851, 31.686884, 38.605759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069351, 31.399761, 38.783379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732751, 0.134785, -0.667015,
		0.418936, 0.683071, 0.598253,
		0.536254, -0.717807, 0.444055,
		36.230228, 31.184420, 38.916595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514011, 31.929453, 38.685516>,  <35.854851, 31.686884, 38.605759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514011, 31.929453, 38.685516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562599, 31.532804, 38.667919>,  <36.591751, 31.294815, 38.657360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562599, 31.532804, 38.667919>,  <36.514011, 31.929453, 38.685516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562599, 31.532804, 38.667919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719656, 0.118501, -0.684143,
		0.683624, 0.051442, 0.728020,
		0.121465, -0.991620, -0.043990,
		36.599037, 31.235319, 38.654720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181843, 31.937403, 38.568790>,  <36.514011, 31.929453, 38.685516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181843, 31.937403, 38.568790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062195, 31.568796, 38.469727>,  <36.990406, 31.347631, 38.410286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062195, 31.568796, 38.469727>,  <37.181843, 31.937403, 38.568790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062195, 31.568796, 38.469727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649190, -0.006305, -0.760600,
		0.699344, -0.388287, 0.600125,
		-0.299115, -0.921517, -0.247662,
		36.972462, 31.292341, 38.395428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764324, 31.488533, 38.480431>,  <37.181843, 31.937403, 38.568790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764324, 31.488533, 38.480431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456322, 31.347073, 38.268005>,  <37.271523, 31.262197, 38.140549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456322, 31.347073, 38.268005>,  <37.764324, 31.488533, 38.480431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456322, 31.347073, 38.268005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542988, 0.073867, -0.836485,
		0.335052, -0.932456, 0.135150,
		-0.770003, -0.353650, -0.531062,
		37.225319, 31.240978, 38.108688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078655, 30.985266, 38.001194>,  <37.764324, 31.488533, 38.480431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078655, 30.985266, 38.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732769, 31.110588, 37.844170>,  <37.525238, 31.185781, 37.749954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732769, 31.110588, 37.844170>,  <38.078655, 30.985266, 38.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732769, 31.110588, 37.844170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439004, 0.091745, -0.893789,
		-0.244012, -0.945211, -0.216875,
		-0.864716, 0.313304, -0.392564,
		37.473354, 31.204578, 37.726398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093349, 30.742723, 37.450172>,  <38.078655, 30.985266, 38.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093349, 30.742723, 37.450172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804626, 31.012224, 37.386860>,  <37.631393, 31.173925, 37.348873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804626, 31.012224, 37.386860>,  <38.093349, 30.742723, 37.450172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804626, 31.012224, 37.386860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326863, 0.130275, -0.936050,
		-0.610047, -0.727381, -0.314258,
		-0.721805, 0.673754, -0.158279,
		37.588085, 31.214350, 37.339375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851810, 30.604502, 36.810719>,  <38.093349, 30.742723, 37.450172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851810, 30.604502, 36.810719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730820, 30.982489, 36.860596>,  <37.658226, 31.209280, 36.890522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730820, 30.982489, 36.860596>,  <37.851810, 30.604502, 36.810719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730820, 30.982489, 36.860596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318788, 0.223580, -0.921079,
		-0.898267, -0.238852, -0.368870,
		-0.302473, 0.944967, 0.124691,
		37.640079, 31.265978, 36.898003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558685, 30.694048, 36.218685>,  <37.851810, 30.604502, 36.810719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558685, 30.694048, 36.218685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634689, 31.048460, 36.387848>,  <37.680290, 31.261106, 36.489346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634689, 31.048460, 36.387848>,  <37.558685, 30.694048, 36.218685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634689, 31.048460, 36.387848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456268, 0.301721, -0.837128,
		-0.869320, 0.352020, -0.346937,
		0.190007, 0.886029, 0.422907,
		37.691692, 31.314268, 36.514721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346268, 31.162283, 35.751347>,  <37.558685, 30.694048, 36.218685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346268, 31.162283, 35.751347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623314, 31.346334, 35.973537>,  <37.789543, 31.456766, 36.106853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623314, 31.346334, 35.973537>,  <37.346268, 31.162283, 35.751347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623314, 31.346334, 35.973537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410412, 0.381900, -0.828079,
		-0.593163, 0.801519, 0.075667,
		0.692618, 0.460131, 0.555481,
		37.831100, 31.484373, 36.140182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024639, 31.726927, 36.260796>,  <37.346268, 31.162283, 35.751347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024639, 31.726927, 36.260796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023926, 31.359270, 36.418365>,  <37.023499, 31.138676, 36.512909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023926, 31.359270, 36.418365>,  <37.024639, 31.726927, 36.260796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023926, 31.359270, 36.418365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064426, -0.393215, -0.917187,
		0.997921, 0.023743, 0.059918,
		-0.001784, -0.919140, 0.393927,
		37.023392, 31.083529, 36.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145073, 32.195827, 35.645821>,  <37.024639, 31.726927, 36.260796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145073, 32.195827, 35.645821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505417, 32.120895, 35.802467>,  <37.721622, 32.075935, 35.896454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505417, 32.120895, 35.802467>,  <37.145073, 32.195827, 35.645821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505417, 32.120895, 35.802467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425199, 0.562620, -0.708988,
		-0.087517, 0.805213, 0.586492,
		0.900859, -0.187327, 0.391615,
		37.775673, 32.064697, 35.919952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459694, 32.806065, 35.580765>,  <37.145073, 32.195827, 35.645821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459694, 32.806065, 35.580765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750271, 32.541180, 35.654255>,  <37.924618, 32.382248, 35.698349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750271, 32.541180, 35.654255>,  <37.459694, 32.806065, 35.580765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750271, 32.541180, 35.654255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625348, 0.526100, -0.576332,
		0.285000, 0.533561, 0.796296,
		0.726440, -0.662217, 0.183723,
		37.968204, 32.342514, 35.709373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973457, 33.267502, 35.606075>,  <37.459694, 32.806065, 35.580765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973457, 33.267502, 35.606075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140617, 32.909306, 35.544819>,  <38.240913, 32.694386, 35.508064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140617, 32.909306, 35.544819>,  <37.973457, 33.267502, 35.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140617, 32.909306, 35.544819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740916, 0.433487, -0.512965,
		0.525740, 0.100905, 0.844640,
		0.417901, -0.895493, -0.153139,
		38.265987, 32.640659, 35.498878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664200, 33.294861, 35.717861>,  <37.973457, 33.267502, 35.606075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664200, 33.294861, 35.717861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631031, 32.975155, 35.479771>,  <38.611130, 32.783329, 35.336918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631031, 32.975155, 35.479771>,  <38.664200, 33.294861, 35.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631031, 32.975155, 35.479771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697342, 0.380154, -0.607616,
		0.711926, -0.465461, 0.525840,
		-0.082921, -0.799268, -0.595227,
		38.606155, 32.735374, 35.301201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373302, 33.209213, 35.498589>,  <38.664200, 33.294861, 35.717861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373302, 33.209213, 35.498589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161663, 32.973995, 35.253883>,  <39.034679, 32.832863, 35.107059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161663, 32.973995, 35.253883>,  <39.373302, 33.209213, 35.498589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161663, 32.973995, 35.253883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598192, 0.252858, -0.760414,
		0.601846, -0.768289, 0.217976,
		-0.529100, -0.588044, -0.611766,
		39.002934, 32.797581, 35.070354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939217, 32.892689, 35.033894>,  <39.373302, 33.209213, 35.498589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939217, 32.892689, 35.033894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583019, 32.865601, 34.853924>,  <39.369301, 32.849346, 34.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583019, 32.865601, 34.853924>,  <39.939217, 32.892689, 35.033894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583019, 32.865601, 34.853924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424383, 0.232965, -0.875001,
		0.164070, -0.970125, -0.178716,
		-0.890495, -0.067717, -0.449927,
		39.315872, 32.845284, 34.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028622, 32.427197, 34.441429>,  <39.939217, 32.892689, 35.033894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028622, 32.427197, 34.441429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710693, 32.657867, 34.365841>,  <39.519936, 32.796268, 34.320488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710693, 32.657867, 34.365841>,  <40.028622, 32.427197, 34.441429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710693, 32.657867, 34.365841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468612, 0.385390, -0.794907,
		-0.385577, -0.720360, -0.576552,
		-0.794816, 0.576677, -0.188971,
		39.472248, 32.830872, 34.309151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718601, 32.266571, 33.816727>,  <40.028622, 32.427197, 34.441429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718601, 32.266571, 33.816727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589256, 32.644444, 33.838684>,  <39.511650, 32.871166, 33.851860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589256, 32.644444, 33.838684>,  <39.718601, 32.266571, 33.816727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589256, 32.644444, 33.838684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326108, 0.165705, -0.930696,
		-0.888308, -0.283051, -0.361651,
		-0.323362, 0.944682, 0.054892,
		39.492249, 32.927849, 33.855152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725384, 31.615597, 33.413219>,  <39.718601, 32.266571, 33.816727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725384, 31.615597, 33.413219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681881, 31.353165, 33.114494>,  <39.655777, 31.195705, 32.935261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681881, 31.353165, 33.114494>,  <39.725384, 31.615597, 33.413219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681881, 31.353165, 33.114494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930691, 0.196753, -0.308388,
		0.349265, -0.728592, 0.589209,
		-0.108760, -0.656081, -0.746813,
		39.649254, 31.156340, 32.890450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211868, 30.955627, 33.412315>,  <39.725384, 31.615597, 33.413219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211868, 30.955627, 33.412315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093452, 31.079666, 33.050941>,  <40.022404, 31.154089, 32.834118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093452, 31.079666, 33.050941>,  <40.211868, 30.955627, 33.412315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093452, 31.079666, 33.050941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912181, 0.372361, -0.171095,
		0.283350, -0.874750, -0.393097,
		-0.296039, 0.310096, -0.903439,
		40.004642, 31.172695, 32.779911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760117, 31.389952, 33.528946>,  <40.211868, 30.955627, 33.412315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760117, 31.389952, 33.528946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528625, 31.607822, 33.286163>,  <40.389729, 31.738544, 33.140491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528625, 31.607822, 33.286163>,  <40.760117, 31.389952, 33.528946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528625, 31.607822, 33.286163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647431, 0.759418, 0.064169,
		0.495887, -0.355827, -0.792138,
		-0.578731, 0.544675, -0.606959,
		40.355007, 31.771225, 33.104076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135128, 31.735004, 32.860226>,  <40.760117, 31.389952, 33.528946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135128, 31.735004, 32.860226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818321, 31.949848, 32.976307>,  <40.628239, 32.078754, 33.045956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818321, 31.949848, 32.976307>,  <41.135128, 31.735004, 32.860226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818321, 31.949848, 32.976307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590241, 0.795127, 0.139242,
		-0.155964, 0.281574, -0.946779,
		-0.792017, 0.537112, 0.290208,
		40.580715, 32.110981, 33.063370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370037, 32.372299, 32.594570>,  <41.135128, 31.735004, 32.860226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370037, 32.372299, 32.594570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085899, 32.492023, 32.849384>,  <40.915417, 32.563858, 33.002274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085899, 32.492023, 32.849384>,  <41.370037, 32.372299, 32.594570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085899, 32.492023, 32.849384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533846, 0.818965, 0.210488,
		-0.458712, 0.489601, -0.741535,
		-0.710347, 0.299312, 0.637040,
		40.872795, 32.581818, 33.040497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080566, 33.039536, 32.294422>,  <41.370037, 32.372299, 32.594570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080566, 33.039536, 32.294422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120796, 32.930080, 32.677048>,  <41.144936, 32.864407, 32.906624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120796, 32.930080, 32.677048>,  <41.080566, 33.039536, 32.294422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120796, 32.930080, 32.677048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741052, 0.662126, 0.111493,
		-0.663872, 0.697647, 0.269376,
		0.100578, -0.273639, 0.956559,
		41.150970, 32.847988, 32.964016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008354, 33.616890, 32.551033>,  <41.080566, 33.039536, 32.294422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008354, 33.616890, 32.551033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243431, 33.410164, 32.800037>,  <41.384476, 33.286129, 32.949440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243431, 33.410164, 32.800037>,  <41.008354, 33.616890, 32.551033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243431, 33.410164, 32.800037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661977, 0.749519, -0.002685,
		-0.465197, 0.413667, 0.782605,
		0.587689, -0.516817, 0.622513,
		41.419739, 33.255119, 32.986790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348797, 34.147251, 33.024570>,  <41.008354, 33.616890, 32.551033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348797, 34.147251, 33.024570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562725, 33.811241, 32.988060>,  <41.691082, 33.609634, 32.966152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562725, 33.811241, 32.988060>,  <41.348797, 34.147251, 33.024570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562725, 33.811241, 32.988060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838215, 0.541069, -0.068111,
		0.106602, -0.040084, 0.993493,
		0.534819, -0.840022, -0.091278,
		41.723171, 33.559235, 32.960678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029388, 34.290417, 33.309837>,  <41.348797, 34.147251, 33.024570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029388, 34.290417, 33.309837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061119, 33.996456, 33.040428>,  <42.080158, 33.820080, 32.878784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061119, 33.996456, 33.040428>,  <42.029388, 34.290417, 33.309837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061119, 33.996456, 33.040428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667604, 0.540917, -0.511580,
		0.740279, -0.409063, 0.533530,
		0.079327, -0.734898, -0.673522,
		42.084919, 33.775986, 32.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970432, 33.925102, 33.976627>,  <42.029388, 34.290417, 33.309837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970432, 33.925102, 33.976627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273880, 34.092236, 33.776661>,  <42.455948, 34.192516, 33.656681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273880, 34.092236, 33.776661>,  <41.970432, 33.925102, 33.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273880, 34.092236, 33.776661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588224, -0.109299, 0.801278,
		0.280159, -0.901926, -0.328695,
		0.758619, 0.417832, -0.499913,
		42.501465, 34.217587, 33.626686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648952, 33.670155, 34.268761>,  <41.970432, 33.925102, 33.976627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648952, 33.670155, 34.268761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750332, 34.016163, 34.095558>,  <42.811161, 34.223770, 33.991638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750332, 34.016163, 34.095558>,  <42.648952, 33.670155, 34.268761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750332, 34.016163, 34.095558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647475, 0.180872, 0.740312,
		0.718707, -0.467992, -0.514240,
		0.253449, 0.865025, -0.433007,
		42.826366, 34.275669, 33.965656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392944, 33.631351, 34.229671>,  <42.648952, 33.670155, 34.268761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392944, 33.631351, 34.229671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242241, 33.999367, 34.272713>,  <43.151817, 34.220177, 34.298538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242241, 33.999367, 34.272713>,  <43.392944, 33.631351, 34.229671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242241, 33.999367, 34.272713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568239, 0.137816, 0.811241,
		0.731544, 0.366790, -0.574725,
		-0.376761, 0.920039, 0.107606,
		43.129211, 34.275379, 34.304993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885445, 34.071659, 34.300110>,  <43.392944, 33.631351, 34.229671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885445, 34.071659, 34.300110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586487, 34.275093, 34.471104>,  <43.407112, 34.397156, 34.573700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586487, 34.275093, 34.471104>,  <43.885445, 34.071659, 34.300110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586487, 34.275093, 34.471104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579218, 0.183623, 0.794222,
		0.325437, 0.841202, -0.431822,
		-0.747393, 0.508589, 0.427482,
		43.362270, 34.427670, 34.599350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094456, 34.804249, 34.614010>,  <43.885445, 34.071659, 34.300110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094456, 34.804249, 34.614010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782970, 34.648628, 34.810883>,  <43.596081, 34.555256, 34.929005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782970, 34.648628, 34.810883>,  <44.094456, 34.804249, 34.614010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782970, 34.648628, 34.810883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431071, 0.238192, 0.870312,
		-0.455833, 0.889888, -0.017772,
		-0.778713, -0.389056, 0.492180,
		43.549358, 34.531910, 34.958538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886215, 34.636635, 34.616428>,  <44.094456, 34.804249, 34.614010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886215, 34.636635, 34.616428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021736, 34.770138, 34.264561>,  <45.103050, 34.850239, 34.053440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021736, 34.770138, 34.264561>,  <44.886215, 34.636635, 34.616428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021736, 34.770138, 34.264561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893576, -0.406812, 0.189806,
		-0.294510, -0.850358, -0.436068,
		0.338801, 0.333760, -0.879669,
		45.123375, 34.870266, 34.000660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472515, 34.202904, 34.636719>,  <44.886215, 34.636635, 34.616428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472515, 34.202904, 34.636719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568100, 34.501766, 34.388638>,  <45.625450, 34.681084, 34.239788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568100, 34.501766, 34.388638>,  <45.472515, 34.202904, 34.636719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568100, 34.501766, 34.388638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950379, -0.048941, 0.307221,
		0.199190, -0.662840, -0.721780,
		0.238963, 0.747160, -0.620201,
		45.639790, 34.725914, 34.202576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958591, 34.110889, 34.126209>,  <45.472515, 34.202904, 34.636719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958591, 34.110889, 34.126209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987900, 34.495174, 34.233284>,  <46.005486, 34.725746, 34.297531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987900, 34.495174, 34.233284>,  <45.958591, 34.110889, 34.126209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987900, 34.495174, 34.233284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937147, -0.158137, 0.311043,
		0.341155, 0.228076, -0.911918,
		0.073267, 0.960715, 0.267690,
		46.009880, 34.783390, 34.313591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592903, 34.348042, 33.759331>,  <45.958591, 34.110889, 34.126209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592903, 34.348042, 33.759331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495335, 34.563686, 34.081787>,  <46.436794, 34.693073, 34.275261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495335, 34.563686, 34.081787>,  <46.592903, 34.348042, 33.759331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495335, 34.563686, 34.081787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962277, 0.031240, 0.270273,
		0.120525, 0.841652, -0.526398,
		-0.243920, 0.539116, 0.806137,
		46.422157, 34.725422, 34.323627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166302, 34.918056, 33.850227>,  <46.592903, 34.348042, 33.759331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166302, 34.918056, 33.850227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005543, 34.855659, 34.211147>,  <46.909088, 34.818222, 34.427700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005543, 34.855659, 34.211147>,  <47.166302, 34.918056, 33.850227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005543, 34.855659, 34.211147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895213, 0.140251, 0.422993,
		-0.192532, 0.977750, 0.083281,
		-0.401901, -0.155993, 0.902298,
		46.884972, 34.808861, 34.481838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.750347, 35.040497, 34.195133>,  <47.166302, 34.918056, 33.850227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.750347, 35.040497, 34.195133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501999, 34.999836, 34.506050>,  <47.352989, 34.975437, 34.692600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501999, 34.999836, 34.506050>,  <47.750347, 35.040497, 34.195133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501999, 34.999836, 34.506050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783849, -0.092934, 0.613957,
		0.009825, 0.990469, 0.137383,
		-0.620873, -0.101655, 0.777292,
		47.315739, 34.969341, 34.739239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.684010, 35.538136, 34.718575>,  <47.750347, 35.040497, 34.195133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.684010, 35.538136, 34.718575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691235, 35.154564, 34.831799>,  <47.695572, 34.924419, 34.899734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691235, 35.154564, 34.831799>,  <47.684010, 35.538136, 34.718575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691235, 35.154564, 34.831799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891388, 0.143682, 0.429864,
		-0.452882, 0.244551, 0.857376,
		0.018066, -0.958932, 0.283060,
		47.696655, 34.866886, 34.916718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.865730, 35.161442, 25.687855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872440, 35.530590, 25.841749>,  <33.876465, 35.752079, 25.934086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872440, 35.530590, 25.841749>,  <33.865730, 35.161442, 25.687855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872440, 35.530590, 25.841749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038169, -0.383920, 0.922577,
		0.999131, -0.030160, 0.028785,
		0.016774, 0.922874, 0.384738,
		33.877472, 35.807453, 25.957170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407406, 35.187901, 26.259457>,  <33.865730, 35.161442, 25.687855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407406, 35.187901, 26.259457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113075, 35.453995, 26.310081>,  <33.936478, 35.613651, 26.340456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113075, 35.453995, 26.310081>,  <34.407406, 35.187901, 26.259457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113075, 35.453995, 26.310081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136415, -0.328683, 0.934536,
		0.663287, 0.670392, 0.332603,
		-0.735827, 0.665238, 0.126560,
		33.892326, 35.653564, 26.348049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576958, 35.743252, 26.868429>,  <34.407406, 35.187901, 26.259457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576958, 35.743252, 26.868429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.179760, 35.709545, 26.835318>,  <33.941441, 35.689320, 26.815451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.179760, 35.709545, 26.835318>,  <34.576958, 35.743252, 26.868429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179760, 35.709545, 26.835318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076026, -0.080423, 0.993857,
		-0.090408, 0.993192, 0.073454,
		-0.992999, -0.084268, -0.082780,
		33.881859, 35.684265, 26.810484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291389, 36.043079, 27.485176>,  <34.576958, 35.743252, 26.868429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291389, 36.043079, 27.485176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984695, 35.836971, 27.332010>,  <33.800678, 35.713306, 27.240110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984695, 35.836971, 27.332010>,  <34.291389, 36.043079, 27.485176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984695, 35.836971, 27.332010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391064, -0.098142, 0.915116,
		-0.509110, 0.851391, -0.126254,
		-0.766731, -0.515268, -0.382914,
		33.754677, 35.682392, 27.217136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556522, 36.366009, 27.639263>,  <34.291389, 36.043079, 27.485176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556522, 36.366009, 27.639263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486084, 35.982758, 27.548950>,  <33.443821, 35.752808, 27.494762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486084, 35.982758, 27.548950>,  <33.556522, 36.366009, 27.639263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486084, 35.982758, 27.548950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448972, -0.125942, 0.884626,
		-0.876022, 0.257148, -0.407996,
		-0.176096, -0.958130, -0.225780,
		33.433254, 35.695320, 27.481216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883362, 36.215580, 27.992432>,  <33.556522, 36.366009, 27.639263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883362, 36.215580, 27.992432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.039951, 35.858437, 27.903395>,  <33.133904, 35.644150, 27.849974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.039951, 35.858437, 27.903395>,  <32.883362, 36.215580, 27.992432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039951, 35.858437, 27.903395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139646, -0.296741, 0.944693,
		-0.909531, -0.338739, -0.240851,
		0.391474, -0.892861, -0.222591,
		33.157394, 35.590580, 27.836617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534447, 35.712112, 28.498901>,  <32.883362, 36.215580, 27.992432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534447, 35.712112, 28.498901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.847389, 35.508465, 28.355392>,  <33.035156, 35.386276, 28.269287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.847389, 35.508465, 28.355392>,  <32.534447, 35.712112, 28.498901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847389, 35.508465, 28.355392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186170, -0.358538, 0.914763,
		-0.594357, -0.782462, -0.185721,
		0.782355, -0.509121, -0.358771,
		33.082096, 35.355728, 28.247761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463249, 34.929138, 28.735180>,  <32.534447, 35.712112, 28.498901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463249, 34.929138, 28.735180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849022, 35.002094, 28.658644>,  <33.080486, 35.045868, 28.612722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849022, 35.002094, 28.658644>,  <32.463249, 34.929138, 28.735180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849022, 35.002094, 28.658644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234091, -0.253046, 0.938706,
		0.122794, -0.950106, -0.286741,
		0.964428, 0.182391, -0.191339,
		33.138351, 35.056812, 28.601242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892658, 34.439423, 29.154499>,  <32.463249, 34.929138, 28.735180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892658, 34.439423, 29.154499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.168324, 34.717735, 29.073563>,  <33.333721, 34.884724, 29.025002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.168324, 34.717735, 29.073563>,  <32.892658, 34.439423, 29.154499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168324, 34.717735, 29.073563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503216, -0.258643, 0.824547,
		0.521370, -0.670069, -0.528376,
		0.689164, 0.695781, -0.202341,
		33.375072, 34.926468, 29.012861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505573, 34.075996, 29.117565>,  <32.892658, 34.439423, 29.154499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505573, 34.075996, 29.117565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568443, 34.459831, 29.210936>,  <33.606167, 34.690132, 29.266958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568443, 34.459831, 29.210936>,  <33.505573, 34.075996, 29.117565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568443, 34.459831, 29.210936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593932, -0.280693, 0.753960,
		0.789012, 0.020134, -0.614048,
		0.157178, 0.959586, 0.233428,
		33.615597, 34.747707, 29.280964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187027, 34.213676, 29.085995>,  <33.505573, 34.075996, 29.117565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187027, 34.213676, 29.085995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032597, 34.498577, 29.320478>,  <33.939938, 34.669518, 29.461168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032597, 34.498577, 29.320478>,  <34.187027, 34.213676, 29.085995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032597, 34.498577, 29.320478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702251, -0.185130, 0.687438,
		0.598153, 0.677071, -0.428704,
		-0.386078, 0.712251, 0.586210,
		33.916775, 34.712254, 29.496342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680840, 34.615665, 29.323980>,  <34.187027, 34.213676, 29.085995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680840, 34.615665, 29.323980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386608, 34.658516, 29.591547>,  <34.210072, 34.684227, 29.752087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386608, 34.658516, 29.591547>,  <34.680840, 34.615665, 29.323980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386608, 34.658516, 29.591547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654129, -0.144495, 0.742453,
		0.176193, 0.983689, 0.036211,
		-0.735576, 0.107128, 0.668918,
		34.165936, 34.690655, 29.792223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975777, 35.081944, 29.906395>,  <34.680840, 34.615665, 29.323980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975777, 35.081944, 29.906395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665474, 34.891155, 30.071653>,  <34.479290, 34.776680, 30.170809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665474, 34.891155, 30.071653>,  <34.975777, 35.081944, 29.906395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665474, 34.891155, 30.071653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566696, -0.238593, 0.788625,
		-0.277579, 0.845914, 0.455390,
		-0.775761, -0.476973, 0.413147,
		34.432747, 34.748062, 30.195597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020344, 35.244186, 30.704239>,  <34.975777, 35.081944, 29.906395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020344, 35.244186, 30.704239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768524, 34.933533, 30.713198>,  <34.617432, 34.747139, 30.718573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768524, 34.933533, 30.713198>,  <35.020344, 35.244186, 30.704239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768524, 34.933533, 30.713198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378381, -0.281285, 0.881877,
		-0.678598, 0.563661, 0.470948,
		-0.629550, -0.776637, 0.022399,
		34.579659, 34.700542, 30.719917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749073, 35.265728, 31.329277>,  <35.020344, 35.244186, 30.704239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749073, 35.265728, 31.329277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726402, 34.881760, 31.219490>,  <34.712799, 34.651379, 31.153618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726402, 34.881760, 31.219490>,  <34.749073, 35.265728, 31.329277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726402, 34.881760, 31.219490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390741, -0.274308, 0.878679,
		-0.918754, -0.057443, 0.390629,
		-0.056679, -0.959925, -0.274467,
		34.709400, 34.593781, 31.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531258, 34.875362, 31.921698>,  <34.749073, 35.265728, 31.329277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531258, 34.875362, 31.921698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.668385, 34.564159, 31.711107>,  <34.750660, 34.377438, 31.584753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.668385, 34.564159, 31.711107>,  <34.531258, 34.875362, 31.921698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668385, 34.564159, 31.711107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239295, -0.469626, 0.849818,
		-0.908411, -0.417319, 0.025176,
		0.342822, -0.778008, -0.526476,
		34.771233, 34.330757, 31.553165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253326, 34.241413, 32.371891>,  <34.531258, 34.875362, 31.921698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253326, 34.241413, 32.371891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544189, 34.097759, 32.137878>,  <34.718708, 34.011566, 31.997471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544189, 34.097759, 32.137878>,  <34.253326, 34.241413, 32.371891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544189, 34.097759, 32.137878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184518, -0.718620, 0.670476,
		-0.661208, -0.595491, -0.456283,
		0.727157, -0.359132, -0.585036,
		34.762337, 33.990021, 31.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235958, 33.419983, 32.350246>,  <34.253326, 34.241413, 32.371891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235958, 33.419983, 32.350246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.603024, 33.510826, 32.219818>,  <34.823261, 33.565331, 32.141560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.603024, 33.510826, 32.219818>,  <34.235958, 33.419983, 32.350246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603024, 33.510826, 32.219818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384715, -0.713189, 0.585966,
		-0.099475, -0.663162, -0.741836,
		0.917660, 0.227106, -0.326072,
		34.878323, 33.578957, 32.121998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577625, 32.750759, 32.194736>,  <34.235958, 33.419983, 32.350246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577625, 32.750759, 32.194736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.865932, 33.022152, 32.251514>,  <35.038918, 33.184986, 32.285580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.865932, 33.022152, 32.251514>,  <34.577625, 32.750759, 32.194736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865932, 33.022152, 32.251514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410098, -0.582485, 0.701806,
		0.558844, -0.447630, -0.698083,
		0.720772, 0.678483, 0.141946,
		35.082165, 33.225697, 32.294098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190453, 32.392952, 32.119034>,  <34.577625, 32.750759, 32.194736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190453, 32.392952, 32.119034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277599, 32.734100, 32.308834>,  <35.329887, 32.938789, 32.422714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277599, 32.734100, 32.308834>,  <35.190453, 32.392952, 32.119034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277599, 32.734100, 32.308834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475794, -0.517305, 0.711348,
		0.852148, 0.070789, -0.518491,
		0.217862, 0.852869, 0.474501,
		35.342957, 32.989960, 32.451183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816933, 32.272736, 32.278641>,  <35.190453, 32.392952, 32.119034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816933, 32.272736, 32.278641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707169, 32.570744, 32.521832>,  <35.641312, 32.749550, 32.667747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707169, 32.570744, 32.521832>,  <35.816933, 32.272736, 32.278641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707169, 32.570744, 32.521832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504644, -0.426621, 0.750552,
		0.818556, 0.512772, -0.258903,
		-0.274408, 0.745023, 0.607980,
		35.624847, 32.794250, 32.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345062, 32.351376, 32.756935>,  <35.816933, 32.272736, 32.278641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345062, 32.351376, 32.756935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050339, 32.525158, 32.964149>,  <35.873505, 32.629429, 33.088478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050339, 32.525158, 32.964149>,  <36.345062, 32.351376, 32.756935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050339, 32.525158, 32.964149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358230, -0.398951, 0.844103,
		0.573397, 0.807517, 0.138315,
		-0.736809, 0.434457, 0.518034,
		35.829296, 32.655495, 33.119560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094025, 32.706894, 32.756821>,  <36.345062, 32.351376, 32.756935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094025, 32.706894, 32.756821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449898, 32.530258, 32.710403>,  <37.663422, 32.424278, 32.682552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449898, 32.530258, 32.710403>,  <37.094025, 32.706894, 32.756821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449898, 32.530258, 32.710403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020369, 0.215514, -0.976288,
		0.456124, 0.870951, 0.182745,
		0.889683, -0.441586, -0.116041,
		37.716805, 32.397781, 32.675591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650139, 33.144020, 32.640594>,  <37.094025, 32.706894, 32.756821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650139, 33.144020, 32.640594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749237, 32.799477, 32.463200>,  <37.808697, 32.592751, 32.356762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749237, 32.799477, 32.463200>,  <37.650139, 33.144020, 32.640594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749237, 32.799477, 32.463200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106520, 0.430768, -0.896154,
		0.962951, 0.269259, 0.014970,
		0.247747, -0.861358, -0.443490,
		37.823563, 32.541069, 32.330154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294907, 33.229721, 32.170704>,  <37.650139, 33.144020, 32.640594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294907, 33.229721, 32.170704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082218, 32.914349, 32.046997>,  <37.954605, 32.725124, 31.972773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082218, 32.914349, 32.046997>,  <38.294907, 33.229721, 32.170704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082218, 32.914349, 32.046997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018445, 0.354300, -0.934950,
		0.846721, -0.502833, -0.173845,
		-0.531717, -0.788435, -0.309268,
		37.922703, 32.677818, 31.954216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555866, 33.151756, 31.463100>,  <38.294907, 33.229721, 32.170704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555866, 33.151756, 31.463100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224735, 32.931400, 31.505486>,  <38.026058, 32.799187, 31.530916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224735, 32.931400, 31.505486>,  <38.555866, 33.151756, 31.463100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224735, 32.931400, 31.505486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186783, 0.092560, -0.978031,
		0.528977, -0.829431, -0.179520,
		-0.827825, -0.550888, 0.105962,
		37.976387, 32.766132, 31.537273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593102, 32.584110, 30.965136>,  <38.555866, 33.151756, 31.463100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593102, 32.584110, 30.965136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200039, 32.614338, 31.032869>,  <37.964203, 32.632473, 31.073509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200039, 32.614338, 31.032869>,  <38.593102, 32.584110, 30.965136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200039, 32.614338, 31.032869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172577, -0.038623, -0.984239,
		-0.067836, -0.996392, 0.050994,
		-0.982657, 0.075567, 0.169335,
		37.905243, 32.637009, 31.083670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285316, 32.198910, 30.470953>,  <38.593102, 32.584110, 30.965136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285316, 32.198910, 30.470953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958843, 32.386951, 30.605326>,  <37.762959, 32.499779, 30.685949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958843, 32.386951, 30.605326>,  <38.285316, 32.198910, 30.470953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958843, 32.386951, 30.605326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395246, -0.030162, -0.918080,
		-0.421464, -0.882093, 0.210426,
		-0.816179, 0.470108, 0.335932,
		37.713989, 32.527985, 30.706104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699986, 31.837877, 30.263943>,  <38.285316, 32.198910, 30.470953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699986, 31.837877, 30.263943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587864, 32.216606, 30.327139>,  <37.520592, 32.443844, 30.365057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587864, 32.216606, 30.327139>,  <37.699986, 31.837877, 30.263943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587864, 32.216606, 30.327139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592650, -0.041222, -0.804404,
		-0.755114, -0.319109, 0.572688,
		-0.280300, 0.946821, 0.157993,
		37.503773, 32.500652, 30.374537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933441, 31.985191, 29.943016>,  <37.699986, 31.837877, 30.263943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933441, 31.985191, 29.943016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049614, 32.363609, 30.000488>,  <37.119320, 32.590660, 30.034971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049614, 32.363609, 30.000488>,  <36.933441, 31.985191, 29.943016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049614, 32.363609, 30.000488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640397, 0.303739, -0.705432,
		-0.711012, 0.112871, 0.694062,
		0.290436, 0.946046, 0.143680,
		37.136745, 32.647423, 30.043592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347687, 32.333942, 30.108738>,  <36.933441, 31.985191, 29.943016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347687, 32.333942, 30.108738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597000, 32.627003, 29.999388>,  <36.746590, 32.802841, 29.933777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597000, 32.627003, 29.999388>,  <36.347687, 32.333942, 30.108738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597000, 32.627003, 29.999388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656966, 0.300974, -0.691238,
		-0.424159, 0.610436, 0.668922,
		0.623285, 0.732654, -0.273375,
		36.783985, 32.846798, 29.917376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904144, 32.788265, 29.987307>,  <36.347687, 32.333942, 30.108738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904144, 32.788265, 29.987307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.232189, 32.899052, 29.787025>,  <36.429016, 32.965523, 29.666857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.232189, 32.899052, 29.787025>,  <35.904144, 32.788265, 29.987307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232189, 32.899052, 29.787025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567137, 0.277301, -0.775538,
		-0.075956, 0.919995, 0.384498,
		0.820113, 0.276970, -0.500701,
		36.478222, 32.982143, 29.636816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812210, 33.425991, 29.780361>,  <35.904144, 32.788265, 29.987307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812210, 33.425991, 29.780361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095451, 33.320271, 29.518448>,  <36.265396, 33.256840, 29.361300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095451, 33.320271, 29.518448>,  <35.812210, 33.425991, 29.780361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095451, 33.320271, 29.518448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564847, 0.344436, -0.749874,
		0.423724, 0.900837, 0.094605,
		0.708100, -0.264302, -0.654782,
		36.307880, 33.240978, 29.322014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749519, 33.966450, 29.281534>,  <35.812210, 33.425991, 29.780361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749519, 33.966450, 29.281534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955841, 33.662647, 29.122993>,  <36.079636, 33.480366, 29.027868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955841, 33.662647, 29.122993>,  <35.749519, 33.966450, 29.281534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955841, 33.662647, 29.122993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331112, 0.249958, -0.909882,
		0.790133, 0.600559, -0.122552,
		0.515805, -0.759506, -0.396352,
		36.110584, 33.434795, 29.004087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175068, 34.258778, 28.747911>,  <35.749519, 33.966450, 29.281534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175068, 34.258778, 28.747911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112946, 33.871269, 28.670603>,  <36.075672, 33.638763, 28.624218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112946, 33.871269, 28.670603>,  <36.175068, 34.258778, 28.747911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112946, 33.871269, 28.670603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021176, 0.192336, -0.981101,
		0.987639, -0.156466, -0.009356,
		-0.155308, -0.968775, -0.193272,
		36.066353, 33.580635, 28.612621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616695, 34.060360, 28.196106>,  <36.175068, 34.258778, 28.747911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616695, 34.060360, 28.196106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326450, 33.785225, 28.203743>,  <36.152302, 33.620144, 28.208324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326450, 33.785225, 28.203743>,  <36.616695, 34.060360, 28.196106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326450, 33.785225, 28.203743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045436, 0.020211, -0.998763,
		0.686598, -0.725586, -0.045918,
		-0.725617, -0.687834, 0.019091,
		36.108765, 33.578876, 28.209471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798859, 33.689137, 27.626078>,  <36.616695, 34.060360, 28.196106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798859, 33.689137, 27.626078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417610, 33.601257, 27.709297>,  <36.188862, 33.548531, 27.759230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417610, 33.601257, 27.709297>,  <36.798859, 33.689137, 27.626078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417610, 33.601257, 27.709297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247098, 0.168332, -0.954257,
		0.174621, -0.960937, -0.214727,
		-0.953126, -0.219693, 0.208052,
		36.131672, 33.535347, 27.771713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554111, 33.139542, 27.181181>,  <36.798859, 33.689137, 27.626078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554111, 33.139542, 27.181181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212662, 33.322598, 27.280693>,  <36.007793, 33.432430, 27.340401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212662, 33.322598, 27.280693>,  <36.554111, 33.139542, 27.181181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212662, 33.322598, 27.280693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242074, 0.074365, -0.967404,
		-0.461226, -0.886021, 0.047304,
		-0.853622, 0.457643, 0.248781,
		35.956573, 33.459888, 27.355328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046757, 32.857601, 26.756596>,  <36.554111, 33.139542, 27.181181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046757, 32.857601, 26.756596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895336, 33.199451, 26.898754>,  <35.804485, 33.404564, 26.984049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895336, 33.199451, 26.898754>,  <36.046757, 32.857601, 26.756596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895336, 33.199451, 26.898754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216162, 0.291723, -0.931757,
		-0.899985, -0.429541, 0.074306,
		-0.378551, 0.854630, 0.355397,
		35.781773, 33.455841, 27.005373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397266, 32.850929, 26.439184>,  <36.046757, 32.857601, 26.756596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397266, 32.850929, 26.439184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507519, 33.221806, 26.540653>,  <35.573669, 33.444332, 26.601536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507519, 33.221806, 26.540653>,  <35.397266, 32.850929, 26.439184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507519, 33.221806, 26.540653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027220, 0.271319, -0.962104,
		-0.960877, 0.258283, 0.100023,
		0.275633, 0.927187, 0.253674,
		35.590210, 33.499962, 26.616756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.659622, 33.596439, 26.203630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969921, 33.836624, 26.281246>,  <35.156101, 33.980736, 26.327816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969921, 33.836624, 26.281246>,  <34.659622, 33.596439, 26.203630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969921, 33.836624, 26.281246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089190, 0.200070, -0.975714,
		-0.624704, 0.774217, 0.101650,
		0.775752, 0.600466, 0.194037,
		35.202648, 34.016766, 26.339457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606167, 34.124126, 25.780464>,  <34.659622, 33.596439, 26.203630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606167, 34.124126, 25.780464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998131, 34.172230, 25.844099>,  <35.233311, 34.201092, 25.882280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998131, 34.172230, 25.844099>,  <34.606167, 34.124126, 25.780464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998131, 34.172230, 25.844099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097494, 0.407020, -0.908202,
		-0.173970, 0.905468, 0.387119,
		0.979913, 0.120258, 0.159087,
		35.292107, 34.208305, 25.891825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843147, 34.870945, 25.666504>,  <34.606167, 34.124126, 25.780464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843147, 34.870945, 25.666504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150032, 34.620720, 25.609867>,  <35.334164, 34.470585, 25.575886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150032, 34.620720, 25.609867>,  <34.843147, 34.870945, 25.666504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150032, 34.620720, 25.609867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119986, 0.356844, -0.926426,
		0.630068, 0.693778, 0.348835,
		0.767214, -0.625567, -0.141593,
		35.380196, 34.433048, 25.567389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311958, 35.320835, 25.456768>,  <34.843147, 34.870945, 25.666504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311958, 35.320835, 25.456768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439590, 34.959454, 25.342255>,  <35.516171, 34.742626, 25.273546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439590, 34.959454, 25.342255>,  <35.311958, 35.320835, 25.456768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439590, 34.959454, 25.342255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239095, 0.369044, -0.898131,
		0.917071, 0.218130, 0.333767,
		0.319084, -0.903452, -0.286286,
		35.535316, 34.688419, 25.256369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858772, 35.561184, 25.064121>,  <35.311958, 35.320835, 25.456768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858772, 35.561184, 25.064121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795532, 35.178654, 24.965778>,  <35.757587, 34.949135, 24.906773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795532, 35.178654, 24.965778>,  <35.858772, 35.561184, 25.064121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795532, 35.178654, 24.965778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094157, 0.233253, -0.967847,
		0.982923, -0.176170, 0.053166,
		-0.158105, -0.956325, -0.245857,
		35.748100, 34.891758, 24.892021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401600, 35.433155, 24.617907>,  <35.858772, 35.561184, 25.064121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401600, 35.433155, 24.617907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109837, 35.165844, 24.559437>,  <35.934780, 35.005455, 24.524355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109837, 35.165844, 24.559437>,  <36.401600, 35.433155, 24.617907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109837, 35.165844, 24.559437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024831, 0.187678, -0.981917,
		0.683631, -0.719844, -0.120299,
		-0.729405, -0.668282, -0.146177,
		35.891014, 34.965359, 24.515583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540565, 34.956249, 24.037317>,  <36.401600, 35.433155, 24.617907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540565, 34.956249, 24.037317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.142685, 34.930790, 24.069593>,  <35.903957, 34.915512, 24.088959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.142685, 34.930790, 24.069593>,  <36.540565, 34.956249, 24.037317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142685, 34.930790, 24.069593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080067, -0.012265, -0.996714,
		0.064433, -0.997897, 0.007104,
		-0.994705, -0.063653, 0.080689,
		35.844273, 34.911694, 24.093800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305595, 34.562340, 23.373312>,  <36.540565, 34.956249, 24.037317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305595, 34.562340, 23.373312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978069, 34.741123, 23.517403>,  <35.781551, 34.848392, 23.603857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978069, 34.741123, 23.517403>,  <36.305595, 34.562340, 23.373312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978069, 34.741123, 23.517403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271701, 0.251028, -0.929066,
		-0.505683, -0.858610, -0.084106,
		-0.818818, 0.446961, 0.360226,
		35.732426, 34.875210, 23.625471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765301, 34.334541, 22.993637>,  <36.305595, 34.562340, 23.373312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765301, 34.334541, 22.993637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641148, 34.686062, 23.138617>,  <35.566654, 34.896973, 23.225603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641148, 34.686062, 23.138617>,  <35.765301, 34.334541, 22.993637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641148, 34.686062, 23.138617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316318, 0.264072, -0.911158,
		-0.896440, -0.397458, 0.196017,
		-0.310385, 0.878802, 0.362447,
		35.548031, 34.949703, 23.247351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165710, 34.364399, 22.673012>,  <35.765301, 34.334541, 22.993637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165710, 34.364399, 22.673012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233147, 34.742039, 22.786325>,  <35.273609, 34.968624, 22.854313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233147, 34.742039, 22.786325>,  <35.165710, 34.364399, 22.673012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233147, 34.742039, 22.786325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296383, 0.322652, -0.898917,
		-0.940071, 0.067590, 0.334212,
		0.168592, 0.944101, 0.283283,
		35.283726, 35.025269, 22.871311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578445, 34.732361, 22.420170>,  <35.165710, 34.364399, 22.673012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578445, 34.732361, 22.420170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865742, 35.004162, 22.480038>,  <35.038120, 35.167244, 22.515959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865742, 35.004162, 22.480038>,  <34.578445, 34.732361, 22.420170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865742, 35.004162, 22.480038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293649, 0.491039, -0.820153,
		-0.630794, 0.545116, 0.552220,
		0.718240, 0.679507, 0.149672,
		35.081215, 35.208015, 22.524939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366413, 35.380230, 22.195723>,  <34.578445, 34.732361, 22.420170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366413, 35.380230, 22.195723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753284, 35.480732, 22.210844>,  <34.985409, 35.541035, 22.219917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753284, 35.480732, 22.210844>,  <34.366413, 35.380230, 22.195723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753284, 35.480732, 22.210844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115645, 0.567778, -0.815018,
		-0.226243, 0.783899, 0.578201,
		0.967182, 0.251258, 0.037802,
		35.043438, 35.556110, 22.222185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372505, 36.079937, 21.985451>,  <34.366413, 35.380230, 22.195723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372505, 36.079937, 21.985451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.729713, 35.925846, 21.892408>,  <34.944038, 35.833389, 21.836582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.729713, 35.925846, 21.892408>,  <34.372505, 36.079937, 21.985451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729713, 35.925846, 21.892408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000780, 0.515566, -0.856850,
		0.450008, 0.765369, 0.460112,
		0.893024, -0.385231, -0.232606,
		34.997620, 35.810276, 21.822626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746147, 36.691212, 21.707535>,  <34.372505, 36.079937, 21.985451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746147, 36.691212, 21.707535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936256, 36.358818, 21.591890>,  <35.050323, 36.159382, 21.522503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936256, 36.358818, 21.591890>,  <34.746147, 36.691212, 21.707535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936256, 36.358818, 21.591890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015596, 0.336503, -0.941554,
		0.879700, 0.442986, 0.172891,
		0.475273, -0.830981, -0.289112,
		35.078838, 36.109524, 21.505157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212730, 36.976929, 21.321781>,  <34.746147, 36.691212, 21.707535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212730, 36.976929, 21.321781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197056, 36.603493, 21.179298>,  <35.187653, 36.379433, 21.093809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197056, 36.603493, 21.179298>,  <35.212730, 36.976929, 21.321781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197056, 36.603493, 21.179298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137280, 0.348069, -0.927363,
		0.989757, -0.085236, 0.114525,
		-0.039182, -0.933586, -0.356205,
		35.185303, 36.323418, 21.072437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709660, 37.012600, 20.842379>,  <35.212730, 36.976929, 21.321781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709660, 37.012600, 20.842379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529018, 36.674389, 20.728447>,  <35.420631, 36.471462, 20.660088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529018, 36.674389, 20.728447>,  <35.709660, 37.012600, 20.842379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529018, 36.674389, 20.728447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101291, 0.268588, -0.957915,
		0.886450, -0.461450, -0.035651,
		-0.451605, -0.845532, -0.284830,
		35.393536, 36.420731, 20.642998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083656, 36.831413, 20.203993>,  <35.709660, 37.012600, 20.842379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083656, 36.831413, 20.203993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778904, 36.572601, 20.192072>,  <35.596054, 36.417313, 20.184919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778904, 36.572601, 20.192072>,  <36.083656, 36.831413, 20.203993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778904, 36.572601, 20.192072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009377, 0.034987, -0.999344,
		0.647649, -0.761661, -0.020589,
		-0.761882, -0.647031, -0.029802,
		35.550339, 36.378490, 20.183132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287796, 36.318050, 19.706291>,  <36.083656, 36.831413, 20.203993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287796, 36.318050, 19.706291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.889126, 36.333076, 19.735233>,  <35.649925, 36.342091, 19.752598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.889126, 36.333076, 19.735233>,  <36.287796, 36.318050, 19.706291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889126, 36.333076, 19.735233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059465, 0.272133, -0.960421,
		-0.055767, -0.961526, -0.268993,
		-0.996671, 0.037564, 0.072354,
		35.590126, 36.344345, 19.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004555, 35.952515, 19.070148>,  <36.287796, 36.318050, 19.706291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004555, 35.952515, 19.070148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730957, 36.203594, 19.218819>,  <35.566799, 36.354240, 19.308022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730957, 36.203594, 19.218819>,  <36.004555, 35.952515, 19.070148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730957, 36.203594, 19.218819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103231, 0.421091, -0.901124,
		-0.722144, -0.654734, -0.223227,
		-0.683996, 0.627698, 0.371677,
		35.525757, 36.391903, 19.330322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412163, 35.949974, 18.616405>,  <36.004555, 35.952515, 19.070148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412163, 35.949974, 18.616405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392506, 36.292255, 18.822460>,  <35.380711, 36.497623, 18.946093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392506, 36.292255, 18.822460>,  <35.412163, 35.949974, 18.616405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392506, 36.292255, 18.822460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082964, 0.510479, -0.855879,
		-0.995340, -0.084796, 0.045907,
		-0.049141, 0.855699, 0.515135,
		35.377762, 36.548965, 18.977001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869724, 36.334148, 18.245602>,  <35.412163, 35.949974, 18.616405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869724, 36.334148, 18.245602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067474, 36.608883, 18.458714>,  <35.186123, 36.773724, 18.586580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067474, 36.608883, 18.458714>,  <34.869724, 36.334148, 18.245602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067474, 36.608883, 18.458714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289193, 0.707962, -0.644327,
		-0.819733, 0.164463, 0.548625,
		0.494374, 0.686835, 0.532778,
		35.215786, 36.814934, 18.618547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463551, 36.878696, 18.216782>,  <34.869724, 36.334148, 18.245602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463551, 36.878696, 18.216782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808994, 37.050877, 18.321764>,  <35.016262, 37.154186, 18.384752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808994, 37.050877, 18.321764>,  <34.463551, 36.878696, 18.216782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808994, 37.050877, 18.321764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256022, 0.822915, -0.507212,
		-0.434308, 0.370841, 0.820886,
		0.863614, 0.430451, 0.262455,
		35.068077, 37.180012, 18.400501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297924, 37.577732, 18.484152>,  <34.463551, 36.878696, 18.216782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297924, 37.577732, 18.484152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674938, 37.584160, 18.350664>,  <34.901146, 37.588017, 18.270571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674938, 37.584160, 18.350664>,  <34.297924, 37.577732, 18.484152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674938, 37.584160, 18.350664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255925, 0.676830, -0.690220,
		0.214779, 0.735964, 0.642050,
		0.942535, 0.016072, -0.333720,
		34.957699, 37.588982, 18.250547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538857, 38.263317, 18.395967>,  <34.297924, 37.577732, 18.484152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538857, 38.263317, 18.395967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780437, 38.060497, 18.149996>,  <34.925388, 37.938805, 18.002413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780437, 38.060497, 18.149996>,  <34.538857, 38.263317, 18.395967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780437, 38.060497, 18.149996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304358, 0.566340, -0.765914,
		0.736617, 0.649736, 0.187719,
		0.603955, -0.507051, -0.614928,
		34.961624, 37.908382, 17.965517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002663, 38.756786, 18.817017>,  <34.538857, 38.263317, 18.395967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002663, 38.756786, 18.817017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.851772, 39.111992, 18.922195>,  <33.761238, 39.325115, 18.985302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.851772, 39.111992, 18.922195>,  <34.002663, 38.756786, 18.817017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851772, 39.111992, 18.922195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456062, -0.068994, 0.887269,
		0.806046, 0.454617, -0.378962,
		-0.377222, 0.888011, 0.262946,
		33.738605, 39.378395, 19.001080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434803, 39.036869, 19.274317>,  <34.002663, 38.756786, 18.817017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434803, 39.036869, 19.274317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113354, 39.249508, 19.381344>,  <33.920483, 39.377090, 19.445560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113354, 39.249508, 19.381344>,  <34.434803, 39.036869, 19.274317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113354, 39.249508, 19.381344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242371, -0.118283, 0.962946,
		0.543544, 0.838700, -0.033788,
		-0.803627, 0.531593, 0.267568,
		33.872265, 39.408985, 19.461615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659496, 39.437717, 19.788439>,  <34.434803, 39.036869, 19.274317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659496, 39.437717, 19.788439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264980, 39.457874, 19.851297>,  <34.028271, 39.469971, 19.889013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264980, 39.457874, 19.851297>,  <34.659496, 39.437717, 19.788439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264980, 39.457874, 19.851297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152289, -0.088957, 0.984325,
		0.063584, 0.994760, 0.080062,
		-0.986289, 0.050395, 0.157147,
		33.969093, 39.472992, 19.898441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529434, 39.959309, 20.376795>,  <34.659496, 39.437717, 19.788439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529434, 39.959309, 20.376795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222427, 39.707073, 20.330708>,  <34.038223, 39.555733, 20.303055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222427, 39.707073, 20.330708>,  <34.529434, 39.959309, 20.376795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222427, 39.707073, 20.330708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096530, -0.291389, 0.951722,
		-0.633719, 0.719340, 0.284517,
		-0.767517, -0.630589, -0.115220,
		33.992172, 39.517895, 20.296141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158405, 39.951275, 20.975304>,  <34.529434, 39.959309, 20.376795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158405, 39.951275, 20.975304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036163, 39.607735, 20.810871>,  <33.962818, 39.401611, 20.712212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036163, 39.607735, 20.810871>,  <34.158405, 39.951275, 20.975304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036163, 39.607735, 20.810871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134516, -0.466351, 0.874312,
		-0.942610, 0.211894, 0.258046,
		-0.305602, -0.858847, -0.411084,
		33.944481, 39.350082, 20.687546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613400, 39.737343, 21.445644>,  <34.158405, 39.951275, 20.975304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613400, 39.737343, 21.445644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702469, 39.397816, 21.253839>,  <33.755909, 39.194099, 21.138758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702469, 39.397816, 21.253839>,  <33.613400, 39.737343, 21.445644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702469, 39.397816, 21.253839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163624, -0.452343, 0.876706,
		-0.961065, -0.273675, 0.038163,
		0.222670, -0.848816, -0.479511,
		33.769268, 39.143169, 21.109985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185303, 39.103161, 21.623196>,  <33.613400, 39.737343, 21.445644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185303, 39.103161, 21.623196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503502, 38.938011, 21.445787>,  <33.694424, 38.838921, 21.339342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503502, 38.938011, 21.445787>,  <33.185303, 39.103161, 21.623196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503502, 38.938011, 21.445787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105357, -0.626551, 0.772227,
		-0.596719, -0.661037, -0.454924,
		0.795504, -0.412874, -0.443520,
		33.742153, 38.814148, 21.312731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073074, 38.450882, 21.708040>,  <33.185303, 39.103161, 21.623196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073074, 38.450882, 21.708040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463703, 38.446037, 21.622093>,  <33.698078, 38.443130, 21.570524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463703, 38.446037, 21.622093>,  <33.073074, 38.450882, 21.708040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463703, 38.446037, 21.622093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147869, -0.687647, 0.710827,
		-0.156364, -0.725944, -0.669743,
		0.976568, -0.012113, -0.214867,
		33.756672, 38.442402, 21.557632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278961, 37.777493, 21.734652>,  <33.073074, 38.450882, 21.708040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278961, 37.777493, 21.734652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.612164, 37.990589, 21.794369>,  <33.812084, 38.118446, 21.830198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.612164, 37.990589, 21.794369>,  <33.278961, 37.777493, 21.734652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612164, 37.990589, 21.794369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259975, -0.615095, 0.744359,
		0.488380, -0.581243, -0.650878,
		0.833006, 0.532742, 0.149291,
		33.862064, 38.150414, 21.839155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938072, 37.347462, 21.802122>,  <33.278961, 37.777493, 21.734652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938072, 37.347462, 21.802122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000965, 37.683205, 22.010258>,  <34.038700, 37.884651, 22.135139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000965, 37.683205, 22.010258>,  <33.938072, 37.347462, 21.802122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000965, 37.683205, 22.010258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200848, -0.543056, 0.815322,
		0.966923, -0.023683, -0.253968,
		0.157228, 0.839362, 0.520337,
		34.048134, 37.935013, 22.166359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569271, 37.280773, 22.171883>,  <33.938072, 37.347462, 21.802122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569271, 37.280773, 22.171883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391552, 37.580605, 22.368141>,  <34.284920, 37.760502, 22.485895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391552, 37.580605, 22.368141>,  <34.569271, 37.280773, 22.171883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391552, 37.580605, 22.368141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177952, -0.462915, 0.868356,
		0.878026, 0.473123, 0.072285,
		-0.444301, 0.749576, 0.490645,
		34.258263, 37.805477, 22.515335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917496, 37.225811, 22.727844>,  <34.569271, 37.280773, 22.171883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917496, 37.225811, 22.727844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632832, 37.470356, 22.866282>,  <34.462032, 37.617085, 22.949345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632832, 37.470356, 22.866282>,  <34.917496, 37.225811, 22.727844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632832, 37.470356, 22.866282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072313, -0.426279, 0.901697,
		0.698796, 0.666726, 0.259155,
		-0.711657, 0.611361, 0.346095,
		34.419334, 37.653763, 22.970110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106308, 37.278111, 23.447535>,  <34.917496, 37.225811, 22.727844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106308, 37.278111, 23.447535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726807, 37.401539, 23.420280>,  <34.499104, 37.475597, 23.403927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726807, 37.401539, 23.420280>,  <35.106308, 37.278111, 23.447535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726807, 37.401539, 23.420280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160630, -0.285237, 0.944901,
		0.272136, 0.907426, 0.320186,
		-0.948757, 0.308573, -0.068136,
		34.442181, 37.494110, 23.399839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974789, 37.808582, 23.987463>,  <35.106308, 37.278111, 23.447535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974789, 37.808582, 23.987463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630535, 37.632027, 23.885883>,  <34.423985, 37.526093, 23.824936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630535, 37.632027, 23.885883>,  <34.974789, 37.808582, 23.987463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630535, 37.632027, 23.885883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158266, -0.242147, 0.957244,
		-0.484008, 0.864027, 0.138543,
		-0.860633, -0.441387, -0.253947,
		34.372345, 37.499611, 23.809700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522030, 38.057575, 24.479387>,  <34.974789, 37.808582, 23.987463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522030, 38.057575, 24.479387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359997, 37.727684, 24.321541>,  <34.262775, 37.529747, 24.226833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359997, 37.727684, 24.321541>,  <34.522030, 38.057575, 24.479387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359997, 37.727684, 24.321541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249596, -0.315463, 0.915524,
		-0.879549, 0.469361, -0.078060,
		-0.405087, -0.824732, -0.394616,
		34.238472, 37.480263, 24.203156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959824, 37.866127, 24.991827>,  <34.522030, 38.057575, 24.479387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959824, 37.866127, 24.991827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004818, 37.539215, 24.765762>,  <34.031815, 37.343067, 24.630123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004818, 37.539215, 24.765762>,  <33.959824, 37.866127, 24.991827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004818, 37.539215, 24.765762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178362, -0.576139, 0.797653,
		-0.977514, 0.011080, -0.210578,
		0.112484, -0.817277, -0.565160,
		34.038563, 37.294033, 24.596214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330948, 37.510529, 25.029518>,  <33.959824, 37.866127, 24.991827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330948, 37.510529, 25.029518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.591633, 37.225033, 24.926880>,  <33.748043, 37.053734, 24.865297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.591633, 37.225033, 24.926880>,  <33.330948, 37.510529, 25.029518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591633, 37.225033, 24.926880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411213, -0.616777, 0.671186,
		-0.637321, -0.331900, -0.695460,
		0.651710, -0.713743, -0.256604,
		33.787148, 37.010910, 24.849901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999477, 36.781696, 24.801891>,  <33.330948, 37.510529, 25.029518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999477, 36.781696, 24.801891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379017, 36.734268, 24.918938>,  <33.606739, 36.705811, 24.989164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379017, 36.734268, 24.918938>,  <32.999477, 36.781696, 24.801891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379017, 36.734268, 24.918938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298846, -0.636290, 0.711214,
		0.101856, -0.762282, -0.639180,
		0.948850, -0.118575, 0.292615,
		33.663673, 36.698696, 25.006721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987400, 36.071739, 24.923096>,  <32.999477, 36.781696, 24.801891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987400, 36.071739, 24.923096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332054, 36.186581, 25.090504>,  <33.538845, 36.255486, 25.190948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332054, 36.186581, 25.090504>,  <32.987400, 36.071739, 24.923096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332054, 36.186581, 25.090504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169024, -0.615222, 0.770021,
		0.478555, -0.734217, -0.481570,
		0.861636, 0.287101, 0.418518,
		33.590546, 36.272709, 25.216059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298302, 35.463543, 25.224520>,  <32.987400, 36.071739, 24.923096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298302, 35.463543, 25.224520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442616, 35.786701, 25.410912>,  <33.529202, 35.980598, 25.522747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442616, 35.786701, 25.410912>,  <33.298302, 35.463543, 25.224520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442616, 35.786701, 25.410912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330666, -0.356370, 0.873877,
		0.872065, -0.469361, 0.138573,
		0.360781, 0.807899, 0.465979,
		33.550850, 36.029072, 25.550705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.641018, 32.428032, 28.358982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.496845, 32.744331, 28.556894>,  <36.410343, 32.934113, 28.675642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.496845, 32.744331, 28.556894>,  <36.641018, 32.428032, 28.358982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496845, 32.744331, 28.556894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644186, -0.172613, 0.745137,
		0.674621, 0.587301, -0.447174,
		-0.360431, 0.790748, 0.494779,
		36.388718, 32.981556, 28.705328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177628, 32.662254, 28.581156>,  <36.641018, 32.428032, 28.358982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177628, 32.662254, 28.581156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.909222, 32.852768, 28.808453>,  <36.748177, 32.967075, 28.944830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.909222, 32.852768, 28.808453>,  <37.177628, 32.662254, 28.581156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909222, 32.852768, 28.808453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665873, 0.050010, 0.744387,
		0.326118, 0.877871, -0.350699,
		-0.671014, 0.476279, 0.568242,
		36.707916, 32.995651, 28.978926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510014, 33.344353, 28.870075>,  <37.177628, 32.662254, 28.581156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510014, 33.344353, 28.870075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.212940, 33.211018, 29.102388>,  <37.034695, 33.131016, 29.241776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.212940, 33.211018, 29.102388>,  <37.510014, 33.344353, 28.870075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212940, 33.211018, 29.102388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599687, 0.054871, 0.798351,
		-0.297988, 0.941210, 0.159146,
		-0.742683, -0.333336, 0.580783,
		36.990135, 33.111015, 29.276623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480511, 33.806267, 29.441963>,  <37.510014, 33.344353, 28.870075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480511, 33.806267, 29.441963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302814, 33.470921, 29.568323>,  <37.196198, 33.269711, 29.644138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302814, 33.470921, 29.568323>,  <37.480511, 33.806267, 29.441963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302814, 33.470921, 29.568323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602615, -0.018699, 0.797813,
		-0.662954, 0.544782, 0.513521,
		-0.444237, -0.838369, 0.315898,
		37.169544, 33.219410, 29.663092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570660, 33.858070, 30.134497>,  <37.480511, 33.806267, 29.441963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570660, 33.858070, 30.134497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414818, 33.490345, 30.112335>,  <37.321312, 33.269711, 30.099039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414818, 33.490345, 30.112335>,  <37.570660, 33.858070, 30.134497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414818, 33.490345, 30.112335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342893, -0.200622, 0.917701,
		-0.854771, 0.338543, 0.393390,
		-0.389604, -0.919315, -0.055402,
		37.297935, 33.214550, 30.095715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139900, 33.751415, 30.688692>,  <37.570660, 33.858070, 30.134497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139900, 33.751415, 30.688692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234787, 33.376171, 30.587755>,  <37.291721, 33.151024, 30.527193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234787, 33.376171, 30.587755>,  <37.139900, 33.751415, 30.688692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234787, 33.376171, 30.587755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171149, -0.215335, 0.961425,
		-0.956261, -0.271258, 0.109475,
		0.237220, -0.938110, -0.252342,
		37.305954, 33.094738, 30.512053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778503, 33.308723, 30.967533>,  <37.139900, 33.751415, 30.688692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778503, 33.308723, 30.967533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.063267, 33.039894, 30.886044>,  <37.234123, 32.878597, 30.837149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.063267, 33.039894, 30.886044>,  <36.778503, 33.308723, 30.967533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063267, 33.039894, 30.886044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058738, -0.232094, 0.970918,
		-0.699816, -0.703167, -0.125752,
		0.711904, -0.672077, -0.203726,
		37.276836, 32.838272, 30.824926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665588, 32.787491, 31.419640>,  <36.778503, 33.308723, 30.967533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665588, 32.787491, 31.419640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049355, 32.744450, 31.315371>,  <37.279613, 32.718624, 31.252810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049355, 32.744450, 31.315371>,  <36.665588, 32.787491, 31.419640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049355, 32.744450, 31.315371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178376, -0.484383, 0.856478,
		-0.218425, -0.868214, -0.445529,
		0.959413, -0.107604, -0.260670,
		37.337177, 32.712170, 31.237169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837994, 32.091835, 31.599012>,  <36.665588, 32.787491, 31.419640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837994, 32.091835, 31.599012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187672, 32.284744, 31.576385>,  <37.397480, 32.400490, 31.562809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187672, 32.284744, 31.576385>,  <36.837994, 32.091835, 31.599012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187672, 32.284744, 31.576385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362498, -0.570662, 0.736845,
		0.323078, -0.664651, -0.673692,
		0.874195, 0.482270, -0.056567,
		37.449928, 32.429424, 31.559416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358570, 31.533865, 31.647705>,  <36.837994, 32.091835, 31.599012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358570, 31.533865, 31.647705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522110, 31.887411, 31.738586>,  <37.620235, 32.099537, 31.793116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522110, 31.887411, 31.738586>,  <37.358570, 31.533865, 31.647705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522110, 31.887411, 31.738586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476350, -0.419045, 0.772976,
		0.778415, -0.207806, -0.592357,
		0.408854, 0.883865, 0.227203,
		37.644768, 32.152569, 31.806747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107555, 31.419844, 31.686104>,  <37.358570, 31.533865, 31.647705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107555, 31.419844, 31.686104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.991119, 31.737185, 31.899969>,  <37.921257, 31.927589, 32.028290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.991119, 31.737185, 31.899969>,  <38.107555, 31.419844, 31.686104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991119, 31.737185, 31.899969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378775, -0.417626, 0.825905,
		0.878520, 0.442927, -0.178935,
		-0.291088, 0.793350, 0.534662,
		37.903793, 31.975189, 32.060368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690796, 31.501738, 32.122829>,  <38.107555, 31.419844, 31.686104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690796, 31.501738, 32.122829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359207, 31.663721, 32.277130>,  <38.160252, 31.760912, 32.369713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359207, 31.663721, 32.277130>,  <38.690796, 31.501738, 32.122829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359207, 31.663721, 32.277130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287187, -0.283639, 0.914917,
		0.479918, 0.869228, 0.118832,
		-0.828977, 0.404958, 0.385755,
		38.110516, 31.785208, 32.392857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794350, 32.021927, 32.616634>,  <38.690796, 31.501738, 32.122829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794350, 32.021927, 32.616634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444782, 31.859465, 32.723450>,  <38.235043, 31.761988, 32.787540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444782, 31.859465, 32.723450>,  <38.794350, 32.021927, 32.616634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444782, 31.859465, 32.723450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408553, -0.316103, 0.856250,
		-0.263356, 0.857391, 0.442182,
		-0.873915, -0.406153, 0.267042,
		38.182606, 31.737619, 32.803562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757706, 32.035103, 33.232502>,  <38.794350, 32.021927, 32.616634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757706, 32.035103, 33.232502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.490379, 31.745367, 33.164768>,  <38.329983, 31.571526, 33.124126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.490379, 31.745367, 33.164768>,  <38.757706, 32.035103, 33.232502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490379, 31.745367, 33.164768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405807, -0.545802, 0.733090,
		-0.623433, 0.421221, 0.658714,
		-0.668320, -0.724343, -0.169337,
		38.289883, 31.528065, 33.113968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827793, 32.717857, 33.094631>,  <38.757706, 32.035103, 33.232502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827793, 32.717857, 33.094631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016514, 33.033447, 33.252068>,  <39.129745, 33.222801, 33.346531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016514, 33.033447, 33.252068>,  <38.827793, 32.717857, 33.094631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016514, 33.033447, 33.252068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106635, 0.392061, -0.913738,
		-0.875232, 0.473075, 0.100843,
		0.471803, 0.788979, 0.393591,
		39.158054, 33.270142, 33.370144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587124, 33.346706, 32.818047>,  <38.827793, 32.717857, 33.094631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587124, 33.346706, 32.818047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932178, 33.475269, 32.974285>,  <39.139210, 33.552406, 33.068027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932178, 33.475269, 32.974285>,  <38.587124, 33.346706, 32.818047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932178, 33.475269, 32.974285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116043, 0.625836, -0.771273,
		-0.492342, 0.710651, 0.502569,
		0.862632, 0.321410, 0.390592,
		39.190968, 33.571693, 33.091461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696339, 34.109985, 32.616867>,  <38.587124, 33.346706, 32.818047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696339, 34.109985, 32.616867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.061474, 33.985813, 32.722961>,  <39.280556, 33.911308, 32.786617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.061474, 33.985813, 32.722961>,  <38.696339, 34.109985, 32.616867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061474, 33.985813, 32.722961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407378, 0.648464, -0.643069,
		0.027631, 0.695073, 0.718408,
		0.912841, -0.310433, 0.265240,
		39.335327, 33.892685, 32.802532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088272, 34.708385, 32.483276>,  <38.696339, 34.109985, 32.616867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088272, 34.708385, 32.483276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.332275, 34.392651, 32.511131>,  <39.478676, 34.203209, 32.527843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.332275, 34.392651, 32.511131>,  <39.088272, 34.708385, 32.483276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332275, 34.392651, 32.511131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560170, 0.367405, -0.742444,
		0.560451, 0.491902, 0.666279,
		0.610004, -0.789333, 0.069636,
		39.515278, 34.155849, 32.532021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702991, 34.981598, 32.488380>,  <39.088272, 34.708385, 32.483276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702991, 34.981598, 32.488380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.797207, 34.611198, 32.370361>,  <39.853737, 34.388958, 32.299549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.797207, 34.611198, 32.370361>,  <39.702991, 34.981598, 32.488380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797207, 34.611198, 32.370361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443339, 0.372532, -0.815273,
		0.864855, 0.061221, 0.498275,
		0.235535, -0.925997, -0.295045,
		39.867867, 34.333401, 32.281849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375385, 35.015537, 32.413311>,  <39.702991, 34.981598, 32.488380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375385, 35.015537, 32.413311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.240707, 34.703968, 32.201683>,  <40.159901, 34.517025, 32.074707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.240707, 34.703968, 32.201683>,  <40.375385, 35.015537, 32.413311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240707, 34.703968, 32.201683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423926, 0.376321, -0.823814,
		0.840788, -0.501661, 0.203500,
		-0.336694, -0.778922, -0.529073,
		40.139698, 34.470291, 32.042961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957993, 34.764641, 31.982363>,  <40.375385, 35.015537, 32.413311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957993, 34.764641, 31.982363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620083, 34.636406, 31.810974>,  <40.417339, 34.559464, 31.708141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620083, 34.636406, 31.810974>,  <40.957993, 34.764641, 31.982363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620083, 34.636406, 31.810974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355132, 0.263096, -0.897029,
		0.400307, -0.909946, -0.108404,
		-0.844770, -0.320590, -0.428471,
		40.366653, 34.540230, 31.682432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130859, 34.327705, 31.425520>,  <40.957993, 34.764641, 31.982363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130859, 34.327705, 31.425520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767353, 34.479534, 31.356167>,  <40.549248, 34.570633, 31.314556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767353, 34.479534, 31.356167>,  <41.130859, 34.327705, 31.425520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767353, 34.479534, 31.356167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300316, 0.306407, -0.903286,
		-0.289740, -0.872947, -0.392446,
		-0.908769, 0.379576, -0.173382,
		40.494724, 34.593407, 31.304152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119808, 34.379860, 30.763302>,  <41.130859, 34.327705, 31.425520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119808, 34.379860, 30.763302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772743, 34.565205, 30.835369>,  <40.564507, 34.676411, 30.878609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772743, 34.565205, 30.835369>,  <41.119808, 34.379860, 30.763302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772743, 34.565205, 30.835369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014544, 0.385895, -0.922428,
		-0.496945, -0.797734, -0.341564,
		-0.867660, 0.463364, 0.180166,
		40.512444, 34.704212, 30.889420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731853, 34.306114, 30.215334>,  <41.119808, 34.379860, 30.763302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731853, 34.306114, 30.215334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568539, 34.629025, 30.385798>,  <40.470551, 34.822769, 30.488075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568539, 34.629025, 30.385798>,  <40.731853, 34.306114, 30.215334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568539, 34.629025, 30.385798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025495, 0.456576, -0.889319,
		-0.912498, -0.373961, -0.165832,
		-0.408286, 0.807275, 0.426158,
		40.446053, 34.871208, 30.513645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113987, 34.496231, 29.897188>,  <40.731853, 34.306114, 30.215334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113987, 34.496231, 29.897188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220242, 34.846466, 30.058577>,  <40.283993, 35.056606, 30.155411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220242, 34.846466, 30.058577>,  <40.113987, 34.496231, 29.897188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220242, 34.846466, 30.058577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255921, 0.467535, -0.846118,
		-0.929485, 0.121500, 0.348274,
		0.265633, 0.875585, 0.403472,
		40.299931, 35.109142, 30.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520542, 35.014610, 29.791046>,  <40.113987, 34.496231, 29.897188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520542, 35.014610, 29.791046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839378, 35.242897, 29.869972>,  <40.030678, 35.379868, 29.917328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839378, 35.242897, 29.869972>,  <39.520542, 35.014610, 29.791046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839378, 35.242897, 29.869972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311098, 0.668157, -0.675858,
		-0.517563, 0.477333, 0.710128,
		0.797087, 0.570718, 0.197316,
		40.078503, 35.414112, 29.929167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273445, 35.677399, 29.745342>,  <39.520542, 35.014610, 29.791046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273445, 35.677399, 29.745342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667454, 35.738060, 29.712507>,  <39.903858, 35.774456, 29.692806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667454, 35.738060, 29.712507>,  <39.273445, 35.677399, 29.745342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667454, 35.738060, 29.712507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166762, 0.716492, -0.677370,
		-0.043915, 0.680910, 0.731049,
		0.985019, 0.151658, -0.082085,
		39.962959, 35.783558, 29.687881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388435, 36.408878, 29.701294>,  <39.273445, 35.677399, 29.745342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388435, 36.408878, 29.701294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727859, 36.244263, 29.568275>,  <39.931515, 36.145493, 29.488464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727859, 36.244263, 29.568275>,  <39.388435, 36.408878, 29.701294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727859, 36.244263, 29.568275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024066, 0.597836, -0.801257,
		0.528557, 0.687914, 0.497394,
		0.848556, -0.411540, -0.332546,
		39.982426, 36.120800, 29.468512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535851, 37.155258, 30.142893>,  <39.388435, 36.408878, 29.701294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535851, 37.155258, 30.142893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420128, 37.531963, 30.211464>,  <39.350693, 37.757984, 30.252607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420128, 37.531963, 30.211464>,  <39.535851, 37.155258, 30.142893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420128, 37.531963, 30.211464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043272, -0.191772, 0.980485,
		0.956257, 0.276246, 0.096233,
		-0.289310, 0.941760, 0.171430,
		39.333336, 37.814491, 30.262894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011963, 37.360340, 30.594797>,  <39.535851, 37.155258, 30.142893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011963, 37.360340, 30.594797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685265, 37.590439, 30.612722>,  <39.489246, 37.728500, 30.623478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685265, 37.590439, 30.612722>,  <40.011963, 37.360340, 30.594797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685265, 37.590439, 30.612722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044386, -0.140073, 0.989146,
		0.575283, 0.805895, 0.139938,
		-0.816749, 0.575250, 0.044811,
		39.440239, 37.763016, 30.626165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043556, 37.691860, 31.213495>,  <40.011963, 37.360340, 30.594797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043556, 37.691860, 31.213495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652946, 37.728233, 31.135384>,  <39.418579, 37.750057, 31.088516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652946, 37.728233, 31.135384>,  <40.043556, 37.691860, 31.213495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652946, 37.728233, 31.135384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209813, -0.196199, 0.957854,
		0.048787, 0.976339, 0.210672,
		-0.976524, 0.090932, -0.195277,
		39.359989, 37.755512, 31.076801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868942, 37.962036, 31.784279>,  <40.043556, 37.691860, 31.213495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868942, 37.962036, 31.784279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534531, 37.830025, 31.608944>,  <39.333885, 37.750816, 31.503742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534531, 37.830025, 31.608944>,  <39.868942, 37.962036, 31.784279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534531, 37.830025, 31.608944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277065, -0.435627, 0.856425,
		-0.473598, 0.837442, 0.272755,
		-0.836026, -0.330031, -0.438338,
		39.283722, 37.731014, 31.477442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353981, 38.202633, 32.235264>,  <39.868942, 37.962036, 31.784279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353981, 38.202633, 32.235264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.199375, 37.885880, 32.046150>,  <39.106613, 37.695827, 31.932680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.199375, 37.885880, 32.046150>,  <39.353981, 38.202633, 32.235264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199375, 37.885880, 32.046150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332636, -0.358433, 0.872284,
		-0.860208, 0.494418, -0.124868,
		-0.386516, -0.791881, -0.472788,
		39.083420, 37.648315, 31.904314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804176, 38.028801, 32.661320>,  <39.353981, 38.202633, 32.235264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804176, 38.028801, 32.661320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804752, 37.709736, 32.420078>,  <38.805099, 37.518295, 32.275333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804752, 37.709736, 32.420078>,  <38.804176, 38.028801, 32.661320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804752, 37.709736, 32.420078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240733, -0.585644, 0.773995,
		-0.970590, 0.144072, -0.192868,
		0.001441, -0.797661, -0.603103,
		38.805183, 37.470436, 32.239147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124580, 37.704357, 32.722435>,  <38.804176, 38.028801, 32.661320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124580, 37.704357, 32.722435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407383, 37.441956, 32.616756>,  <38.577065, 37.284515, 32.553349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407383, 37.441956, 32.616756>,  <38.124580, 37.704357, 32.722435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407383, 37.441956, 32.616756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254860, -0.584822, 0.770084,
		-0.659686, -0.477122, -0.580662,
		0.707009, -0.656001, -0.264200,
		38.619484, 37.245155, 32.537498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721367, 37.157345, 32.537769>,  <38.124580, 37.704357, 32.722435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721367, 37.157345, 32.537769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090504, 37.055714, 32.653568>,  <38.311985, 36.994736, 32.723045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090504, 37.055714, 32.653568>,  <37.721367, 37.157345, 32.537769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090504, 37.055714, 32.653568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384959, -0.582911, 0.715556,
		-0.013061, -0.771788, -0.635746,
		0.922841, -0.254082, 0.289493,
		38.367355, 36.979488, 32.740417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587440, 36.407719, 32.650272>,  <37.721367, 37.157345, 32.537769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587440, 36.407719, 32.650272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927990, 36.512871, 32.831848>,  <38.132320, 36.575962, 32.940792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927990, 36.512871, 32.831848>,  <37.587440, 36.407719, 32.650272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927990, 36.512871, 32.831848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307861, -0.450262, 0.838144,
		0.424722, -0.853323, -0.302410,
		0.851371, 0.262878, 0.453941,
		38.183403, 36.591736, 32.968029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741676, 35.718128, 32.965378>,  <37.587440, 36.407719, 32.650272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741676, 35.718128, 32.965378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964931, 35.992252, 33.152500>,  <38.098885, 36.156727, 33.264774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964931, 35.992252, 33.152500>,  <37.741676, 35.718128, 32.965378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964931, 35.992252, 33.152500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151355, -0.470243, 0.869462,
		0.815828, -0.556082, -0.158735,
		0.558136, 0.685306, 0.467803,
		38.132374, 36.197845, 33.292843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215046, 35.373100, 33.448669>,  <37.741676, 35.718128, 32.965378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215046, 35.373100, 33.448669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219692, 35.750813, 33.580250>,  <38.222481, 35.977440, 33.659199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219692, 35.750813, 33.580250>,  <38.215046, 35.373100, 33.448669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219692, 35.750813, 33.580250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119681, -0.327918, 0.937095,
		0.992745, 0.028485, -0.116820,
		0.011614, 0.944277, 0.328948,
		38.223175, 36.034096, 33.678936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697212, 35.374619, 34.029057>,  <38.215046, 35.373100, 33.448669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697212, 35.374619, 34.029057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450283, 35.687981, 34.057842>,  <38.302124, 35.875999, 34.075115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450283, 35.687981, 34.057842>,  <38.697212, 35.374619, 34.029057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450283, 35.687981, 34.057842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160732, -0.215142, 0.963265,
		0.770112, 0.583082, 0.258732,
		-0.617327, 0.783409, 0.071963,
		38.265083, 35.923004, 34.079430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.747871, 38.572598, 26.679079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426819, 38.803684, 26.738451>,  <39.234188, 38.942337, 26.774075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426819, 38.803684, 26.738451>,  <39.747871, 38.572598, 26.679079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426819, 38.803684, 26.738451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293129, 0.165308, 0.941673,
		0.519481, 0.799325, -0.302026,
		-0.802630, 0.577714, 0.148431,
		39.186031, 38.976997, 26.782980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021996, 39.121147, 27.106228>,  <39.747871, 38.572598, 26.679079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021996, 39.121147, 27.106228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623856, 39.105316, 27.141365>,  <39.384972, 39.095818, 27.162447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623856, 39.105316, 27.141365>,  <40.021996, 39.121147, 27.106228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623856, 39.105316, 27.141365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081631, 0.137895, 0.987077,
		-0.051175, 0.989656, -0.134024,
		-0.995348, -0.039574, 0.087844,
		39.325253, 39.093445, 27.167719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800507, 39.733032, 27.523561>,  <40.021996, 39.121147, 27.106228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800507, 39.733032, 27.523561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524693, 39.445152, 27.555998>,  <39.359203, 39.272423, 27.575460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524693, 39.445152, 27.555998>,  <39.800507, 39.733032, 27.523561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524693, 39.445152, 27.555998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110417, 0.006194, 0.993866,
		-0.715787, 0.694258, 0.075196,
		-0.689534, -0.719699, 0.081092,
		39.317833, 39.229244, 27.580326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356354, 39.919106, 28.036690>,  <39.800507, 39.733032, 27.523561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356354, 39.919106, 28.036690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263424, 39.530613, 28.015764>,  <39.207668, 39.297516, 28.003208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263424, 39.530613, 28.015764>,  <39.356354, 39.919106, 28.036690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263424, 39.530613, 28.015764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014037, -0.050432, 0.998629,
		-0.972537, 0.232738, -0.001917,
		-0.232322, -0.971231, -0.052314,
		39.193726, 39.239243, 28.000071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853516, 39.804768, 28.565216>,  <39.356354, 39.919106, 28.036690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853516, 39.804768, 28.565216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986389, 39.432594, 28.503319>,  <39.066113, 39.209290, 28.466181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986389, 39.432594, 28.503319>,  <38.853516, 39.804768, 28.565216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986389, 39.432594, 28.503319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114697, -0.122997, 0.985757,
		-0.936215, -0.345201, 0.065860,
		0.332183, -0.930435, -0.154745,
		39.086044, 39.153465, 28.456896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500610, 39.362217, 29.005894>,  <38.853516, 39.804768, 28.565216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500610, 39.362217, 29.005894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796490, 39.112118, 28.906368>,  <38.974018, 38.962059, 28.846653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796490, 39.112118, 28.906368>,  <38.500610, 39.362217, 29.005894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796490, 39.112118, 28.906368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086671, -0.455184, 0.886169,
		-0.667329, -0.633936, -0.390892,
		0.739703, -0.625246, -0.248814,
		39.018402, 38.924545, 28.831724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341492, 38.551636, 29.121920>,  <38.500610, 39.362217, 29.005894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341492, 38.551636, 29.121920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739758, 38.566673, 29.155960>,  <38.978718, 38.575695, 29.176384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739758, 38.566673, 29.155960>,  <38.341492, 38.551636, 29.121920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739758, 38.566673, 29.155960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052378, -0.529458, 0.846718,
		0.076889, -0.847503, -0.525192,
		0.995663, 0.037594, 0.085100,
		39.038456, 38.577953, 29.181490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501160, 37.783035, 29.206959>,  <38.341492, 38.551636, 29.121920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501160, 37.783035, 29.206959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816399, 38.001015, 29.321457>,  <39.005543, 38.131802, 29.390156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816399, 38.001015, 29.321457>,  <38.501160, 37.783035, 29.206959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816399, 38.001015, 29.321457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095415, -0.567552, 0.817790,
		0.608112, -0.617185, -0.499282,
		0.788096, 0.544948, 0.286246,
		39.052826, 38.164497, 29.407331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981682, 37.355762, 29.421049>,  <38.501160, 37.783035, 29.206959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981682, 37.355762, 29.421049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055031, 37.704445, 29.602819>,  <39.099041, 37.913654, 29.711882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055031, 37.704445, 29.602819>,  <38.981682, 37.355762, 29.421049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055031, 37.704445, 29.602819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212073, -0.486458, 0.847575,
		0.959895, -0.059053, -0.274070,
		0.183376, 0.871706, 0.454425,
		39.110043, 37.965958, 29.739147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613068, 36.908024, 29.218836>,  <38.981682, 37.355762, 29.421049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613068, 36.908024, 29.218836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827919, 36.585697, 29.119120>,  <39.956829, 36.392300, 29.059290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827919, 36.585697, 29.119120>,  <39.613068, 36.908024, 29.218836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827919, 36.585697, 29.119120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164831, 0.189573, -0.967932,
		0.827237, 0.560997, -0.030999,
		0.537130, -0.805819, -0.249291,
		39.989059, 36.343952, 29.044333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048508, 36.988152, 28.637556>,  <39.613068, 36.908024, 29.218836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048508, 36.988152, 28.637556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029343, 36.588665, 28.630943>,  <40.017845, 36.348972, 28.626976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029343, 36.588665, 28.630943>,  <40.048508, 36.988152, 28.637556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029343, 36.588665, 28.630943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169020, 0.024420, -0.985310,
		0.984448, -0.044410, -0.169973,
		-0.047908, -0.998715, -0.016534,
		40.014969, 36.289051, 28.625982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499950, 36.761875, 28.040628>,  <40.048508, 36.988152, 28.637556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499950, 36.761875, 28.040628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244408, 36.458744, 28.093641>,  <40.091084, 36.276867, 28.125448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244408, 36.458744, 28.093641>,  <40.499950, 36.761875, 28.040628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244408, 36.458744, 28.093641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126565, -0.066394, -0.989734,
		0.758844, -0.649072, -0.053498,
		-0.638856, -0.757824, 0.132533,
		40.052750, 36.231396, 28.133402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732433, 36.251873, 27.586971>,  <40.499950, 36.761875, 28.040628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732433, 36.251873, 27.586971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352966, 36.144306, 27.653564>,  <40.125286, 36.079765, 27.693521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352966, 36.144306, 27.653564>,  <40.732433, 36.251873, 27.586971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352966, 36.144306, 27.653564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161519, -0.040650, -0.986032,
		0.271932, -0.962304, -0.004872,
		-0.948665, -0.268921, 0.166485,
		40.068367, 36.063629, 27.703510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593544, 35.645031, 27.118315>,  <40.732433, 36.251873, 27.586971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593544, 35.645031, 27.118315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220749, 35.759083, 27.207855>,  <39.997074, 35.827515, 27.261580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220749, 35.759083, 27.207855>,  <40.593544, 35.645031, 27.118315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220749, 35.759083, 27.207855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304700, -0.281646, -0.909853,
		-0.196378, -0.916175, 0.349368,
		-0.931983, 0.285128, 0.223850,
		39.941154, 35.844620, 27.275009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203930, 35.098129, 26.826511>,  <40.593544, 35.645031, 27.118315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203930, 35.098129, 26.826511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960220, 35.411621, 26.874760>,  <39.813995, 35.599716, 26.903709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960220, 35.411621, 26.874760>,  <40.203930, 35.098129, 26.826511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960220, 35.411621, 26.874760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289303, -0.078073, -0.954048,
		-0.738299, -0.616176, 0.274304,
		-0.609277, 0.783730, 0.120620,
		39.777435, 35.646740, 26.910946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584484, 34.883835, 26.640862>,  <40.203930, 35.098129, 26.826511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584484, 34.883835, 26.640862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525105, 35.278744, 26.618055>,  <39.489475, 35.515690, 26.604372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525105, 35.278744, 26.618055>,  <39.584484, 34.883835, 26.640862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525105, 35.278744, 26.618055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325386, -0.103206, -0.939932,
		-0.933856, -0.120979, 0.336566,
		-0.148448, 0.987275, -0.057015,
		39.480572, 35.574924, 26.600950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086960, 35.062347, 26.165514>,  <39.584484, 34.883835, 26.640862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086960, 35.062347, 26.165514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141506, 35.455666, 26.213751>,  <39.174232, 35.691654, 26.242693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141506, 35.455666, 26.213751>,  <39.086960, 35.062347, 26.165514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141506, 35.455666, 26.213751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381546, 0.164469, -0.909601,
		-0.914236, 0.078026, 0.397598,
		0.136365, 0.983291, 0.120593,
		39.182415, 35.750652, 26.249929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463436, 35.408752, 26.025888>,  <39.086960, 35.062347, 26.165514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463436, 35.408752, 26.025888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799686, 35.612160, 25.951321>,  <39.001438, 35.734203, 25.906580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799686, 35.612160, 25.951321>,  <38.463436, 35.408752, 26.025888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799686, 35.612160, 25.951321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322835, 0.194087, -0.926341,
		-0.434879, 0.838892, 0.327323,
		0.840629, 0.508518, -0.186419,
		39.051876, 35.764713, 25.895395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238178, 35.921150, 25.792747>,  <38.463436, 35.408752, 26.025888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238178, 35.921150, 25.792747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614319, 35.930897, 25.657019>,  <38.840004, 35.936745, 25.575581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614319, 35.930897, 25.657019>,  <38.238178, 35.921150, 25.792747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614319, 35.930897, 25.657019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334269, 0.251567, -0.908283,
		0.063229, 0.967533, 0.244707,
		0.940355, 0.024368, -0.339322,
		38.896423, 35.938206, 25.555222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229034, 36.290218, 25.166275>,  <38.238178, 35.921150, 25.792747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229034, 36.290218, 25.166275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613064, 36.184719, 25.128992>,  <38.843483, 36.121418, 25.106623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613064, 36.184719, 25.128992>,  <38.229034, 36.290218, 25.166275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613064, 36.184719, 25.128992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046461, 0.178230, -0.982891,
		0.275850, 0.947982, 0.158860,
		0.960077, -0.263750, -0.093209,
		38.901089, 36.105595, 25.101030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605663, 36.897175, 24.908873>,  <38.229034, 36.290218, 25.166275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605663, 36.897175, 24.908873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806210, 36.567677, 24.802979>,  <38.926537, 36.369980, 24.739443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806210, 36.567677, 24.802979>,  <38.605663, 36.897175, 24.908873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806210, 36.567677, 24.802979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149078, 0.219151, -0.964235,
		0.852297, 0.522898, -0.012928,
		0.501363, -0.823742, -0.264734,
		38.956619, 36.320553, 24.723558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158604, 37.105015, 24.468643>,  <38.605663, 36.897175, 24.908873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158604, 37.105015, 24.468643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060081, 36.727230, 24.381622>,  <39.000969, 36.500561, 24.329411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060081, 36.727230, 24.381622>,  <39.158604, 37.105015, 24.468643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060081, 36.727230, 24.381622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153527, 0.259654, -0.953420,
		0.956954, -0.201434, -0.208955,
		-0.246308, -0.944459, -0.217552,
		38.986191, 36.443893, 24.316357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506134, 37.115604, 23.975037>,  <39.158604, 37.105015, 24.468643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506134, 37.115604, 23.975037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232780, 36.824669, 23.949821>,  <39.068768, 36.650108, 23.934692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232780, 36.824669, 23.949821>,  <39.506134, 37.115604, 23.975037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232780, 36.824669, 23.949821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040656, 0.048300, -0.998005,
		0.728929, -0.684581, -0.003437,
		-0.683381, -0.727335, -0.063039,
		39.027767, 36.606468, 23.930910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.865940, 39.723190, 25.723217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.248386, 39.611797, 25.759626>,  <33.477856, 39.544964, 25.781471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.248386, 39.611797, 25.759626>,  <32.865940, 39.723190, 25.723217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248386, 39.611797, 25.759626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219421, -0.474759, 0.852325,
		-0.194139, -0.834897, -0.515030,
		0.956119, -0.278478, 0.091025,
		33.535221, 39.528252, 25.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798008, 39.100750, 26.096584>,  <32.865940, 39.723190, 25.723217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798008, 39.100750, 26.096584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.178841, 39.215279, 26.139582>,  <33.407341, 39.283997, 26.165380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.178841, 39.215279, 26.139582>,  <32.798008, 39.100750, 26.096584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178841, 39.215279, 26.139582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046274, -0.482292, 0.874787,
		0.302317, -0.827896, -0.472432,
		0.952083, 0.286324, 0.107495,
		33.464466, 39.301174, 26.171831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190426, 38.495514, 26.118885>,  <32.798008, 39.100750, 26.096584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190426, 38.495514, 26.118885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.414574, 38.767990, 26.307337>,  <33.549061, 38.931477, 26.420408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.414574, 38.767990, 26.307337>,  <33.190426, 38.495514, 26.118885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414574, 38.767990, 26.307337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033258, -0.586876, 0.808993,
		0.827577, -0.437664, -0.351521,
		0.560367, 0.681195, 0.471129,
		33.582684, 38.972347, 26.448675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846428, 38.141663, 26.296623>,  <33.190426, 38.495514, 26.118885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846428, 38.141663, 26.296623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850929, 38.464470, 26.532789>,  <33.853630, 38.658154, 26.674490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850929, 38.464470, 26.532789>,  <33.846428, 38.141663, 26.296623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850929, 38.464470, 26.532789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167445, -0.583637, 0.794563,
		0.985817, 0.089921, -0.141699,
		0.011253, 0.807020, 0.590416,
		33.854305, 38.706577, 26.709913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422035, 38.114849, 26.731104>,  <33.846428, 38.141663, 26.296623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422035, 38.114849, 26.731104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174831, 38.374039, 26.909182>,  <34.026508, 38.529552, 27.016027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174831, 38.374039, 26.909182>,  <34.422035, 38.114849, 26.731104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174831, 38.374039, 26.909182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150141, -0.458579, 0.875878,
		0.771702, 0.608142, 0.186118,
		-0.618008, 0.647973, 0.445194,
		33.989429, 38.568432, 27.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790615, 38.433666, 27.242868>,  <34.422035, 38.114849, 26.731104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790615, 38.433666, 27.242868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.406120, 38.468899, 27.347374>,  <34.175423, 38.490040, 27.410078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.406120, 38.468899, 27.347374>,  <34.790615, 38.433666, 27.242868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406120, 38.468899, 27.347374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213293, -0.362892, 0.907092,
		0.174708, 0.927659, 0.330039,
		-0.961240, 0.088081, 0.261264,
		34.117748, 38.495323, 27.425753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799309, 38.525990, 27.956949>,  <34.790615, 38.433666, 27.242868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799309, 38.525990, 27.956949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411457, 38.442619, 27.905760>,  <34.178745, 38.392597, 27.875046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411457, 38.442619, 27.905760>,  <34.799309, 38.525990, 27.956949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411457, 38.442619, 27.905760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020680, -0.451507, 0.892028,
		-0.243701, 0.867583, 0.433485,
		-0.969630, -0.208423, -0.127974,
		34.120567, 38.380093, 27.867367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557884, 38.618366, 28.583216>,  <34.799309, 38.525990, 27.956949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557884, 38.618366, 28.583216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.260609, 38.413921, 28.410501>,  <34.082245, 38.291256, 28.306873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.260609, 38.413921, 28.410501>,  <34.557884, 38.618366, 28.583216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260609, 38.413921, 28.410501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232974, -0.407276, 0.883091,
		-0.627214, 0.756895, 0.183606,
		-0.743186, -0.511112, -0.431786,
		34.037651, 38.260590, 28.280966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903416, 38.735176, 28.984316>,  <34.557884, 38.618366, 28.583216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903416, 38.735176, 28.984316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895969, 38.383537, 28.793808>,  <33.891502, 38.172554, 28.679502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895969, 38.383537, 28.793808>,  <33.903416, 38.735176, 28.984316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895969, 38.383537, 28.793808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229061, -0.459935, 0.857899,
		-0.973234, 0.125062, -0.192808,
		-0.018611, -0.879101, -0.476271,
		33.890385, 38.119808, 28.650927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294178, 38.437744, 29.268476>,  <33.903416, 38.735176, 28.984316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294178, 38.437744, 29.268476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.481720, 38.120213, 29.113550>,  <33.594246, 37.929695, 29.020594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.481720, 38.120213, 29.113550>,  <33.294178, 38.437744, 29.268476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481720, 38.120213, 29.113550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358655, -0.571825, 0.737823,
		-0.807180, -0.207021, -0.552814,
		0.468857, -0.793825, -0.387316,
		33.622375, 37.882065, 28.997355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824875, 37.931316, 29.260300>,  <33.294178, 38.437744, 29.268476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824875, 37.931316, 29.260300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.171955, 37.734081, 29.235119>,  <33.380203, 37.615742, 29.220011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.171955, 37.734081, 29.235119>,  <32.824875, 37.931316, 29.260300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171955, 37.734081, 29.235119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318427, -0.648613, 0.691307,
		-0.381704, -0.579803, -0.719813,
		0.867702, -0.493083, -0.062954,
		33.432266, 37.586155, 29.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580795, 37.228630, 29.350485>,  <32.824875, 37.931316, 29.260300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580795, 37.228630, 29.350485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975098, 37.249325, 29.414499>,  <33.211678, 37.261742, 29.452908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975098, 37.249325, 29.414499>,  <32.580795, 37.228630, 29.350485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975098, 37.249325, 29.414499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113630, -0.496651, 0.860480,
		0.124004, -0.866407, -0.483696,
		0.985754, 0.051740, 0.160036,
		33.270824, 37.264847, 29.462509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651833, 36.581734, 29.620146>,  <32.580795, 37.228630, 29.350485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651833, 36.581734, 29.620146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.983688, 36.793339, 29.691534>,  <33.182800, 36.920303, 29.734367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.983688, 36.793339, 29.691534>,  <32.651833, 36.581734, 29.620146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983688, 36.793339, 29.691534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019146, -0.292516, 0.956069,
		0.557977, -0.796605, -0.232554,
		0.829635, 0.529012, 0.178469,
		33.232578, 36.952042, 29.745075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189270, 36.124805, 29.894415>,  <32.651833, 36.581734, 29.620146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189270, 36.124805, 29.894415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.276752, 36.496338, 30.014046>,  <33.329243, 36.719257, 30.085825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.276752, 36.496338, 30.014046>,  <33.189270, 36.124805, 29.894415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276752, 36.496338, 30.014046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169818, -0.265590, 0.949012,
		0.960901, -0.258342, 0.099646,
		0.218704, 0.928828, 0.299077,
		33.342365, 36.774986, 30.103769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787899, 35.973549, 29.477045>,  <33.189270, 36.124805, 29.894415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787899, 35.973549, 29.477045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787243, 35.580887, 29.400776>,  <33.786850, 35.345291, 29.355015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787243, 35.580887, 29.400776>,  <33.787899, 35.973549, 29.477045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787243, 35.580887, 29.400776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271359, 0.183956, -0.944735,
		0.962477, 0.050187, -0.266683,
		-0.001645, -0.981652, -0.190672,
		33.786751, 35.286392, 29.343575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214607, 35.841831, 28.820963>,  <33.787899, 35.973549, 29.477045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214607, 35.841831, 28.820963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.949936, 35.548153, 28.881811>,  <33.791134, 35.371944, 28.918320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.949936, 35.548153, 28.881811>,  <34.214607, 35.841831, 28.820963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949936, 35.548153, 28.881811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294477, 0.067883, -0.953245,
		0.689543, -0.675534, -0.261120,
		-0.661675, -0.734197, 0.152121,
		33.751434, 35.327892, 28.927448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404854, 35.276852, 28.437313>,  <34.214607, 35.841831, 28.820963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404854, 35.276852, 28.437313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013027, 35.207417, 28.477942>,  <33.777931, 35.165756, 28.502317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013027, 35.207417, 28.477942>,  <34.404854, 35.276852, 28.437313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013027, 35.207417, 28.477942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113390, 0.059562, -0.991764,
		0.166115, -0.983014, -0.078029,
		-0.979565, -0.173595, 0.101570,
		33.719158, 35.155338, 28.508413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196159, 34.729153, 27.940254>,  <34.404854, 35.276852, 28.437313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196159, 34.729153, 27.940254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.855560, 34.923828, 28.018328>,  <33.651203, 35.040634, 28.065172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.855560, 34.923828, 28.018328>,  <34.196159, 34.729153, 27.940254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855560, 34.923828, 28.018328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205315, 0.033069, -0.978137,
		-0.482499, -0.872952, 0.071766,
		-0.851493, 0.486685, 0.195186,
		33.600113, 35.069832, 28.076883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620163, 34.380581, 27.521507>,  <34.196159, 34.729153, 27.940254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620163, 34.380581, 27.521507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.481869, 34.743656, 27.616642>,  <33.398891, 34.961502, 27.673723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.481869, 34.743656, 27.616642>,  <33.620163, 34.380581, 27.521507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481869, 34.743656, 27.616642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259280, 0.151187, -0.953896,
		-0.901799, -0.391462, 0.183075,
		-0.345735, 0.907689, 0.237838,
		33.378147, 35.015965, 27.687994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011566, 34.494591, 27.089119>,  <33.620163, 34.380581, 27.521507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011566, 34.494591, 27.089119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.157078, 34.852795, 27.191673>,  <33.244385, 35.067715, 27.253206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.157078, 34.852795, 27.191673>,  <33.011566, 34.494591, 27.089119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157078, 34.852795, 27.191673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038523, 0.289473, -0.956411,
		-0.930688, 0.338047, 0.139802,
		0.363781, 0.895505, 0.256386,
		33.266212, 35.121445, 27.268589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646748, 35.069130, 26.776058>,  <33.011566, 34.494591, 27.089119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646748, 35.069130, 26.776058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.983212, 35.246964, 26.899212>,  <33.185089, 35.353664, 26.973104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.983212, 35.246964, 26.899212>,  <32.646748, 35.069130, 26.776058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983212, 35.246964, 26.899212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006126, 0.561464, -0.827479,
		-0.540748, 0.697930, 0.469559,
		0.841162, 0.444581, 0.307886,
		33.235561, 35.380337, 26.991577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609360, 35.708862, 26.565870>,  <32.646748, 35.069130, 26.776058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609360, 35.708862, 26.565870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.999779, 35.679600, 26.647831>,  <33.234028, 35.662041, 26.697006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.999779, 35.679600, 26.647831>,  <32.609360, 35.708862, 26.565870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999779, 35.679600, 26.647831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212721, 0.518563, -0.828156,
		-0.045670, 0.851904, 0.521703,
		0.976045, -0.073155, 0.204901,
		33.292591, 35.657654, 26.709301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866592, 36.457733, 26.501436>,  <32.609360, 35.708862, 26.565870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866592, 36.457733, 26.501436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184406, 36.217934, 26.462828>,  <33.375095, 36.074055, 26.439663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184406, 36.217934, 26.462828>,  <32.866592, 36.457733, 26.501436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184406, 36.217934, 26.462828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259935, 0.479447, -0.838191,
		0.548773, 0.640881, 0.536768,
		0.794532, -0.599502, -0.096521,
		33.422768, 36.038082, 26.433872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414448, 36.942928, 26.372385>,  <32.866592, 36.457733, 26.501436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414448, 36.942928, 26.372385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.541367, 36.582233, 26.254953>,  <33.617519, 36.365818, 26.184494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.541367, 36.582233, 26.254953>,  <33.414448, 36.942928, 26.372385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541367, 36.582233, 26.254953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424704, 0.411916, -0.806196,
		0.847908, 0.131121, 0.513673,
		0.317299, -0.901739, -0.293579,
		33.636555, 36.311710, 26.166880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093948, 36.973866, 26.200249>,  <33.414448, 36.942928, 26.372385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093948, 36.973866, 26.200249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940876, 36.661263, 26.003151>,  <33.849033, 36.473701, 25.884892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940876, 36.661263, 26.003151>,  <34.093948, 36.973866, 26.200249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940876, 36.661263, 26.003151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295132, 0.401988, -0.866777,
		0.875472, -0.477126, 0.076815,
		-0.382683, -0.781509, -0.492744,
		33.826073, 36.426811, 25.855328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656269, 36.610073, 25.924025>,  <34.093948, 36.973866, 26.200249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656269, 36.610073, 25.924025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344982, 36.498787, 25.698824>,  <34.158211, 36.432014, 25.563704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344982, 36.498787, 25.698824>,  <34.656269, 36.610073, 25.924025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344982, 36.498787, 25.698824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412057, 0.450310, -0.792105,
		0.473905, -0.848419, -0.235796,
		-0.778218, -0.278221, -0.563001,
		34.111515, 36.415321, 25.529924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913490, 36.392643, 25.296236>,  <34.656269, 36.610073, 25.924025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913490, 36.392643, 25.296236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533703, 36.484787, 25.210962>,  <34.305832, 36.540073, 25.159798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533703, 36.484787, 25.210962>,  <34.913490, 36.392643, 25.296236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533703, 36.484787, 25.210962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293751, 0.412935, -0.862088,
		-0.110559, -0.881147, -0.459736,
		-0.949467, 0.230359, -0.213184,
		34.248863, 36.553894, 25.147007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690315, 36.146420, 24.591677>,  <34.913490, 36.392643, 25.296236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690315, 36.146420, 24.591677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427258, 36.430977, 24.690813>,  <34.269424, 36.601711, 24.750296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427258, 36.430977, 24.690813>,  <34.690315, 36.146420, 24.591677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427258, 36.430977, 24.690813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101802, 0.409904, -0.906430,
		-0.746418, -0.570878, -0.341992,
		-0.657645, 0.711391, 0.247843,
		34.229965, 36.644394, 24.765165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718029, 35.449123, 24.160955>,  <34.690315, 36.146420, 24.591677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718029, 35.449123, 24.160955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035015, 35.284142, 23.981234>,  <35.225208, 35.185154, 23.873400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035015, 35.284142, 23.981234>,  <34.718029, 35.449123, 24.160955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035015, 35.284142, 23.981234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205885, -0.512525, 0.833624,
		-0.574112, -0.753126, -0.321241,
		0.792469, -0.412455, -0.449305,
		35.272755, 35.160404, 23.846443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591328, 34.844540, 24.302956>,  <34.718029, 35.449123, 24.160955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591328, 34.844540, 24.302956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981937, 34.860466, 24.218275>,  <35.216305, 34.870022, 24.167467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981937, 34.860466, 24.218275>,  <34.591328, 34.844540, 24.302956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981937, 34.860466, 24.218275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206707, -0.449784, 0.868888,
		-0.060624, -0.892249, -0.447454,
		0.976523, 0.039817, -0.211702,
		35.274895, 34.872410, 24.154764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791348, 34.194435, 24.353300>,  <34.591328, 34.844540, 24.302956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791348, 34.194435, 24.353300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114498, 34.425064, 24.402132>,  <35.308388, 34.563442, 24.431431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114498, 34.425064, 24.402132>,  <34.791348, 34.194435, 24.353300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114498, 34.425064, 24.402132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243914, -0.515671, 0.821334,
		0.536507, -0.633761, -0.557232,
		0.807878, 0.576568, 0.122078,
		35.356861, 34.598034, 24.438755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379131, 33.692104, 24.480350>,  <34.791348, 34.194435, 24.353300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379131, 33.692104, 24.480350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515804, 34.046143, 24.606754>,  <35.597809, 34.258564, 24.682596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515804, 34.046143, 24.606754>,  <35.379131, 33.692104, 24.480350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515804, 34.046143, 24.606754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218131, -0.401752, 0.889390,
		0.914150, -0.234959, -0.330339,
		0.341685, 0.885093, 0.316010,
		35.618309, 34.311672, 24.701557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006413, 33.590870, 24.843378>,  <35.379131, 33.692104, 24.480350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006413, 33.590870, 24.843378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861725, 33.940163, 24.973997>,  <35.774914, 34.149738, 25.052368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861725, 33.940163, 24.973997>,  <36.006413, 33.590870, 24.843378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861725, 33.940163, 24.973997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193460, -0.272335, 0.942553,
		0.911995, 0.404111, -0.070427,
		-0.361717, 0.873228, 0.326548,
		35.753208, 34.202129, 25.071962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496151, 33.799110, 25.494074>,  <36.006413, 33.590870, 24.843378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496151, 33.799110, 25.494074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.137974, 33.975616, 25.517660>,  <35.923069, 34.081520, 25.531813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.137974, 33.975616, 25.517660>,  <36.496151, 33.799110, 25.494074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137974, 33.975616, 25.517660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038552, -0.055096, 0.997737,
		0.443511, 0.895686, 0.032323,
		-0.895440, 0.441261, 0.058966,
		35.869343, 34.107994, 25.535351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549248, 34.124821, 26.100475>,  <36.496151, 33.799110, 25.494074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549248, 34.124821, 26.100475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155293, 34.164585, 26.043749>,  <35.918919, 34.188442, 26.009712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155293, 34.164585, 26.043749>,  <36.549248, 34.124821, 26.100475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155293, 34.164585, 26.043749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145674, -0.032624, 0.988795,
		0.093671, 0.994511, 0.046613,
		-0.984888, 0.099412, -0.141819,
		35.859825, 34.194408, 26.001204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287067, 34.615524, 26.589949>,  <36.549248, 34.124821, 26.100475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287067, 34.615524, 26.589949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976986, 34.378506, 26.502359>,  <35.790939, 34.236294, 26.449806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976986, 34.378506, 26.502359>,  <36.287067, 34.615524, 26.589949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976986, 34.378506, 26.502359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079233, -0.252691, 0.964297,
		-0.626725, 0.764875, 0.148937,
		-0.775202, -0.592549, -0.218971,
		35.744427, 34.200741, 26.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841412, 34.697083, 27.156485>,  <36.287067, 34.615524, 26.589949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841412, 34.697083, 27.156485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769176, 34.343914, 26.983126>,  <35.725834, 34.132011, 26.879110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769176, 34.343914, 26.983126>,  <35.841412, 34.697083, 27.156485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769176, 34.343914, 26.983126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182700, -0.402861, 0.896841,
		-0.966441, 0.241143, -0.088557,
		-0.180591, -0.882923, -0.433398,
		35.715000, 34.079037, 26.853106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076363, 34.499134, 27.324274>,  <35.841412, 34.697083, 27.156485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076363, 34.499134, 27.324274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320038, 34.191074, 27.248634>,  <35.466244, 34.006237, 27.203251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320038, 34.191074, 27.248634>,  <35.076363, 34.499134, 27.324274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320038, 34.191074, 27.248634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122272, -0.326816, 0.937145,
		-0.783543, -0.547776, -0.293260,
		0.609188, -0.770151, -0.189097,
		35.502792, 33.960030, 27.191906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821655, 34.004211, 27.826868>,  <35.076363, 34.499134, 27.324274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821655, 34.004211, 27.826868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167175, 33.851871, 27.694929>,  <35.374489, 33.760468, 27.615765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167175, 33.851871, 27.694929>,  <34.821655, 34.004211, 27.826868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167175, 33.851871, 27.694929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157532, -0.417700, 0.894825,
		-0.478573, -0.824912, -0.300813,
		0.863801, -0.380851, -0.329849,
		35.426315, 33.737617, 27.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864746, 33.331425, 28.037182>,  <34.821655, 34.004211, 27.826868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864746, 33.331425, 28.037182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.253635, 33.383251, 27.959206>,  <35.486969, 33.414345, 27.912420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.253635, 33.383251, 27.959206>,  <34.864746, 33.331425, 28.037182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253635, 33.383251, 27.959206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233834, -0.500057, 0.833825,
		0.010552, -0.856245, -0.516462,
		0.972219, 0.129564, -0.194943,
		35.545300, 33.422119, 27.900723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200935, 32.644073, 28.123880>,  <34.864746, 33.331425, 28.037182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200935, 32.644073, 28.123880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457417, 32.949123, 28.157970>,  <35.611305, 33.132153, 28.178425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457417, 32.949123, 28.157970>,  <35.200935, 32.644073, 28.123880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457417, 32.949123, 28.157970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323804, -0.369579, 0.870955,
		0.695711, -0.530860, -0.483915,
		0.641199, 0.762627, 0.085225,
		35.649776, 33.177910, 28.183538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889931, 32.325851, 28.387278>,  <35.200935, 32.644073, 28.123880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889931, 32.325851, 28.387278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943485, 32.715645, 28.459332>,  <35.975616, 32.949520, 28.502563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943485, 32.715645, 28.459332>,  <35.889931, 32.325851, 28.387278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943485, 32.715645, 28.459332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653612, -0.223464, 0.723088,
		0.744894, 0.020929, -0.666855,
		0.133885, 0.974488, 0.180136,
		35.983650, 33.007992, 28.513372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.820923, 36.694023, 23.299040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.432930, 36.611519, 23.350552>,  <39.200134, 36.562016, 23.381458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.432930, 36.611519, 23.350552>,  <39.820923, 36.694023, 23.299040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432930, 36.611519, 23.350552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218322, 0.505543, -0.834723,
		0.107068, -0.837784, -0.535401,
		-0.969985, -0.206262, 0.128779,
		39.141933, 36.549641, 23.389185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583248, 36.419712, 22.635124>,  <39.820923, 36.694023, 23.299040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583248, 36.419712, 22.635124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244972, 36.528992, 22.818504>,  <39.042007, 36.594559, 22.928532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244972, 36.528992, 22.818504>,  <39.583248, 36.419712, 22.635124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244972, 36.528992, 22.818504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321563, 0.424733, -0.846285,
		-0.425922, -0.863113, -0.271342,
		-0.845688, 0.273198, 0.458448,
		38.991264, 36.610950, 22.956039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059036, 36.223534, 22.183231>,  <39.583248, 36.419712, 22.635124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059036, 36.223534, 22.183231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862198, 36.480240, 22.418509>,  <38.744095, 36.634266, 22.559675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862198, 36.480240, 22.418509>,  <39.059036, 36.223534, 22.183231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862198, 36.480240, 22.418509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456526, 0.385058, -0.802069,
		-0.741233, -0.663221, 0.103499,
		-0.492096, 0.641770, 0.588195,
		38.714569, 36.672771, 22.594967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277122, 36.193550, 22.099854>,  <39.059036, 36.223534, 22.183231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277122, 36.193550, 22.099854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369320, 36.557003, 22.239141>,  <38.424637, 36.775074, 22.322714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369320, 36.557003, 22.239141>,  <38.277122, 36.193550, 22.099854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369320, 36.557003, 22.239141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429098, 0.416091, -0.801713,
		-0.873354, 0.035370, 0.485800,
		0.230494, 0.908635, 0.348218,
		38.438469, 36.829594, 22.343607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770107, 36.532978, 21.944593>,  <38.277122, 36.193550, 22.099854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770107, 36.532978, 21.944593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027020, 36.836102, 21.990540>,  <38.181168, 37.017975, 22.018108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027020, 36.836102, 21.990540>,  <37.770107, 36.532978, 21.944593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027020, 36.836102, 21.990540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391165, 0.452965, -0.801132,
		-0.659137, 0.469622, 0.587362,
		0.642284, 0.757811, 0.114866,
		38.219704, 37.063446, 22.025000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382271, 37.186375, 21.647627>,  <37.770107, 36.532978, 21.944593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382271, 37.186375, 21.647627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771729, 37.275726, 21.666016>,  <38.005402, 37.329338, 21.677050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771729, 37.275726, 21.666016>,  <37.382271, 37.186375, 21.647627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771729, 37.275726, 21.666016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156621, 0.801444, -0.577198,
		-0.165782, 0.554786, 0.815309,
		0.973646, 0.223383, 0.045974,
		38.063824, 37.342743, 21.679808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364162, 37.882969, 21.692434>,  <37.382271, 37.186375, 21.647627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364162, 37.882969, 21.692434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.724552, 37.767925, 21.562490>,  <37.940784, 37.698898, 21.484524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.724552, 37.767925, 21.562490>,  <37.364162, 37.882969, 21.692434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724552, 37.767925, 21.562490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017933, 0.772774, -0.634427,
		0.433508, 0.565775, 0.701405,
		0.900971, -0.287608, -0.324858,
		37.994843, 37.681644, 21.465033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675514, 38.535961, 21.410219>,  <37.364162, 37.882969, 21.692434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675514, 38.535961, 21.410219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862705, 38.216343, 21.259209>,  <37.975018, 38.024570, 21.168602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862705, 38.216343, 21.259209>,  <37.675514, 38.535961, 21.410219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862705, 38.216343, 21.259209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068435, 0.393143, -0.916927,
		0.881088, 0.454934, 0.129298,
		0.467974, -0.799045, -0.377527,
		38.003098, 37.976631, 21.145950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242538, 38.846165, 20.975779>,  <37.675514, 38.535961, 21.410219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242538, 38.846165, 20.975779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143475, 38.475483, 20.862720>,  <38.084034, 38.253075, 20.794886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143475, 38.475483, 20.862720>,  <38.242538, 38.846165, 20.975779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143475, 38.475483, 20.862720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208387, 0.335858, -0.918572,
		0.946170, -0.168598, -0.276292,
		-0.247664, -0.926701, -0.282645,
		38.069176, 38.197472, 20.777927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496983, 38.793327, 20.234207>,  <38.242538, 38.846165, 20.975779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496983, 38.793327, 20.234207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.247654, 38.484081, 20.281128>,  <38.098057, 38.298534, 20.309280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.247654, 38.484081, 20.281128>,  <38.496983, 38.793327, 20.234207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247654, 38.484081, 20.281128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370069, 0.159506, -0.915209,
		0.688851, -0.613882, -0.385529,
		-0.623324, -0.773115, 0.117303,
		38.060658, 38.252148, 20.316319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469051, 38.436005, 19.515837>,  <38.496983, 38.793327, 20.234207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469051, 38.436005, 19.515837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152176, 38.301651, 19.719650>,  <37.962051, 38.221039, 19.841938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152176, 38.301651, 19.719650>,  <38.469051, 38.436005, 19.515837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152176, 38.301651, 19.719650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546455, 0.018671, -0.837280,
		0.271712, -0.941720, -0.198334,
		-0.792186, -0.335879, 0.509535,
		37.914520, 38.200886, 19.872511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225773, 37.986290, 19.085258>,  <38.469051, 38.436005, 19.515837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225773, 37.986290, 19.085258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923031, 38.082264, 19.328436>,  <37.741386, 38.139847, 19.474342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923031, 38.082264, 19.328436>,  <38.225773, 37.986290, 19.085258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923031, 38.082264, 19.328436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578808, 0.185965, -0.793976,
		-0.303559, -0.952811, -0.001873,
		-0.756857, 0.239934, 0.607946,
		37.695972, 38.154243, 19.510820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552322, 37.697205, 18.844831>,  <38.225773, 37.986290, 19.085258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552322, 37.697205, 18.844831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471291, 38.024807, 19.059565>,  <37.422672, 38.221367, 19.188404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471291, 38.024807, 19.059565>,  <37.552322, 37.697205, 18.844831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471291, 38.024807, 19.059565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538157, 0.364890, -0.759765,
		-0.818138, -0.442811, 0.366836,
		-0.202578, 0.819008, 0.536832,
		37.410519, 38.270508, 19.220613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931736, 37.964775, 18.657055>,  <37.552322, 37.697205, 18.844831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931736, 37.964775, 18.657055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097984, 38.288704, 18.822680>,  <37.197735, 38.483063, 18.922054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097984, 38.288704, 18.822680>,  <36.931736, 37.964775, 18.657055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097984, 38.288704, 18.822680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403729, 0.572199, -0.713857,
		-0.815022, 0.129526, 0.564767,
		0.415623, 0.809822, 0.414061,
		37.222672, 38.531651, 18.946898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281677, 37.510067, 18.819742>,  <36.931736, 37.964775, 18.657055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281677, 37.510067, 18.819742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913197, 37.429325, 18.686689>,  <35.692108, 37.380878, 18.606857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913197, 37.429325, 18.686689>,  <36.281677, 37.510067, 18.819742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913197, 37.429325, 18.686689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114739, -0.675947, 0.727963,
		-0.371785, 0.708766, 0.599522,
		-0.921201, -0.201857, -0.332630,
		35.636837, 37.368767, 18.586901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914482, 37.633385, 19.340715>,  <36.281677, 37.510067, 18.819742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914482, 37.633385, 19.340715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696068, 37.382679, 19.118361>,  <35.565018, 37.232254, 18.984947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696068, 37.382679, 19.118361>,  <35.914482, 37.633385, 19.340715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696068, 37.382679, 19.118361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243020, -0.516504, 0.821075,
		-0.801737, 0.583431, 0.129716,
		-0.546039, -0.626763, -0.555886,
		35.532257, 37.194649, 18.951595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181934, 37.663078, 19.557211>,  <35.914482, 37.633385, 19.340715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181934, 37.663078, 19.557211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261841, 37.316818, 19.373587>,  <35.309784, 37.109062, 19.263412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261841, 37.316818, 19.373587>,  <35.181934, 37.663078, 19.557211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261841, 37.316818, 19.373587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273102, -0.499128, 0.822366,
		-0.941015, -0.038910, -0.336121,
		0.199766, -0.865654, -0.459060,
		35.321770, 37.057121, 19.235868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607090, 37.215782, 19.742731>,  <35.181934, 37.663078, 19.557211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607090, 37.215782, 19.742731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911793, 36.982540, 19.629795>,  <35.094616, 36.842594, 19.562033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911793, 36.982540, 19.629795>,  <34.607090, 37.215782, 19.742731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911793, 36.982540, 19.629795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181792, -0.610677, 0.770730,
		-0.621838, -0.535779, -0.571190,
		0.761754, -0.583107, -0.282342,
		35.140320, 36.807610, 19.545094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308929, 36.506466, 19.668581>,  <34.607090, 37.215782, 19.742731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308929, 36.506466, 19.668581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.704346, 36.477592, 19.721615>,  <34.941597, 36.460266, 19.753435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.704346, 36.477592, 19.721615>,  <34.308929, 36.506466, 19.668581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704346, 36.477592, 19.721615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149061, -0.605752, 0.781566,
		0.023896, -0.792372, -0.609570,
		0.988539, -0.072187, 0.132587,
		35.000908, 36.455936, 19.761391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498356, 35.747372, 19.883224>,  <34.308929, 36.506466, 19.668581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498356, 35.747372, 19.883224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799778, 35.974831, 20.015162>,  <34.980633, 36.111305, 20.094324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799778, 35.974831, 20.015162>,  <34.498356, 35.747372, 19.883224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799778, 35.974831, 20.015162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012702, -0.489060, 0.872157,
		0.657260, -0.661409, -0.361312,
		0.753556, 0.568645, 0.329841,
		35.025845, 36.145424, 20.114115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795593, 35.287373, 20.241056>,  <34.498356, 35.747372, 19.883224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795593, 35.287373, 20.241056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969540, 35.618382, 20.383102>,  <35.073906, 35.816986, 20.468330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969540, 35.618382, 20.383102>,  <34.795593, 35.287373, 20.241056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969540, 35.618382, 20.383102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173938, -0.464117, 0.868528,
		0.883537, -0.315924, -0.345765,
		0.434864, 0.827519, 0.355113,
		35.099998, 35.866638, 20.489635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298504, 35.050739, 20.647766>,  <34.795593, 35.287373, 20.241056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298504, 35.050739, 20.647766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.275436, 35.430378, 20.771627>,  <35.261597, 35.658161, 20.845945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.275436, 35.430378, 20.771627>,  <35.298504, 35.050739, 20.647766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275436, 35.430378, 20.771627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138130, -0.299603, 0.944012,
		0.988734, 0.097215, -0.113821,
		-0.057671, 0.949098, 0.309656,
		35.258137, 35.715107, 20.864525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782490, 35.104225, 21.108051>,  <35.298504, 35.050739, 20.647766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782490, 35.104225, 21.108051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554222, 35.414291, 21.216463>,  <35.417259, 35.600330, 21.281511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.554222, 35.414291, 21.216463>,  <35.782490, 35.104225, 21.108051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554222, 35.414291, 21.216463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195357, -0.192422, 0.961670,
		0.797603, 0.601745, -0.041623,
		-0.570671, 0.775162, 0.271031,
		35.383022, 35.646839, 21.297773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150951, 35.246403, 21.646099>,  <35.782490, 35.104225, 21.108051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150951, 35.246403, 21.646099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.794327, 35.423721, 21.683199>,  <35.580353, 35.530113, 21.705460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.794327, 35.423721, 21.683199>,  <36.150951, 35.246403, 21.646099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794327, 35.423721, 21.683199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117374, 0.028367, 0.992683,
		0.437418, 0.895928, -0.077322,
		-0.891565, 0.443293, 0.092750,
		35.526855, 35.556709, 21.711023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236313, 35.874844, 22.008078>,  <36.150951, 35.246403, 21.646099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236313, 35.874844, 22.008078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869366, 35.726742, 22.066525>,  <35.649197, 35.637882, 22.101593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869366, 35.726742, 22.066525>,  <36.236313, 35.874844, 22.008078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869366, 35.726742, 22.066525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158077, -0.001992, 0.987425,
		-0.365304, 0.928929, 0.060356,
		-0.917368, -0.370252, 0.146115,
		35.594154, 35.615665, 22.110359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046463, 36.062092, 22.683050>,  <36.236313, 35.874844, 22.008078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046463, 36.062092, 22.683050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769131, 35.779198, 22.627748>,  <35.602730, 35.609463, 22.594566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769131, 35.779198, 22.627748>,  <36.046463, 36.062092, 22.683050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769131, 35.779198, 22.627748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039210, -0.228596, 0.972731,
		-0.719552, 0.669004, 0.186224,
		-0.693331, -0.707233, -0.138255,
		35.561131, 35.567028, 22.586271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440456, 36.290459, 23.190359>,  <36.046463, 36.062092, 22.683050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440456, 36.290459, 23.190359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.367496, 35.908127, 23.098162>,  <35.323719, 35.678730, 23.042843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.367496, 35.908127, 23.098162>,  <35.440456, 36.290459, 23.190359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367496, 35.908127, 23.098162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046781, -0.225726, 0.973067,
		-0.982111, 0.188269, -0.003542,
		-0.182398, -0.955826, -0.230495,
		35.312778, 35.621380, 23.029013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065300, 36.024475, 23.785566>,  <35.440456, 36.290459, 23.190359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065300, 36.024475, 23.785566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219093, 35.692253, 23.624393>,  <35.311371, 35.492920, 23.527691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219093, 35.692253, 23.624393>,  <35.065300, 36.024475, 23.785566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219093, 35.692253, 23.624393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044697, -0.452719, 0.890532,
		-0.922048, -0.324387, -0.211188,
		0.384485, -0.830553, -0.402930,
		35.334438, 35.443089, 23.503515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263973, 36.218521, 23.994133>,  <35.065300, 36.024475, 23.785566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263973, 36.218521, 23.994133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169231, 36.557930, 24.183413>,  <34.112389, 36.761574, 24.296980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169231, 36.557930, 24.183413>,  <34.263973, 36.218521, 23.994133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169231, 36.557930, 24.183413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117438, 0.458481, -0.880911,
		-0.964422, -0.264216, -0.008943,
		-0.236851, 0.848519, 0.473198,
		34.098175, 36.812485, 24.325373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634033, 36.444355, 23.690121>,  <34.263973, 36.218521, 23.994133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634033, 36.444355, 23.690121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827805, 36.753857, 23.853409>,  <33.944065, 36.939556, 23.951382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827805, 36.753857, 23.853409>,  <33.634033, 36.444355, 23.690121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827805, 36.753857, 23.853409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167586, 0.540060, -0.824773,
		-0.858631, 0.331129, 0.391289,
		0.484426, 0.773750, 0.408219,
		33.973133, 36.985981, 23.975874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226700, 37.001122, 23.515028>,  <33.634033, 36.444355, 23.690121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226700, 37.001122, 23.515028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575703, 37.161400, 23.626862>,  <33.785107, 37.257568, 23.693962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575703, 37.161400, 23.626862>,  <33.226700, 37.001122, 23.515028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575703, 37.161400, 23.626862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036156, 0.623603, -0.780905,
		-0.487258, 0.671237, 0.558587,
		0.872509, 0.400699, 0.279586,
		33.837456, 37.281609, 23.710737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132553, 37.608479, 23.282745>,  <33.226700, 37.001122, 23.515028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132553, 37.608479, 23.282745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528545, 37.615196, 23.338821>,  <33.766140, 37.619228, 23.372467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528545, 37.615196, 23.338821>,  <33.132553, 37.608479, 23.282745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528545, 37.615196, 23.338821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093169, 0.668313, -0.738022,
		-0.106088, 0.743690, 0.660053,
		0.989982, 0.016798, 0.140189,
		33.825539, 37.620235, 23.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274338, 38.255032, 23.105867>,  <33.132553, 37.608479, 23.282745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274338, 38.255032, 23.105867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639973, 38.093304, 23.093462>,  <33.859356, 37.996265, 23.086020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639973, 38.093304, 23.093462>,  <33.274338, 38.255032, 23.105867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639973, 38.093304, 23.093462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255892, 0.634470, -0.729361,
		0.314572, 0.658767, 0.683425,
		0.914092, -0.404320, -0.031014,
		33.914200, 37.972008, 23.084158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868591, 38.797409, 23.264336>,  <33.274338, 38.255032, 23.105867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868591, 38.797409, 23.264336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988663, 38.492817, 23.034542>,  <34.060707, 38.310059, 22.896666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988663, 38.492817, 23.034542>,  <33.868591, 38.797409, 23.264336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988663, 38.492817, 23.034542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181888, 0.636903, -0.749181,
		0.936382, 0.120395, 0.329689,
		0.300177, -0.761485, -0.574486,
		34.078716, 38.264370, 22.862196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329185, 39.045799, 22.785028>,  <33.868591, 38.797409, 23.264336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329185, 39.045799, 22.785028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190170, 38.718719, 22.601471>,  <34.106762, 38.522472, 22.491337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190170, 38.718719, 22.601471>,  <34.329185, 39.045799, 22.785028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190170, 38.718719, 22.601471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100233, 0.518992, -0.848882,
		0.932293, -0.249023, -0.262331,
		-0.347539, -0.817701, -0.458892,
		34.085907, 38.473408, 22.463802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963486, 39.465065, 22.987259>,  <34.329185, 39.045799, 22.785028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963486, 39.465065, 22.987259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820351, 39.830540, 23.064337>,  <34.734470, 40.049824, 23.110584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820351, 39.830540, 23.064337>,  <34.963486, 39.465065, 22.987259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820351, 39.830540, 23.064337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077392, -0.176631, 0.981230,
		0.930573, 0.366030, -0.007508,
		-0.357833, 0.913687, 0.192696,
		34.713001, 40.104645, 23.122145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233307, 39.603100, 23.650007>,  <34.963486, 39.465065, 22.987259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233307, 39.603100, 23.650007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923100, 39.854748, 23.628925>,  <34.736977, 40.005737, 23.616276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923100, 39.854748, 23.628925>,  <35.233307, 39.603100, 23.650007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923100, 39.854748, 23.628925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197529, -0.162503, 0.966734,
		0.599626, 0.760133, 0.250293,
		-0.775520, 0.629119, -0.052707,
		34.690445, 40.043484, 23.613113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297798, 39.986694, 24.206121>,  <35.233307, 39.603100, 23.650007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297798, 39.986694, 24.206121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915680, 40.046471, 24.104073>,  <34.686409, 40.082336, 24.042843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915680, 40.046471, 24.104073>,  <35.297798, 39.986694, 24.206121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915680, 40.046471, 24.104073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276628, -0.147105, 0.949651,
		0.104383, 0.977767, 0.181866,
		-0.955291, 0.149437, -0.255122,
		34.629093, 40.091301, 24.027536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115047, 40.356911, 24.742781>,  <35.297798, 39.986694, 24.206121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115047, 40.356911, 24.742781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764233, 40.230652, 24.597912>,  <34.553741, 40.154896, 24.510990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764233, 40.230652, 24.597912>,  <35.115047, 40.356911, 24.742781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764233, 40.230652, 24.597912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304331, -0.218287, 0.927218,
		-0.371731, 0.923427, 0.095386,
		-0.877040, -0.315647, -0.362171,
		34.501122, 40.135960, 24.489260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665188, 40.518608, 25.230932>,  <35.115047, 40.356911, 24.742781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665188, 40.518608, 25.230932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487331, 40.231972, 25.015974>,  <34.380619, 40.059990, 24.886999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487331, 40.231972, 25.015974>,  <34.665188, 40.518608, 25.230932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487331, 40.231972, 25.015974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311088, -0.439073, 0.842875,
		-0.839953, 0.541952, -0.027693,
		-0.444639, -0.716591, -0.537396,
		34.353939, 40.016994, 24.854755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925838, 40.487038, 25.553158>,  <34.665188, 40.518608, 25.230932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925838, 40.487038, 25.553158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977997, 40.139084, 25.362877>,  <34.009293, 39.930309, 25.248709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977997, 40.139084, 25.362877>,  <33.925838, 40.487038, 25.553158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977997, 40.139084, 25.362877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365821, -0.488158, 0.792387,
		-0.921506, 0.070702, -0.381875,
		0.130392, -0.869887, -0.475704,
		34.017113, 39.878117, 25.220165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284119, 40.288361, 25.631441>,  <33.925838, 40.487038, 25.553158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284119, 40.288361, 25.631441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548206, 39.991749, 25.583715>,  <33.706661, 39.813782, 25.555080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548206, 39.991749, 25.583715>,  <33.284119, 40.288361, 25.631441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548206, 39.991749, 25.583715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296050, -0.402931, 0.866026,
		-0.690260, -0.536449, -0.485555,
		0.660224, -0.741532, -0.119312,
		33.746273, 39.769291, 25.547922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.048412, 41.353390, 20.161978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667572, 41.237606, 20.122553>,  <36.439068, 41.168137, 20.098898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667572, 41.237606, 20.122553>,  <37.048412, 41.353390, 20.161978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667572, 41.237606, 20.122553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092686, 0.580366, -0.809064,
		0.291392, -0.761177, -0.579397,
		-0.952103, -0.289457, -0.098564,
		36.381943, 41.150768, 20.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972988, 41.245567, 20.869843>,  <37.048412, 41.353390, 20.161978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972988, 41.245567, 20.869843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068989, 40.881065, 20.735966>,  <37.126591, 40.662365, 20.655640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068989, 40.881065, 20.735966>,  <36.972988, 41.245567, 20.869843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068989, 40.881065, 20.735966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340038, -0.244015, 0.908202,
		-0.909270, -0.331779, 0.251296,
		0.240003, -0.911251, -0.334693,
		37.140991, 40.607689, 20.635557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514477, 40.700172, 21.250027>,  <36.972988, 41.245567, 20.869843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514477, 40.700172, 21.250027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844490, 40.518627, 21.115366>,  <37.042500, 40.409702, 21.034571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844490, 40.518627, 21.115366>,  <36.514477, 40.700172, 21.250027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844490, 40.518627, 21.115366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208695, -0.308912, 0.927912,
		-0.525137, -0.835814, -0.160145,
		0.825032, -0.453859, -0.336651,
		37.091999, 40.382469, 21.014370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496746, 39.992382, 21.469873>,  <36.514477, 40.700172, 21.250027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496746, 39.992382, 21.469873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884727, 40.066513, 21.406828>,  <37.117516, 40.110992, 21.368999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884727, 40.066513, 21.406828>,  <36.496746, 39.992382, 21.469873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884727, 40.066513, 21.406828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221329, -0.403217, 0.887936,
		0.101006, -0.896142, -0.432120,
		0.969954, 0.185327, -0.157615,
		37.175713, 40.122112, 21.359543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782364, 39.415733, 21.591311>,  <36.496746, 39.992382, 21.469873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782364, 39.415733, 21.591311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.050900, 39.707275, 21.645086>,  <37.212021, 39.882202, 21.677351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.050900, 39.707275, 21.645086>,  <36.782364, 39.415733, 21.591311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050900, 39.707275, 21.645086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175907, -0.332905, 0.926408,
		0.719973, -0.598284, -0.351703,
		0.671339, 0.728856, 0.134440,
		37.252300, 39.925934, 21.685419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370991, 39.065079, 21.890312>,  <36.782364, 39.415733, 21.591311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370991, 39.065079, 21.890312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447102, 39.448265, 21.976192>,  <37.492767, 39.678177, 22.027719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447102, 39.448265, 21.976192>,  <37.370991, 39.065079, 21.890312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447102, 39.448265, 21.976192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322685, -0.267570, 0.907899,
		0.927184, -0.103468, -0.360033,
		0.190273, 0.957967, 0.214699,
		37.504185, 39.735657, 22.040602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034245, 38.981136, 22.189966>,  <37.370991, 39.065079, 21.890312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034245, 38.981136, 22.189966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.867779, 39.323414, 22.312990>,  <37.767899, 39.528782, 22.386805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.867779, 39.323414, 22.312990>,  <38.034245, 38.981136, 22.189966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867779, 39.323414, 22.312990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465317, -0.090184, 0.880538,
		0.781211, 0.509558, -0.360640,
		-0.416161, 0.855697, 0.307558,
		37.742931, 39.580124, 22.405258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546955, 39.193115, 22.660057>,  <38.034245, 38.981136, 22.189966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546955, 39.193115, 22.660057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235329, 39.420177, 22.766512>,  <38.048355, 39.556416, 22.830385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235329, 39.420177, 22.766512>,  <38.546955, 39.193115, 22.660057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235329, 39.420177, 22.766512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266625, -0.084217, 0.960114,
		0.567427, 0.818948, -0.085741,
		-0.779062, 0.567655, 0.266139,
		38.001610, 39.590473, 22.846354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895260, 39.701385, 23.179899>,  <38.546955, 39.193115, 22.660057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895260, 39.701385, 23.179899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.499378, 39.677216, 23.231794>,  <38.261848, 39.662712, 23.262932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.499378, 39.677216, 23.231794>,  <38.895260, 39.701385, 23.179899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499378, 39.677216, 23.231794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136697, -0.130551, 0.981973,
		-0.042397, 0.989599, 0.137466,
		-0.989705, -0.060423, 0.129740,
		38.202465, 39.659088, 23.270716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869183, 40.076981, 23.847744>,  <38.895260, 39.701385, 23.179899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869183, 40.076981, 23.847744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.534565, 39.862537, 23.802513>,  <38.333794, 39.733871, 23.775375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.534565, 39.862537, 23.802513>,  <38.869183, 40.076981, 23.847744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534565, 39.862537, 23.802513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011774, -0.188746, 0.981955,
		-0.547776, 0.822778, 0.151582,
		-0.836542, -0.536107, -0.113078,
		38.283604, 39.701706, 23.768589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385899, 40.368267, 24.363216>,  <38.869183, 40.076981, 23.847744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385899, 40.368267, 24.363216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.269402, 39.994564, 24.280903>,  <38.199501, 39.770344, 24.231516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.269402, 39.994564, 24.280903>,  <38.385899, 40.368267, 24.363216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269402, 39.994564, 24.280903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039891, -0.203060, 0.978353,
		-0.955816, 0.293151, 0.021872,
		-0.291246, -0.934253, -0.205782,
		38.182026, 39.714287, 24.219168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795273, 40.266975, 24.668663>,  <38.385899, 40.368267, 24.363216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795273, 40.266975, 24.668663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.959122, 39.905846, 24.616337>,  <38.057430, 39.689167, 24.584940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.959122, 39.905846, 24.616337>,  <37.795273, 40.266975, 24.668663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959122, 39.905846, 24.616337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045628, -0.163496, 0.985488,
		-0.911114, -0.397708, -0.108165,
		0.409621, -0.902828, -0.130816,
		38.082008, 39.634998, 24.577091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032162, 40.287003, 24.877359>,  <37.795273, 40.266975, 24.668663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032162, 40.287003, 24.877359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918758, 40.650467, 24.999968>,  <36.850716, 40.868546, 25.073532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918758, 40.650467, 24.999968>,  <37.032162, 40.287003, 24.877359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918758, 40.650467, 24.999968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023238, 0.326053, -0.945066,
		-0.958688, -0.260811, -0.113554,
		-0.283508, 0.908662, 0.306522,
		36.833706, 40.923065, 25.091925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566357, 40.563004, 24.326117>,  <37.032162, 40.287003, 24.877359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566357, 40.563004, 24.326117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.614967, 40.905499, 24.526949>,  <36.644135, 41.110996, 24.647448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.614967, 40.905499, 24.526949>,  <36.566357, 40.563004, 24.326117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614967, 40.905499, 24.526949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006528, 0.506508, -0.862210,
		-0.992566, 0.101505, 0.067145,
		0.121529, 0.856240, 0.502080,
		36.651424, 41.162369, 24.677572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005016, 41.008953, 24.034536>,  <36.566357, 40.563004, 24.326117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005016, 41.008953, 24.034536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.292763, 41.240711, 24.187799>,  <36.465412, 41.379768, 24.279758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.292763, 41.240711, 24.187799>,  <36.005016, 41.008953, 24.034536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292763, 41.240711, 24.187799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030255, 0.577212, -0.816033,
		-0.693972, 0.575435, 0.432757,
		0.719366, 0.579397, 0.383159,
		36.508572, 41.414532, 24.302748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704384, 41.714790, 23.911173>,  <36.005016, 41.008953, 24.034536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704384, 41.714790, 23.911173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.096977, 41.775223, 23.958269>,  <36.332535, 41.811481, 23.986526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.096977, 41.775223, 23.958269>,  <35.704384, 41.714790, 23.911173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096977, 41.775223, 23.958269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014119, 0.670096, -0.742140,
		-0.191018, 0.726737, 0.659822,
		0.981485, 0.151078, 0.117740,
		36.391422, 41.820545, 23.993591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793613, 42.439075, 23.960199>,  <35.704384, 41.714790, 23.911173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793613, 42.439075, 23.960199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150848, 42.297680, 23.848890>,  <36.365189, 42.212841, 23.782104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150848, 42.297680, 23.848890>,  <35.793613, 42.439075, 23.960199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150848, 42.297680, 23.848890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085536, 0.473842, -0.876446,
		0.441671, 0.806547, 0.392948,
		0.893090, -0.353490, -0.278271,
		36.418774, 42.191631, 23.765409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144657, 43.042747, 23.729044>,  <35.793613, 42.439075, 23.960199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144657, 43.042747, 23.729044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.353420, 42.740047, 23.571596>,  <36.478680, 42.558426, 23.477127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.353420, 42.740047, 23.571596>,  <36.144657, 43.042747, 23.729044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353420, 42.740047, 23.571596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143421, 0.532734, -0.834042,
		0.840856, 0.378842, 0.386574,
		0.521911, -0.756752, -0.393618,
		36.509995, 42.513023, 23.453510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724949, 43.340134, 23.489578>,  <36.144657, 43.042747, 23.729044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724949, 43.340134, 23.489578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724628, 42.986591, 23.302473>,  <36.724434, 42.774467, 23.190210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724628, 42.986591, 23.302473>,  <36.724949, 43.340134, 23.489578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724628, 42.986591, 23.302473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006766, 0.467748, -0.883837,
		0.999977, -0.003875, 0.005604,
		-0.000804, -0.883854, -0.467763,
		36.724388, 42.721436, 23.162144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164879, 43.484516, 22.986120>,  <36.724949, 43.340134, 23.489578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164879, 43.484516, 22.986120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.995449, 43.150631, 22.845352>,  <36.893791, 42.950302, 22.760891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.995449, 43.150631, 22.845352>,  <37.164879, 43.484516, 22.986120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995449, 43.150631, 22.845352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195989, 0.294844, -0.935230,
		0.884407, -0.465110, 0.038707,
		-0.423572, -0.834710, -0.351918,
		36.868378, 42.900219, 22.739777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577141, 43.227234, 22.392574>,  <37.164879, 43.484516, 22.986120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577141, 43.227234, 22.392574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229431, 43.034458, 22.348568>,  <37.020805, 42.918793, 22.322165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229431, 43.034458, 22.348568>,  <37.577141, 43.227234, 22.392574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229431, 43.034458, 22.348568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214947, -0.168086, -0.962052,
		0.445157, -0.859932, 0.249704,
		-0.869272, -0.481937, -0.110015,
		36.968651, 42.889877, 22.315563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707249, 42.561138, 22.026415>,  <37.577141, 43.227234, 22.392574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707249, 42.561138, 22.026415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.327351, 42.654667, 21.943180>,  <37.099411, 42.710785, 21.893238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.327351, 42.654667, 21.943180>,  <37.707249, 42.561138, 22.026415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327351, 42.654667, 21.943180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260714, 0.223054, -0.939295,
		-0.173216, -0.946347, -0.272807,
		-0.949750, 0.233826, -0.208089,
		37.042427, 42.724815, 21.880753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433743, 42.065208, 21.459646>,  <37.707249, 42.561138, 22.026415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433743, 42.065208, 21.459646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226395, 42.407162, 21.468367>,  <37.101986, 42.612331, 21.473598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226395, 42.407162, 21.468367>,  <37.433743, 42.065208, 21.459646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226395, 42.407162, 21.468367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287839, 0.198427, -0.936897,
		-0.805261, -0.479380, -0.348926,
		-0.518366, 0.854881, 0.021801,
		37.070885, 42.663628, 21.474907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857861, 42.028229, 20.825344>,  <37.433743, 42.065208, 21.459646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857861, 42.028229, 20.825344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.883770, 42.417580, 20.913296>,  <36.899315, 42.651188, 20.966066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.883770, 42.417580, 20.913296>,  <36.857861, 42.028229, 20.825344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883770, 42.417580, 20.913296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089091, 0.213819, -0.972802,
		-0.993915, 0.082605, -0.072869,
		0.064777, 0.973374, 0.219877,
		36.903202, 42.709591, 20.979259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460594, 42.389465, 20.331772>,  <36.857861, 42.028229, 20.825344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460594, 42.389465, 20.331772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.698418, 42.686539, 20.455015>,  <36.841110, 42.864780, 20.528961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.698418, 42.686539, 20.455015>,  <36.460594, 42.389465, 20.331772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698418, 42.686539, 20.455015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071662, 0.332722, -0.940298,
		-0.800854, 0.581141, 0.144600,
		0.594557, 0.742679, 0.308108,
		36.876785, 42.909344, 20.547447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891518, 41.927670, 20.421209>,  <36.460594, 42.389465, 20.331772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891518, 41.927670, 20.421209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496864, 41.867413, 20.396364>,  <35.260071, 41.831257, 20.381456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496864, 41.867413, 20.396364>,  <35.891518, 41.927670, 20.421209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496864, 41.867413, 20.396364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000790, -0.385609, 0.922662,
		-0.162942, 0.910282, 0.380574,
		-0.986635, -0.150641, -0.062113,
		35.200874, 41.822220, 20.377729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707481, 42.202549, 20.971224>,  <35.891518, 41.927670, 20.421209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707481, 42.202549, 20.971224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.390263, 41.979675, 20.872742>,  <35.199932, 41.845951, 20.813652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.390263, 41.979675, 20.872742>,  <35.707481, 42.202549, 20.971224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390263, 41.979675, 20.872742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050268, -0.342938, 0.938012,
		-0.607078, 0.756268, 0.243959,
		-0.793051, -0.557183, -0.246206,
		35.152348, 41.812519, 20.798880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150158, 42.293400, 21.507910>,  <35.707481, 42.202549, 20.971224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150158, 42.293400, 21.507910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.042110, 41.961452, 21.312622>,  <34.977283, 41.762283, 21.195450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.042110, 41.961452, 21.312622>,  <35.150158, 42.293400, 21.507910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042110, 41.961452, 21.312622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339096, -0.392584, 0.854922,
		-0.901139, 0.396479, -0.175362,
		-0.270115, -0.829869, -0.488217,
		34.961075, 41.712490, 21.166157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456234, 42.128296, 21.646786>,  <35.150158, 42.293400, 21.507910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456234, 42.128296, 21.646786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.615448, 41.779751, 21.532036>,  <34.710976, 41.570625, 21.463186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.615448, 41.779751, 21.532036>,  <34.456234, 42.128296, 21.646786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615448, 41.779751, 21.532036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348257, -0.432831, 0.831489,
		-0.848696, -0.231056, -0.475740,
		0.398036, -0.871361, -0.286874,
		34.734859, 41.518341, 21.445974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010395, 41.546837, 21.912098>,  <34.456234, 42.128296, 21.646786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010395, 41.546837, 21.912098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342937, 41.333134, 21.850885>,  <34.542461, 41.204914, 21.814157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342937, 41.333134, 21.850885>,  <34.010395, 41.546837, 21.912098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342937, 41.333134, 21.850885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126891, -0.450576, 0.883674,
		-0.541062, -0.715228, -0.442380,
		0.831355, -0.534256, -0.153033,
		34.592346, 41.172859, 21.804976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893749, 40.784786, 21.931915>,  <34.010395, 41.546837, 21.912098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893749, 40.784786, 21.931915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.278709, 40.806313, 22.038414>,  <34.509686, 40.819229, 22.102314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.278709, 40.806313, 22.038414>,  <33.893749, 40.784786, 21.931915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278709, 40.806313, 22.038414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211271, -0.467785, 0.858220,
		0.170731, -0.882202, -0.438828,
		0.962401, 0.053813, 0.266249,
		34.567429, 40.822456, 22.118288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929218, 40.128105, 22.344524>,  <33.893749, 40.784786, 21.931915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929218, 40.128105, 22.344524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.269932, 40.328163, 22.406910>,  <34.474358, 40.448196, 22.444342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.269932, 40.328163, 22.406910>,  <33.929218, 40.128105, 22.344524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269932, 40.328163, 22.406910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117576, -0.472600, 0.873398,
		0.510534, -0.725607, -0.461357,
		0.851781, 0.500144, 0.155964,
		34.525467, 40.478207, 22.453699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517780, 39.628986, 22.429779>,  <33.929218, 40.128105, 22.344524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517780, 39.628986, 22.429779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.599350, 39.981163, 22.601000>,  <34.648293, 40.192471, 22.703733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.599350, 39.981163, 22.601000>,  <34.517780, 39.628986, 22.429779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599350, 39.981163, 22.601000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041956, -0.428980, 0.902339,
		0.978087, -0.201967, -0.050539,
		0.203923, 0.880446, 0.428054,
		34.660526, 40.245296, 22.729416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760853, 38.985611, 22.026968>,  <34.517780, 39.628986, 22.429779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760853, 38.985611, 22.026968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.502174, 38.685047, 21.974548>,  <34.346970, 38.504707, 21.943096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.502174, 38.685047, 21.974548>,  <34.760853, 38.985611, 22.026968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502174, 38.685047, 21.974548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132276, 0.279689, -0.950935,
		0.751194, -0.597627, -0.280266,
		-0.646692, -0.751409, -0.131050,
		34.308167, 38.459625, 21.935234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007111, 38.531582, 21.386995>,  <34.760853, 38.985611, 22.026968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007111, 38.531582, 21.386995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.614391, 38.505623, 21.458401>,  <34.378761, 38.490047, 21.501244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.614391, 38.505623, 21.458401>,  <35.007111, 38.531582, 21.386995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614391, 38.505623, 21.458401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188582, 0.220614, -0.956957,
		0.022719, -0.973200, -0.228835,
		-0.981795, -0.064895, 0.178516,
		34.319855, 38.486153, 21.511955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725674, 38.268883, 20.690371>,  <35.007111, 38.531582, 21.386995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725674, 38.268883, 20.690371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.439190, 38.439323, 20.911453>,  <34.267300, 38.541588, 21.044102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.439190, 38.439323, 20.911453>,  <34.725674, 38.268883, 20.690371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439190, 38.439323, 20.911453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381390, 0.424270, -0.821302,
		-0.584458, -0.799017, -0.141352,
		-0.716206, 0.426106, 0.552705,
		34.224327, 38.567154, 21.077265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054878, 38.085903, 20.458496>,  <34.725674, 38.268883, 20.690371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054878, 38.085903, 20.458496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.984570, 38.425774, 20.657354>,  <33.942383, 38.629696, 20.776670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.984570, 38.425774, 20.657354>,  <34.054878, 38.085903, 20.458496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984570, 38.425774, 20.657354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493120, 0.361089, -0.791485,
		-0.852019, -0.384274, 0.355522,
		-0.175772, 0.849675, 0.497148,
		33.931839, 38.680676, 20.806499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384354, 38.274811, 20.275850>,  <34.054878, 38.085903, 20.458496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384354, 38.274811, 20.275850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.551128, 38.614384, 20.405762>,  <33.651192, 38.818127, 20.483709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.551128, 38.614384, 20.405762>,  <33.384354, 38.274811, 20.275850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551128, 38.614384, 20.405762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462527, 0.505752, -0.728206,
		-0.782454, 0.153395, 0.603519,
		0.416934, 0.848932, 0.324778,
		33.676208, 38.869064, 20.503195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891041, 38.777016, 20.230997>,  <33.384354, 38.274811, 20.275850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891041, 38.777016, 20.230997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.226658, 38.993546, 20.252811>,  <33.428028, 39.123463, 20.265900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.226658, 38.993546, 20.252811>,  <32.891041, 38.777016, 20.230997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226658, 38.993546, 20.252811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192554, 0.389204, -0.900801,
		-0.508855, 0.745308, 0.430793,
		0.839041, 0.541328, 0.054536,
		33.478371, 39.155945, 20.269173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695896, 39.444782, 20.088566>,  <32.891041, 38.777016, 20.230997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695896, 39.444782, 20.088566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.090919, 39.439335, 20.025900>,  <33.327934, 39.436066, 19.988300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.090919, 39.439335, 20.025900>,  <32.695896, 39.444782, 20.088566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090919, 39.439335, 20.025900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137436, 0.409389, -0.901949,
		0.076423, 0.912258, 0.402423,
		0.987558, -0.013623, -0.156664,
		33.387188, 39.435249, 19.978901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867264, 40.126881, 20.077187>,  <32.695896, 39.444782, 20.088566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867264, 40.126881, 20.077187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122231, 39.892864, 19.876616>,  <33.275211, 39.752453, 19.756273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122231, 39.892864, 19.876616>,  <32.867264, 40.126881, 20.077187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122231, 39.892864, 19.876616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053735, 0.615427, -0.786360,
		0.768643, 0.528183, 0.360847,
		0.637417, -0.585040, -0.501426,
		33.313454, 39.717354, 19.726189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132339, 40.654831, 19.670849>,  <32.867264, 40.126881, 20.077187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132339, 40.654831, 19.670849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.195961, 40.324097, 19.455053>,  <33.234135, 40.125656, 19.325575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.195961, 40.324097, 19.455053>,  <33.132339, 40.654831, 19.670849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195961, 40.324097, 19.455053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553379, 0.377873, -0.742283,
		0.817602, 0.416605, -0.397450,
		0.159054, -0.826833, -0.539490,
		33.243675, 40.076046, 19.293207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.905209, 33.171318, 33.817738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197716, 33.011482, 33.596622>,  <35.373222, 32.915581, 33.463955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197716, 33.011482, 33.596622>,  <34.905209, 33.171318, 33.817738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197716, 33.011482, 33.596622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148240, 0.697954, -0.700632,
		0.665782, 0.594297, 0.451160,
		0.731273, -0.399588, -0.552784,
		35.417099, 32.891605, 33.430786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280064, 33.786312, 33.517536>,  <34.905209, 33.171318, 33.817738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280064, 33.786312, 33.517536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372002, 33.477676, 33.280277>,  <35.427166, 33.292496, 33.137920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372002, 33.477676, 33.280277>,  <35.280064, 33.786312, 33.517536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372002, 33.477676, 33.280277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183204, 0.564268, -0.805008,
		0.955827, 0.293698, -0.011661,
		0.229849, -0.771585, -0.593150,
		35.440956, 33.246201, 33.102333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553165, 34.144966, 32.989532>,  <35.280064, 33.786312, 33.517536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553165, 34.144966, 32.989532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500050, 33.773632, 32.850643>,  <35.468182, 33.550831, 32.767307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500050, 33.773632, 32.850643>,  <35.553165, 34.144966, 32.989532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500050, 33.773632, 32.850643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065093, 0.357740, -0.931550,
		0.989004, -0.101098, -0.107932,
		-0.132790, -0.928333, -0.347225,
		35.460213, 33.495132, 32.746475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036751, 34.075710, 32.441383>,  <35.553165, 34.144966, 32.989532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036751, 34.075710, 32.441383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725395, 33.829678, 32.391117>,  <35.538582, 33.682060, 32.360958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725395, 33.829678, 32.391117>,  <36.036751, 34.075710, 32.441383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725395, 33.829678, 32.391117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161093, 0.389163, -0.906973,
		0.606764, -0.685733, -0.402005,
		-0.778387, -0.615079, -0.125664,
		35.491879, 33.645153, 32.353416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053017, 33.900925, 31.718346>,  <36.036751, 34.075710, 32.441383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053017, 33.900925, 31.718346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687092, 33.796776, 31.841850>,  <35.467537, 33.734287, 31.915953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687092, 33.796776, 31.841850>,  <36.053017, 33.900925, 31.718346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687092, 33.796776, 31.841850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393842, 0.405610, -0.824845,
		0.089528, -0.876178, -0.473599,
		-0.914807, -0.260370, 0.308762,
		35.412651, 33.718666, 31.934479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712078, 33.509724, 31.173603>,  <36.053017, 33.900925, 31.718346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712078, 33.509724, 31.173603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424911, 33.662537, 31.406376>,  <35.252613, 33.754227, 31.546040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424911, 33.662537, 31.406376>,  <35.712078, 33.509724, 31.173603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424911, 33.662537, 31.406376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455945, 0.373637, -0.807780,
		-0.526032, -0.845248, -0.094053,
		-0.717917, 0.382035, 0.581932,
		35.209538, 33.777145, 31.580956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187031, 33.342213, 30.871763>,  <35.712078, 33.509724, 31.173603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187031, 33.342213, 30.871763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041672, 33.640610, 31.094990>,  <34.954456, 33.819649, 31.228926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041672, 33.640610, 31.094990>,  <35.187031, 33.342213, 30.871763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041672, 33.640610, 31.094990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438190, 0.391760, -0.809020,
		-0.822152, -0.538533, 0.184524,
		-0.363395, 0.745994, 0.558066,
		34.932652, 33.864407, 31.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450874, 33.335491, 30.811462>,  <35.187031, 33.342213, 30.871763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450874, 33.335491, 30.811462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540516, 33.713341, 30.907351>,  <34.594299, 33.940052, 30.964884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540516, 33.713341, 30.907351>,  <34.450874, 33.335491, 30.811462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540516, 33.713341, 30.907351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519787, 0.323923, -0.790503,
		-0.824377, 0.052552, 0.563595,
		0.224104, 0.944623, 0.239719,
		34.607746, 33.996727, 30.979267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878300, 33.672508, 30.562649>,  <34.450874, 33.335491, 30.811462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878300, 33.672508, 30.562649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093285, 34.001434, 30.637400>,  <34.222275, 34.198792, 30.682251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093285, 34.001434, 30.637400>,  <33.878300, 33.672508, 30.562649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093285, 34.001434, 30.637400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587884, 0.524249, -0.616081,
		-0.604586, 0.221259, 0.765193,
		0.537465, 0.822318, 0.186879,
		34.254524, 34.248131, 30.693464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461681, 34.137611, 30.789303>,  <33.878300, 33.672508, 30.562649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461681, 34.137611, 30.789303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769825, 34.307533, 30.599108>,  <33.954712, 34.409485, 30.484991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769825, 34.307533, 30.599108>,  <33.461681, 34.137611, 30.789303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769825, 34.307533, 30.599108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637408, 0.494299, -0.591084,
		-0.016061, 0.758427, 0.651560,
		0.770359, 0.424803, -0.475488,
		34.000935, 34.434975, 30.456461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177788, 34.810513, 30.654594>,  <33.461681, 34.137611, 30.789303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177788, 34.810513, 30.654594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474388, 34.783012, 30.387627>,  <33.652348, 34.766510, 30.227446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474388, 34.783012, 30.387627>,  <33.177788, 34.810513, 30.654594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474388, 34.783012, 30.387627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532139, 0.545609, -0.647409,
		0.408662, 0.835215, 0.367983,
		0.741500, -0.068753, -0.667420,
		33.696838, 34.762386, 30.187401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256195, 35.481960, 30.433422>,  <33.177788, 34.810513, 30.654594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256195, 35.481960, 30.433422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383762, 35.237453, 30.143694>,  <33.460304, 35.090748, 29.969858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383762, 35.237453, 30.143694>,  <33.256195, 35.481960, 30.433422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383762, 35.237453, 30.143694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595714, 0.465120, -0.654819,
		0.737168, 0.640321, -0.215808,
		0.318918, -0.611272, -0.724319,
		33.479439, 35.054073, 29.926397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720913, 35.989849, 30.353704>,  <33.256195, 35.481960, 30.433422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720913, 35.989849, 30.353704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615242, 36.368164, 30.429283>,  <33.551842, 36.595154, 30.474630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615242, 36.368164, 30.429283>,  <33.720913, 35.989849, 30.353704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615242, 36.368164, 30.429283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235637, -0.126680, 0.963549,
		0.935247, 0.299068, -0.189396,
		-0.264174, 0.945786, 0.188948,
		33.535992, 36.651901, 30.485968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293171, 36.305061, 30.673838>,  <33.720913, 35.989849, 30.353704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293171, 36.305061, 30.673838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979851, 36.530441, 30.778883>,  <33.791859, 36.665668, 30.841911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979851, 36.530441, 30.778883>,  <34.293171, 36.305061, 30.673838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979851, 36.530441, 30.778883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288611, -0.044544, 0.956410,
		0.550586, 0.824949, -0.127727,
		-0.783300, 0.563449, 0.262615,
		33.744862, 36.699474, 30.857668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573887, 36.874733, 31.121748>,  <34.293171, 36.305061, 30.673838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573887, 36.874733, 31.121748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185211, 36.861408, 31.215302>,  <33.952003, 36.853413, 31.271435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185211, 36.861408, 31.215302>,  <34.573887, 36.874733, 31.121748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185211, 36.861408, 31.215302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236244, -0.132650, 0.962597,
		-0.001039, 0.990603, 0.136764,
		-0.971693, -0.033310, 0.233886,
		33.893703, 36.851414, 31.285467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396820, 37.364670, 31.644382>,  <34.573887, 36.874733, 31.121748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396820, 37.364670, 31.644382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065575, 37.146130, 31.694559>,  <33.866829, 37.015007, 31.724665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065575, 37.146130, 31.694559>,  <34.396820, 37.364670, 31.644382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065575, 37.146130, 31.694559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192228, -0.066568, 0.979090,
		-0.526573, 0.834909, 0.160149,
		-0.828112, -0.546347, 0.125441,
		33.817142, 36.982227, 31.732191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088127, 37.642475, 32.186470>,  <34.396820, 37.364670, 31.644382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088127, 37.642475, 32.186470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896328, 37.293167, 32.151878>,  <33.781246, 37.083584, 32.131123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896328, 37.293167, 32.151878>,  <34.088127, 37.642475, 32.186470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896328, 37.293167, 32.151878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146169, -0.176652, 0.973360,
		-0.865283, 0.454085, 0.212349,
		-0.479500, -0.873270, -0.086480,
		33.752480, 37.031185, 32.125935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543285, 37.636036, 32.778820>,  <34.088127, 37.642475, 32.186470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543285, 37.636036, 32.778820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594902, 37.266350, 32.635056>,  <33.625874, 37.044537, 32.548798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594902, 37.266350, 32.635056>,  <33.543285, 37.636036, 32.778820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594902, 37.266350, 32.635056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094829, -0.349279, 0.932208,
		-0.987094, -0.154378, 0.042570,
		0.129044, -0.924214, -0.359411,
		33.633614, 36.989086, 32.527233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051537, 37.222988, 33.113892>,  <33.543285, 37.636036, 32.778820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051537, 37.222988, 33.113892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380032, 37.026905, 32.997093>,  <33.577129, 36.909256, 32.927013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380032, 37.026905, 32.997093>,  <33.051537, 37.222988, 33.113892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380032, 37.026905, 32.997093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090843, -0.392894, 0.915086,
		-0.563305, -0.778031, -0.278128,
		0.821240, -0.490206, -0.291998,
		33.626404, 36.879845, 32.909492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932041, 36.469353, 33.340946>,  <33.051537, 37.222988, 33.113892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932041, 36.469353, 33.340946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323120, 36.517834, 33.272350>,  <33.557770, 36.546921, 33.231194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323120, 36.517834, 33.272350>,  <32.932041, 36.469353, 33.340946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323120, 36.517834, 33.272350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206823, -0.414293, 0.886333,
		0.036373, -0.902038, -0.430122,
		0.977702, 0.121198, -0.171493,
		33.616432, 36.554192, 33.220901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175953, 35.969269, 33.699898>,  <32.932041, 36.469353, 33.340946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175953, 35.969269, 33.699898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509609, 36.184841, 33.652973>,  <33.709805, 36.314186, 33.624817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509609, 36.184841, 33.652973>,  <33.175953, 35.969269, 33.699898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509609, 36.184841, 33.652973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301245, -0.266988, 0.915406,
		0.462020, -0.798918, -0.385056,
		0.834140, 0.538932, -0.117316,
		33.759850, 36.346519, 33.617779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610115, 35.617092, 34.169323>,  <33.175953, 35.969269, 33.699898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610115, 35.617092, 34.169323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778320, 35.969841, 34.084030>,  <33.879242, 36.181492, 34.032852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778320, 35.969841, 34.084030>,  <33.610115, 35.617092, 34.169323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778320, 35.969841, 34.084030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491107, -0.023626, 0.870779,
		0.762879, -0.470893, -0.443030,
		0.420510, 0.881874, -0.213234,
		33.904472, 36.234402, 34.020061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359859, 35.532059, 34.289227>,  <33.610115, 35.617092, 34.169323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359859, 35.532059, 34.289227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254345, 35.916660, 34.320023>,  <34.191036, 36.147423, 34.338501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254345, 35.916660, 34.320023>,  <34.359859, 35.532059, 34.289227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254345, 35.916660, 34.320023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503725, 0.069245, 0.861085,
		0.822606, 0.265921, -0.502599,
		-0.263783, 0.961505, 0.076990,
		34.175209, 36.205112, 34.343121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050739, 35.745174, 34.478836>,  <34.359859, 35.532059, 34.289227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050739, 35.745174, 34.478836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778336, 36.021793, 34.575150>,  <34.614891, 36.187767, 34.632938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778336, 36.021793, 34.575150>,  <35.050739, 35.745174, 34.478836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778336, 36.021793, 34.575150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487533, 0.182846, 0.853744,
		0.546382, 0.698801, -0.461675,
		-0.681013, 0.691552, 0.240785,
		34.574032, 36.229259, 34.647385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487896, 36.361343, 34.578606>,  <35.050739, 35.745174, 34.478836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487896, 36.361343, 34.578606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135632, 36.446423, 34.747932>,  <34.924274, 36.497471, 34.849529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135632, 36.446423, 34.747932>,  <35.487896, 36.361343, 34.578606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135632, 36.446423, 34.747932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473536, 0.421916, 0.773143,
		-0.014160, 0.881333, -0.472284,
		-0.880661, 0.212696, 0.423317,
		34.871433, 36.510231, 34.874928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596630, 37.016685, 34.876499>,  <35.487896, 36.361343, 34.578606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596630, 37.016685, 34.876499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294174, 36.844398, 35.073570>,  <35.112701, 36.741028, 35.191814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294174, 36.844398, 35.073570>,  <35.596630, 37.016685, 34.876499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294174, 36.844398, 35.073570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309102, 0.428514, 0.849018,
		-0.576806, 0.794266, -0.190882,
		-0.756142, -0.430717, 0.492679,
		35.067333, 36.715183, 35.221375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295094, 37.576580, 35.258511>,  <35.596630, 37.016685, 34.876499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295094, 37.576580, 35.258511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301300, 37.210415, 35.419395>,  <35.305023, 36.990715, 35.515926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301300, 37.210415, 35.419395>,  <35.295094, 37.576580, 35.258511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301300, 37.210415, 35.419395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342003, 0.382860, 0.858168,
		-0.939571, 0.124243, 0.319015,
		0.015517, -0.915414, 0.402215,
		35.305954, 36.935791, 35.540062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967876, 37.819946, 35.616386>,  <35.295094, 37.576580, 35.258511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967876, 37.819946, 35.616386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305401, 37.608166, 35.581356>,  <36.507915, 37.481098, 35.560337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305401, 37.608166, 35.581356>,  <35.967876, 37.819946, 35.616386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305401, 37.608166, 35.581356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317381, 0.623943, -0.714118,
		0.432733, 0.574783, 0.694526,
		0.843808, -0.529452, -0.087575,
		36.558544, 37.449329, 35.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718277, 38.224533, 35.734741>,  <35.967876, 37.819946, 35.616386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718277, 38.224533, 35.734741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740749, 37.921581, 35.474522>,  <36.754234, 37.739811, 35.318390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740749, 37.921581, 35.474522>,  <36.718277, 38.224533, 35.734741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740749, 37.921581, 35.474522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062672, 0.652968, -0.754788,
		0.996451, 0.001637, 0.084153,
		0.056185, -0.757384, -0.650548,
		36.757607, 37.694366, 35.279358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855110, 38.577183, 35.076698>,  <36.718277, 38.224533, 35.734741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855110, 38.577183, 35.076698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813808, 38.203926, 34.938950>,  <36.789028, 37.979973, 34.856300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813808, 38.203926, 34.938950>,  <36.855110, 38.577183, 35.076698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813808, 38.203926, 34.938950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005212, 0.345712, -0.938326,
		0.994642, -0.098680, -0.030832,
		-0.103253, -0.933137, -0.344374,
		36.782833, 37.923985, 34.835636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413338, 38.503639, 34.598190>,  <36.855110, 38.577183, 35.076698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413338, 38.503639, 34.598190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124451, 38.239273, 34.516613>,  <36.951118, 38.080654, 34.467667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124451, 38.239273, 34.516613>,  <37.413338, 38.503639, 34.598190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124451, 38.239273, 34.516613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003302, 0.291561, -0.956547,
		0.691656, -0.691511, -0.208389,
		-0.722220, -0.660913, -0.203943,
		36.907784, 38.041000, 34.455429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590611, 38.117470, 34.058826>,  <37.413338, 38.503639, 34.598190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590611, 38.117470, 34.058826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192158, 38.082394, 34.056725>,  <36.953087, 38.061348, 34.055466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192158, 38.082394, 34.056725>,  <37.590611, 38.117470, 34.058826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192158, 38.082394, 34.056725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013306, 0.209710, -0.977673,
		0.086831, -0.973824, -0.210066,
		-0.996134, -0.087688, -0.005251,
		36.893318, 38.056087, 34.055149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399540, 37.957283, 33.342823>,  <37.590611, 38.117470, 34.058826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399540, 37.957283, 33.342823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.043713, 38.076618, 33.481197>,  <36.830215, 38.148220, 33.564220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.043713, 38.076618, 33.481197>,  <37.399540, 37.957283, 33.342823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043713, 38.076618, 33.481197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259029, 0.294335, -0.919930,
		-0.376270, -0.907944, -0.184551,
		-0.889564, 0.298338, 0.345933,
		36.776844, 38.166119, 33.584976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874168, 37.725742, 32.890369>,  <37.399540, 37.957283, 33.342823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874168, 37.725742, 32.890369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705143, 38.048035, 33.056377>,  <36.603729, 38.241409, 33.155983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705143, 38.048035, 33.056377>,  <36.874168, 37.725742, 32.890369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705143, 38.048035, 33.056377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283933, 0.317172, -0.904867,
		-0.860712, -0.500196, 0.094751,
		-0.422559, 0.805733, 0.415016,
		36.578377, 38.289753, 33.180882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315468, 37.849632, 32.429947>,  <36.874168, 37.725742, 32.890369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315468, 37.849632, 32.429947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359779, 38.192680, 32.630829>,  <36.386368, 38.398510, 32.751358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359779, 38.192680, 32.630829>,  <36.315468, 37.849632, 32.429947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359779, 38.192680, 32.630829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392340, 0.502013, -0.770748,
		-0.913125, -0.111653, 0.392092,
		0.110779, 0.857623, 0.502206,
		36.393013, 38.449966, 32.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717190, 38.252552, 32.275890>,  <36.315468, 37.849632, 32.429947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717190, 38.252552, 32.275890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988403, 38.516373, 32.405666>,  <36.151131, 38.674664, 32.483532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988403, 38.516373, 32.405666>,  <35.717190, 38.252552, 32.275890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988403, 38.516373, 32.405666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235821, 0.613260, -0.753857,
		-0.696170, 0.434635, 0.571349,
		0.678038, 0.659549, 0.324437,
		36.191814, 38.714237, 32.502998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452286, 38.875309, 32.112423>,  <35.717190, 38.252552, 32.275890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452286, 38.875309, 32.112423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841686, 38.954861, 32.157562>,  <36.075329, 39.002590, 32.184647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841686, 38.954861, 32.157562>,  <35.452286, 38.875309, 32.112423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841686, 38.954861, 32.157562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010045, 0.530247, -0.847784,
		-0.228444, 0.824188, 0.518196,
		0.973505, 0.198876, 0.112852,
		36.133739, 39.014523, 32.191418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458492, 39.527557, 31.850252>,  <35.452286, 38.875309, 32.112423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458492, 39.527557, 31.850252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824646, 39.369415, 31.819866>,  <36.044338, 39.274529, 31.801636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824646, 39.369415, 31.819866>,  <35.458492, 39.527557, 31.850252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824646, 39.369415, 31.819866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137806, 0.484993, -0.863592,
		0.378269, 0.780048, 0.498435,
		0.915381, -0.395357, -0.075963,
		36.099258, 39.250809, 31.797077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896332, 40.141670, 31.701651>,  <35.458492, 39.527557, 31.850252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896332, 40.141670, 31.701651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087685, 39.812965, 31.577810>,  <36.202496, 39.615742, 31.503506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087685, 39.812965, 31.577810>,  <35.896332, 40.141670, 31.701651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087685, 39.812965, 31.577810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231071, 0.457935, -0.858430,
		0.847203, 0.339122, 0.408955,
		0.478387, -0.821762, -0.309602,
		36.231201, 39.566437, 31.484930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527302, 40.381535, 31.286762>,  <35.896332, 40.141670, 31.701651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527302, 40.381535, 31.286762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442383, 40.004589, 31.183321>,  <36.391430, 39.778419, 31.121256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442383, 40.004589, 31.183321>,  <36.527302, 40.381535, 31.286762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442383, 40.004589, 31.183321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313537, 0.184959, -0.931389,
		0.925540, -0.278813, 0.256200,
		-0.212297, -0.942366, -0.258605,
		36.378693, 39.721878, 31.105740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093330, 40.272491, 30.870029>,  <36.527302, 40.381535, 31.286762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093330, 40.272491, 30.870029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853085, 39.962070, 30.793083>,  <36.708939, 39.775818, 30.746916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853085, 39.962070, 30.793083>,  <37.093330, 40.272491, 30.870029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853085, 39.962070, 30.793083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085201, 0.177101, -0.980498,
		0.794989, -0.605287, -0.040247,
		-0.600610, -0.776056, -0.192364,
		36.672901, 39.729252, 30.735374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426910, 39.768112, 30.376858>,  <37.093330, 40.272491, 30.870029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426910, 39.768112, 30.376858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032291, 39.710491, 30.345919>,  <36.795521, 39.675919, 30.327354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032291, 39.710491, 30.345919>,  <37.426910, 39.768112, 30.376858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032291, 39.710491, 30.345919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059912, 0.121690, -0.990758,
		0.152138, -0.982059, -0.111422,
		-0.986542, -0.144057, -0.077351,
		36.736328, 39.667274, 30.322714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505596, 39.362236, 29.790554>,  <37.426910, 39.768112, 30.376858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505596, 39.362236, 29.790554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127491, 39.486404, 29.830782>,  <36.900627, 39.560905, 29.854919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127491, 39.486404, 29.830782>,  <37.505596, 39.362236, 29.790554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127491, 39.486404, 29.830782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028750, 0.227780, -0.973288,
		-0.325035, -0.922907, -0.206388,
		-0.945265, 0.310419, 0.100570,
		36.843910, 39.579529, 29.860952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072708, 38.946320, 29.345938>,  <37.505596, 39.362236, 29.790554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072708, 38.946320, 29.345938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856602, 39.274075, 29.422592>,  <36.726936, 39.470726, 29.468584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856602, 39.274075, 29.422592>,  <37.072708, 38.946320, 29.345938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856602, 39.274075, 29.422592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023131, 0.213186, -0.976738,
		-0.841177, -0.532130, -0.096224,
		-0.540265, 0.819384, 0.191635,
		36.694523, 39.519890, 29.480083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660671, 38.955959, 28.705782>,  <37.072708, 38.946320, 29.345938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660671, 38.955959, 28.705782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575867, 39.316055, 28.857899>,  <36.524986, 39.532112, 28.949169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575867, 39.316055, 28.857899>,  <36.660671, 38.955959, 28.705782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575867, 39.316055, 28.857899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036177, 0.396100, -0.917495,
		-0.976598, -0.180760, -0.116545,
		-0.212010, 0.900239, 0.380291,
		36.512264, 39.586128, 28.971987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987812, 39.231647, 28.483227>,  <36.660671, 38.955959, 28.705782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987812, 39.231647, 28.483227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242142, 39.523155, 28.584906>,  <36.394741, 39.698059, 28.645912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242142, 39.523155, 28.584906>,  <35.987812, 39.231647, 28.483227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242142, 39.523155, 28.584906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104768, 0.407788, -0.907046,
		-0.764686, 0.550094, 0.335635,
		0.635829, 0.728770, 0.254198,
		36.432892, 39.741787, 28.661165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628605, 39.779190, 28.345591>,  <35.987812, 39.231647, 28.483227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628605, 39.779190, 28.345591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011448, 39.894211, 28.359770>,  <36.241154, 39.963223, 28.368277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011448, 39.894211, 28.359770>,  <35.628605, 39.779190, 28.345591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011448, 39.894211, 28.359770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061770, 0.322050, -0.944706,
		-0.283069, 0.901996, 0.325998,
		0.957108, 0.287554, 0.035446,
		36.298580, 39.980476, 28.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630733, 40.389297, 27.976856>,  <35.628605, 39.779190, 28.345591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630733, 40.389297, 27.976856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027168, 40.337070, 27.987391>,  <36.265030, 40.305737, 27.993711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027168, 40.337070, 27.987391>,  <35.630733, 40.389297, 27.976856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027168, 40.337070, 27.987391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060278, 0.263342, -0.962817,
		0.118774, 0.955826, 0.268866,
		0.991090, -0.130564, 0.026338,
		36.324493, 40.297901, 27.995293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927902, 41.038452, 27.720201>,  <35.630733, 40.389297, 27.976856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927902, 41.038452, 27.720201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.197079, 40.746838, 27.670145>,  <36.358585, 40.571869, 27.640110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.197079, 40.746838, 27.670145>,  <35.927902, 41.038452, 27.720201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197079, 40.746838, 27.670145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220839, 0.359477, -0.906646,
		0.705963, 0.582481, 0.402905,
		0.672939, -0.729036, -0.125143,
		36.398960, 40.528126, 27.632603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572025, 41.388584, 27.506107>,  <35.927902, 41.038452, 27.720201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572025, 41.388584, 27.506107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580982, 41.009857, 27.377710>,  <36.586357, 40.782619, 27.300673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580982, 41.009857, 27.377710>,  <36.572025, 41.388584, 27.506107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580982, 41.009857, 27.377710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214067, 0.318166, -0.923551,
		0.976562, -0.048032, 0.209807,
		0.022394, -0.946818, -0.320991,
		36.587700, 40.725811, 27.281414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104958, 41.372753, 27.186184>,  <36.572025, 41.388584, 27.506107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104958, 41.372753, 27.186184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913692, 41.053341, 27.039915>,  <36.798935, 40.861694, 26.952154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913692, 41.053341, 27.039915>,  <37.104958, 41.372753, 27.186184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913692, 41.053341, 27.039915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182546, 0.316903, -0.930725,
		0.859092, -0.511788, -0.005762,
		-0.478160, -0.798527, -0.365674,
		36.770245, 40.813782, 26.930212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576694, 41.187088, 26.677191>,  <37.104958, 41.372753, 27.186184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576694, 41.187088, 26.677191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216354, 41.040886, 26.583496>,  <37.000149, 40.953163, 26.527279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216354, 41.040886, 26.583496>,  <37.576694, 41.187088, 26.677191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216354, 41.040886, 26.583496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133666, 0.279820, -0.950702,
		0.413035, -0.887752, -0.203220,
		-0.900853, -0.365510, -0.234238,
		36.946098, 40.931232, 26.513226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672680, 40.841652, 26.101915>,  <37.576694, 41.187088, 26.677191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672680, 40.841652, 26.101915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278004, 40.882729, 26.051476>,  <37.041199, 40.907375, 26.021212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278004, 40.882729, 26.051476>,  <37.672680, 40.841652, 26.101915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278004, 40.882729, 26.051476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143851, 0.189444, -0.971297,
		-0.075857, -0.976506, -0.201695,
		-0.986688, 0.102694, -0.126100,
		36.981998, 40.913536, 26.013645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526600, 40.554821, 25.496986>,  <37.672680, 40.841652, 26.101915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526600, 40.554821, 25.496986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191040, 40.769928, 25.530584>,  <36.989704, 40.898991, 25.550743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191040, 40.769928, 25.530584>,  <37.526600, 40.554821, 25.496986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191040, 40.769928, 25.530584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092693, 0.293226, -0.951539,
		-0.536333, -0.790461, -0.295835,
		-0.838901, 0.537764, 0.083997,
		36.939369, 40.931255, 25.555784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521889, 39.908569, 25.272875>,  <37.526600, 40.554821, 25.496986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521889, 39.908569, 25.272875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800392, 39.653721, 25.140629>,  <37.967495, 39.500813, 25.061281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800392, 39.653721, 25.140629>,  <37.521889, 39.908569, 25.272875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800392, 39.653721, 25.140629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296708, -0.163948, 0.940790,
		-0.653600, -0.753126, 0.074888,
		0.696256, -0.637120, -0.330615,
		38.009270, 39.462585, 25.041445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531128, 39.358181, 25.786520>,  <37.521889, 39.908569, 25.272875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531128, 39.358181, 25.786520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878067, 39.323853, 25.590420>,  <38.086231, 39.303257, 25.472759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878067, 39.323853, 25.590420>,  <37.531128, 39.358181, 25.786520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878067, 39.323853, 25.590420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410634, -0.433191, 0.802325,
		-0.281229, -0.897207, -0.340486,
		0.867346, -0.085822, -0.490249,
		38.138271, 39.298107, 25.443344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740768, 38.671356, 25.979105>,  <37.531128, 39.358181, 25.786520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740768, 38.671356, 25.979105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074970, 38.867119, 25.879183>,  <38.275494, 38.984577, 25.819229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074970, 38.867119, 25.879183>,  <37.740768, 38.671356, 25.979105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074970, 38.867119, 25.879183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421519, -0.279238, 0.862756,
		0.352486, -0.826138, -0.439602,
		0.835509, 0.489410, -0.249805,
		38.325623, 39.013943, 25.804241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335297, 38.190716, 26.167688>,  <37.740768, 38.671356, 25.979105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335297, 38.190716, 26.167688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.472210, 38.565971, 26.146761>,  <38.554359, 38.791126, 26.134205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.472210, 38.565971, 26.146761>,  <38.335297, 38.190716, 26.167688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472210, 38.565971, 26.146761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549916, -0.154872, 0.820736,
		0.761860, -0.309698, -0.568908,
		0.342288, 0.938137, -0.052317,
		38.574898, 38.847412, 26.131065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056751, 38.142044, 26.409540>,  <38.335297, 38.190716, 26.167688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056751, 38.142044, 26.409540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936924, 38.522713, 26.436594>,  <38.865028, 38.751114, 26.452827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936924, 38.522713, 26.436594>,  <39.056751, 38.142044, 26.409540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936924, 38.522713, 26.436594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362514, 0.047964, 0.930743,
		0.882520, 0.303340, -0.359364,
		-0.299568, 0.951674, 0.067636,
		38.847054, 38.808216, 26.456884>
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
