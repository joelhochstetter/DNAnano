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
	<23.878901, 35.189854, 35.261829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250267, 35.138050, 35.122536>,  <24.473087, 35.106968, 35.038960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250267, 35.138050, 35.122536>,  <23.878901, 35.189854, 35.261829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.250267, 35.138050, 35.122536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353743, 0.594746, 0.721902,
		0.113617, -0.793412, 0.597987,
		0.928416, -0.129514, -0.348237,
		24.528791, 35.099197, 35.018063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186054, 35.431217, 35.841698>,  <23.878901, 35.189854, 35.261829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186054, 35.431217, 35.841698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488972, 35.403114, 35.581982>,  <24.670721, 35.386253, 35.426151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488972, 35.403114, 35.581982>,  <24.186054, 35.431217, 35.841698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488972, 35.403114, 35.581982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548149, 0.608838, 0.573453,
		0.355022, -0.790178, 0.499579,
		0.757293, -0.070256, -0.649286,
		24.716160, 35.382038, 35.387196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922646, 35.078476, 36.095058>,  <24.186054, 35.431217, 35.841698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922646, 35.078476, 36.095058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951721, 35.354832, 35.807339>,  <24.969168, 35.520645, 35.634708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951721, 35.354832, 35.807339>,  <24.922646, 35.078476, 36.095058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951721, 35.354832, 35.807339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666747, 0.502699, 0.550221,
		0.741731, -0.519587, -0.424104,
		0.072691, 0.690886, -0.719300,
		24.973528, 35.562096, 35.591549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661867, 35.110638, 35.891258>,  <24.922646, 35.078476, 36.095058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661867, 35.110638, 35.891258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476120, 35.457108, 35.817383>,  <25.364672, 35.664989, 35.773060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476120, 35.457108, 35.817383>,  <25.661867, 35.110638, 35.891258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476120, 35.457108, 35.817383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743429, 0.494565, 0.450242,
		0.481326, 0.071777, -0.873598,
		-0.464368, 0.866171, -0.184686,
		25.336809, 35.716957, 35.761978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210043, 35.536213, 35.885994>,  <25.661867, 35.110638, 35.891258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210043, 35.536213, 35.885994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913847, 35.804718, 35.899113>,  <25.736130, 35.965820, 35.906986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913847, 35.804718, 35.899113>,  <26.210043, 35.536213, 35.885994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913847, 35.804718, 35.899113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635405, 0.683363, 0.359548,
		0.218939, 0.287082, -0.932550,
		-0.740490, 0.671266, 0.032799,
		25.691700, 36.006100, 35.908951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347672, 36.057552, 35.425072>,  <26.210043, 35.536213, 35.885994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347672, 36.057552, 35.425072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152613, 36.197777, 35.744900>,  <26.035578, 36.281910, 35.936794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152613, 36.197777, 35.744900>,  <26.347672, 36.057552, 35.425072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152613, 36.197777, 35.744900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842604, 0.428702, 0.325934,
		-0.228516, 0.832659, -0.504439,
		-0.487646, 0.350561, 0.799567,
		26.006319, 36.302944, 35.984772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528490, 36.700642, 35.472054>,  <26.347672, 36.057552, 35.425072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528490, 36.700642, 35.472054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396589, 36.619621, 35.840889>,  <26.317450, 36.571011, 36.062191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396589, 36.619621, 35.840889>,  <26.528490, 36.700642, 35.472054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396589, 36.619621, 35.840889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845300, 0.371586, 0.383915,
		-0.420394, 0.906034, 0.048683,
		-0.329751, -0.202548, 0.922084,
		26.297665, 36.558857, 36.117516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412785, 37.317215, 35.912769>,  <26.528490, 36.700642, 35.472054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412785, 37.317215, 35.912769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518135, 36.974319, 36.089756>,  <26.581347, 36.768581, 36.195950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518135, 36.974319, 36.089756>,  <26.412785, 37.317215, 35.912769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518135, 36.974319, 36.089756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819412, 0.440851, 0.366352,
		-0.509113, 0.266075, 0.818540,
		0.263377, -0.857236, 0.442468,
		26.597149, 36.717148, 36.222496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511461, 37.502625, 36.543598>,  <26.412785, 37.317215, 35.912769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511461, 37.502625, 36.543598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728989, 37.167736, 36.520527>,  <26.859505, 36.966805, 36.506683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728989, 37.167736, 36.520527>,  <26.511461, 37.502625, 36.543598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728989, 37.167736, 36.520527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641901, 0.370709, 0.671221,
		-0.540578, -0.402043, 0.739010,
		0.543818, -0.837219, -0.057675,
		26.892134, 36.916569, 36.503223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644674, 37.328133, 37.154507>,  <26.511461, 37.502625, 36.543598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644674, 37.328133, 37.154507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942196, 37.154675, 36.951054>,  <27.120708, 37.050598, 36.828983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942196, 37.154675, 36.951054>,  <26.644674, 37.328133, 37.154507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942196, 37.154675, 36.951054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640972, 0.247012, 0.726732,
		-0.189508, -0.866564, 0.461685,
		0.743802, -0.433649, -0.508633,
		27.165337, 37.024578, 36.798462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044958, 37.052914, 37.660007>,  <26.644674, 37.328133, 37.154507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044958, 37.052914, 37.660007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289923, 37.039299, 37.344086>,  <27.436901, 37.031132, 37.154533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289923, 37.039299, 37.344086>,  <27.044958, 37.052914, 37.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289923, 37.039299, 37.344086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765950, 0.272788, 0.582157,
		0.195635, -0.961472, 0.193128,
		0.612411, -0.034036, -0.789807,
		27.473646, 37.029087, 37.107143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586786, 36.713341, 37.829689>,  <27.044958, 37.052914, 37.660007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586786, 36.713341, 37.829689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658278, 36.979301, 37.539597>,  <27.701172, 37.138878, 37.365543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658278, 36.979301, 37.539597>,  <27.586786, 36.713341, 37.829689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658278, 36.979301, 37.539597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756171, 0.378763, 0.533614,
		0.629492, -0.643770, -0.435086,
		0.178730, 0.664905, -0.725229,
		27.711897, 37.178772, 37.322029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077785, 36.964256, 38.183716>,  <27.586786, 36.713341, 37.829689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077785, 36.964256, 38.183716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095198, 37.159859, 37.835239>,  <28.105644, 37.277222, 37.626152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095198, 37.159859, 37.835239>,  <28.077785, 36.964256, 38.183716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095198, 37.159859, 37.835239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747470, 0.562642, 0.353162,
		0.662868, -0.666563, -0.341027,
		0.043529, 0.489007, -0.871193,
		28.108255, 37.306561, 37.573883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224211, 37.715271, 37.885544>,  <28.077785, 36.964256, 38.183716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224211, 37.715271, 37.885544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428719, 37.462532, 37.652523>,  <28.551424, 37.310886, 37.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428719, 37.462532, 37.652523>,  <28.224211, 37.715271, 37.885544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428719, 37.462532, 37.652523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777756, -0.051777, -0.626431,
		0.365647, 0.773360, -0.517896,
		0.511271, -0.631850, -0.582553,
		28.582100, 37.272976, 37.477757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199905, 37.935448, 37.157158>,  <28.224211, 37.715271, 37.885544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199905, 37.935448, 37.157158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260111, 37.541210, 37.188004>,  <28.296234, 37.304668, 37.206512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260111, 37.541210, 37.188004>,  <28.199905, 37.935448, 37.157158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260111, 37.541210, 37.188004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795285, -0.167048, -0.582766,
		0.587254, 0.026386, -0.808973,
		0.150515, -0.985596, 0.077115,
		28.305265, 37.245533, 37.211140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381376, 37.569050, 36.469063>,  <28.199905, 37.935448, 37.157158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381376, 37.569050, 36.469063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217278, 37.311104, 36.727009>,  <28.118818, 37.156338, 36.881775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217278, 37.311104, 36.727009>,  <28.381376, 37.569050, 36.469063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217278, 37.311104, 36.727009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792104, -0.098472, -0.602391,
		0.451960, -0.757929, -0.470400,
		-0.410248, -0.644862, 0.644864,
		28.094204, 37.117645, 36.920467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151939, 37.075397, 36.003258>,  <28.381376, 37.569050, 36.469063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151939, 37.075397, 36.003258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948647, 37.073883, 36.347740>,  <27.826670, 37.072975, 36.554432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948647, 37.073883, 36.347740>,  <28.151939, 37.075397, 36.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948647, 37.073883, 36.347740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825105, -0.284406, -0.488176,
		0.246780, -0.958696, 0.141424,
		-0.508234, -0.003783, 0.861211,
		27.796177, 37.072750, 36.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056072, 36.330692, 36.180286>,  <28.151939, 37.075397, 36.003258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056072, 36.330692, 36.180286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781952, 36.564121, 36.354557>,  <27.617479, 36.704178, 36.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781952, 36.564121, 36.354557>,  <28.056072, 36.330692, 36.180286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781952, 36.564121, 36.354557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728259, -0.550615, -0.407997,
		0.001794, -0.596884, 0.802326,
		-0.685300, 0.583568, 0.435674,
		27.576363, 36.739193, 36.485260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574873, 35.803486, 36.440353>,  <28.056072, 36.330692, 36.180286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574873, 35.803486, 36.440353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357635, 36.136730, 36.482269>,  <27.227293, 36.336678, 36.507420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357635, 36.136730, 36.482269>,  <27.574873, 35.803486, 36.440353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357635, 36.136730, 36.482269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833756, -0.520263, -0.184875,
		-0.099502, -0.187774, 0.977159,
		-0.543094, 0.833107, 0.104791,
		27.194708, 36.386662, 36.513706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908695, 35.591480, 36.738243>,  <27.574873, 35.803486, 36.440353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908695, 35.591480, 36.738243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819668, 35.948242, 36.580784>,  <26.766251, 36.162300, 36.486309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819668, 35.948242, 36.580784>,  <26.908695, 35.591480, 36.738243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819668, 35.948242, 36.580784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888796, -0.351560, -0.294018,
		-0.400630, 0.284439, 0.870971,
		-0.222568, 0.891908, -0.393653,
		26.752897, 36.215816, 36.462688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320005, 35.819904, 37.038105>,  <26.908695, 35.591480, 36.738243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320005, 35.819904, 37.038105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383488, 36.187695, 36.894230>,  <26.421577, 36.408367, 36.807903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383488, 36.187695, 36.894230>,  <26.320005, 35.819904, 37.038105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383488, 36.187695, 36.894230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980423, 0.103766, -0.167340,
		-0.116542, 0.379205, 0.917944,
		0.158708, 0.919475, -0.359689,
		26.431101, 36.463539, 36.786324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816254, 36.350430, 37.294083>,  <26.320005, 35.819904, 37.038105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816254, 36.350430, 37.294083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958677, 36.430691, 36.929016>,  <26.044132, 36.478848, 36.709976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958677, 36.430691, 36.929016>,  <25.816254, 36.350430, 37.294083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958677, 36.430691, 36.929016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929364, -0.025846, -0.368258,
		-0.097480, 0.979322, 0.177274,
		0.356061, 0.200650, -0.912667,
		26.065496, 36.490887, 36.655216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372538, 36.800491, 36.998405>,  <25.816254, 36.350430, 37.294083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372538, 36.800491, 36.998405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567335, 36.653057, 36.681679>,  <25.684214, 36.564594, 36.491642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567335, 36.653057, 36.681679>,  <25.372538, 36.800491, 36.998405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567335, 36.653057, 36.681679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859130, -0.038918, -0.510276,
		0.157266, 0.928777, -0.335619,
		0.486994, -0.368589, -0.791820,
		25.713434, 36.542480, 36.444134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131802, 37.250866, 36.443848>,  <25.372538, 36.800491, 36.998405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131802, 37.250866, 36.443848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293880, 36.911720, 36.307060>,  <25.391127, 36.708233, 36.224987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293880, 36.911720, 36.307060>,  <25.131802, 37.250866, 36.443848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293880, 36.911720, 36.307060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773004, -0.118011, -0.623329,
		0.488141, 0.516914, -0.703219,
		0.405195, -0.847864, -0.341971,
		25.415440, 36.657360, 36.204468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785620, 36.945549, 35.937164>,  <25.131802, 37.250866, 36.443848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785620, 36.945549, 35.937164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052242, 36.649513, 35.901451>,  <25.212215, 36.471893, 35.880024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052242, 36.649513, 35.901451>,  <24.785620, 36.945549, 35.937164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052242, 36.649513, 35.901451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571621, -0.430566, -0.698472,
		0.478488, 0.516608, -0.710046,
		0.666558, -0.740087, -0.089284,
		25.252209, 36.427486, 35.874664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803621, 36.781509, 35.231583>,  <24.785620, 36.945549, 35.937164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803621, 36.781509, 35.231583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958935, 36.454403, 35.401520>,  <25.052124, 36.258137, 35.503483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958935, 36.454403, 35.401520>,  <24.803621, 36.781509, 35.231583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958935, 36.454403, 35.401520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411582, -0.566366, -0.714024,
		0.824521, 0.102389, -0.556491,
		0.388286, -0.817769, 0.424839,
		25.075420, 36.209072, 35.528973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021479, 36.505795, 34.682564>,  <24.803621, 36.781509, 35.231583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021479, 36.505795, 34.682564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021339, 36.222263, 34.964714>,  <25.021255, 36.052143, 35.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021339, 36.222263, 34.964714>,  <25.021479, 36.505795, 34.682564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021339, 36.222263, 34.964714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566059, -0.581351, -0.584473,
		0.824365, -0.399489, -0.401037,
		-0.000347, -0.708829, 0.705380,
		25.021235, 36.009613, 35.176327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362148, 35.873829, 34.399429>,  <25.021479, 36.505795, 34.682564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362148, 35.873829, 34.399429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112070, 35.765800, 34.692329>,  <24.962023, 35.700985, 34.868069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112070, 35.765800, 34.692329>,  <25.362148, 35.873829, 34.399429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112070, 35.765800, 34.692329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438967, -0.654079, -0.616027,
		0.645320, -0.706572, 0.290376,
		-0.625196, -0.270069, 0.732252,
		24.924511, 35.684780, 34.912006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005630, 35.376774, 34.038586>,  <25.362148, 35.873829, 34.399429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005630, 35.376774, 34.038586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819189, 35.423969, 34.389317>,  <24.707325, 35.452286, 34.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819189, 35.423969, 34.389317>,  <25.005630, 35.376774, 34.038586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819189, 35.423969, 34.389317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791356, -0.498755, -0.353552,
		0.395607, -0.858675, 0.325842,
		-0.466101, 0.117990, 0.876828,
		24.679359, 35.459366, 34.652367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333138, 34.879948, 33.418995>,  <25.005630, 35.376774, 34.038586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333138, 34.879948, 33.418995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219627, 35.107021, 33.109879>,  <25.151522, 35.243267, 32.924408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219627, 35.107021, 33.109879>,  <25.333138, 34.879948, 33.418995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219627, 35.107021, 33.109879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853260, -0.218225, -0.473630,
		-0.437515, -0.793794, -0.422458,
		-0.283774, 0.567687, -0.772789,
		25.134495, 35.277328, 32.878040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697508, 34.553482, 32.801762>,  <25.333138, 34.879948, 33.418995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697508, 34.553482, 32.801762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572060, 34.926712, 32.731319>,  <25.496790, 35.150650, 32.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572060, 34.926712, 32.731319>,  <25.697508, 34.553482, 32.801762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572060, 34.926712, 32.731319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846843, 0.190950, -0.496382,
		-0.429534, -0.304812, -0.850053,
		-0.313621, 0.933074, -0.176108,
		25.477974, 35.206635, 32.678486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718407, 34.733467, 32.094734>,  <25.697508, 34.553482, 32.801762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718407, 34.733467, 32.094734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754774, 35.071575, 32.305351>,  <25.776594, 35.274441, 32.431721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754774, 35.071575, 32.305351>,  <25.718407, 34.733467, 32.094734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754774, 35.071575, 32.305351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891770, 0.166236, -0.420846,
		-0.443260, 0.507815, -0.738677,
		0.090917, 0.845275, 0.526540,
		25.782049, 35.325157, 32.463314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722210, 35.401772, 31.703167>,  <25.718407, 34.733467, 32.094734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722210, 35.401772, 31.703167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954199, 35.337696, 32.022659>,  <26.093393, 35.299252, 32.214355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954199, 35.337696, 32.022659>,  <25.722210, 35.401772, 31.703167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954199, 35.337696, 32.022659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812886, 0.178011, -0.554553,
		-0.053352, 0.970903, 0.233454,
		0.579974, -0.160185, 0.798731,
		26.128191, 35.289642, 32.262280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150471, 35.996029, 31.727674>,  <25.722210, 35.401772, 31.703167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150471, 35.996029, 31.727674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351246, 35.726120, 31.944098>,  <26.471710, 35.564175, 32.073952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351246, 35.726120, 31.944098>,  <26.150471, 35.996029, 31.727674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351246, 35.726120, 31.944098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755863, 0.038164, -0.653616,
		0.420391, 0.737041, 0.529190,
		0.501938, -0.674770, 0.541058,
		26.501827, 35.523689, 32.106415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801794, 36.157608, 31.613211>,  <26.150471, 35.996029, 31.727674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801794, 36.157608, 31.613211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845327, 35.774437, 31.719433>,  <26.871447, 35.544533, 31.783167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845327, 35.774437, 31.719433>,  <26.801794, 36.157608, 31.613211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845327, 35.774437, 31.719433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863520, -0.041230, -0.502626,
		0.492431, 0.284017, 0.822707,
		0.108834, -0.957932, 0.265557,
		26.877977, 35.487057, 31.799101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561453, 36.074074, 32.315338>,  <26.801794, 36.157608, 31.613211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561453, 36.074074, 32.315338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727198, 35.753910, 32.488609>,  <26.826645, 35.561813, 32.592571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727198, 35.753910, 32.488609>,  <26.561453, 36.074074, 32.315338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727198, 35.753910, 32.488609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756547, 0.038354, -0.652814,
		0.505905, 0.598224, 0.621440,
		0.414364, -0.800410, 0.433181,
		26.851507, 35.513786, 32.618565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182911, 36.260120, 32.269463>,  <26.561453, 36.074074, 32.315338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182911, 36.260120, 32.269463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189907, 35.860191, 32.266747>,  <27.194105, 35.620235, 32.265118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189907, 35.860191, 32.266747>,  <27.182911, 36.260120, 32.269463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189907, 35.860191, 32.266747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661889, 0.016667, -0.749417,
		0.749398, 0.008617, 0.662064,
		0.017493, -0.999824, -0.006787,
		27.195154, 35.560246, 32.264709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893810, 35.963470, 32.470089>,  <27.182911, 36.260120, 32.269463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893810, 35.963470, 32.470089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695223, 35.707024, 32.236000>,  <27.576071, 35.553158, 32.095547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695223, 35.707024, 32.236000>,  <27.893810, 35.963470, 32.470089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695223, 35.707024, 32.236000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694464, 0.111139, -0.710892,
		0.520804, -0.759356, 0.390054,
		-0.496470, -0.641114, -0.585227,
		27.546282, 35.514690, 32.060432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447006, 35.581108, 32.286053>,  <27.893810, 35.963470, 32.470089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447006, 35.581108, 32.286053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149385, 35.523308, 32.025131>,  <27.970814, 35.488628, 31.868578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149385, 35.523308, 32.025131>,  <28.447006, 35.581108, 32.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149385, 35.523308, 32.025131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658809, 0.003764, -0.752301,
		0.111165, -0.989497, 0.092399,
		-0.744052, -0.144503, -0.652308,
		27.926170, 35.479958, 31.829439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896223, 35.599052, 31.772341>,  <28.447006, 35.581108, 32.286053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896223, 35.599052, 31.772341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540060, 35.662254, 31.601599>,  <28.326363, 35.700176, 31.499153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540060, 35.662254, 31.601599>,  <28.896223, 35.599052, 31.772341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540060, 35.662254, 31.601599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444726, 0.102352, -0.889799,
		-0.096899, -0.982120, -0.161402,
		-0.890410, 0.158000, -0.426857,
		28.272938, 35.709656, 31.473541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838673, 35.900959, 31.176098>,  <28.896223, 35.599052, 31.772341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838673, 35.900959, 31.176098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677689, 35.628407, 30.931561>,  <28.581099, 35.464874, 30.784838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677689, 35.628407, 30.931561>,  <28.838673, 35.900959, 31.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677689, 35.628407, 30.931561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798982, -0.064506, 0.597885,
		-0.446824, 0.729078, -0.518453,
		-0.402462, -0.681384, -0.611343,
		28.556950, 35.423992, 30.748158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264118, 36.043289, 30.807661>,  <28.838673, 35.900959, 31.176098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264118, 36.043289, 30.807661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251760, 35.646149, 30.853771>,  <28.244347, 35.407864, 30.881437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251760, 35.646149, 30.853771>,  <28.264118, 36.043289, 30.807661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251760, 35.646149, 30.853771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771434, 0.097019, 0.628870,
		-0.635559, -0.069499, -0.768918,
		-0.030894, -0.992853, 0.115275,
		28.242493, 35.348293, 30.888353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571205, 35.744011, 30.642963>,  <28.264118, 36.043289, 30.807661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571205, 35.744011, 30.642963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756069, 35.515060, 30.913902>,  <27.866987, 35.377689, 31.076466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756069, 35.515060, 30.913902>,  <27.571205, 35.744011, 30.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756069, 35.515060, 30.913902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813004, 0.031576, 0.581402,
		-0.354167, -0.819385, -0.450749,
		0.462159, -0.572373, 0.677346,
		27.894716, 35.343349, 31.117105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042173, 35.326981, 30.964909>,  <27.571205, 35.744011, 30.642963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042173, 35.326981, 30.964909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327560, 35.317677, 31.245029>,  <27.498793, 35.312092, 31.413103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327560, 35.317677, 31.245029>,  <27.042173, 35.326981, 30.964909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327560, 35.317677, 31.245029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692525, -0.175533, 0.699712,
		0.106649, -0.984199, -0.141347,
		0.713467, -0.023263, 0.700303,
		27.541601, 35.310699, 31.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880381, 34.754139, 31.346350>,  <27.042173, 35.326981, 30.964909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880381, 34.754139, 31.346350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113646, 34.955059, 31.601728>,  <27.253605, 35.075611, 31.754955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113646, 34.955059, 31.601728>,  <26.880381, 34.754139, 31.346350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113646, 34.955059, 31.601728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669519, -0.147914, 0.727919,
		0.460070, -0.851947, 0.250043,
		0.583163, 0.502303, 0.638445,
		27.288595, 35.105751, 31.793262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977819, 34.324810, 31.986923>,  <26.880381, 34.754139, 31.346350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977819, 34.324810, 31.986923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020658, 34.709595, 32.087448>,  <27.046362, 34.940464, 32.147762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020658, 34.709595, 32.087448>,  <26.977819, 34.324810, 31.986923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020658, 34.709595, 32.087448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636710, -0.127777, 0.760443,
		0.763630, -0.241454, 0.598807,
		0.107099, 0.961963, 0.251310,
		27.052788, 34.998184, 32.162842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051258, 34.457642, 32.695801>,  <26.977819, 34.324810, 31.986923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051258, 34.457642, 32.695801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906281, 34.798523, 32.544865>,  <26.819294, 35.003052, 32.454304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906281, 34.798523, 32.544865>,  <27.051258, 34.457642, 32.695801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906281, 34.798523, 32.544865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723138, -0.001720, 0.690702,
		0.587969, 0.523209, 0.616883,
		-0.362443, 0.852203, -0.377341,
		26.797548, 35.054184, 32.431664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988228, 34.890839, 33.302105>,  <27.051258, 34.457642, 32.695801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988228, 34.890839, 33.302105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732363, 34.972130, 33.005585>,  <26.578844, 35.020905, 32.827671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732363, 34.972130, 33.005585>,  <26.988228, 34.890839, 33.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732363, 34.972130, 33.005585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752637, 0.030268, 0.657740,
		0.156111, 0.978663, 0.133598,
		-0.639662, 0.203231, -0.741303,
		26.540464, 35.033100, 32.783195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766329, 35.503620, 33.440804>,  <26.988228, 34.890839, 33.302105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766329, 35.503620, 33.440804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503441, 35.271187, 33.248802>,  <26.345709, 35.131725, 33.133602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503441, 35.271187, 33.248802>,  <26.766329, 35.503620, 33.440804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503441, 35.271187, 33.248802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671525, 0.162286, 0.722992,
		-0.342223, 0.797498, -0.496871,
		-0.657219, -0.581085, -0.480002,
		26.306274, 35.096863, 33.104801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483122, 35.536983, 33.746960>,  <26.766329, 35.503620, 33.440804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483122, 35.536983, 33.746960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685579, 35.505215, 34.090473>,  <27.807055, 35.486153, 34.296581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685579, 35.505215, 34.090473>,  <27.483122, 35.536983, 33.746960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685579, 35.505215, 34.090473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242576, -0.968663, 0.053384,
		0.827631, -0.235340, -0.509550,
		0.506145, -0.079422, 0.858783,
		27.837423, 35.481388, 34.348106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195122, 35.498997, 33.551910>,  <27.483122, 35.536983, 33.746960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195122, 35.498997, 33.551910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230352, 35.258133, 33.234509>,  <28.251490, 35.113617, 33.044067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230352, 35.258133, 33.234509>,  <28.195122, 35.498997, 33.551910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230352, 35.258133, 33.234509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733352, -0.578296, 0.357447,
		-0.674120, 0.550436, -0.492527,
		0.088075, -0.602158, -0.793504,
		28.256775, 35.077484, 32.996456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601673, 36.157578, 33.507442>,  <28.195122, 35.498997, 33.551910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601673, 36.157578, 33.507442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683950, 36.533993, 33.400002>,  <28.733316, 36.759842, 33.335537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683950, 36.533993, 33.400002>,  <28.601673, 36.157578, 33.507442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683950, 36.533993, 33.400002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962288, -0.144566, 0.230439,
		0.178020, -0.305870, -0.935282,
		0.205694, 0.941033, -0.268600,
		28.745659, 36.816303, 33.319420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126745, 36.214783, 32.894722>,  <28.601673, 36.157578, 33.507442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126745, 36.214783, 32.894722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156693, 36.505844, 33.167458>,  <29.174662, 36.680481, 33.331100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156693, 36.505844, 33.167458>,  <29.126745, 36.214783, 32.894722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156693, 36.505844, 33.167458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839046, -0.415474, 0.351258,
		0.538884, 0.545800, -0.641644,
		0.074870, 0.727657, 0.681843,
		29.179153, 36.724140, 33.372009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885473, 36.426197, 32.883095>,  <29.126745, 36.214783, 32.894722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885473, 36.426197, 32.883095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701601, 36.478474, 33.234463>,  <29.591278, 36.509838, 33.445282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701601, 36.478474, 33.234463>,  <29.885473, 36.426197, 32.883095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701601, 36.478474, 33.234463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727896, -0.511218, 0.456971,
		0.508783, 0.849457, 0.139870,
		-0.459681, 0.130688, 0.878415,
		29.563696, 36.517681, 33.497986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308603, 36.852047, 33.357975>,  <29.885473, 36.426197, 32.883095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308603, 36.852047, 33.357975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055227, 36.597733, 33.534397>,  <29.903202, 36.445145, 33.640251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055227, 36.597733, 33.534397>,  <30.308603, 36.852047, 33.357975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055227, 36.597733, 33.534397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773775, -0.516709, 0.366449,
		-0.005089, 0.573398, 0.819261,
		-0.633440, -0.635789, 0.441051,
		29.865194, 36.406998, 33.666714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494102, 36.793324, 34.001682>,  <30.308603, 36.852047, 33.357975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494102, 36.793324, 34.001682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349531, 36.436558, 33.892975>,  <30.262789, 36.222500, 33.827751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349531, 36.436558, 33.892975>,  <30.494102, 36.793324, 34.001682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349531, 36.436558, 33.892975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828028, -0.441031, 0.346209,
		-0.428647, -0.099903, 0.897931,
		-0.361428, -0.891914, -0.271769,
		30.241102, 36.168983, 33.811443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334122, 36.261414, 34.592201>,  <30.494102, 36.793324, 34.001682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334122, 36.261414, 34.592201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470982, 36.180912, 34.225067>,  <30.553097, 36.132610, 34.004787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470982, 36.180912, 34.225067>,  <30.334122, 36.261414, 34.592201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470982, 36.180912, 34.225067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906747, -0.185488, 0.378687,
		-0.246462, -0.961816, 0.119026,
		0.342150, -0.201258, -0.917839,
		30.573627, 36.120533, 33.949715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465292, 35.525547, 34.534435>,  <30.334122, 36.261414, 34.592201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465292, 35.525547, 34.534435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684141, 35.783108, 34.320503>,  <30.815451, 35.937645, 34.192142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684141, 35.783108, 34.320503>,  <30.465292, 35.525547, 34.534435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684141, 35.783108, 34.320503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809743, -0.245269, 0.533066,
		0.212063, -0.724730, -0.655587,
		0.547124, 0.643901, -0.534833,
		30.848278, 35.976276, 34.160053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046452, 35.108299, 34.363647>,  <30.465292, 35.525547, 34.534435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046452, 35.108299, 34.363647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142494, 35.495537, 34.334972>,  <31.200119, 35.727879, 34.317768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142494, 35.495537, 34.334972>,  <31.046452, 35.108299, 34.363647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142494, 35.495537, 34.334972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815340, -0.161038, 0.556136,
		0.526850, -0.191978, -0.827994,
		0.240104, 0.968097, -0.071684,
		31.214525, 35.785965, 34.313469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885542, 35.304375, 34.338936>,  <31.046452, 35.108299, 34.363647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885542, 35.304375, 34.338936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704863, 35.630215, 34.484478>,  <31.596455, 35.825718, 34.571804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704863, 35.630215, 34.484478>,  <31.885542, 35.304375, 34.338936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704863, 35.630215, 34.484478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741509, 0.115988, 0.660841,
		0.496119, 0.568305, -0.656426,
		-0.451697, 0.814602, 0.363860,
		31.569353, 35.874596, 34.593636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429806, 35.873619, 34.426628>,  <31.885542, 35.304375, 34.338936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429806, 35.873619, 34.426628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114628, 35.887222, 34.672550>,  <31.925522, 35.895382, 34.820103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114628, 35.887222, 34.672550>,  <32.429806, 35.873619, 34.426628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114628, 35.887222, 34.672550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613485, 0.128839, 0.779125,
		-0.052718, 0.991082, -0.122379,
		-0.787945, 0.034004, 0.614807,
		31.878244, 35.897423, 34.856991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099335, 35.687912, 34.340542>,  <32.429806, 35.873619, 34.426628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099335, 35.687912, 34.340542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145485, 35.927437, 34.657555>,  <33.173176, 36.071152, 34.847763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145485, 35.927437, 34.657555>,  <33.099335, 35.687912, 34.340542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145485, 35.927437, 34.657555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834381, -0.491345, 0.249778,
		0.538978, 0.632455, -0.556330,
		0.115376, 0.598816, 0.792532,
		33.180099, 36.107082, 34.895313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894852, 35.742790, 34.525490>,  <33.099335, 35.687912, 34.340542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894852, 35.742790, 34.525490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677082, 35.782230, 34.858688>,  <33.546421, 35.805893, 35.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677082, 35.782230, 34.858688>,  <33.894852, 35.742790, 34.525490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677082, 35.782230, 34.858688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741914, -0.406732, 0.533040,
		0.391364, 0.908211, 0.148282,
		-0.544424, 0.098600, 0.832995,
		33.513756, 35.811810, 35.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376198, 36.071476, 35.110306>,  <33.894852, 35.742790, 34.525490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376198, 36.071476, 35.110306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153450, 35.741837, 35.151787>,  <34.019802, 35.544052, 35.176678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153450, 35.741837, 35.151787>,  <34.376198, 36.071476, 35.110306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153450, 35.741837, 35.151787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800460, -0.499131, 0.331862,
		-0.221726, 0.267814, 0.937610,
		-0.556868, -0.824102, 0.103704,
		33.986389, 35.494606, 35.182899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578098, 35.512058, 34.598923>,  <34.376198, 36.071476, 35.110306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578098, 35.512058, 34.598923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304581, 35.245003, 34.716698>,  <34.140472, 35.084770, 34.787361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304581, 35.245003, 34.716698>,  <34.578098, 35.512058, 34.598923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304581, 35.245003, 34.716698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257692, -0.598467, -0.758573,
		0.682659, -0.442832, 0.581271,
		-0.683792, -0.667636, 0.294435,
		34.099442, 35.044712, 34.805027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892265, 34.838158, 34.572514>,  <34.578098, 35.512058, 34.598923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892265, 34.838158, 34.572514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515667, 34.718025, 34.511333>,  <34.289707, 34.645947, 34.474625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515667, 34.718025, 34.511333>,  <34.892265, 34.838158, 34.572514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515667, 34.718025, 34.511333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315421, -0.625274, -0.713822,
		0.118750, -0.720300, 0.683422,
		-0.941492, -0.300332, -0.152947,
		34.233219, 34.627926, 34.465450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700100, 34.141697, 34.453735>,  <34.892265, 34.838158, 34.572514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700100, 34.141697, 34.453735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405128, 34.317471, 34.248566>,  <34.228146, 34.422935, 34.125465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405128, 34.317471, 34.248566>,  <34.700100, 34.141697, 34.453735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405128, 34.317471, 34.248566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222842, -0.558593, -0.798946,
		-0.637604, -0.703468, 0.313998,
		-0.737430, 0.439439, -0.512923,
		34.183899, 34.449303, 34.094688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355324, 33.606964, 34.197536>,  <34.700100, 34.141697, 34.453735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355324, 33.606964, 34.197536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253738, 33.913643, 33.961678>,  <34.192787, 34.097649, 33.820164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253738, 33.913643, 33.961678>,  <34.355324, 33.606964, 34.197536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253738, 33.913643, 33.961678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219604, -0.548004, -0.807134,
		-0.941955, -0.334468, -0.029199,
		-0.253959, 0.766696, -0.589646,
		34.177551, 34.143650, 33.784782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045197, 33.273655, 33.646591>,  <34.355324, 33.606964, 34.197536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045197, 33.273655, 33.646591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123085, 33.639690, 33.505341>,  <34.169819, 33.859310, 33.420589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123085, 33.639690, 33.505341>,  <34.045197, 33.273655, 33.646591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123085, 33.639690, 33.505341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172646, -0.386369, -0.906042,
		-0.965546, 0.115457, -0.233220,
		0.194717, 0.915090, -0.353123,
		34.181499, 33.914219, 33.399403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564945, 33.467556, 33.076054>,  <34.045197, 33.273655, 33.646591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564945, 33.467556, 33.076054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889973, 33.695492, 33.027023>,  <34.084988, 33.832253, 32.997604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889973, 33.695492, 33.027023>,  <33.564945, 33.467556, 33.076054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889973, 33.695492, 33.027023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098270, -0.341213, -0.934835,
		-0.574527, 0.747569, -0.333256,
		0.812565, 0.569837, -0.122573,
		34.133743, 33.866444, 32.990250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408279, 33.894936, 32.506695>,  <33.564945, 33.467556, 33.076054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408279, 33.894936, 32.506695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806885, 33.909077, 32.536949>,  <34.046047, 33.917561, 32.555099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806885, 33.909077, 32.536949>,  <33.408279, 33.894936, 32.506695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806885, 33.909077, 32.536949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081925, -0.239584, -0.967413,
		-0.016084, 0.970232, -0.241644,
		0.996509, 0.035357, 0.075633,
		34.105839, 33.919685, 32.559639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631088, 34.349026, 32.005783>,  <33.408279, 33.894936, 32.506695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631088, 34.349026, 32.005783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968437, 34.154209, 32.096573>,  <34.170845, 34.037319, 32.151047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968437, 34.154209, 32.096573>,  <33.631088, 34.349026, 32.005783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968437, 34.154209, 32.096573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192784, -0.120029, -0.973872,
		0.501559, 0.865092, -0.007335,
		0.843370, -0.487040, 0.226978,
		34.221447, 34.008099, 32.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150002, 34.702038, 31.593264>,  <33.631088, 34.349026, 32.005783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150002, 34.702038, 31.593264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287113, 34.343224, 31.704861>,  <34.369381, 34.127937, 31.771818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287113, 34.343224, 31.704861>,  <34.150002, 34.702038, 31.593264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287113, 34.343224, 31.704861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403735, -0.127488, -0.905950,
		0.848233, 0.423181, 0.318463,
		0.342780, -0.897031, 0.278992,
		34.389946, 34.074116, 31.788559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900124, 34.707287, 31.450573>,  <34.150002, 34.702038, 31.593264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900124, 34.707287, 31.450573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818626, 34.316143, 31.469690>,  <34.769730, 34.081459, 31.481161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818626, 34.316143, 31.469690>,  <34.900124, 34.707287, 31.450573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818626, 34.316143, 31.469690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202720, -0.089895, -0.975102,
		0.957807, -0.188980, 0.216546,
		-0.203741, -0.977858, 0.047792,
		34.757504, 34.022785, 31.484028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320358, 34.413662, 31.026531>,  <34.900124, 34.707287, 31.450573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320358, 34.413662, 31.026531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018272, 34.152039, 31.043825>,  <34.837021, 33.995064, 31.054201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018272, 34.152039, 31.043825>,  <35.320358, 34.413662, 31.026531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018272, 34.152039, 31.043825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159476, -0.247318, -0.955720,
		0.635787, -0.714874, 0.291084,
		-0.755210, -0.654056, 0.043236,
		34.791710, 33.955822, 31.056795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590824, 33.661327, 30.838154>,  <35.320358, 34.413662, 31.026531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590824, 33.661327, 30.838154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196766, 33.684246, 30.773394>,  <34.960331, 33.697998, 30.734537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196766, 33.684246, 30.773394>,  <35.590824, 33.661327, 30.838154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196766, 33.684246, 30.773394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146523, -0.211356, -0.966364,
		-0.089586, -0.975728, 0.199821,
		-0.985142, 0.057294, -0.161901,
		34.901222, 33.701435, 30.724823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497776, 33.167156, 30.299112>,  <35.590824, 33.661327, 30.838154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497776, 33.167156, 30.299112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158207, 33.378494, 30.293621>,  <34.954468, 33.505299, 30.290325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158207, 33.378494, 30.293621>,  <35.497776, 33.167156, 30.299112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158207, 33.378494, 30.293621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080446, -0.154844, -0.984658,
		-0.522366, -0.834790, 0.173954,
		-0.848918, 0.528346, -0.013730,
		34.903530, 33.536999, 30.289503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980076, 32.762020, 29.825016>,  <35.497776, 33.167156, 30.299112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980076, 32.762020, 29.825016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875832, 33.147713, 29.844412>,  <34.813286, 33.379128, 29.856049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875832, 33.147713, 29.844412>,  <34.980076, 32.762020, 29.825016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875832, 33.147713, 29.844412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025449, 0.057067, -0.998046,
		-0.965110, -0.258863, -0.039411,
		-0.260606, 0.964227, 0.048488,
		34.797649, 33.436981, 29.858957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460712, 32.736687, 29.309027>,  <34.980076, 32.762020, 29.825016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460712, 32.736687, 29.309027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560303, 33.113613, 29.398516>,  <34.620056, 33.339767, 29.452209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560303, 33.113613, 29.398516>,  <34.460712, 32.736687, 29.309027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560303, 33.113613, 29.398516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150334, 0.265797, -0.952235,
		-0.956771, 0.203451, 0.207839,
		0.248976, 0.942316, 0.223721,
		34.634995, 33.396309, 29.465631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055405, 33.061157, 28.899200>,  <34.460712, 32.736687, 29.309027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055405, 33.061157, 28.899200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338505, 33.332985, 28.976431>,  <34.508366, 33.496082, 29.022770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338505, 33.332985, 28.976431>,  <34.055405, 33.061157, 28.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338505, 33.332985, 28.976431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122394, 0.151218, -0.980894,
		-0.695778, 0.717861, 0.023850,
		0.707752, 0.679565, 0.193076,
		34.550831, 33.536854, 29.034353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839611, 33.696442, 28.532261>,  <34.055405, 33.061157, 28.899200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839611, 33.696442, 28.532261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233917, 33.687943, 28.598978>,  <34.470501, 33.682842, 28.639008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233917, 33.687943, 28.598978>,  <33.839611, 33.696442, 28.532261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233917, 33.687943, 28.598978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165081, 0.310673, -0.936072,
		-0.031928, 0.950279, 0.309758,
		0.985763, -0.021248, 0.166792,
		34.529648, 33.681568, 28.649015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088337, 34.287991, 28.226574>,  <33.839611, 33.696442, 28.532261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088337, 34.287991, 28.226574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434525, 34.094994, 28.280493>,  <34.642235, 33.979195, 28.312843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434525, 34.094994, 28.280493>,  <34.088337, 34.287991, 28.226574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434525, 34.094994, 28.280493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325248, 0.336521, -0.883723,
		0.381027, 0.808675, 0.448177,
		0.865466, -0.482491, 0.134797,
		34.694164, 33.950245, 28.320932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525509, 34.752499, 28.034710>,  <34.088337, 34.287991, 28.226574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525509, 34.752499, 28.034710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685719, 34.386696, 28.011885>,  <34.781845, 34.167213, 27.998190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685719, 34.386696, 28.011885>,  <34.525509, 34.752499, 28.034710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685719, 34.386696, 28.011885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193056, 0.145101, -0.970400,
		0.895716, 0.377657, 0.234668,
		0.400528, -0.914506, -0.057061,
		34.805878, 34.112343, 27.994766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311413, 34.841061, 27.764063>,  <34.525509, 34.752499, 28.034710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311413, 34.841061, 27.764063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186909, 34.479164, 27.647753>,  <35.112206, 34.262024, 27.577967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186909, 34.479164, 27.647753>,  <35.311413, 34.841061, 27.764063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186909, 34.479164, 27.647753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046330, 0.291163, -0.955551,
		0.949194, -0.310900, -0.048712,
		-0.311264, -0.904746, -0.290774,
		35.093529, 34.207741, 27.560520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618603, 34.781685, 27.140911>,  <35.311413, 34.841061, 27.764063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618603, 34.781685, 27.140911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351791, 34.484379, 27.120396>,  <35.191704, 34.305996, 27.108086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351791, 34.484379, 27.120396>,  <35.618603, 34.781685, 27.140911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351791, 34.484379, 27.120396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134358, 0.187721, -0.972990,
		0.732815, -0.642123, -0.225079,
		-0.667031, -0.743262, -0.051290,
		35.151684, 34.261398, 27.105009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852810, 34.344940, 26.703865>,  <35.618603, 34.781685, 27.140911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852810, 34.344940, 26.703865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453239, 34.326431, 26.703033>,  <35.213497, 34.315327, 26.702536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453239, 34.326431, 26.703033>,  <35.852810, 34.344940, 26.703865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453239, 34.326431, 26.703033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006623, 0.187076, -0.982323,
		0.045844, -0.981255, -0.187182,
		-0.998927, -0.046273, -0.002077,
		35.153561, 34.312550, 26.702410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739155, 33.945686, 26.210567>,  <35.852810, 34.344940, 26.703865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739155, 33.945686, 26.210567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380486, 34.118229, 26.250370>,  <35.165283, 34.221756, 26.274252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380486, 34.118229, 26.250370>,  <35.739155, 33.945686, 26.210567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380486, 34.118229, 26.250370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013166, 0.198688, -0.979974,
		-0.442492, -0.880029, -0.172480,
		-0.896676, 0.431360, 0.099504,
		35.111485, 34.247639, 26.280222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281475, 33.562878, 25.808414>,  <35.739155, 33.945686, 26.210567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281475, 33.562878, 25.808414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125881, 33.931015, 25.824718>,  <35.032524, 34.151897, 25.834501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125881, 33.931015, 25.824718>,  <35.281475, 33.562878, 25.808414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125881, 33.931015, 25.824718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043662, 0.025775, -0.998714,
		-0.920207, -0.390268, 0.030158,
		-0.388989, 0.920340, 0.040758,
		35.009186, 34.207119, 25.836946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783005, 33.547249, 25.310724>,  <35.281475, 33.562878, 25.808414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783005, 33.547249, 25.310724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854481, 33.936268, 25.370346>,  <34.897366, 34.169682, 25.406118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854481, 33.936268, 25.370346>,  <34.783005, 33.547249, 25.310724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854481, 33.936268, 25.370346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062165, 0.162349, -0.984773,
		-0.981940, 0.166699, 0.089469,
		0.178686, 0.972550, 0.149054,
		34.908085, 34.228031, 25.415062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297550, 33.746983, 24.831448>,  <34.783005, 33.547249, 25.310724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297550, 33.746983, 24.831448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505989, 34.072735, 24.933619>,  <34.631054, 34.268185, 24.994921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505989, 34.072735, 24.933619>,  <34.297550, 33.746983, 24.831448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505989, 34.072735, 24.933619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014054, 0.307418, -0.951471,
		-0.853379, 0.492223, 0.171640,
		0.521101, 0.814378, 0.255426,
		34.662319, 34.317047, 25.010246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931427, 34.377602, 24.506594>,  <34.297550, 33.746983, 24.831448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931427, 34.377602, 24.506594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290203, 34.536221, 24.584814>,  <34.505470, 34.631393, 24.631746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290203, 34.536221, 24.584814>,  <33.931427, 34.377602, 24.506594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290203, 34.536221, 24.584814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017225, 0.410602, -0.911652,
		-0.441807, 0.821070, 0.361456,
		0.896945, 0.396548, 0.195550,
		34.559288, 34.655186, 24.643478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026821, 35.160660, 24.303257>,  <33.931427, 34.377602, 24.506594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026821, 35.160660, 24.303257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396641, 35.008507, 24.294098>,  <34.618530, 34.917213, 24.288603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396641, 35.008507, 24.294098>,  <34.026821, 35.160660, 24.303257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396641, 35.008507, 24.294098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074876, 0.240245, -0.967820,
		0.373643, 0.893079, 0.250599,
		0.924545, -0.380384, -0.022895,
		34.674004, 34.894390, 24.287230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416203, 35.586864, 23.847528>,  <34.026821, 35.160660, 24.303257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416203, 35.586864, 23.847528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681942, 35.288631, 23.868521>,  <34.841385, 35.109692, 23.881117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681942, 35.288631, 23.868521>,  <34.416203, 35.586864, 23.847528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681942, 35.288631, 23.868521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286635, 0.189295, -0.939153,
		0.690280, 0.638964, 0.339467,
		0.664344, -0.745582, 0.052482,
		34.881245, 35.064957, 23.884266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025887, 35.842125, 23.697109>,  <34.416203, 35.586864, 23.847528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025887, 35.842125, 23.697109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072582, 35.451763, 23.623363>,  <35.100597, 35.217548, 23.579115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072582, 35.451763, 23.623363>,  <35.025887, 35.842125, 23.697109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072582, 35.451763, 23.623363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332957, 0.213348, -0.918489,
		0.935688, 0.045835, 0.349839,
		0.116736, -0.975901, -0.184366,
		35.107605, 35.158993, 23.568054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665691, 35.765652, 23.455467>,  <35.025887, 35.842125, 23.697109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665691, 35.765652, 23.455467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493622, 35.429665, 23.323156>,  <35.390381, 35.228073, 23.243769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493622, 35.429665, 23.323156>,  <35.665691, 35.765652, 23.455467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493622, 35.429665, 23.323156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174047, 0.282372, -0.943384,
		0.885811, -0.463387, 0.024725,
		-0.430170, -0.839963, -0.330779,
		35.364571, 35.177677, 23.223923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174847, 35.434071, 23.010683>,  <35.665691, 35.765652, 23.455467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174847, 35.434071, 23.010683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812782, 35.303703, 22.901539>,  <35.595543, 35.225483, 22.836052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812782, 35.303703, 22.901539>,  <36.174847, 35.434071, 23.010683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812782, 35.303703, 22.901539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230797, 0.162209, -0.959386,
		0.356944, -0.931378, -0.071604,
		-0.905165, -0.325921, -0.272859,
		35.541233, 35.205929, 22.819681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322182, 34.926064, 22.504164>,  <36.174847, 35.434071, 23.010683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322182, 34.926064, 22.504164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946762, 35.058891, 22.466530>,  <35.721508, 35.138588, 22.443951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946762, 35.058891, 22.466530>,  <36.322182, 34.926064, 22.504164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946762, 35.058891, 22.466530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129771, 0.086937, -0.987725,
		-0.319814, -0.939240, -0.124688,
		-0.938551, 0.332070, -0.094083,
		35.665195, 35.158512, 22.438305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177792, 34.578476, 21.937824>,  <36.322182, 34.926064, 22.504164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177792, 34.578476, 21.937824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872528, 34.834446, 21.973801>,  <35.689369, 34.988029, 21.995386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872528, 34.834446, 21.973801>,  <36.177792, 34.578476, 21.937824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872528, 34.834446, 21.973801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064750, 0.214206, -0.974640,
		-0.642963, -0.737978, -0.204908,
		-0.763155, 0.639925, 0.089943,
		35.643581, 35.026424, 22.000784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683540, 34.399475, 21.474482>,  <36.177792, 34.578476, 21.937824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683540, 34.399475, 21.474482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637928, 34.790215, 21.546886>,  <35.610561, 35.024658, 21.590328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637928, 34.790215, 21.546886>,  <35.683540, 34.399475, 21.474482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637928, 34.790215, 21.546886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019637, 0.179947, -0.983480,
		-0.993283, -0.115702, -0.001337,
		-0.114031, 0.976848, 0.181010,
		35.603718, 35.083267, 21.601189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460911, 34.594204, 20.800484>,  <35.683540, 34.399475, 21.474482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460911, 34.594204, 20.800484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508171, 34.950417, 20.976210>,  <35.536526, 35.164143, 21.081644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508171, 34.950417, 20.976210>,  <35.460911, 34.594204, 20.800484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508171, 34.950417, 20.976210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249833, 0.401523, -0.881114,
		-0.961054, 0.213856, -0.175045,
		0.118147, 0.890530, 0.439314,
		35.543613, 35.217575, 21.108004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040043, 35.085064, 20.380468>,  <35.460911, 34.594204, 20.800484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040043, 35.085064, 20.380468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338272, 35.262337, 20.579552>,  <35.517208, 35.368702, 20.699001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338272, 35.262337, 20.579552>,  <35.040043, 35.085064, 20.380468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338272, 35.262337, 20.579552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408743, 0.285764, -0.866758,
		-0.526358, 0.849664, 0.031910,
		0.745572, 0.443181, 0.497708,
		35.561943, 35.395290, 20.728865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942810, 35.851665, 20.217632>,  <35.040043, 35.085064, 20.380468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942810, 35.851665, 20.217632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327930, 35.864574, 20.324944>,  <35.559002, 35.872318, 20.389330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327930, 35.864574, 20.324944>,  <34.942810, 35.851665, 20.217632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327930, 35.864574, 20.324944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183379, 0.651184, -0.736432,
		-0.198464, 0.758234, 0.621043,
		0.962800, 0.032269, 0.268280,
		35.616772, 35.874256, 20.405428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114326, 36.525257, 20.185045>,  <34.942810, 35.851665, 20.217632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114326, 36.525257, 20.185045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467297, 36.337284, 20.176289>,  <35.679081, 36.224499, 20.171034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467297, 36.337284, 20.176289>,  <35.114326, 36.525257, 20.185045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467297, 36.337284, 20.176289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310601, 0.616922, -0.723142,
		0.353337, 0.631321, 0.690353,
		0.882428, -0.469937, -0.021892,
		35.732025, 36.196304, 20.169722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651974, 37.032829, 20.359093>,  <35.114326, 36.525257, 20.185045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651974, 37.032829, 20.359093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873783, 36.761494, 20.166277>,  <36.006870, 36.598694, 20.050589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873783, 36.761494, 20.166277>,  <35.651974, 37.032829, 20.359093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873783, 36.761494, 20.166277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480999, 0.733960, -0.479523,
		0.679076, 0.034047, 0.733278,
		0.554523, -0.678339, -0.482037,
		36.040138, 36.557991, 20.021666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338860, 37.304626, 20.406837>,  <35.651974, 37.032829, 20.359093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338860, 37.304626, 20.406837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334229, 37.029255, 20.116753>,  <36.331448, 36.864033, 19.942701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334229, 37.029255, 20.116753>,  <36.338860, 37.304626, 20.406837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334229, 37.029255, 20.116753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465386, 0.638212, -0.613271,
		0.885032, -0.344606, 0.312994,
		-0.011580, -0.688428, -0.725213,
		36.330753, 36.822727, 19.899189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059429, 37.356144, 20.078733>,  <36.338860, 37.304626, 20.406837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059429, 37.356144, 20.078733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814320, 37.164299, 19.827503>,  <36.667255, 37.049194, 19.676765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814320, 37.164299, 19.827503>,  <37.059429, 37.356144, 20.078733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814320, 37.164299, 19.827503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458405, 0.431671, -0.776868,
		0.643718, -0.763959, -0.044661,
		-0.612774, -0.479611, -0.628077,
		36.630486, 37.020416, 19.639080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513538, 36.887154, 19.647791>,  <37.059429, 37.356144, 20.078733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513538, 36.887154, 19.647791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179699, 36.957417, 19.438951>,  <36.979397, 36.999573, 19.313648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179699, 36.957417, 19.438951>,  <37.513538, 36.887154, 19.647791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179699, 36.957417, 19.438951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543389, 0.418073, -0.727972,
		0.090402, -0.891268, -0.444374,
		-0.834599, 0.175658, -0.522100,
		36.929317, 37.010113, 19.282322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757435, 36.859386, 18.948435>,  <37.513538, 36.887154, 19.647791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757435, 36.859386, 18.948435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395439, 37.020378, 18.893290>,  <37.178242, 37.116974, 18.860203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395439, 37.020378, 18.893290>,  <37.757435, 36.859386, 18.948435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395439, 37.020378, 18.893290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362999, 0.561514, -0.743596,
		-0.221867, -0.722991, -0.654263,
		-0.904990, 0.402476, -0.137863,
		37.123943, 37.141121, 18.851931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535046, 36.779587, 18.232515>,  <37.757435, 36.859386, 18.948435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535046, 36.779587, 18.232515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332565, 37.104965, 18.347103>,  <37.211079, 37.300194, 18.415855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332565, 37.104965, 18.347103>,  <37.535046, 36.779587, 18.232515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332565, 37.104965, 18.347103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349159, 0.497036, -0.794382,
		-0.788573, -0.302093, -0.535623,
		-0.506201, 0.813446, 0.286471,
		37.180706, 37.348999, 18.433044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214951, 37.066166, 17.663321>,  <37.535046, 36.779587, 18.232515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214951, 37.066166, 17.663321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253059, 37.361542, 17.930344>,  <37.275925, 37.538765, 18.090557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253059, 37.361542, 17.930344>,  <37.214951, 37.066166, 17.663321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253059, 37.361542, 17.930344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382245, 0.592060, -0.709474,
		-0.919137, 0.322761, -0.225860,
		0.095268, 0.738437, 0.667558,
		37.281639, 37.583073, 18.130611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927811, 37.664757, 17.355385>,  <37.214951, 37.066166, 17.663321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927811, 37.664757, 17.355385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204250, 37.770103, 17.624613>,  <37.370113, 37.833309, 17.786150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204250, 37.770103, 17.624613>,  <36.927811, 37.664757, 17.355385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204250, 37.770103, 17.624613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469383, 0.544594, -0.695052,
		-0.549600, 0.796277, 0.252750,
		0.691100, 0.263364, 0.673068,
		37.411579, 37.849113, 17.826532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762882, 38.414265, 17.268927>,  <36.927811, 37.664757, 17.355385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762882, 38.414265, 17.268927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125217, 38.304501, 17.398024>,  <37.342617, 38.238644, 17.475481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125217, 38.304501, 17.398024>,  <36.762882, 38.414265, 17.268927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125217, 38.304501, 17.398024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415778, 0.721875, -0.553196,
		-0.081177, 0.635293, 0.767993,
		0.905836, -0.274407, 0.322741,
		37.396969, 38.222179, 17.494846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075882, 39.040657, 17.479576>,  <36.762882, 38.414265, 17.268927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075882, 39.040657, 17.479576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344986, 38.758789, 17.389395>,  <37.506447, 38.589668, 17.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344986, 38.758789, 17.389395>,  <37.075882, 39.040657, 17.479576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344986, 38.758789, 17.389395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489076, 0.652221, -0.579148,
		0.555157, 0.279363, 0.783427,
		0.672760, -0.704673, -0.225455,
		37.546814, 38.547386, 17.321758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679131, 39.210190, 17.077818>,  <37.075882, 39.040657, 17.479576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679131, 39.210190, 17.077818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932423, 39.386086, 16.823059>,  <38.084400, 39.491623, 16.670204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932423, 39.386086, 16.823059>,  <37.679131, 39.210190, 17.077818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932423, 39.386086, 16.823059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026826, -0.809944, -0.585893,
		-0.773495, 0.388094, -0.501089,
		0.633235, 0.439743, -0.636899,
		38.122395, 39.518009, 16.631989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355911, 39.299320, 16.403025>,  <37.679131, 39.210190, 17.077818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355911, 39.299320, 16.403025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749306, 39.318851, 16.333311>,  <37.985340, 39.330570, 16.291483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749306, 39.318851, 16.333311>,  <37.355911, 39.299320, 16.403025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749306, 39.318851, 16.333311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115022, -0.574851, -0.810133,
		-0.139746, 0.816800, -0.559740,
		0.983484, 0.048831, -0.174283,
		38.044350, 39.333500, 16.281027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846508, 39.837818, 16.500715>,  <37.355911, 39.299320, 16.403025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846508, 39.837818, 16.500715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827179, 40.189518, 16.690275>,  <36.815582, 40.400539, 16.804010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827179, 40.189518, 16.690275>,  <36.846508, 39.837818, 16.500715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827179, 40.189518, 16.690275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422446, -0.447922, 0.787976,
		0.905099, -0.162118, 0.393082,
		-0.048325, 0.879252, 0.473900,
		36.812683, 40.453293, 16.832445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144512, 39.838024, 17.216120>,  <36.846508, 39.837818, 16.500715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144512, 39.838024, 17.216120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866310, 40.122097, 17.172468>,  <36.699390, 40.292542, 17.146276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866310, 40.122097, 17.172468>,  <37.144512, 39.838024, 17.216120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866310, 40.122097, 17.172468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513268, -0.384777, 0.767139,
		0.502820, 0.589562, 0.632130,
		-0.695505, 0.710185, -0.109130,
		36.657658, 40.335152, 17.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003780, 40.115669, 17.767004>,  <37.144512, 39.838024, 17.216120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003780, 40.115669, 17.767004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671749, 40.181377, 17.553843>,  <36.472530, 40.220802, 17.425945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671749, 40.181377, 17.553843>,  <37.003780, 40.115669, 17.767004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671749, 40.181377, 17.553843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541192, -0.467768, 0.698788,
		-0.134483, 0.868451, 0.477187,
		-0.830076, 0.164275, -0.532905,
		36.422726, 40.230659, 17.393970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541622, 40.351719, 18.218641>,  <37.003780, 40.115669, 17.767004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541622, 40.351719, 18.218641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358898, 40.194145, 17.899607>,  <36.249264, 40.099602, 17.708187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358898, 40.194145, 17.899607>,  <36.541622, 40.351719, 18.218641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358898, 40.194145, 17.899607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547983, -0.581671, 0.601143,
		-0.700742, 0.711671, 0.049846,
		-0.456810, -0.393931, -0.797585,
		36.221855, 40.075966, 17.660332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806862, 40.384407, 18.202698>,  <36.541622, 40.351719, 18.218641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806862, 40.384407, 18.202698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940853, 40.053638, 18.022034>,  <36.021248, 39.855179, 17.913635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940853, 40.053638, 18.022034>,  <35.806862, 40.384407, 18.202698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940853, 40.053638, 18.022034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643147, -0.550983, 0.531771,
		-0.688589, 0.112356, -0.716394,
		0.334974, -0.826918, -0.451662,
		36.041344, 39.805565, 17.886536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193329, 40.037773, 17.831095>,  <35.806862, 40.384407, 18.202698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193329, 40.037773, 17.831095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507984, 39.818848, 17.945389>,  <35.696777, 39.687492, 18.013966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507984, 39.818848, 17.945389>,  <35.193329, 40.037773, 17.831095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507984, 39.818848, 17.945389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572209, -0.472450, 0.670349,
		-0.231896, -0.690823, -0.684827,
		0.786639, -0.547315, 0.285736,
		35.743977, 39.654652, 18.031109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920303, 39.449394, 18.131958>,  <35.193329, 40.037773, 17.831095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920303, 39.449394, 18.131958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283581, 39.466469, 18.298510>,  <35.501545, 39.476711, 18.398439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283581, 39.466469, 18.298510>,  <34.920303, 39.449394, 18.131958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283581, 39.466469, 18.298510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408649, -0.124773, 0.904123,
		0.090546, -0.991267, -0.095873,
		0.908189, 0.042687, 0.416377,
		35.556038, 39.479275, 18.423422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846661, 39.090160, 18.634983>,  <34.920303, 39.449394, 18.131958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846661, 39.090160, 18.634983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175991, 39.283768, 18.753546>,  <35.373589, 39.399933, 18.824684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175991, 39.283768, 18.753546>,  <34.846661, 39.090160, 18.634983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175991, 39.283768, 18.753546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259810, -0.142904, 0.955027,
		0.504610, -0.863309, 0.008096,
		0.823327, 0.484020, 0.296407,
		35.422989, 39.428974, 18.842468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048443, 38.709282, 19.228052>,  <34.846661, 39.090160, 18.634983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048443, 38.709282, 19.228052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212231, 39.072796, 19.260160>,  <35.310501, 39.290905, 19.279425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212231, 39.072796, 19.260160>,  <35.048443, 38.709282, 19.228052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212231, 39.072796, 19.260160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124789, -0.031365, 0.991687,
		0.903750, -0.416080, 0.100564,
		0.409467, 0.908787, 0.080269,
		35.335072, 39.345432, 19.284241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413803, 38.603733, 19.835474>,  <35.048443, 38.709282, 19.228052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413803, 38.603733, 19.835474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370155, 38.997879, 19.783089>,  <35.343967, 39.234367, 19.751657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370155, 38.997879, 19.783089>,  <35.413803, 38.603733, 19.835474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370155, 38.997879, 19.783089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185194, 0.109290, 0.976606,
		0.976625, 0.130817, 0.170558,
		-0.109116, 0.985364, -0.130961,
		35.337421, 39.293488, 19.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835461, 38.972919, 20.397642>,  <35.413803, 38.603733, 19.835474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835461, 38.972919, 20.397642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559486, 39.240070, 20.285976>,  <35.393902, 39.400360, 20.218977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559486, 39.240070, 20.285976>,  <35.835461, 38.972919, 20.397642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559486, 39.240070, 20.285976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269965, 0.120428, 0.955310,
		0.671648, 0.734465, 0.097216,
		-0.689934, 0.667876, -0.279164,
		35.352505, 39.440434, 20.202227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840763, 39.521832, 20.796917>,  <35.835461, 38.972919, 20.397642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840763, 39.521832, 20.796917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470276, 39.573002, 20.655071>,  <35.247982, 39.603703, 20.569963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470276, 39.573002, 20.655071>,  <35.840763, 39.521832, 20.796917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470276, 39.573002, 20.655071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291497, 0.353461, 0.888873,
		0.239051, 0.926661, -0.290094,
		-0.926220, 0.127924, -0.354614,
		35.192410, 39.611378, 20.548687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628639, 40.157295, 21.162487>,  <35.840763, 39.521832, 20.796917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628639, 40.157295, 21.162487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286804, 40.009487, 21.016535>,  <35.081703, 39.920803, 20.928963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286804, 40.009487, 21.016535>,  <35.628639, 40.157295, 21.162487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286804, 40.009487, 21.016535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473741, 0.266899, 0.839247,
		-0.212734, 0.890067, -0.403145,
		-0.854584, -0.369523, -0.364883,
		35.030430, 39.898632, 20.907070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058956, 40.612732, 21.388000>,  <35.628639, 40.157295, 21.162487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058956, 40.612732, 21.388000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860085, 40.276752, 21.301006>,  <34.740761, 40.075165, 21.248810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860085, 40.276752, 21.301006>,  <35.058956, 40.612732, 21.388000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860085, 40.276752, 21.301006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424665, 0.016989, 0.905191,
		-0.756617, 0.542404, -0.365142,
		-0.497182, -0.839946, -0.217486,
		34.710930, 40.024769, 21.235760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517620, 40.816544, 21.643248>,  <35.058956, 40.612732, 21.388000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517620, 40.816544, 21.643248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472015, 40.420334, 21.612640>,  <34.444653, 40.182606, 21.594276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472015, 40.420334, 21.612640>,  <34.517620, 40.816544, 21.643248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472015, 40.420334, 21.612640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237874, -0.047563, 0.970131,
		-0.964582, 0.128804, -0.230199,
		-0.114007, -0.990529, -0.076517,
		34.437813, 40.123177, 21.589685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973648, 40.615829, 22.016878>,  <34.517620, 40.816544, 21.643248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973648, 40.615829, 22.016878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150860, 40.258091, 21.991972>,  <34.257187, 40.043449, 21.977028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150860, 40.258091, 21.991972>,  <33.973648, 40.615829, 22.016878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150860, 40.258091, 21.991972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205174, -0.168757, 0.964067,
		-0.872713, -0.414335, -0.258260,
		0.443029, -0.894342, -0.062266,
		34.283768, 39.989788, 21.973291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564293, 40.107704, 22.375572>,  <33.973648, 40.615829, 22.016878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564293, 40.107704, 22.375572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924587, 39.934044, 22.370075>,  <34.140762, 39.829849, 22.366777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924587, 39.934044, 22.370075>,  <33.564293, 40.107704, 22.375572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924587, 39.934044, 22.370075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150828, -0.342281, 0.927413,
		-0.407344, -0.833279, -0.373787,
		0.900734, -0.434153, -0.013744,
		34.194809, 39.803799, 22.365952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404373, 39.457405, 22.748587>,  <33.564293, 40.107704, 22.375572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404373, 39.457405, 22.748587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801197, 39.501305, 22.724016>,  <34.039291, 39.527645, 22.709274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801197, 39.501305, 22.724016>,  <33.404373, 39.457405, 22.748587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801197, 39.501305, 22.724016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116205, -0.613037, 0.781462,
		0.048105, -0.782395, -0.620922,
		0.992060, 0.109746, -0.061428,
		34.098816, 39.534229, 22.705587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696804, 38.829151, 22.798931>,  <33.404373, 39.457405, 22.748587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696804, 38.829151, 22.798931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979141, 39.083466, 22.923874>,  <34.148544, 39.236053, 22.998840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979141, 39.083466, 22.923874>,  <33.696804, 38.829151, 22.798931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979141, 39.083466, 22.923874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141706, -0.558772, 0.817126,
		0.694052, -0.532498, -0.484498,
		0.705842, 0.635783, 0.312358,
		34.190895, 39.274200, 23.017582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272842, 38.378876, 22.963390>,  <33.696804, 38.829151, 22.798931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272842, 38.378876, 22.963390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329449, 38.717609, 23.168467>,  <34.363411, 38.920849, 23.291513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329449, 38.717609, 23.168467>,  <34.272842, 38.378876, 22.963390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329449, 38.717609, 23.168467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167414, -0.530917, 0.830722,
		0.975677, -0.031729, -0.216904,
		0.141516, 0.846829, 0.512692,
		34.371902, 38.971657, 23.322273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894176, 38.192730, 23.298849>,  <34.272842, 38.378876, 22.963390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894176, 38.192730, 23.298849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729992, 38.508446, 23.481518>,  <34.631481, 38.697876, 23.591120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729992, 38.508446, 23.481518>,  <34.894176, 38.192730, 23.298849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729992, 38.508446, 23.481518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163717, -0.428880, 0.888403,
		0.897061, 0.439420, 0.046819,
		-0.410461, 0.789286, 0.456672,
		34.606853, 38.745232, 23.618519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394825, 38.633678, 23.685825>,  <34.894176, 38.192730, 23.298849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394825, 38.633678, 23.685825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016468, 38.618172, 23.814688>,  <34.789455, 38.608868, 23.892006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016468, 38.618172, 23.814688>,  <35.394825, 38.633678, 23.685825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016468, 38.618172, 23.814688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314122, -0.358288, 0.879180,
		0.081339, 0.932806, 0.351080,
		-0.945892, -0.038770, 0.322158,
		34.732700, 38.606541, 23.911335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368362, 38.443501, 24.403410>,  <35.394825, 38.633678, 23.685825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368362, 38.443501, 24.403410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971233, 38.486385, 24.424629>,  <34.732956, 38.512115, 24.437361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971233, 38.486385, 24.424629>,  <35.368362, 38.443501, 24.403410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971233, 38.486385, 24.424629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007043, -0.390306, 0.920658,
		0.119409, 0.914422, 0.386749,
		-0.992820, 0.107211, 0.053046,
		34.673386, 38.518547, 24.440542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192421, 38.727345, 25.075645>,  <35.368362, 38.443501, 24.403410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192421, 38.727345, 25.075645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869663, 38.530628, 24.944761>,  <34.676010, 38.412598, 24.866230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869663, 38.530628, 24.944761>,  <35.192421, 38.727345, 25.075645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869663, 38.530628, 24.944761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047500, -0.498123, 0.865804,
		-0.588787, 0.714153, 0.378571,
		-0.806892, -0.491792, -0.327211,
		34.627594, 38.383091, 24.846598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721825, 38.760048, 25.644625>,  <35.192421, 38.727345, 25.075645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721825, 38.760048, 25.644625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607048, 38.450363, 25.418964>,  <34.538181, 38.264553, 25.283567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607048, 38.450363, 25.418964>,  <34.721825, 38.760048, 25.644625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607048, 38.450363, 25.418964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247345, -0.509070, 0.824420,
		-0.925466, 0.376098, -0.045426,
		-0.286938, -0.774208, -0.564153,
		34.520966, 38.218102, 25.249718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955395, 38.677265, 25.840641>,  <34.721825, 38.760048, 25.644625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955395, 38.677265, 25.840641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130363, 38.350597, 25.690062>,  <34.235344, 38.154598, 25.599714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130363, 38.350597, 25.690062>,  <33.955395, 38.677265, 25.840641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130363, 38.350597, 25.690062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367073, -0.544314, 0.754307,
		-0.820926, -0.191765, -0.537872,
		0.437421, -0.816669, -0.376449,
		34.261589, 38.105598, 25.577127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501392, 38.225136, 26.082825>,  <33.955395, 38.677265, 25.840641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501392, 38.225136, 26.082825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803570, 37.999470, 25.949543>,  <33.984875, 37.864071, 25.869574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803570, 37.999470, 25.949543>,  <33.501392, 38.225136, 26.082825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803570, 37.999470, 25.949543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328148, -0.765940, 0.552860,
		-0.567118, -0.308315, -0.763753,
		0.755444, -0.564161, -0.333206,
		34.030205, 37.830223, 25.849581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228416, 37.584667, 25.883812>,  <33.501392, 38.225136, 26.082825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228416, 37.584667, 25.883812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610489, 37.523811, 25.985392>,  <33.839733, 37.487297, 26.046339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610489, 37.523811, 25.985392>,  <33.228416, 37.584667, 25.883812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610489, 37.523811, 25.985392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277054, -0.761640, 0.585787,
		0.104296, -0.629888, -0.769652,
		0.955177, -0.152140, 0.253949,
		33.897041, 37.478168, 26.061577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334984, 36.816444, 25.930382>,  <33.228416, 37.584667, 25.883812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334984, 36.816444, 25.930382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648537, 36.965126, 26.129322>,  <33.836670, 37.054337, 26.248686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648537, 36.965126, 26.129322>,  <33.334984, 36.816444, 25.930382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648537, 36.965126, 26.129322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296988, -0.478978, 0.826062,
		0.545274, -0.795244, -0.265071,
		0.783884, 0.371708, 0.497352,
		33.883701, 37.076637, 26.278528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617168, 36.269756, 26.382708>,  <33.334984, 36.816444, 25.930382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617168, 36.269756, 26.382708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740116, 36.617992, 26.536381>,  <33.813885, 36.826935, 26.628584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740116, 36.617992, 26.536381>,  <33.617168, 36.269756, 26.382708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740116, 36.617992, 26.536381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129340, -0.361758, 0.923257,
		0.942759, -0.333472, 0.001408,
		0.307371, 0.870590, 0.384181,
		33.832329, 36.879169, 26.651636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109112, 36.069168, 26.898672>,  <33.617168, 36.269756, 26.382708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109112, 36.069168, 26.898672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957741, 36.432621, 26.969315>,  <33.866920, 36.650692, 27.011700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957741, 36.432621, 26.969315>,  <34.109112, 36.069168, 26.898672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957741, 36.432621, 26.969315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065701, -0.216682, 0.974029,
		0.923298, 0.356993, 0.141695,
		-0.378424, 0.908628, 0.176607,
		33.844215, 36.705208, 27.022297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445755, 36.336632, 27.617344>,  <34.109112, 36.069168, 26.898672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445755, 36.336632, 27.617344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120068, 36.555134, 27.538710>,  <33.924656, 36.686237, 27.491529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120068, 36.555134, 27.538710>,  <34.445755, 36.336632, 27.617344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120068, 36.555134, 27.538710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217225, 0.027363, 0.975738,
		0.538385, 0.837169, 0.096381,
		-0.814220, 0.546259, -0.196586,
		33.875801, 36.719013, 27.479734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455978, 36.799126, 28.171968>,  <34.445755, 36.336632, 27.617344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455978, 36.799126, 28.171968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082184, 36.810276, 28.030003>,  <33.857906, 36.816967, 27.944824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082184, 36.810276, 28.030003>,  <34.455978, 36.799126, 28.171968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082184, 36.810276, 28.030003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351122, 0.092379, 0.931761,
		0.058762, 0.995334, -0.076538,
		-0.934484, 0.027878, -0.354912,
		33.801838, 36.818638, 27.923529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248302, 37.335480, 28.435585>,  <34.455978, 36.799126, 28.171968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248302, 37.335480, 28.435585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910061, 37.141094, 28.347223>,  <33.707115, 37.024464, 28.294207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910061, 37.141094, 28.347223>,  <34.248302, 37.335480, 28.435585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910061, 37.141094, 28.347223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368172, 0.231289, 0.900530,
		-0.386530, 0.842821, -0.374496,
		-0.845603, -0.485961, -0.220902,
		33.656380, 36.995304, 28.280952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578201, 37.831566, 28.613447>,  <34.248302, 37.335480, 28.435585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578201, 37.831566, 28.613447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473740, 37.445507, 28.620138>,  <33.411060, 37.213871, 28.624153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473740, 37.445507, 28.620138>,  <33.578201, 37.831566, 28.613447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473740, 37.445507, 28.620138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442099, 0.134996, 0.886749,
		-0.858106, 0.224185, -0.461947,
		-0.261157, -0.965151, 0.016730,
		33.395393, 37.155960, 28.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793262, 37.731998, 28.856422>,  <33.578201, 37.831566, 28.613447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793262, 37.731998, 28.856422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915401, 37.356987, 28.923113>,  <32.988686, 37.131981, 28.963127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915401, 37.356987, 28.923113>,  <32.793262, 37.731998, 28.856422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915401, 37.356987, 28.923113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510890, -0.013540, 0.859539,
		-0.803587, -0.347639, -0.483110,
		0.305350, -0.937531, 0.166725,
		33.007008, 37.075729, 28.973131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183689, 37.318119, 29.122040>,  <32.793262, 37.731998, 28.856422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183689, 37.318119, 29.122040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507965, 37.117428, 29.242741>,  <32.702530, 36.997013, 29.315161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507965, 37.117428, 29.242741>,  <32.183689, 37.318119, 29.122040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507965, 37.117428, 29.242741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448741, -0.201435, 0.870664,
		-0.376056, -0.841243, -0.388448,
		0.810687, -0.501731, 0.301750,
		32.751171, 36.966908, 29.333265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990986, 36.818058, 29.608923>,  <32.183689, 37.318119, 29.122040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990986, 36.818058, 29.608923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381985, 36.764332, 29.673988>,  <32.616585, 36.732094, 29.713028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381985, 36.764332, 29.673988>,  <31.990986, 36.818058, 29.608923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381985, 36.764332, 29.673988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199903, -0.343517, 0.917625,
		-0.067374, -0.929492, -0.362637,
		0.977497, -0.134316, 0.162664,
		32.675232, 36.724037, 29.722788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131451, 36.117668, 29.815519>,  <31.990986, 36.818058, 29.608923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131451, 36.117668, 29.815519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445717, 36.319923, 29.958101>,  <32.634277, 36.441277, 30.043650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445717, 36.319923, 29.958101>,  <32.131451, 36.117668, 29.815519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445717, 36.319923, 29.958101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156789, -0.394627, 0.905366,
		0.598451, -0.767204, -0.230768,
		0.785668, 0.505635, 0.356454,
		32.681416, 36.471615, 30.065037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558811, 35.647686, 30.152184>,  <32.131451, 36.117668, 29.815519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558811, 35.647686, 30.152184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645821, 36.004524, 30.310604>,  <32.698025, 36.218628, 30.405657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645821, 36.004524, 30.310604>,  <32.558811, 35.647686, 30.152184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645821, 36.004524, 30.310604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061505, -0.417489, 0.906598,
		0.974115, -0.172847, -0.145682,
		0.217524, 0.892092, 0.396051,
		32.711079, 36.272152, 30.429419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046349, 35.450195, 30.696428>,  <32.558811, 35.647686, 30.152184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046349, 35.450195, 30.696428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917858, 35.818218, 30.786146>,  <32.840763, 36.039032, 30.839977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917858, 35.818218, 30.786146>,  <33.046349, 35.450195, 30.696428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917858, 35.818218, 30.786146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134582, -0.190091, 0.972499,
		0.937391, 0.342578, -0.062761,
		-0.321226, 0.920058, 0.224294,
		32.821491, 36.094234, 30.853434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515038, 35.801388, 31.190668>,  <33.046349, 35.450195, 30.696428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515038, 35.801388, 31.190668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180054, 36.016144, 31.231487>,  <32.979065, 36.144997, 31.255980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180054, 36.016144, 31.231487>,  <33.515038, 35.801388, 31.190668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180054, 36.016144, 31.231487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114792, -0.009750, 0.993342,
		0.534310, 0.843596, -0.053465,
		-0.837458, 0.536890, 0.102048,
		32.928818, 36.177212, 31.262102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713921, 36.385967, 31.592171>,  <33.515038, 35.801388, 31.190668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713921, 36.385967, 31.592171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319233, 36.333462, 31.630461>,  <33.082420, 36.301956, 31.653435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319233, 36.333462, 31.630461>,  <33.713921, 36.385967, 31.592171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319233, 36.333462, 31.630461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075384, 0.152010, 0.985500,
		-0.143915, 0.979623, -0.140095,
		-0.986715, -0.131268, 0.095725,
		33.023220, 36.294083, 31.659178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250839, 36.955833, 31.863276>,  <33.713921, 36.385967, 31.592171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250839, 36.955833, 31.863276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091850, 36.604122, 31.968260>,  <32.996456, 36.393097, 32.031250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091850, 36.604122, 31.968260>,  <33.250839, 36.955833, 31.863276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091850, 36.604122, 31.968260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014188, 0.291879, 0.956350,
		-0.917503, 0.376401, -0.128489,
		-0.397475, -0.879277, 0.262459,
		32.972607, 36.340340, 32.046997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916992, 36.875271, 32.260654>,  <33.250839, 36.955833, 31.863276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916992, 36.875271, 32.260654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274891, 36.949276, 32.423233>,  <34.489628, 36.993679, 32.520782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274891, 36.949276, 32.423233>,  <33.916992, 36.875271, 32.260654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274891, 36.949276, 32.423233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237552, 0.573512, -0.783998,
		-0.378154, 0.798031, 0.469197,
		0.894745, 0.185013, 0.406450,
		34.543316, 37.004780, 32.545170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016735, 37.566448, 32.244442>,  <33.916992, 36.875271, 32.260654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016735, 37.566448, 32.244442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381817, 37.405479, 32.272804>,  <34.600864, 37.308899, 32.289822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381817, 37.405479, 32.272804>,  <34.016735, 37.566448, 32.244442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381817, 37.405479, 32.272804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300901, 0.544506, -0.782925,
		0.276454, 0.735916, 0.618062,
		0.912706, -0.402418, 0.070906,
		34.655628, 37.284756, 32.294075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422428, 38.081429, 32.267323>,  <34.016735, 37.566448, 32.244442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422428, 38.081429, 32.267323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652260, 37.781754, 32.135517>,  <34.790157, 37.601948, 32.056435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652260, 37.781754, 32.135517>,  <34.422428, 38.081429, 32.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652260, 37.781754, 32.135517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511224, 0.642929, -0.570344,
		0.639146, 0.159255, 0.752416,
		0.574580, -0.749187, -0.329510,
		34.824635, 37.556999, 32.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043396, 38.445187, 32.251587>,  <34.422428, 38.081429, 32.267323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043396, 38.445187, 32.251587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106876, 38.112679, 32.038494>,  <35.144966, 37.913174, 31.910639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106876, 38.112679, 32.038494>,  <35.043396, 38.445187, 32.251587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106876, 38.112679, 32.038494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578765, 0.515471, -0.631918,
		0.799902, -0.208039, 0.562917,
		0.158704, -0.831270, -0.532732,
		35.154488, 37.863297, 31.878674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783207, 38.359642, 32.126194>,  <35.043396, 38.445187, 32.251587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783207, 38.359642, 32.126194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591061, 38.142906, 31.850321>,  <35.475773, 38.012863, 31.684797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591061, 38.142906, 31.850321>,  <35.783207, 38.359642, 32.126194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591061, 38.142906, 31.850321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598618, 0.372171, -0.709327,
		0.641022, -0.753590, 0.145578,
		-0.480362, -0.541840, -0.689683,
		35.446953, 37.980354, 31.643415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334091, 38.206463, 31.726906>,  <35.783207, 38.359642, 32.126194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334091, 38.206463, 31.726906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010567, 38.123947, 31.506628>,  <35.816452, 38.074436, 31.374460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010567, 38.123947, 31.506628>,  <36.334091, 38.206463, 31.726906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010567, 38.123947, 31.506628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495328, 0.265775, -0.827052,
		0.316971, -0.941705, -0.112783,
		-0.808814, -0.206287, -0.550696,
		35.767921, 38.062061, 31.341419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469067, 37.693508, 31.172548>,  <36.334091, 38.206463, 31.726906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469067, 37.693508, 31.172548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155045, 37.918106, 31.067923>,  <35.966633, 38.052864, 31.005146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155045, 37.918106, 31.067923>,  <36.469067, 37.693508, 31.172548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155045, 37.918106, 31.067923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437976, 0.204560, -0.875404,
		-0.438027, -0.801799, -0.406510,
		-0.785054, 0.561492, -0.261566,
		35.919529, 38.086555, 30.989452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205681, 37.413284, 30.592478>,  <36.469067, 37.693508, 31.172548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205681, 37.413284, 30.592478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037186, 37.775444, 30.571289>,  <35.936089, 37.992741, 30.558575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037186, 37.775444, 30.571289>,  <36.205681, 37.413284, 30.592478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037186, 37.775444, 30.571289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204137, 0.037739, -0.978214,
		-0.883680, -0.422870, -0.200723,
		-0.421233, 0.905404, -0.052974,
		35.910816, 38.047066, 30.555397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808266, 37.426014, 29.948776>,  <36.205681, 37.413284, 30.592478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808266, 37.426014, 29.948776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851692, 37.803604, 30.073431>,  <35.877747, 38.030159, 30.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851692, 37.803604, 30.073431>,  <35.808266, 37.426014, 29.948776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851692, 37.803604, 30.073431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185352, 0.288771, -0.939285,
		-0.976656, 0.159739, -0.143617,
		0.108568, 0.943978, 0.311638,
		35.884262, 38.086796, 30.166922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413136, 37.875011, 29.533039>,  <35.808266, 37.426014, 29.948776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413136, 37.875011, 29.533039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696175, 38.110363, 29.689558>,  <35.865997, 38.251575, 29.783468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696175, 38.110363, 29.689558>,  <35.413136, 37.875011, 29.533039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696175, 38.110363, 29.689558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232254, 0.329332, -0.915204,
		-0.667354, 0.738478, 0.096381,
		0.707600, 0.588380, 0.391295,
		35.908455, 38.286877, 29.806946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321316, 38.371635, 29.153795>,  <35.413136, 37.875011, 29.533039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321316, 38.371635, 29.153795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679184, 38.445667, 29.316429>,  <35.893906, 38.490086, 29.414009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679184, 38.445667, 29.316429>,  <35.321316, 38.371635, 29.153795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679184, 38.445667, 29.316429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231492, 0.586330, -0.776292,
		-0.382072, 0.788645, 0.481725,
		0.894669, 0.185084, 0.406585,
		35.947586, 38.501194, 29.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534477, 39.088089, 29.068504>,  <35.321316, 38.371635, 29.153795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534477, 39.088089, 29.068504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868324, 38.870865, 29.105394>,  <36.068630, 38.740532, 29.127529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868324, 38.870865, 29.105394>,  <35.534477, 39.088089, 29.068504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868324, 38.870865, 29.105394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369644, 0.428038, -0.824710,
		0.408393, 0.722404, 0.557986,
		0.834613, -0.543062, 0.092224,
		36.118710, 38.707947, 29.133062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110863, 39.583939, 29.095724>,  <35.534477, 39.088089, 29.068504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110863, 39.583939, 29.095724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241734, 39.222652, 28.984615>,  <36.320255, 39.005882, 28.917950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241734, 39.222652, 28.984615>,  <36.110863, 39.583939, 29.095724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241734, 39.222652, 28.984615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320012, 0.382484, -0.866775,
		0.889128, 0.194697, 0.414180,
		0.327176, -0.903216, -0.277772,
		36.339886, 38.951687, 28.901283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626614, 39.830715, 28.741899>,  <36.110863, 39.583939, 29.095724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626614, 39.830715, 28.741899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644085, 39.446171, 28.633175>,  <36.654568, 39.215443, 28.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644085, 39.446171, 28.633175>,  <36.626614, 39.830715, 28.741899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644085, 39.446171, 28.633175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353465, 0.269342, -0.895833,
		0.934427, -0.056947, 0.351572,
		0.043678, -0.961359, -0.271809,
		36.657188, 39.157764, 28.551632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326862, 39.695957, 28.350544>,  <36.626614, 39.830715, 28.741899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326862, 39.695957, 28.350544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045647, 39.425602, 28.262074>,  <36.876919, 39.263390, 28.208992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045647, 39.425602, 28.262074>,  <37.326862, 39.695957, 28.350544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045647, 39.425602, 28.262074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153709, 0.159241, -0.975200,
		0.694343, -0.719599, -0.008063,
		-0.703037, -0.675884, -0.221176,
		36.834736, 39.222836, 28.195721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722561, 39.240414, 27.915583>,  <37.326862, 39.695957, 28.350544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722561, 39.240414, 27.915583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328178, 39.189049, 27.872889>,  <37.091549, 39.158230, 27.847273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328178, 39.189049, 27.872889>,  <37.722561, 39.240414, 27.915583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328178, 39.189049, 27.872889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086928, 0.151016, -0.984702,
		0.142533, -0.980160, -0.137737,
		-0.985965, -0.128379, -0.106728,
		37.032391, 39.150524, 27.840868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710426, 39.073418, 27.312880>,  <37.722561, 39.240414, 27.915583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710426, 39.073418, 27.312880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317234, 39.127872, 27.362219>,  <37.081318, 39.160545, 27.391823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317234, 39.127872, 27.362219>,  <37.710426, 39.073418, 27.312880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317234, 39.127872, 27.362219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105921, 0.128585, -0.986026,
		-0.150099, -0.982309, -0.111976,
		-0.982981, 0.136140, 0.123348,
		37.022339, 39.168713, 27.399223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476009, 38.752972, 26.755825>,  <37.710426, 39.073418, 27.312880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476009, 38.752972, 26.755825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175491, 38.987423, 26.877153>,  <36.995178, 39.128094, 26.949951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175491, 38.987423, 26.877153>,  <37.476009, 38.752972, 26.755825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175491, 38.987423, 26.877153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249933, 0.172680, -0.952741,
		-0.610805, -0.791604, 0.016758,
		-0.751300, 0.586127, 0.303322,
		36.950100, 39.163261, 26.968149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861912, 38.495842, 26.466316>,  <37.476009, 38.752972, 26.755825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861912, 38.495842, 26.466316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824409, 38.884747, 26.552032>,  <36.801910, 39.118088, 26.603462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824409, 38.884747, 26.552032>,  <36.861912, 38.495842, 26.466316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824409, 38.884747, 26.552032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170492, 0.196382, -0.965591,
		-0.980889, -0.127061, 0.147352,
		-0.093752, 0.972260, 0.214291,
		36.796284, 39.176426, 26.616320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233505, 38.665752, 26.095383>,  <36.861912, 38.495842, 26.466316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233505, 38.665752, 26.095383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417377, 39.007233, 26.193275>,  <36.527699, 39.212120, 26.252012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417377, 39.007233, 26.193275>,  <36.233505, 38.665752, 26.095383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417377, 39.007233, 26.193275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004657, 0.277888, -0.960602,
		-0.888074, 0.440427, 0.131714,
		0.459677, 0.853699, 0.244734,
		36.555283, 39.263344, 26.266695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843361, 39.197906, 25.802759>,  <36.233505, 38.665752, 26.095383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843361, 39.197906, 25.802759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210686, 39.354511, 25.826141>,  <36.431080, 39.448475, 25.840170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210686, 39.354511, 25.826141>,  <35.843361, 39.197906, 25.802759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210686, 39.354511, 25.826141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112773, 0.400299, -0.909419,
		-0.379445, 0.828542, 0.411753,
		0.918316, 0.391508, 0.058455,
		36.486179, 39.471962, 25.843678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865623, 39.910046, 25.619207>,  <35.843361, 39.197906, 25.802759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865623, 39.910046, 25.619207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248379, 39.803337, 25.573238>,  <36.478031, 39.739311, 25.545656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248379, 39.803337, 25.573238>,  <35.865623, 39.910046, 25.619207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248379, 39.803337, 25.573238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015678, 0.347631, -0.937500,
		0.290046, 0.898881, 0.328460,
		0.956884, -0.266768, -0.114922,
		36.535442, 39.723309, 25.538761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237602, 40.464718, 25.272516>,  <35.865623, 39.910046, 25.619207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237602, 40.464718, 25.272516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388771, 40.100529, 25.205317>,  <36.479473, 39.882015, 25.164997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388771, 40.100529, 25.205317>,  <36.237602, 40.464718, 25.272516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388771, 40.100529, 25.205317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022529, 0.190448, -0.981439,
		0.925565, 0.367119, 0.092485,
		0.377919, -0.910469, -0.168001,
		36.502148, 39.827389, 25.154917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718964, 40.604092, 24.712643>,  <36.237602, 40.464718, 25.272516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718964, 40.604092, 24.712643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705513, 40.204609, 24.697344>,  <36.697445, 39.964920, 24.688164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705513, 40.204609, 24.697344>,  <36.718964, 40.604092, 24.712643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705513, 40.204609, 24.697344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133231, 0.033448, -0.990520,
		0.990515, -0.038399, 0.131933,
		-0.033622, -0.998703, -0.038247,
		36.695427, 39.904999, 24.685869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355270, 40.342972, 24.265156>,  <36.718964, 40.604092, 24.712643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355270, 40.342972, 24.265156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103001, 40.033180, 24.284851>,  <36.951637, 39.847305, 24.296669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103001, 40.033180, 24.284851>,  <37.355270, 40.342972, 24.265156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103001, 40.033180, 24.284851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212689, -0.233520, -0.948805,
		0.746329, -0.587919, 0.311999,
		-0.630679, -0.774480, 0.049239,
		36.913795, 39.800835, 24.299623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702984, 39.762867, 24.023937>,  <37.355270, 40.342972, 24.265156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702984, 39.762867, 24.023937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312847, 39.701077, 23.960882>,  <37.078766, 39.664001, 23.923048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312847, 39.701077, 23.960882>,  <37.702984, 39.762867, 24.023937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312847, 39.701077, 23.960882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193107, -0.251397, -0.948425,
		0.106882, -0.955477, 0.275028,
		-0.975339, -0.154480, -0.157639,
		37.020245, 39.654732, 23.913591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718147, 39.129662, 23.782970>,  <37.702984, 39.762867, 24.023937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718147, 39.129662, 23.782970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386345, 39.320648, 23.667080>,  <37.187263, 39.435242, 23.597546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386345, 39.320648, 23.667080>,  <37.718147, 39.129662, 23.782970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386345, 39.320648, 23.667080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152855, -0.304861, -0.940051,
		-0.537169, -0.824066, 0.179902,
		-0.829509, 0.477467, -0.289724,
		37.137493, 39.463890, 23.580162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326027, 38.592411, 23.349234>,  <37.718147, 39.129662, 23.782970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326027, 38.592411, 23.349234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244343, 38.976486, 23.272989>,  <37.195332, 39.206932, 23.227243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244343, 38.976486, 23.272989>,  <37.326027, 38.592411, 23.349234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244343, 38.976486, 23.272989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273906, -0.130892, -0.952808,
		-0.939826, -0.246783, -0.236273,
		-0.204210, 0.960190, -0.190611,
		37.183079, 39.264542, 23.215805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850151, 38.542213, 22.707739>,  <37.326027, 38.592411, 23.349234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850151, 38.542213, 22.707739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974239, 38.922440, 22.702166>,  <37.048695, 39.150574, 22.698822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974239, 38.922440, 22.702166>,  <36.850151, 38.542213, 22.707739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974239, 38.922440, 22.702166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257461, -0.098115, -0.961295,
		-0.915136, 0.294630, -0.275170,
		0.310225, 0.950561, -0.013933,
		37.067307, 39.207607, 22.697987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526951, 38.875191, 22.198280>,  <36.850151, 38.542213, 22.707739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526951, 38.875191, 22.198280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852642, 39.102436, 22.246077>,  <37.048058, 39.238781, 22.274755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852642, 39.102436, 22.246077>,  <36.526951, 38.875191, 22.198280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852642, 39.102436, 22.246077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198874, -0.079581, -0.976789,
		-0.545415, 0.819095, -0.177780,
		0.814230, 0.568111, 0.119492,
		37.096912, 39.272869, 22.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436363, 39.245163, 21.589357>,  <36.526951, 38.875191, 22.198280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436363, 39.245163, 21.589357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813751, 39.287670, 21.714939>,  <37.040184, 39.313175, 21.790289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813751, 39.287670, 21.714939>,  <36.436363, 39.245163, 21.589357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813751, 39.287670, 21.714939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301343, 0.119464, -0.946002,
		-0.138035, 0.987135, 0.080688,
		0.943472, 0.106267, 0.313956,
		37.096794, 39.319550, 21.809126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745834, 39.688847, 21.206358>,  <36.436363, 39.245163, 21.589357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745834, 39.688847, 21.206358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077976, 39.529716, 21.362432>,  <37.277260, 39.434238, 21.456078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077976, 39.529716, 21.362432>,  <36.745834, 39.688847, 21.206358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077976, 39.529716, 21.362432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461297, 0.097945, -0.881823,
		0.312597, 0.912217, 0.264845,
		0.830355, -0.397827, 0.390186,
		37.327084, 39.410370, 21.479488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377110, 39.992645, 20.836941>,  <36.745834, 39.688847, 21.206358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377110, 39.992645, 20.836941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511909, 39.663651, 21.020218>,  <37.592789, 39.466251, 21.130184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511909, 39.663651, 21.020218>,  <37.377110, 39.992645, 20.836941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511909, 39.663651, 21.020218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724607, -0.084153, -0.684005,
		0.601146, 0.562518, 0.567624,
		0.336998, -0.822491, 0.458193,
		37.613010, 39.416904, 21.157675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041779, 40.063557, 20.854811>,  <37.377110, 39.992645, 20.836941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041779, 40.063557, 20.854811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971573, 39.670830, 20.883759>,  <37.929451, 39.435196, 20.901127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971573, 39.670830, 20.883759>,  <38.041779, 40.063557, 20.854811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971573, 39.670830, 20.883759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456949, -0.146358, -0.877369,
		0.872005, -0.120918, 0.474327,
		-0.175511, -0.981814, 0.072372,
		37.918919, 39.376286, 20.905470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601452, 39.810265, 20.732023>,  <38.041779, 40.063557, 20.854811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601452, 39.810265, 20.732023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366177, 39.494114, 20.663504>,  <38.225014, 39.304424, 20.622393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366177, 39.494114, 20.663504>,  <38.601452, 39.810265, 20.732023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366177, 39.494114, 20.663504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577028, -0.261739, -0.773648,
		0.566638, -0.553892, 0.610020,
		-0.588184, -0.790377, -0.171299,
		38.189720, 39.257000, 20.612114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022270, 39.220524, 20.766245>,  <38.601452, 39.810265, 20.732023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022270, 39.220524, 20.766245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711388, 39.095093, 20.548029>,  <38.524857, 39.019833, 20.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711388, 39.095093, 20.548029>,  <39.022270, 39.220524, 20.766245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711388, 39.095093, 20.548029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627936, -0.330692, -0.704513,
		0.040514, -0.890119, 0.453924,
		-0.777209, -0.313578, -0.545540,
		38.478226, 39.001019, 20.384367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149902, 38.525871, 20.576775>,  <39.022270, 39.220524, 20.766245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149902, 38.525871, 20.576775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872719, 38.644772, 20.314034>,  <38.706409, 38.716110, 20.156389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872719, 38.644772, 20.314034>,  <39.149902, 38.525871, 20.576775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872719, 38.644772, 20.314034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533972, -0.400569, -0.744593,
		-0.484446, -0.866710, 0.118851,
		-0.692954, 0.297252, -0.656853,
		38.664833, 38.733948, 20.116978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985382, 37.940884, 20.101358>,  <39.149902, 38.525871, 20.576775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985382, 37.940884, 20.101358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838840, 38.259518, 19.909006>,  <38.750916, 38.450699, 19.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838840, 38.259518, 19.909006>,  <38.985382, 37.940884, 20.101358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838840, 38.259518, 19.909006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568970, -0.217150, -0.793170,
		-0.736247, -0.564185, -0.373677,
		-0.366351, 0.796580, -0.480881,
		38.728935, 38.498493, 19.764742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422089, 37.420341, 19.845528>,  <38.985382, 37.940884, 20.101358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422089, 37.420341, 19.845528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770523, 37.421555, 19.649082>,  <39.979584, 37.422283, 19.531216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770523, 37.421555, 19.649082>,  <39.422089, 37.420341, 19.845528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770523, 37.421555, 19.649082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479279, -0.223549, 0.848715,
		-0.107211, -0.974688, -0.196187,
		0.871090, 0.003036, -0.491114,
		40.031849, 37.422466, 19.501747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828350, 36.841175, 20.099377>,  <39.422089, 37.420341, 19.845528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828350, 36.841175, 20.099377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084026, 37.105595, 19.942171>,  <40.237431, 37.264244, 19.847847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084026, 37.105595, 19.942171>,  <39.828350, 36.841175, 20.099377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084026, 37.105595, 19.942171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521320, 0.003267, 0.853355,
		0.565390, -0.750340, -0.342528,
		0.639187, 0.661044, -0.393014,
		40.275784, 37.303909, 19.824266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498581, 36.621426, 20.185066>,  <39.828350, 36.841175, 20.099377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498581, 36.621426, 20.185066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573936, 37.010284, 20.129297>,  <40.619148, 37.243599, 20.095837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573936, 37.010284, 20.129297>,  <40.498581, 36.621426, 20.185066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573936, 37.010284, 20.129297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427913, 0.046526, 0.902622,
		0.883968, -0.229703, -0.407230,
		0.188388, 0.972148, -0.139421,
		40.630451, 37.301929, 20.087471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145576, 36.708405, 20.577114>,  <40.498581, 36.621426, 20.185066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145576, 36.708405, 20.577114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986290, 37.073044, 20.536316>,  <40.890717, 37.291828, 20.511837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986290, 37.073044, 20.536316>,  <41.145576, 36.708405, 20.577114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986290, 37.073044, 20.536316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409888, 0.276312, 0.869278,
		0.820617, 0.304358, -0.483688,
		-0.398220, 0.911602, -0.101994,
		40.866825, 37.346523, 20.505718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693108, 37.133739, 20.815344>,  <41.145576, 36.708405, 20.577114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693108, 37.133739, 20.815344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350780, 37.339130, 20.840405>,  <41.145386, 37.462364, 20.855440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350780, 37.339130, 20.840405>,  <41.693108, 37.133739, 20.815344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350780, 37.339130, 20.840405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246384, 0.298134, 0.922177,
		0.454836, 0.804649, -0.381659,
		-0.855815, 0.513474, 0.062650,
		41.094036, 37.493172, 20.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863914, 37.680981, 21.181812>,  <41.693108, 37.133739, 20.815344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863914, 37.680981, 21.181812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469910, 37.623077, 21.219326>,  <41.233505, 37.588337, 21.241835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469910, 37.623077, 21.219326>,  <41.863914, 37.680981, 21.181812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469910, 37.623077, 21.219326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077906, 0.111730, 0.990680,
		-0.153885, 0.983139, -0.098778,
		-0.985013, -0.144755, 0.093786,
		41.174404, 37.579651, 21.247461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735210, 38.086216, 21.801655>,  <41.863914, 37.680981, 21.181812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735210, 38.086216, 21.801655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391933, 37.884144, 21.765200>,  <41.185966, 37.762901, 21.743326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391933, 37.884144, 21.765200>,  <41.735210, 38.086216, 21.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391933, 37.884144, 21.765200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208177, 0.180212, 0.961346,
		-0.469228, 0.843989, -0.259822,
		-0.858189, -0.505180, -0.091138,
		41.134476, 37.732590, 21.737858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188084, 38.441940, 22.131424>,  <41.735210, 38.086216, 21.801655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188084, 38.441940, 22.131424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050034, 38.066528, 22.128805>,  <40.967201, 37.841282, 22.127234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050034, 38.066528, 22.128805>,  <41.188084, 38.441940, 22.131424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050034, 38.066528, 22.128805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289244, 0.099723, 0.952047,
		-0.892875, 0.330471, -0.305882,
		-0.345127, -0.938533, -0.006547,
		40.946495, 37.784969, 22.126841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545261, 38.423882, 22.528137>,  <41.188084, 38.441940, 22.131424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545261, 38.423882, 22.528137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618542, 38.030727, 22.535831>,  <40.662510, 37.794834, 22.540447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618542, 38.030727, 22.535831>,  <40.545261, 38.423882, 22.528137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618542, 38.030727, 22.535831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273268, -0.032120, 0.961401,
		-0.944331, -0.181387, -0.274476,
		0.183202, -0.982887, 0.019236,
		40.673504, 37.735863, 22.541601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994190, 38.126961, 22.866182>,  <40.545261, 38.423882, 22.528137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994190, 38.126961, 22.866182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271179, 37.839966, 22.896343>,  <40.437374, 37.667770, 22.914440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271179, 37.839966, 22.896343>,  <39.994190, 38.126961, 22.866182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271179, 37.839966, 22.896343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174388, -0.065053, 0.982526,
		-0.700046, -0.693526, -0.170169,
		0.692477, -0.717489, 0.075403,
		40.478924, 37.624718, 22.918964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694870, 37.511574, 23.219687>,  <39.994190, 38.126961, 22.866182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694870, 37.511574, 23.219687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084545, 37.447205, 23.283003>,  <40.318352, 37.408585, 23.320993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084545, 37.447205, 23.283003>,  <39.694870, 37.511574, 23.219687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084545, 37.447205, 23.283003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143110, 0.101996, 0.984437,
		-0.174563, -0.981683, 0.076334,
		0.974190, -0.160922, 0.158293,
		40.376801, 37.398930, 23.330490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780464, 36.968784, 23.661333>,  <39.694870, 37.511574, 23.219687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780464, 36.968784, 23.661333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134144, 37.153450, 23.689783>,  <40.346352, 37.264248, 23.706854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134144, 37.153450, 23.689783>,  <39.780464, 36.968784, 23.661333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134144, 37.153450, 23.689783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121965, 0.081191, 0.989208,
		0.450907, -0.883331, 0.128096,
		0.884199, 0.461664, 0.071126,
		40.399403, 37.291950, 23.711121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239479, 36.721508, 24.218851>,  <39.780464, 36.968784, 23.661333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239479, 36.721508, 24.218851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355682, 37.098221, 24.151150>,  <40.425404, 37.324249, 24.110529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355682, 37.098221, 24.151150>,  <40.239479, 36.721508, 24.218851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355682, 37.098221, 24.151150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028801, 0.168195, 0.985333,
		0.956438, -0.291124, 0.021738,
		0.290510, 0.941784, -0.169253,
		40.442837, 37.380756, 24.100374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692024, 36.813618, 24.729290>,  <40.239479, 36.721508, 24.218851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692024, 36.813618, 24.729290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591091, 37.180588, 24.606222>,  <40.530533, 37.400768, 24.532381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591091, 37.180588, 24.606222>,  <40.692024, 36.813618, 24.729290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591091, 37.180588, 24.606222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064148, 0.301399, 0.951338,
		0.965512, 0.259789, -0.017201,
		-0.252332, 0.917425, -0.307669,
		40.515392, 37.455814, 24.513922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075359, 37.202446, 25.178102>,  <40.692024, 36.813618, 24.729290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075359, 37.202446, 25.178102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792362, 37.438908, 25.023188>,  <40.622562, 37.580784, 24.930239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792362, 37.438908, 25.023188>,  <41.075359, 37.202446, 25.178102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792362, 37.438908, 25.023188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314474, 0.227428, 0.921620,
		0.632897, 0.773832, 0.024998,
		-0.707494, 0.591151, -0.387289,
		40.580112, 37.616253, 24.907001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122498, 37.810822, 25.596226>,  <41.075359, 37.202446, 25.178102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122498, 37.810822, 25.596226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750702, 37.831303, 25.450115>,  <40.527626, 37.843590, 25.362450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750702, 37.831303, 25.450115>,  <41.122498, 37.810822, 25.596226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750702, 37.831303, 25.450115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344860, 0.230659, 0.909872,
		0.130843, 0.971686, -0.196737,
		-0.929490, 0.051203, -0.365276,
		40.471855, 37.846664, 25.340532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887138, 38.450020, 25.853933>,  <41.122498, 37.810822, 25.596226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887138, 38.450020, 25.853933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557602, 38.256107, 25.736452>,  <40.359879, 38.139759, 25.665962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557602, 38.256107, 25.736452>,  <40.887138, 38.450020, 25.853933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557602, 38.256107, 25.736452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469915, 0.294408, 0.832168,
		-0.316954, 0.823594, -0.470355,
		-0.823845, -0.484786, -0.293705,
		40.310448, 38.110672, 25.648340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261547, 38.856991, 26.060083>,  <40.887138, 38.450020, 25.853933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261547, 38.856991, 26.060083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058807, 38.521053, 25.982342>,  <39.937164, 38.319492, 25.935696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058807, 38.521053, 25.982342>,  <40.261547, 38.856991, 26.060083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058807, 38.521053, 25.982342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568167, 0.155902, 0.808010,
		-0.648299, 0.519964, -0.556189,
		-0.506847, -0.839840, -0.194355,
		39.906754, 38.269100, 25.924036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632050, 39.053757, 26.181801>,  <40.261547, 38.856991, 26.060083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632050, 39.053757, 26.181801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679100, 38.658436, 26.220615>,  <39.707329, 38.421242, 26.243904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679100, 38.658436, 26.220615>,  <39.632050, 39.053757, 26.181801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679100, 38.658436, 26.220615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529638, 0.020222, 0.847983,
		-0.840029, -0.151138, -0.521066,
		0.117625, -0.988306, 0.097035,
		39.714386, 38.361942, 26.249725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919525, 38.789742, 26.400820>,  <39.632050, 39.053757, 26.181801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919525, 38.789742, 26.400820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176693, 38.499348, 26.498468>,  <39.330994, 38.325111, 26.557058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176693, 38.499348, 26.498468>,  <38.919525, 38.789742, 26.400820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176693, 38.499348, 26.498468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508545, -0.166276, 0.844828,
		-0.572742, -0.667305, -0.476099,
		0.642921, -0.725987, 0.244121,
		39.369568, 38.281551, 26.571705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557793, 38.300461, 26.591465>,  <38.919525, 38.789742, 26.400820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557793, 38.300461, 26.591465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903099, 38.191902, 26.761700>,  <39.110283, 38.126766, 26.863840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903099, 38.191902, 26.761700>,  <38.557793, 38.300461, 26.591465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903099, 38.191902, 26.761700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488534, -0.237199, 0.839685,
		-0.126941, -0.932781, -0.337352,
		0.863261, -0.271398, 0.425585,
		39.162079, 38.110481, 26.889376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397305, 37.694489, 26.844120>,  <38.557793, 38.300461, 26.591465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397305, 37.694489, 26.844120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730755, 37.812641, 27.030807>,  <38.930824, 37.883533, 27.142820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730755, 37.812641, 27.030807>,  <38.397305, 37.694489, 26.844120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730755, 37.812641, 27.030807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379323, -0.308048, 0.872479,
		0.401483, -0.904355, -0.144751,
		0.833621, 0.295378, 0.466719,
		38.980843, 37.901253, 27.170824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647694, 37.200573, 27.330914>,  <38.397305, 37.694489, 26.844120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647694, 37.200573, 27.330914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826084, 37.528465, 27.474665>,  <38.933117, 37.725201, 27.560915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826084, 37.528465, 27.474665>,  <38.647694, 37.200573, 27.330914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826084, 37.528465, 27.474665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277598, -0.255041, 0.926225,
		0.850910, -0.512833, 0.113814,
		0.445972, 0.819729, 0.359379,
		38.959877, 37.774384, 27.582478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738644, 36.944550, 27.923279>,  <38.647694, 37.200573, 27.330914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738644, 36.944550, 27.923279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806683, 37.334831, 27.978521>,  <38.847507, 37.569000, 28.011667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806683, 37.334831, 27.978521>,  <38.738644, 36.944550, 27.923279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806683, 37.334831, 27.978521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013411, -0.137844, 0.990363,
		0.985336, -0.170310, -0.010362,
		0.170097, 0.975701, 0.138107,
		38.857712, 37.627541, 28.019953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384758, 37.048897, 28.372574>,  <38.738644, 36.944550, 27.923279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384758, 37.048897, 28.372574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176201, 37.389050, 28.400881>,  <39.051067, 37.593140, 28.417864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176201, 37.389050, 28.400881>,  <39.384758, 37.048897, 28.372574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176201, 37.389050, 28.400881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068801, -0.124554, 0.989824,
		0.850540, 0.511216, 0.123448,
		-0.521390, 0.850379, 0.070766,
		39.019783, 37.644165, 28.422112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654175, 37.404110, 28.988012>,  <39.384758, 37.048897, 28.372574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654175, 37.404110, 28.988012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292370, 37.565018, 28.931393>,  <39.075287, 37.661560, 28.897421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292370, 37.565018, 28.931393>,  <39.654175, 37.404110, 28.988012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292370, 37.565018, 28.931393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206254, -0.122156, 0.970843,
		0.373247, 0.907337, 0.193461,
		-0.904514, 0.402266, -0.141548,
		39.021015, 37.685699, 28.888927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532543, 37.976025, 29.484236>,  <39.654175, 37.404110, 28.988012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532543, 37.976025, 29.484236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172142, 37.845173, 29.370272>,  <38.955902, 37.766663, 29.301893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172142, 37.845173, 29.370272>,  <39.532543, 37.976025, 29.484236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172142, 37.845173, 29.370272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239257, -0.173112, 0.955399,
		-0.361858, 0.928989, 0.077708,
		-0.901007, -0.327127, -0.284910,
		38.901840, 37.747036, 29.284800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198410, 38.215263, 30.087122>,  <39.532543, 37.976025, 29.484236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198410, 38.215263, 30.087122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947159, 37.962334, 29.905737>,  <38.796410, 37.810577, 29.796906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947159, 37.962334, 29.905737>,  <39.198410, 38.215263, 30.087122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947159, 37.962334, 29.905737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319858, -0.321436, 0.891274,
		-0.709331, 0.704876, -0.000350,
		-0.628125, -0.632320, -0.453464,
		38.758720, 37.772636, 29.769697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493576, 38.463417, 30.346611>,  <39.198410, 38.215263, 30.087122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493576, 38.463417, 30.346611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515377, 38.074982, 30.253647>,  <38.528458, 37.841919, 30.197868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515377, 38.074982, 30.253647>,  <38.493576, 38.463417, 30.346611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515377, 38.074982, 30.253647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404013, -0.234300, 0.884238,
		-0.913128, 0.045703, -0.405103,
		0.054503, -0.971090, -0.232410,
		38.531727, 37.783653, 30.183924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925823, 38.136963, 30.650450>,  <38.493576, 38.463417, 30.346611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925823, 38.136963, 30.650450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164684, 37.823021, 30.584221>,  <38.308002, 37.634655, 30.544483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164684, 37.823021, 30.584221>,  <37.925823, 38.136963, 30.650450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164684, 37.823021, 30.584221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365389, -0.449918, 0.814902,
		-0.714073, -0.426122, -0.555446,
		0.597153, -0.784853, -0.165574,
		38.343830, 37.587566, 30.534550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507248, 37.502178, 30.902576>,  <37.925823, 38.136963, 30.650450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507248, 37.502178, 30.902576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892807, 37.396469, 30.889574>,  <38.124142, 37.333046, 30.881773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892807, 37.396469, 30.889574>,  <37.507248, 37.502178, 30.902576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892807, 37.396469, 30.889574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077120, -0.393940, 0.915895,
		-0.254848, -0.880325, -0.400100,
		0.963901, -0.264270, -0.032504,
		38.181976, 37.317188, 30.879824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489414, 36.800194, 31.060705>,  <37.507248, 37.502178, 30.902576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489414, 36.800194, 31.060705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865219, 36.931492, 31.099840>,  <38.090702, 37.010269, 31.123322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865219, 36.931492, 31.099840>,  <37.489414, 36.800194, 31.060705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865219, 36.931492, 31.099840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090230, -0.512750, 0.853783,
		0.330415, -0.793313, -0.511352,
		0.939513, 0.328242, 0.097840,
		38.147072, 37.029964, 31.129192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903454, 36.251827, 31.313549>,  <37.489414, 36.800194, 31.060705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903454, 36.251827, 31.313549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142715, 36.553474, 31.422005>,  <38.286274, 36.734463, 31.487078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142715, 36.553474, 31.422005>,  <37.903454, 36.251827, 31.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142715, 36.553474, 31.422005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192953, -0.463912, 0.864613,
		0.777806, -0.464854, -0.423000,
		0.598153, 0.754120, 0.271139,
		38.322163, 36.779709, 31.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531769, 35.909679, 31.589466>,  <37.903454, 36.251827, 31.313549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531769, 35.909679, 31.589466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531441, 36.285786, 31.725645>,  <38.531246, 36.511448, 31.807352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531441, 36.285786, 31.725645>,  <38.531769, 35.909679, 31.589466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531441, 36.285786, 31.725645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388977, -0.313339, 0.866323,
		0.921247, 0.133135, -0.365485,
		-0.000817, 0.940263, 0.340449,
		38.531197, 36.567863, 31.827780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172646, 35.977371, 31.890888>,  <38.531769, 35.909679, 31.589466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172646, 35.977371, 31.890888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975002, 36.298389, 32.024620>,  <38.856415, 36.491001, 32.104858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975002, 36.298389, 32.024620>,  <39.172646, 35.977371, 31.890888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975002, 36.298389, 32.024620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543165, -0.015301, 0.839487,
		0.678841, 0.596396, -0.428353,
		-0.494113, 0.802544, 0.334329,
		38.826767, 36.539154, 32.124920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652702, 36.310944, 32.101116>,  <39.172646, 35.977371, 31.890888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652702, 36.310944, 32.101116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319641, 36.436146, 32.283859>,  <39.119804, 36.511269, 32.393505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319641, 36.436146, 32.283859>,  <39.652702, 36.310944, 32.101116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319641, 36.436146, 32.283859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436227, -0.137522, 0.889266,
		0.341176, 0.939741, -0.022035,
		-0.832649, 0.313009, 0.456860,
		39.069847, 36.530048, 32.420918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972343, 36.731915, 32.592503>,  <39.652702, 36.310944, 32.101116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972343, 36.731915, 32.592503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609169, 36.622288, 32.719337>,  <39.391266, 36.556511, 32.795441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609169, 36.622288, 32.719337>,  <39.972343, 36.731915, 32.592503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609169, 36.622288, 32.719337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326925, 0.010303, 0.944994,
		-0.262255, 0.961657, 0.080243,
		-0.907933, -0.274063, 0.317091,
		39.336788, 36.540070, 32.814465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708557, 37.180569, 33.154907>,  <39.972343, 36.731915, 32.592503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708557, 37.180569, 33.154907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468170, 36.861557, 33.176006>,  <39.323936, 36.670151, 33.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468170, 36.861557, 33.176006>,  <39.708557, 37.180569, 33.154907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468170, 36.861557, 33.176006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352968, -0.205610, 0.912764,
		-0.717113, 0.567158, 0.405068,
		-0.600967, -0.797531, 0.052744,
		39.287880, 36.622299, 33.191830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593147, 37.112564, 33.874039>,  <39.708557, 37.180569, 33.154907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593147, 37.112564, 33.874039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455406, 36.754333, 33.761349>,  <39.372761, 36.539394, 33.693733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455406, 36.754333, 33.761349>,  <39.593147, 37.112564, 33.874039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455406, 36.754333, 33.761349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458132, -0.422219, 0.782206,
		-0.819473, 0.140285, 0.555683,
		-0.344352, -0.895573, -0.281728,
		39.352100, 36.485661, 33.676830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453716, 36.888710, 34.500847>,  <39.593147, 37.112564, 33.874039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453716, 36.888710, 34.500847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483047, 36.567669, 34.264053>,  <39.500645, 36.375042, 34.121975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483047, 36.567669, 34.264053>,  <39.453716, 36.888710, 34.500847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483047, 36.567669, 34.264053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301295, -0.548021, 0.780317,
		-0.950708, -0.235579, 0.201638,
		0.073324, -0.802605, -0.591986,
		39.505043, 36.326889, 34.086456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018715, 36.280067, 34.801270>,  <39.453716, 36.888710, 34.500847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018715, 36.280067, 34.801270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309834, 36.143829, 34.563175>,  <39.484505, 36.062088, 34.420319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309834, 36.143829, 34.563175>,  <39.018715, 36.280067, 34.801270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309834, 36.143829, 34.563175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427085, -0.453999, 0.781974,
		-0.536577, -0.823333, -0.184953,
		0.727794, -0.340599, -0.595239,
		39.528172, 36.041649, 34.384605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072666, 35.584709, 34.933914>,  <39.018715, 36.280067, 34.801270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072666, 35.584709, 34.933914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425533, 35.624641, 34.749825>,  <39.637253, 35.648602, 34.639370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425533, 35.624641, 34.749825>,  <39.072666, 35.584709, 34.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425533, 35.624641, 34.749825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433696, -0.553086, 0.711340,
		-0.183528, -0.827121, -0.531214,
		0.882171, 0.099835, -0.460225,
		39.690186, 35.654591, 34.611755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325737, 34.864609, 34.845612>,  <39.072666, 35.584709, 34.933914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325737, 34.864609, 34.845612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642948, 35.108280, 34.844101>,  <39.833275, 35.254482, 34.843197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642948, 35.108280, 34.844101>,  <39.325737, 34.864609, 34.845612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642948, 35.108280, 34.844101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454046, -0.586923, 0.670346,
		0.406144, -0.533315, -0.742039,
		0.793025, 0.609177, -0.003774,
		39.880856, 35.291035, 34.842968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879826, 34.554958, 34.576744>,  <39.325737, 34.864609, 34.845612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879826, 34.554958, 34.576744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990677, 34.841705, 34.832653>,  <40.057186, 35.013752, 34.986198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990677, 34.841705, 34.832653>,  <39.879826, 34.554958, 34.576744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990677, 34.841705, 34.832653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443903, -0.686051, 0.576441,
		0.852146, 0.124250, -0.508340,
		0.277125, 0.716865, 0.639771,
		40.073814, 35.056767, 35.024586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475136, 34.257977, 34.910130>,  <39.879826, 34.554958, 34.576744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475136, 34.257977, 34.910130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380085, 34.579868, 35.127731>,  <40.323055, 34.773003, 35.258293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380085, 34.579868, 35.127731>,  <40.475136, 34.257977, 34.910130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380085, 34.579868, 35.127731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238840, -0.494449, 0.835749,
		0.941534, 0.328530, -0.074706,
		-0.237631, 0.804729, 0.544007,
		40.308796, 34.821285, 35.290932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969955, 34.244465, 35.447464>,  <40.475136, 34.257977, 34.910130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969955, 34.244465, 35.447464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719181, 34.526699, 35.579586>,  <40.568718, 34.696041, 35.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719181, 34.526699, 35.579586>,  <40.969955, 34.244465, 35.447464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719181, 34.526699, 35.579586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255716, -0.214110, 0.942744,
		0.735907, 0.675504, -0.046196,
		-0.626937, 0.705586, 0.330302,
		40.531101, 34.738377, 35.678677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361977, 34.734268, 35.887196>,  <40.969955, 34.244465, 35.447464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361977, 34.734268, 35.887196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974178, 34.783596, 35.971924>,  <40.741497, 34.813194, 36.022758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974178, 34.783596, 35.971924>,  <41.361977, 34.734268, 35.887196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974178, 34.783596, 35.971924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174516, -0.259488, 0.949847,
		0.172101, 0.957840, 0.230051,
		-0.969498, 0.123322, 0.211817,
		40.683331, 34.820591, 36.035469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284706, 35.146111, 36.556576>,  <41.361977, 34.734268, 35.887196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284706, 35.146111, 36.556576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923199, 34.980190, 36.514359>,  <40.706295, 34.880638, 36.489029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923199, 34.980190, 36.514359>,  <41.284706, 35.146111, 36.556576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923199, 34.980190, 36.514359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013139, -0.273356, 0.961823,
		-0.427814, 0.867881, 0.252502,
		-0.903771, -0.414799, -0.105543,
		40.652069, 34.855751, 36.482697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910362, 35.274879, 37.233742>,  <41.284706, 35.146111, 36.556576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910362, 35.274879, 37.233742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744713, 34.978474, 37.022312>,  <40.645325, 34.800629, 36.895454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744713, 34.978474, 37.022312>,  <40.910362, 35.274879, 37.233742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744713, 34.978474, 37.022312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325474, -0.421766, 0.846275,
		-0.850040, 0.522501, -0.066518,
		-0.414124, -0.741017, -0.528578,
		40.620476, 34.756168, 36.863739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308937, 35.218746, 37.509716>,  <40.910362, 35.274879, 37.233742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308937, 35.218746, 37.509716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391029, 34.864502, 37.343063>,  <40.440285, 34.651955, 37.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391029, 34.864502, 37.343063>,  <40.308937, 35.218746, 37.509716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391029, 34.864502, 37.343063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225836, -0.457056, 0.860290,
		-0.952303, -0.082464, -0.293801,
		0.205226, -0.885607, -0.416632,
		40.452599, 34.598820, 37.218075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827553, 34.832359, 37.708435>,  <40.308937, 35.218746, 37.509716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827553, 34.832359, 37.708435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103916, 34.555122, 37.626198>,  <40.269733, 34.388779, 37.576855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103916, 34.555122, 37.626198>,  <39.827553, 34.832359, 37.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103916, 34.555122, 37.626198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356382, -0.573955, 0.737270,
		-0.628998, -0.436116, -0.643556,
		0.690908, -0.693093, -0.205593,
		40.311188, 34.347195, 37.564522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589622, 34.181721, 37.430500>,  <39.827553, 34.832359, 37.708435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589622, 34.181721, 37.430500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905781, 34.155941, 37.674179>,  <40.095474, 34.140472, 37.820389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905781, 34.155941, 37.674179>,  <39.589622, 34.181721, 37.430500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905781, 34.155941, 37.674179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556802, -0.490247, 0.670544,
		0.255442, -0.869197, -0.423374,
		0.790393, -0.064450, 0.609200,
		40.142899, 34.136604, 37.856937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252079, 34.012592, 37.978855>,  <39.589622, 34.181721, 37.430500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252079, 34.012592, 37.978855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624710, 33.934361, 38.101433>,  <39.848289, 33.887421, 38.174980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624710, 33.934361, 38.101433>,  <39.252079, 34.012592, 37.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624710, 33.934361, 38.101433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361738, -0.415006, 0.834815,
		-0.036095, -0.888550, -0.457359,
		0.931581, -0.195576, 0.306443,
		39.904182, 33.875687, 38.193367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220661, 33.379585, 38.332027>,  <39.252079, 34.012592, 37.978855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220661, 33.379585, 38.332027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538380, 33.579010, 38.470901>,  <39.729012, 33.698666, 38.554226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538380, 33.579010, 38.470901>,  <39.220661, 33.379585, 38.332027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538380, 33.579010, 38.470901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262605, -0.233580, 0.936205,
		0.547848, -0.834793, -0.054607,
		0.794292, 0.498558, 0.347187,
		39.776669, 33.728577, 38.575058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644661, 32.825031, 38.560516>,  <39.220661, 33.379585, 38.332027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644661, 32.825031, 38.560516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698799, 33.178429, 38.739902>,  <39.731281, 33.390469, 38.847534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698799, 33.178429, 38.739902>,  <39.644661, 32.825031, 38.560516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698799, 33.178429, 38.739902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157073, -0.427770, 0.890135,
		0.978269, -0.190915, 0.080878,
		0.135343, 0.883496, 0.448461,
		39.739403, 33.443478, 38.874439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111877, 32.717461, 39.160477>,  <39.644661, 32.825031, 38.560516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111877, 32.717461, 39.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933353, 33.068291, 39.231518>,  <39.826237, 33.278790, 39.274143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933353, 33.068291, 39.231518>,  <40.111877, 32.717461, 39.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933353, 33.068291, 39.231518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179854, -0.282338, 0.942305,
		0.876617, 0.388621, 0.283757,
		-0.446314, 0.877074, 0.177607,
		39.799458, 33.331413, 39.284801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320351, 32.727665, 39.897739>,  <40.111877, 32.717461, 39.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320351, 32.727665, 39.897739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032207, 33.001114, 39.850845>,  <39.859322, 33.165184, 39.822708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032207, 33.001114, 39.850845>,  <40.320351, 32.727665, 39.897739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032207, 33.001114, 39.850845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403861, -0.275997, 0.872194,
		0.563894, 0.675640, 0.474905,
		-0.720361, 0.683620, -0.117232,
		39.816097, 33.206200, 39.815678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347553, 33.047043, 40.522331>,  <40.320351, 32.727665, 39.897739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347553, 33.047043, 40.522331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993557, 33.130043, 40.355606>,  <39.781158, 33.179844, 40.255569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993557, 33.130043, 40.355606>,  <40.347553, 33.047043, 40.522331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993557, 33.130043, 40.355606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456245, -0.207829, 0.865244,
		0.092908, 0.955904, 0.278596,
		-0.884991, 0.207496, -0.416818,
		39.728058, 33.192291, 40.230560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067635, 33.586662, 40.972160>,  <40.347553, 33.047043, 40.522331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067635, 33.586662, 40.972160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773518, 33.408546, 40.767780>,  <39.597050, 33.301678, 40.645153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773518, 33.408546, 40.767780>,  <40.067635, 33.586662, 40.972160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773518, 33.408546, 40.767780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510884, -0.131239, 0.849573,
		-0.445360, 0.885717, -0.130992,
		-0.735290, -0.445287, -0.510948,
		39.552929, 33.274960, 40.614494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343361, 33.906303, 41.076843>,  <40.067635, 33.586662, 40.972160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343361, 33.906303, 41.076843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336117, 33.517902, 40.981491>,  <39.331772, 33.284863, 40.924278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336117, 33.517902, 40.981491>,  <39.343361, 33.906303, 41.076843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336117, 33.517902, 40.981491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626319, -0.174833, 0.759709,
		-0.779357, 0.163060, -0.604991,
		-0.018106, -0.971002, -0.238385,
		39.330685, 33.226601, 40.909977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815178, 33.588551, 41.462971>,  <39.343361, 33.906303, 41.076843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815178, 33.588551, 41.462971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037624, 33.278191, 41.343830>,  <39.171093, 33.091976, 41.272346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037624, 33.278191, 41.343830>,  <38.815178, 33.588551, 41.462971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037624, 33.278191, 41.343830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273687, -0.509360, 0.815873,
		-0.784751, -0.372197, -0.495615,
		0.556112, -0.775901, -0.297855,
		39.204456, 33.045422, 41.254475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410431, 32.922318, 41.397133>,  <38.815178, 33.588551, 41.462971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410431, 32.922318, 41.397133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784786, 32.877773, 41.530830>,  <39.009399, 32.851048, 41.611050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784786, 32.877773, 41.530830>,  <38.410431, 32.922318, 41.397133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784786, 32.877773, 41.530830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333207, -0.587934, 0.737093,
		0.114429, -0.801207, -0.587345,
		0.935884, -0.111363, 0.334245,
		39.065552, 32.844364, 41.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828144, 32.726921, 41.215504>,  <38.410431, 32.922318, 41.397133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828144, 32.726921, 41.215504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964691, 32.535591, 40.891857>,  <38.046619, 32.420792, 40.697670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964691, 32.535591, 40.891857>,  <37.828144, 32.726921, 41.215504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964691, 32.535591, 40.891857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933452, 0.071634, 0.351476,
		-0.110161, -0.875254, 0.470951,
		0.341367, -0.478329, -0.809116,
		38.067101, 32.392094, 40.649120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275333, 32.055336, 41.371635>,  <37.828144, 32.726921, 41.215504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275333, 32.055336, 41.371635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365345, 32.224346, 41.020447>,  <38.419353, 32.325752, 40.809734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365345, 32.224346, 41.020447>,  <38.275333, 32.055336, 41.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365345, 32.224346, 41.020447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957449, 0.071227, 0.279677,
		0.180706, -0.903546, -0.388521,
		0.225028, 0.422529, -0.877970,
		38.432854, 32.351105, 40.757057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053513, 32.272320, 41.112850>,  <38.275333, 32.055336, 41.371635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053513, 32.272320, 41.112850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931099, 31.951317, 41.317722>,  <38.857651, 31.758717, 41.440647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931099, 31.951317, 41.317722>,  <39.053513, 32.272320, 41.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931099, 31.951317, 41.317722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832976, 0.486212, 0.264100,
		-0.460971, -0.345811, -0.817264,
		-0.306035, -0.802504, 0.512182,
		38.839287, 31.710566, 41.471378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950230, 32.153889, 40.409920>,  <39.053513, 32.272320, 41.112850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950230, 32.153889, 40.409920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004940, 32.509472, 40.584755>,  <39.037766, 32.722820, 40.689655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004940, 32.509472, 40.584755>,  <38.950230, 32.153889, 40.409920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004940, 32.509472, 40.584755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238093, 0.398802, -0.885590,
		-0.961564, 0.225192, -0.157109,
		0.136772, 0.888958, 0.437090,
		39.045971, 32.776157, 40.715881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634178, 32.681034, 39.918549>,  <38.950230, 32.153889, 40.409920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634178, 32.681034, 39.918549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891426, 32.892799, 40.139858>,  <39.045776, 33.019859, 40.272644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891426, 32.892799, 40.139858>,  <38.634178, 32.681034, 39.918549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891426, 32.892799, 40.139858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427266, 0.351510, -0.832997,
		-0.635484, 0.772114, -0.000139,
		0.643120, 0.529416, 0.553277,
		39.084362, 33.051624, 40.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560211, 33.321266, 39.641693>,  <38.634178, 32.681034, 39.918549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560211, 33.321266, 39.641693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913742, 33.296326, 39.827148>,  <39.125862, 33.281361, 39.938423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913742, 33.296326, 39.827148>,  <38.560211, 33.321266, 39.641693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913742, 33.296326, 39.827148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436025, 0.468887, -0.768132,
		-0.169497, 0.881054, 0.441604,
		0.883829, -0.062354, 0.463637,
		39.178890, 33.277618, 39.966240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853355, 33.983559, 39.536083>,  <38.560211, 33.321266, 39.641693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853355, 33.983559, 39.536083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154938, 33.738976, 39.632141>,  <39.335888, 33.592224, 39.689774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154938, 33.738976, 39.632141>,  <38.853355, 33.983559, 39.536083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154938, 33.738976, 39.632141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484411, 0.270563, -0.831950,
		0.443730, 0.743581, 0.500191,
		0.753956, -0.611459, 0.240142,
		39.381126, 33.555538, 39.704185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366882, 34.403160, 39.678619>,  <38.853355, 33.983559, 39.536083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366882, 34.403160, 39.678619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536522, 34.056244, 39.574352>,  <39.638306, 33.848095, 39.511791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536522, 34.056244, 39.574352>,  <39.366882, 34.403160, 39.678619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536522, 34.056244, 39.574352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550985, 0.475539, -0.685769,
		0.718717, 0.147213, 0.679540,
		0.424102, -0.867290, -0.260665,
		39.663754, 33.796059, 39.496151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111366, 34.466305, 39.592701>,  <39.366882, 34.403160, 39.678619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111366, 34.466305, 39.592701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024895, 34.154545, 39.357479>,  <39.973011, 33.967491, 39.216347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024895, 34.154545, 39.357479>,  <40.111366, 34.466305, 39.592701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024895, 34.154545, 39.357479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406180, 0.475906, -0.780084,
		0.887854, -0.407494, 0.213694,
		-0.216182, -0.779398, -0.588051,
		39.960041, 33.920727, 39.181065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669800, 34.434471, 39.129147>,  <40.111366, 34.466305, 39.592701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669800, 34.434471, 39.129147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373356, 34.231617, 38.953159>,  <40.195488, 34.109905, 38.847569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373356, 34.231617, 38.953159>,  <40.669800, 34.434471, 39.129147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373356, 34.231617, 38.953159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134414, 0.529965, -0.837299,
		0.657793, -0.679667, -0.324594,
		-0.741108, -0.507139, -0.439964,
		40.151024, 34.079475, 38.821171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707920, 33.710415, 39.014317>,  <40.669800, 34.434471, 39.129147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707920, 33.710415, 39.014317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417549, 33.566765, 38.779690>,  <40.243328, 33.480576, 38.638912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417549, 33.566765, 38.779690>,  <40.707920, 33.710415, 39.014317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417549, 33.566765, 38.779690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473024, 0.358429, -0.804846,
		0.499282, -0.861719, -0.090319,
		-0.725925, -0.359122, -0.586571,
		40.199772, 33.459030, 38.603718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095867, 33.401173, 38.461025>,  <40.707920, 33.710415, 39.014317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095867, 33.401173, 38.461025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732159, 33.536716, 38.364361>,  <40.513935, 33.618042, 38.306362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732159, 33.536716, 38.364361>,  <41.095867, 33.401173, 38.461025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732159, 33.536716, 38.364361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359449, 0.346635, -0.866395,
		-0.209822, -0.874652, -0.436989,
		-0.909270, 0.338864, -0.241661,
		40.459377, 33.638374, 38.291862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353470, 33.773792, 37.924637>,  <41.095867, 33.401173, 38.461025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353470, 33.773792, 37.924637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954456, 33.786640, 37.899693>,  <40.715046, 33.794350, 37.884727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954456, 33.786640, 37.899693>,  <41.353470, 33.773792, 37.924637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954456, 33.786640, 37.899693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069100, 0.297289, -0.952284,
		-0.012050, -0.954247, -0.298776,
		-0.997537, 0.032121, -0.062356,
		40.655197, 33.796276, 37.880985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222450, 33.513409, 37.278625>,  <41.353470, 33.773792, 37.924637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222450, 33.513409, 37.278625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917633, 33.757439, 37.365433>,  <40.734741, 33.903854, 37.417519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917633, 33.757439, 37.365433>,  <41.222450, 33.513409, 37.278625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917633, 33.757439, 37.365433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006438, 0.342275, -0.939578,
		-0.647489, -0.714606, -0.264757,
		-0.762048, 0.610071, 0.217019,
		40.689018, 33.940460, 37.430538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880661, 33.535332, 36.563431>,  <41.222450, 33.513409, 37.278625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880661, 33.535332, 36.563431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726471, 33.812664, 36.806973>,  <40.633957, 33.979065, 36.953098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726471, 33.812664, 36.806973>,  <40.880661, 33.535332, 36.563431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726471, 33.812664, 36.806973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261294, 0.550821, -0.792668,
		-0.884951, -0.464641, -0.031163,
		-0.385471, 0.693329, 0.608857,
		40.610828, 34.020664, 36.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111210, 33.739902, 36.361095>,  <40.880661, 33.535332, 36.563431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111210, 33.739902, 36.361095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252869, 34.049477, 36.571083>,  <40.337864, 34.235222, 36.697075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252869, 34.049477, 36.571083>,  <40.111210, 33.739902, 36.361095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252869, 34.049477, 36.571083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330010, 0.628666, -0.704182,
		-0.875027, 0.076138, 0.478049,
		0.354148, 0.773939, 0.524974,
		40.359112, 34.281658, 36.728577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593666, 34.198093, 36.290134>,  <40.111210, 33.739902, 36.361095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593666, 34.198093, 36.290134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927158, 34.410568, 36.350433>,  <40.127254, 34.538055, 36.386612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927158, 34.410568, 36.350433>,  <39.593666, 34.198093, 36.290134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927158, 34.410568, 36.350433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245686, 0.601376, -0.760253,
		-0.494497, 0.596811, 0.631894,
		0.833733, 0.531191, 0.150751,
		40.177277, 34.569927, 36.395660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442051, 34.997871, 36.311874>,  <39.593666, 34.198093, 36.290134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442051, 34.997871, 36.311874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825233, 34.933666, 36.216743>,  <40.055141, 34.895142, 36.159664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825233, 34.933666, 36.216743>,  <39.442051, 34.997871, 36.311874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825233, 34.933666, 36.216743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137886, 0.469375, -0.872167,
		0.251625, 0.868287, 0.427506,
		0.957952, -0.160512, -0.237832,
		40.112617, 34.885513, 36.145393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648930, 35.651371, 36.268890>,  <39.442051, 34.997871, 36.311874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648930, 35.651371, 36.268890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906776, 35.416138, 36.073498>,  <40.061485, 35.274998, 35.956261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906776, 35.416138, 36.073498>,  <39.648930, 35.651371, 36.268890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906776, 35.416138, 36.073498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200258, 0.486758, -0.850273,
		0.737808, 0.645928, 0.196005,
		0.644621, -0.588086, -0.488486,
		40.100163, 35.239712, 35.926952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094433, 35.976944, 35.872913>,  <39.648930, 35.651371, 36.268890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094433, 35.976944, 35.872913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166302, 35.630123, 35.687035>,  <40.209423, 35.422031, 35.575508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166302, 35.630123, 35.687035>,  <40.094433, 35.976944, 35.872913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166302, 35.630123, 35.687035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066293, 0.481986, -0.873668,
		0.981490, 0.126166, 0.144078,
		0.179671, -0.867048, -0.464700,
		40.220203, 35.370010, 35.547623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729755, 36.043007, 35.439602>,  <40.094433, 35.976944, 35.872913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729755, 36.043007, 35.439602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456097, 35.768848, 35.339855>,  <40.291901, 35.604355, 35.280006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456097, 35.768848, 35.339855>,  <40.729755, 36.043007, 35.439602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456097, 35.768848, 35.339855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013808, 0.329673, -0.943994,
		0.729218, -0.649270, -0.216079,
		-0.684143, -0.685393, -0.249369,
		40.250854, 35.563229, 35.265045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827782, 36.190727, 34.730194>,  <40.729755, 36.043007, 35.439602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827782, 36.190727, 34.730194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555061, 35.898674, 34.748295>,  <40.391430, 35.723442, 34.759155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555061, 35.898674, 34.748295>,  <40.827782, 36.190727, 34.730194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555061, 35.898674, 34.748295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226373, 0.151760, -0.962145,
		0.695629, -0.666237, -0.268754,
		-0.681803, -0.730135, 0.045249,
		40.350521, 35.679634, 34.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917107, 35.752941, 34.180809>,  <40.827782, 36.190727, 34.730194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917107, 35.752941, 34.180809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536942, 35.735325, 34.303947>,  <40.308842, 35.724754, 34.377831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536942, 35.735325, 34.303947>,  <40.917107, 35.752941, 34.180809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536942, 35.735325, 34.303947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308635, 0.012144, -0.951103,
		0.038152, -0.998956, -0.025135,
		-0.950415, -0.044044, 0.307849,
		40.251816, 35.722115, 34.396301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483955, 35.453487, 33.718594>,  <40.917107, 35.752941, 34.180809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483955, 35.453487, 33.718594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207672, 35.652790, 33.928230>,  <40.041904, 35.772369, 34.054012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207672, 35.652790, 33.928230>,  <40.483955, 35.453487, 33.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207672, 35.652790, 33.928230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489543, 0.211242, -0.846005,
		-0.532236, -0.840904, 0.098012,
		-0.690704, 0.498255, 0.524089,
		40.000462, 35.802265, 34.085457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109718, 35.704609, 33.382381>,  <40.483955, 35.453487, 33.718594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109718, 35.704609, 33.382381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315300, 36.030819, 33.275970>,  <41.438648, 36.226543, 33.212124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315300, 36.030819, 33.275970>,  <41.109718, 35.704609, 33.382381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315300, 36.030819, 33.275970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780094, -0.573335, -0.250479,
		-0.356794, -0.078790, -0.930855,
		0.513957, 0.815524, -0.266026,
		41.469486, 36.275475, 33.196163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368679, 35.865788, 32.617950>,  <41.109718, 35.704609, 33.382381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368679, 35.865788, 32.617950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600136, 35.973679, 32.925827>,  <41.739010, 36.038414, 33.110554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600136, 35.973679, 32.925827>,  <41.368679, 35.865788, 32.617950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600136, 35.973679, 32.925827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689444, -0.665938, -0.284946,
		0.435709, 0.695540, -0.571299,
		0.578641, 0.269724, 0.769691,
		41.773727, 36.054596, 33.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066551, 36.167828, 32.467537>,  <41.368679, 35.865788, 32.617950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066551, 36.167828, 32.467537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094940, 35.982639, 32.820950>,  <42.111973, 35.871529, 33.032997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094940, 35.982639, 32.820950>,  <42.066551, 36.167828, 32.467537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094940, 35.982639, 32.820950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828599, -0.465764, -0.310624,
		0.555325, 0.754138, 0.350557,
		0.070976, -0.462968, 0.883529,
		42.116234, 35.843750, 33.086010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689812, 36.319130, 32.885189>,  <42.066551, 36.167828, 32.467537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689812, 36.319130, 32.885189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557167, 35.946091, 32.942184>,  <42.477581, 35.722267, 32.976383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557167, 35.946091, 32.942184>,  <42.689812, 36.319130, 32.885189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557167, 35.946091, 32.942184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858451, -0.360922, -0.364413,
		0.391277, 0.001476, 0.920272,
		-0.331608, -0.932595, 0.142487,
		42.457684, 35.666313, 32.984932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338036, 36.065536, 33.069878>,  <42.689812, 36.319130, 32.885189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338036, 36.065536, 33.069878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099678, 35.769798, 32.944477>,  <42.956665, 35.592354, 32.869236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099678, 35.769798, 32.944477>,  <43.338036, 36.065536, 33.069878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099678, 35.769798, 32.944477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796730, -0.495353, -0.346190,
		0.100662, -0.456065, 0.884235,
		-0.595893, -0.739345, -0.313497,
		42.920910, 35.547997, 32.850430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887100, 36.611713, 33.038677>,  <43.338036, 36.065536, 33.069878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887100, 36.611713, 33.038677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190327, 36.630589, 33.298866>,  <44.372261, 36.641914, 33.454979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190327, 36.630589, 33.298866>,  <43.887100, 36.611713, 33.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190327, 36.630589, 33.298866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461540, 0.743486, 0.483953,
		-0.460780, -0.667085, 0.585388,
		0.758065, 0.047184, 0.650470,
		44.417747, 36.644745, 33.494007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713909, 36.606571, 33.813240>,  <43.887100, 36.611713, 33.038677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713909, 36.606571, 33.813240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066334, 36.794907, 33.795151>,  <44.277790, 36.907909, 33.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066334, 36.794907, 33.795151>,  <43.713909, 36.606571, 33.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066334, 36.794907, 33.795151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357260, 0.725075, 0.588754,
		0.309996, -0.502572, 0.807046,
		0.881061, 0.470837, -0.045221,
		44.330650, 36.936157, 33.781586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571541, 36.603924, 34.610279>,  <43.713909, 36.606571, 33.813240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571541, 36.603924, 34.610279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639977, 36.764702, 34.970093>,  <43.681038, 36.861168, 35.185982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639977, 36.764702, 34.970093>,  <43.571541, 36.603924, 34.610279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639977, 36.764702, 34.970093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945054, 0.191190, -0.265179,
		-0.278570, 0.895481, -0.347148,
		0.171092, 0.401944, 0.899538,
		43.691303, 36.885284, 35.239956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879951, 37.251923, 34.507698>,  <43.571541, 36.603924, 34.610279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879951, 37.251923, 34.507698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959637, 37.126762, 34.879162>,  <44.007446, 37.051666, 35.102039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959637, 37.126762, 34.879162>,  <43.879951, 37.251923, 34.507698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959637, 37.126762, 34.879162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975596, 0.152635, -0.157848,
		-0.092355, 0.937441, 0.335672,
		0.199208, -0.312902, 0.928659,
		44.019398, 37.032890, 35.157761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286442, 37.694458, 34.900459>,  <43.879951, 37.251923, 34.507698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286442, 37.694458, 34.900459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348747, 37.305225, 34.968410>,  <44.386131, 37.071686, 35.009182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348747, 37.305225, 34.968410>,  <44.286442, 37.694458, 34.900459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348747, 37.305225, 34.968410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913180, 0.076284, -0.400353,
		0.376615, 0.217489, 0.900477,
		0.155764, -0.973077, 0.169877,
		44.395477, 37.013302, 35.019375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975357, 37.733742, 34.908482>,  <44.286442, 37.694458, 34.900459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975357, 37.733742, 34.908482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864029, 37.351139, 34.873539>,  <44.797230, 37.121578, 34.852573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864029, 37.351139, 34.873539>,  <44.975357, 37.733742, 34.908482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864029, 37.351139, 34.873539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799012, -0.180099, -0.573711,
		0.533025, -0.229478, 0.814386,
		-0.278324, -0.956506, -0.087359,
		44.780533, 37.064186, 34.847332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618690, 37.507107, 34.844593>,  <44.975357, 37.733742, 34.908482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618690, 37.507107, 34.844593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370003, 37.262573, 34.648743>,  <45.220791, 37.115852, 34.531231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370003, 37.262573, 34.648743>,  <45.618690, 37.507107, 34.844593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370003, 37.262573, 34.648743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675422, -0.101950, -0.730351,
		0.396572, -0.784778, 0.476293,
		-0.621721, -0.611335, -0.489625,
		45.183487, 37.079174, 34.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321053, 37.524467, 34.936192>,  <45.618690, 37.507107, 34.844593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321053, 37.524467, 34.936192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214859, 37.387501, 35.296696>,  <46.151142, 37.305321, 35.512997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214859, 37.387501, 35.296696>,  <46.321053, 37.524467, 34.936192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214859, 37.387501, 35.296696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049415, -0.928744, -0.367415,
		0.962848, -0.142079, 0.229647,
		-0.265485, -0.342416, 0.901259,
		46.135212, 37.284775, 35.567074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928471, 37.026821, 35.033749>,  <46.321053, 37.524467, 34.936192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928471, 37.026821, 35.033749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711685, 36.780457, 34.805038>,  <46.581615, 36.632637, 34.667812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711685, 36.780457, 34.805038>,  <46.928471, 37.026821, 35.033749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711685, 36.780457, 34.805038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314092, -0.779504, 0.541960,
		-0.779504, 0.114129, 0.615913,
		-0.541960, -0.615913, -0.571779,
		46.549099, 36.595684, 34.633503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721916, 36.506481, 35.511681>,  <46.928471, 37.026821, 35.033749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721916, 36.506481, 35.511681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.641056, 36.362507, 35.147354>,  <46.592541, 36.276123, 34.928761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.641056, 36.362507, 35.147354>,  <46.721916, 36.506481, 35.511681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641056, 36.362507, 35.147354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120877, -0.932073, 0.341511,
		-0.971865, -0.041058, 0.231931,
		-0.202154, -0.359937, -0.910812,
		46.580410, 36.254524, 34.874111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253109, 36.039200, 35.629837>,  <46.721916, 36.506481, 35.511681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253109, 36.039200, 35.629837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471313, 35.970875, 35.301632>,  <46.602238, 35.929878, 35.104710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471313, 35.970875, 35.301632>,  <46.253109, 36.039200, 35.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471313, 35.970875, 35.301632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003137, -0.979420, 0.201808,
		-0.838095, -0.107515, -0.534825,
		0.545515, -0.170812, -0.820510,
		46.634968, 35.919632, 35.055477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064327, 35.435585, 35.356487>,  <46.253109, 36.039200, 35.629837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064327, 35.435585, 35.356487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.446461, 35.485077, 35.249142>,  <46.675743, 35.514771, 35.184734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.446461, 35.485077, 35.249142>,  <46.064327, 35.435585, 35.356487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.446461, 35.485077, 35.249142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211235, -0.920993, 0.327340,
		-0.206660, -0.369409, -0.905996,
		0.955338, 0.123730, -0.268364,
		46.733063, 35.522198, 35.168633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381077, 34.749050, 35.007839>,  <46.064327, 35.435585, 35.356487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381077, 34.749050, 35.007839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649693, 34.982311, 35.190689>,  <46.810863, 35.122269, 35.300400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649693, 34.982311, 35.190689>,  <46.381077, 34.749050, 35.007839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649693, 34.982311, 35.190689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376365, -0.799876, 0.467491,
		0.638264, -0.141893, -0.756627,
		0.671542, 0.583151, 0.457129,
		46.851154, 35.157257, 35.327827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181190, 34.619991, 34.954460>,  <46.381077, 34.749050, 35.007839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181190, 34.619991, 34.954460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093964, 34.774151, 35.313107>,  <47.041630, 34.866646, 35.528294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093964, 34.774151, 35.313107>,  <47.181190, 34.619991, 34.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093964, 34.774151, 35.313107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366751, -0.819023, 0.441243,
		0.904402, 0.425053, 0.037254,
		-0.218063, 0.385398, 0.896614,
		47.028545, 34.889771, 35.582092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645737, 35.039761, 34.445560>,  <47.181190, 34.619991, 34.954460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645737, 35.039761, 34.445560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731087, 34.661552, 34.543911>,  <47.782295, 34.434628, 34.602921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731087, 34.661552, 34.543911>,  <47.645737, 35.039761, 34.445560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731087, 34.661552, 34.543911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882954, -0.294356, -0.365713,
		0.418166, -0.139065, -0.897663,
		0.213375, -0.945524, 0.245878,
		47.795097, 34.377895, 34.617676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.938469, 34.747952, 34.925434>,  <47.645737, 35.039761, 34.445560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.938469, 34.747952, 34.925434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844002, 35.096859, 35.096725>,  <47.787323, 35.306202, 35.199501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844002, 35.096859, 35.096725>,  <47.938469, 34.747952, 34.925434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.844002, 35.096859, 35.096725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418846, -0.306275, 0.854848,
		0.876809, 0.381249, -0.293012,
		-0.236167, 0.872265, 0.428229,
		47.773151, 35.358540, 35.225193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.306324, 32.557236, 25.009813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954346, 32.738411, 24.952475>,  <37.743160, 32.847115, 24.918072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954346, 32.738411, 24.952475>,  <38.306324, 32.557236, 25.009813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954346, 32.738411, 24.952475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148893, 0.023608, 0.988572,
		0.451142, 0.891231, 0.046665,
		-0.879944, 0.452934, -0.143348,
		37.690361, 32.874290, 24.909470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325680, 33.231483, 25.400026>,  <38.306324, 32.557236, 25.009813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325680, 33.231483, 25.400026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951092, 33.101974, 25.346060>,  <37.726341, 33.024269, 25.313681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951092, 33.101974, 25.346060>,  <38.325680, 33.231483, 25.400026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951092, 33.101974, 25.346060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210165, 0.209988, 0.954848,
		-0.280820, 0.922539, -0.264692,
		-0.936467, -0.323770, -0.134917,
		37.670151, 33.004845, 25.305584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977581, 33.693203, 25.890890>,  <38.325680, 33.231483, 25.400026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977581, 33.693203, 25.890890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729946, 33.388481, 25.814592>,  <37.581364, 33.205647, 25.768814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729946, 33.388481, 25.814592>,  <37.977581, 33.693203, 25.890890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729946, 33.388481, 25.814592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194593, -0.086504, 0.977062,
		-0.760832, 0.642003, -0.094688,
		-0.619086, -0.761806, -0.190745,
		37.544220, 33.159939, 25.757368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355953, 33.845455, 26.351854>,  <37.977581, 33.693203, 25.890890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355953, 33.845455, 26.351854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355328, 33.454723, 26.266241>,  <37.354954, 33.220284, 26.214874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355328, 33.454723, 26.266241>,  <37.355953, 33.845455, 26.351854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355328, 33.454723, 26.266241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383493, -0.197082, 0.902271,
		-0.923543, 0.083491, -0.374297,
		-0.001565, -0.976825, -0.214032,
		37.354858, 33.161674, 26.202032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677296, 33.588295, 26.514614>,  <37.355953, 33.845455, 26.351854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677296, 33.588295, 26.514614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933773, 33.281391, 26.509077>,  <37.087658, 33.097248, 26.505754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933773, 33.281391, 26.509077>,  <36.677296, 33.588295, 26.514614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933773, 33.281391, 26.509077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349055, -0.307670, 0.885155,
		-0.683401, -0.562721, -0.465090,
		0.641189, -0.767258, -0.013841,
		37.126129, 33.051212, 26.504925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322456, 32.948963, 26.753679>,  <36.677296, 33.588295, 26.514614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322456, 32.948963, 26.753679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712685, 32.889629, 26.818504>,  <36.946819, 32.854031, 26.857399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712685, 32.889629, 26.818504>,  <36.322456, 32.948963, 26.753679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712685, 32.889629, 26.818504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204553, -0.344122, 0.916372,
		-0.080159, -0.927134, -0.366056,
		0.975568, -0.148334, 0.162064,
		37.005356, 32.845131, 26.867123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185493, 32.497021, 27.295010>,  <36.322456, 32.948963, 26.753679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185493, 32.497021, 27.295010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584358, 32.504078, 27.324303>,  <36.823677, 32.508312, 27.341879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584358, 32.504078, 27.324303>,  <36.185493, 32.497021, 27.295010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584358, 32.504078, 27.324303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057565, -0.448590, 0.891882,
		0.048589, -0.893564, -0.446299,
		0.997159, 0.017644, 0.073234,
		36.883507, 32.509373, 27.346273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527321, 31.826166, 27.433907>,  <36.185493, 32.497021, 27.295010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527321, 31.826166, 27.433907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749058, 32.115612, 27.598383>,  <36.882099, 32.289280, 27.697069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749058, 32.115612, 27.598383>,  <36.527321, 31.826166, 27.433907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749058, 32.115612, 27.598383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233543, -0.338960, 0.911353,
		0.798848, -0.601236, -0.018905,
		0.554346, 0.723617, 0.411192,
		36.915363, 32.332699, 27.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827896, 31.608683, 28.056206>,  <36.527321, 31.826166, 27.433907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827896, 31.608683, 28.056206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866039, 32.003014, 28.111416>,  <36.888924, 32.239613, 28.144543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866039, 32.003014, 28.111416>,  <36.827896, 31.608683, 28.056206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866039, 32.003014, 28.111416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275851, -0.107056, 0.955220,
		0.956459, -0.129163, 0.261733,
		0.095359, 0.985827, 0.138024,
		36.894646, 32.298763, 28.152822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188309, 31.698250, 28.678429>,  <36.827896, 31.608683, 28.056206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188309, 31.698250, 28.678429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047573, 32.067127, 28.614218>,  <36.963131, 32.288452, 28.575691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047573, 32.067127, 28.614218>,  <37.188309, 31.698250, 28.678429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047573, 32.067127, 28.614218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116900, 0.213438, 0.969937,
		0.928732, 0.322496, -0.182900,
		-0.351839, 0.922193, -0.160527,
		36.942020, 32.343784, 28.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609879, 32.187321, 29.066837>,  <37.188309, 31.698250, 28.678429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609879, 32.187321, 29.066837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248028, 32.340015, 28.991013>,  <37.030918, 32.431633, 28.945518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248028, 32.340015, 28.991013>,  <37.609879, 32.187321, 29.066837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248028, 32.340015, 28.991013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006247, 0.456585, 0.889658,
		0.426166, 0.803621, -0.415422,
		-0.904623, 0.381737, -0.189561,
		36.976643, 32.454536, 28.934145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662449, 32.952602, 29.272772>,  <37.609879, 32.187321, 29.066837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662449, 32.952602, 29.272772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295685, 32.793144, 29.280241>,  <37.075626, 32.697468, 29.284721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295685, 32.793144, 29.280241>,  <37.662449, 32.952602, 29.272772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295685, 32.793144, 29.280241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070808, 0.208549, 0.975445,
		-0.392754, 0.893077, -0.219449,
		-0.916913, -0.398649, 0.018671,
		37.020611, 32.673550, 29.285843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294308, 33.397182, 29.664314>,  <37.662449, 32.952602, 29.272772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294308, 33.397182, 29.664314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088528, 33.054516, 29.679611>,  <36.965057, 32.848915, 29.688789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088528, 33.054516, 29.679611>,  <37.294308, 33.397182, 29.664314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088528, 33.054516, 29.679611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022930, 0.058323, 0.998034,
		-0.857211, 0.512566, -0.049648,
		-0.514455, -0.856664, 0.038242,
		36.934193, 32.797516, 29.691084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719410, 33.531185, 30.112741>,  <37.294308, 33.397182, 29.664314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719410, 33.531185, 30.112741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777203, 33.135548, 30.101311>,  <36.811878, 32.898167, 30.094452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777203, 33.135548, 30.101311>,  <36.719410, 33.531185, 30.112741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777203, 33.135548, 30.101311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043465, -0.035196, 0.998435,
		-0.988553, -0.143011, -0.048076,
		0.144479, -0.989095, -0.028577,
		36.820545, 32.838818, 30.092737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472385, 33.301270, 30.738596>,  <36.719410, 33.531185, 30.112741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472385, 33.301270, 30.738596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667927, 32.975899, 30.612507>,  <36.785252, 32.780678, 30.536854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667927, 32.975899, 30.612507>,  <36.472385, 33.301270, 30.738596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667927, 32.975899, 30.612507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079190, -0.318471, 0.944619,
		-0.868765, -0.486741, -0.091270,
		0.488852, -0.813424, -0.315221,
		36.814583, 32.731873, 30.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117485, 32.753567, 31.065985>,  <36.472385, 33.301270, 30.738596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117485, 32.753567, 31.065985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497501, 32.651867, 30.993559>,  <36.725510, 32.590847, 30.950104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497501, 32.651867, 30.993559>,  <36.117485, 32.753567, 31.065985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497501, 32.651867, 30.993559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129836, -0.205627, 0.969979,
		-0.283856, -0.945024, -0.162341,
		0.950036, -0.254257, -0.181067,
		36.782513, 32.575592, 30.939240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250298, 32.225842, 31.575832>,  <36.117485, 32.753567, 31.065985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250298, 32.225842, 31.575832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598560, 32.355125, 31.427511>,  <36.807518, 32.432697, 31.338518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598560, 32.355125, 31.427511>,  <36.250298, 32.225842, 31.575832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598560, 32.355125, 31.427511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338738, 0.152646, 0.928416,
		0.356677, -0.933934, 0.023417,
		0.870654, 0.323212, -0.370805,
		36.859756, 32.452087, 31.316269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733711, 31.969629, 31.969664>,  <36.250298, 32.225842, 31.575832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733711, 31.969629, 31.969664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970062, 32.228519, 31.777014>,  <37.111874, 32.383854, 31.661425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970062, 32.228519, 31.777014>,  <36.733711, 31.969629, 31.969664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970062, 32.228519, 31.777014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530186, 0.138440, 0.836503,
		0.608080, -0.749624, -0.261347,
		0.590882, 0.647224, -0.481623,
		37.147327, 32.422688, 31.632526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501568, 31.786163, 32.133625>,  <36.733711, 31.969629, 31.969664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501568, 31.786163, 32.133625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483021, 32.174347, 32.038914>,  <37.471893, 32.407257, 31.982088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483021, 32.174347, 32.038914>,  <37.501568, 31.786163, 32.133625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483021, 32.174347, 32.038914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559911, 0.221546, 0.798384,
		0.827254, -0.095550, -0.553643,
		-0.046372, 0.970458, -0.236774,
		37.469109, 32.465485, 31.967882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137466, 32.011726, 32.162605>,  <37.501568, 31.786163, 32.133625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137466, 32.011726, 32.162605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.913841, 32.341778, 32.195137>,  <37.779667, 32.539806, 32.214657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.913841, 32.341778, 32.195137>,  <38.137466, 32.011726, 32.162605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913841, 32.341778, 32.195137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544244, 0.291210, 0.786763,
		0.625495, 0.484113, -0.611875,
		-0.559066, 0.825125, 0.081325,
		37.746120, 32.589314, 32.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589363, 32.422371, 32.390541>,  <38.137466, 32.011726, 32.162605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589363, 32.422371, 32.390541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265045, 32.639420, 32.478344>,  <38.070454, 32.769650, 32.531025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265045, 32.639420, 32.478344>,  <38.589363, 32.422371, 32.390541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265045, 32.639420, 32.478344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509740, 0.470216, 0.720460,
		0.287718, 0.696034, -0.657841,
		-0.810792, 0.542617, 0.219507,
		38.021809, 32.802204, 32.544197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836098, 33.093731, 32.376740>,  <38.589363, 32.422371, 32.390541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836098, 33.093731, 32.376740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504730, 33.100792, 32.600674>,  <38.305912, 33.105026, 32.735035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504730, 33.100792, 32.600674>,  <38.836098, 33.093731, 32.376740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504730, 33.100792, 32.600674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501323, 0.469126, 0.727046,
		-0.249801, 0.882955, -0.397480,
		-0.828417, 0.017649, 0.559834,
		38.256207, 33.106087, 32.768623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267033, 33.580849, 32.938225>,  <38.836098, 33.093731, 32.376740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267033, 33.580849, 32.938225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.601357, 33.732517, 32.779400>,  <39.801949, 33.823517, 32.684105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.601357, 33.732517, 32.779400>,  <39.267033, 33.580849, 32.938225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601357, 33.732517, 32.779400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294828, -0.300107, -0.907200,
		-0.463145, 0.875308, -0.139042,
		0.835807, 0.379172, -0.397058,
		39.852100, 33.846268, 32.660282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027172, 33.996162, 32.420414>,  <39.267033, 33.580849, 32.938225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027172, 33.996162, 32.420414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.404385, 33.914959, 32.314983>,  <39.630714, 33.866238, 32.251724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.404385, 33.914959, 32.314983>,  <39.027172, 33.996162, 32.420414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404385, 33.914959, 32.314983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321559, -0.352928, -0.878659,
		0.085356, 0.913361, -0.398104,
		0.943035, -0.203013, -0.263575,
		39.687294, 33.854053, 32.235912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238773, 34.383202, 31.781130>,  <39.027172, 33.996162, 32.420414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238773, 34.383202, 31.781130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478310, 34.063606, 31.803085>,  <39.622032, 33.871849, 31.816259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478310, 34.063606, 31.803085>,  <39.238773, 34.383202, 31.781130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478310, 34.063606, 31.803085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220654, -0.230485, -0.947728,
		0.769874, 0.555424, -0.314322,
		0.598837, -0.798988, 0.054888,
		39.657959, 33.823910, 31.819551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356613, 34.270710, 31.133675>,  <39.238773, 34.383202, 31.781130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356613, 34.270710, 31.133675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548298, 33.945099, 31.264957>,  <39.663311, 33.749733, 31.343727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548298, 33.945099, 31.264957>,  <39.356613, 34.270710, 31.133675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548298, 33.945099, 31.264957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063111, -0.404929, -0.912168,
		0.875426, 0.416411, -0.245422,
		0.479215, -0.814024, 0.328205,
		39.692062, 33.700893, 31.363419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036232, 34.187286, 30.801003>,  <39.356613, 34.270710, 31.133675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036232, 34.187286, 30.801003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884865, 33.833138, 30.909023>,  <39.794044, 33.620647, 30.973835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884865, 33.833138, 30.909023>,  <40.036232, 34.187286, 30.801003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884865, 33.833138, 30.909023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009833, -0.295575, -0.955269,
		0.925585, -0.358831, 0.120555,
		-0.378413, -0.885368, 0.270052,
		39.771339, 33.567528, 30.990038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450031, 33.622795, 30.459358>,  <40.036232, 34.187286, 30.801003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450031, 33.622795, 30.459358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115562, 33.424168, 30.552507>,  <39.914879, 33.304989, 30.608397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115562, 33.424168, 30.552507>,  <40.450031, 33.622795, 30.459358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115562, 33.424168, 30.552507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006848, -0.415103, -0.909749,
		0.548420, -0.762304, 0.343698,
		-0.836175, -0.496571, 0.232871,
		39.864712, 33.275196, 30.622368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617432, 32.974380, 30.250734>,  <40.450031, 33.622795, 30.459358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617432, 32.974380, 30.250734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218853, 32.975643, 30.284412>,  <39.979706, 32.976402, 30.304619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218853, 32.975643, 30.284412>,  <40.617432, 32.974380, 30.250734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218853, 32.975643, 30.284412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073328, -0.524697, -0.848125,
		0.041500, -0.851283, 0.523063,
		-0.996444, 0.003158, 0.084198,
		39.919918, 32.976589, 30.309671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448929, 32.332642, 30.105267>,  <40.617432, 32.974380, 30.250734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448929, 32.332642, 30.105267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102871, 32.525909, 30.051497>,  <39.895237, 32.641869, 30.019234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102871, 32.525909, 30.051497>,  <40.448929, 32.332642, 30.105267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102871, 32.525909, 30.051497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103953, -0.434978, -0.894420,
		-0.490630, -0.759829, 0.426546,
		-0.865145, 0.483170, -0.134427,
		39.843327, 32.670860, 30.011169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996258, 31.853853, 29.761597>,  <40.448929, 32.332642, 30.105267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996258, 31.853853, 29.761597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843166, 32.219231, 29.706259>,  <39.751312, 32.438457, 29.673056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843166, 32.219231, 29.706259>,  <39.996258, 31.853853, 29.761597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843166, 32.219231, 29.706259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085895, -0.184280, -0.979113,
		-0.919859, -0.362853, 0.148990,
		-0.382730, 0.913443, -0.138344,
		39.728348, 32.493263, 29.664755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325085, 31.842579, 29.321833>,  <39.996258, 31.853853, 29.761597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325085, 31.842579, 29.321833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494709, 32.198380, 29.253767>,  <39.596485, 32.411861, 29.212927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494709, 32.198380, 29.253767>,  <39.325085, 31.842579, 29.321833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494709, 32.198380, 29.253767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098604, -0.141429, -0.985026,
		-0.900249, 0.434492, 0.027734,
		0.424063, 0.889503, -0.170164,
		39.621929, 32.465229, 29.202719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921696, 32.179554, 28.785233>,  <39.325085, 31.842579, 29.321833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921696, 32.179554, 28.785233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264362, 32.385853, 28.780918>,  <39.469963, 32.509632, 28.778330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264362, 32.385853, 28.780918>,  <38.921696, 32.179554, 28.785233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264362, 32.385853, 28.780918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052707, -0.108307, -0.992719,
		-0.513164, 0.849865, -0.119967,
		0.856671, 0.515751, -0.010786,
		39.521362, 32.540577, 28.777683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851402, 32.592571, 28.154430>,  <38.921696, 32.179554, 28.785233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851402, 32.592571, 28.154430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241020, 32.606255, 28.243927>,  <39.474792, 32.614464, 28.297625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241020, 32.606255, 28.243927>,  <38.851402, 32.592571, 28.154430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241020, 32.606255, 28.243927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224018, -0.004421, -0.974575,
		-0.032350, 0.999405, -0.011970,
		0.974048, 0.034209, 0.223742,
		39.533234, 32.616516, 28.311050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230896, 33.252426, 27.872816>,  <38.851402, 32.592571, 28.154430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230896, 33.252426, 27.872816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493210, 32.951653, 27.899748>,  <39.650600, 32.771187, 27.915907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493210, 32.951653, 27.899748>,  <39.230896, 33.252426, 27.872816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493210, 32.951653, 27.899748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156699, 0.048332, -0.986463,
		0.738503, 0.657462, 0.149523,
		0.655789, -0.751936, 0.067330,
		39.689945, 32.726070, 27.919947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810432, 33.536720, 27.468763>,  <39.230896, 33.252426, 27.872816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810432, 33.536720, 27.468763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900581, 33.148335, 27.500854>,  <39.954670, 32.915302, 27.520109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900581, 33.148335, 27.500854>,  <39.810432, 33.536720, 27.468763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900581, 33.148335, 27.500854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161274, -0.044031, -0.985927,
		0.960832, 0.235141, 0.146668,
		0.225374, -0.970963, 0.080228,
		39.968193, 32.857044, 27.524923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516457, 33.344578, 27.223513>,  <39.810432, 33.536720, 27.468763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516457, 33.344578, 27.223513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316917, 33.000328, 27.182564>,  <40.197193, 32.793777, 27.157995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316917, 33.000328, 27.182564>,  <40.516457, 33.344578, 27.223513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316917, 33.000328, 27.182564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067228, 0.079340, -0.994578,
		0.864081, -0.503021, 0.018280,
		-0.498843, -0.860625, -0.102373,
		40.167263, 32.742142, 27.151852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887054, 33.025894, 26.814508>,  <40.516457, 33.344578, 27.223513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887054, 33.025894, 26.814508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539177, 32.830513, 26.786119>,  <40.330448, 32.713284, 26.769085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539177, 32.830513, 26.786119>,  <40.887054, 33.025894, 26.814508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539177, 32.830513, 26.786119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107315, -0.046770, -0.993124,
		0.481778, -0.871334, 0.093094,
		-0.869697, -0.488456, -0.070974,
		40.278267, 32.683975, 26.764828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035473, 32.496941, 26.404737>,  <40.887054, 33.025894, 26.814508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035473, 32.496941, 26.404737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639347, 32.536919, 26.366175>,  <40.401672, 32.560905, 26.343037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639347, 32.536919, 26.366175>,  <41.035473, 32.496941, 26.404737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639347, 32.536919, 26.366175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099274, 0.024084, -0.994769,
		-0.097105, -0.994701, -0.033773,
		-0.990310, 0.099950, -0.096409,
		40.342255, 32.566902, 26.337252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808350, 32.022793, 25.916451>,  <41.035473, 32.496941, 26.404737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808350, 32.022793, 25.916451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508541, 32.287071, 25.899921>,  <40.328655, 32.445637, 25.890003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508541, 32.287071, 25.899921>,  <40.808350, 32.022793, 25.916451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508541, 32.287071, 25.899921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069609, 0.016582, -0.997437,
		-0.658316, -0.750471, -0.058419,
		-0.749516, 0.660695, -0.041323,
		40.283688, 32.485279, 25.887524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.404949, 31.821283, 25.347620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273331, 32.193615, 25.411224>,  <40.194359, 32.417015, 25.449387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273331, 32.193615, 25.411224>,  <40.404949, 31.821283, 25.347620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273331, 32.193615, 25.411224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021535, 0.160946, -0.986728,
		-0.944068, -0.328103, -0.032913,
		-0.329046, 0.930830, 0.159010,
		40.174618, 32.472862, 25.458927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751976, 31.958689, 24.942564>,  <40.404949, 31.821283, 25.347620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751976, 31.958689, 24.942564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894730, 32.322739, 25.026764>,  <39.980381, 32.541168, 25.077284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894730, 32.322739, 25.026764>,  <39.751976, 31.958689, 24.942564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894730, 32.322739, 25.026764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135745, 0.273471, -0.952254,
		-0.924233, 0.311270, 0.221142,
		0.356883, 0.910124, 0.210498,
		40.001793, 32.595776, 25.089912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313969, 32.411549, 24.624180>,  <39.751976, 31.958689, 24.942564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313969, 32.411549, 24.624180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631813, 32.641541, 24.702150>,  <39.822517, 32.779537, 24.748932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631813, 32.641541, 24.702150>,  <39.313969, 32.411549, 24.624180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631813, 32.641541, 24.702150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205966, 0.557324, -0.804343,
		-0.571117, 0.598990, 0.561280,
		0.794609, 0.574979, 0.194926,
		39.870197, 32.814034, 24.760628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068562, 33.165203, 24.530701>,  <39.313969, 32.411549, 24.624180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068562, 33.165203, 24.530701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.466724, 33.142998, 24.499519>,  <39.705624, 33.129673, 24.480810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.466724, 33.142998, 24.499519>,  <39.068562, 33.165203, 24.530701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466724, 33.142998, 24.499519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037055, 0.527443, -0.848782,
		0.088234, 0.847775, 0.522966,
		0.995410, -0.055513, -0.077953,
		39.765347, 33.126343, 24.476133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315067, 33.939598, 24.419386>,  <39.068562, 33.165203, 24.530701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315067, 33.939598, 24.419386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.593391, 33.688660, 24.279509>,  <39.760387, 33.538097, 24.195581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.593391, 33.688660, 24.279509>,  <39.315067, 33.939598, 24.419386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593391, 33.688660, 24.279509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075700, 0.548236, -0.832891,
		0.714222, 0.553064, 0.428960,
		0.695813, -0.627341, -0.349695,
		39.802135, 33.500458, 24.174601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776558, 34.332108, 23.944574>,  <39.315067, 33.939598, 24.419386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776558, 34.332108, 23.944574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853043, 33.952633, 23.843830>,  <39.898933, 33.724949, 23.783384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853043, 33.952633, 23.843830>,  <39.776558, 34.332108, 23.944574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853043, 33.952633, 23.843830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116934, 0.276785, -0.953791,
		0.974559, 0.152926, 0.163858,
		0.191213, -0.948685, -0.251861,
		39.910408, 33.668026, 23.768272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296375, 34.327988, 23.371017>,  <39.776558, 34.332108, 23.944574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296375, 34.327988, 23.371017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129723, 33.965206, 23.346174>,  <40.029732, 33.747536, 23.331268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129723, 33.965206, 23.346174>,  <40.296375, 34.327988, 23.371017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129723, 33.965206, 23.346174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022315, 0.058094, -0.998062,
		0.908803, -0.417206, -0.003965,
		-0.416628, -0.906953, -0.062106,
		40.004734, 33.693119, 23.327543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691654, 34.035221, 22.964781>,  <40.296375, 34.327988, 23.371017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691654, 34.035221, 22.964781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.355473, 33.818542, 22.959179>,  <40.153763, 33.688534, 22.955818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.355473, 33.818542, 22.959179>,  <40.691654, 34.035221, 22.964781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355473, 33.818542, 22.959179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110782, 0.197068, -0.974111,
		0.530435, -0.817146, -0.225637,
		-0.840456, -0.541699, -0.014007,
		40.103336, 33.656033, 22.954977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831234, 33.604633, 22.501781>,  <40.691654, 34.035221, 22.964781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831234, 33.604633, 22.501781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432777, 33.574364, 22.519569>,  <40.193703, 33.556202, 22.530243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432777, 33.574364, 22.519569>,  <40.831234, 33.604633, 22.501781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432777, 33.574364, 22.519569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050799, 0.083840, -0.995184,
		0.071568, -0.993603, -0.087360,
		-0.996141, -0.075661, 0.044473,
		40.133934, 33.551662, 22.532911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686699, 33.175072, 21.937572>,  <40.831234, 33.604633, 22.501781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686699, 33.175072, 21.937572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.349617, 33.370674, 22.027668>,  <40.147369, 33.488033, 22.081726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.349617, 33.370674, 22.027668>,  <40.686699, 33.175072, 21.937572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349617, 33.370674, 22.027668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144713, 0.197234, -0.969617,
		-0.518570, -0.849691, -0.095444,
		-0.842700, 0.489003, 0.225241,
		40.096806, 33.517376, 22.095240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226078, 32.939480, 21.520124>,  <40.686699, 33.175072, 21.937572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226078, 32.939480, 21.520124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.065723, 33.291332, 21.622528>,  <39.969509, 33.502441, 21.683969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.065723, 33.291332, 21.622528>,  <40.226078, 32.939480, 21.520124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065723, 33.291332, 21.622528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224391, 0.176654, -0.958354,
		-0.888221, -0.441639, 0.126562,
		-0.400889, 0.879629, 0.256008,
		39.945457, 33.555222, 21.699331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606045, 33.062832, 21.096184>,  <40.226078, 32.939480, 21.520124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606045, 33.062832, 21.096184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733150, 33.424690, 21.209774>,  <39.809414, 33.641804, 21.277927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733150, 33.424690, 21.209774>,  <39.606045, 33.062832, 21.096184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733150, 33.424690, 21.209774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203669, 0.357630, -0.911384,
		-0.926037, 0.231769, 0.297891,
		0.317765, 0.904646, 0.283974,
		39.828480, 33.696083, 21.294966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184238, 33.564392, 20.830729>,  <39.606045, 33.062832, 21.096184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184238, 33.564392, 20.830729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.505577, 33.786110, 20.917803>,  <39.698380, 33.919140, 20.970047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.505577, 33.786110, 20.917803>,  <39.184238, 33.564392, 20.830729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505577, 33.786110, 20.917803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161483, 0.554618, -0.816285,
		-0.573197, 0.620608, 0.535061,
		0.803348, 0.554295, 0.217688,
		39.746582, 33.952400, 20.983109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972050, 34.236984, 20.603380>,  <39.184238, 33.564392, 20.830729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972050, 34.236984, 20.603380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368855, 34.264523, 20.645645>,  <39.606937, 34.281044, 20.671003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368855, 34.264523, 20.645645>,  <38.972050, 34.236984, 20.603380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368855, 34.264523, 20.645645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063133, 0.454210, -0.888655,
		-0.109171, 0.888231, 0.446238,
		0.992016, 0.068843, 0.105663,
		39.666458, 34.285175, 20.677343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247906, 34.894276, 20.409822>,  <38.972050, 34.236984, 20.603380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247906, 34.894276, 20.409822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.567589, 34.656479, 20.374378>,  <39.759399, 34.513802, 20.353111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.567589, 34.656479, 20.374378>,  <39.247906, 34.894276, 20.409822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567589, 34.656479, 20.374378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189272, 0.388846, -0.901651,
		0.570479, 0.703833, 0.423288,
		0.799206, -0.594490, -0.088612,
		39.807350, 34.478130, 20.347795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817471, 35.351078, 20.192348>,  <39.247906, 34.894276, 20.409822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817471, 35.351078, 20.192348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942581, 34.987934, 20.080666>,  <40.017647, 34.770046, 20.013657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942581, 34.987934, 20.080666>,  <39.817471, 35.351078, 20.192348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942581, 34.987934, 20.080666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185280, 0.346623, -0.919524,
		0.931582, 0.235871, 0.276623,
		0.312773, -0.907864, -0.279205,
		40.036411, 34.715576, 19.996904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574524, 35.400341, 19.870827>,  <39.817471, 35.351078, 20.192348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574524, 35.400341, 19.870827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425049, 35.053856, 19.738146>,  <40.335361, 34.845963, 19.658537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425049, 35.053856, 19.738146>,  <40.574524, 35.400341, 19.870827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425049, 35.053856, 19.738146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431288, 0.154334, -0.888916,
		0.821186, -0.475238, 0.315915,
		-0.373691, -0.866215, -0.331702,
		40.312943, 34.793991, 19.638636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136646, 35.142391, 19.564003>,  <40.574524, 35.400341, 19.870827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136646, 35.142391, 19.564003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.801117, 34.977142, 19.422186>,  <40.599800, 34.877991, 19.337095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.801117, 34.977142, 19.422186>,  <41.136646, 35.142391, 19.564003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801117, 34.977142, 19.422186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306112, 0.180615, -0.934705,
		0.450188, -0.892583, -0.025041,
		-0.838824, -0.413128, -0.354541,
		40.549469, 34.853203, 19.315825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390541, 34.767376, 18.987818>,  <41.136646, 35.142391, 19.564003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390541, 34.767376, 18.987818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997051, 34.814476, 18.933542>,  <40.760956, 34.842735, 18.900976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997051, 34.814476, 18.933542>,  <41.390541, 34.767376, 18.987818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997051, 34.814476, 18.933542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172152, 0.401799, -0.899400,
		-0.051385, -0.908125, -0.415533,
		-0.983729, 0.117750, -0.135689,
		40.701931, 34.849800, 18.892836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185783, 34.519600, 18.365908>,  <41.390541, 34.767376, 18.987818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185783, 34.519600, 18.365908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877033, 34.766460, 18.427017>,  <40.691784, 34.914577, 18.463684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877033, 34.766460, 18.427017>,  <41.185783, 34.519600, 18.365908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877033, 34.766460, 18.427017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024880, 0.210791, -0.977215,
		-0.635292, -0.758085, -0.147349,
		-0.771871, 0.617150, 0.152775,
		40.645473, 34.951607, 18.472849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746307, 34.267834, 17.870275>,  <41.185783, 34.519600, 18.365908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746307, 34.267834, 17.870275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630016, 34.632915, 17.985130>,  <40.560242, 34.851963, 18.054043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630016, 34.632915, 17.985130>,  <40.746307, 34.267834, 17.870275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630016, 34.632915, 17.985130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195533, 0.237093, -0.951606,
		-0.936615, -0.332799, 0.109536,
		-0.290723, 0.912706, 0.287138,
		40.542801, 34.906727, 18.071272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244572, 34.440674, 17.312029>,  <40.746307, 34.267834, 17.870275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244572, 34.440674, 17.312029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319717, 34.784718, 17.501734>,  <40.364803, 34.991142, 17.615557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319717, 34.784718, 17.501734>,  <40.244572, 34.440674, 17.312029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319717, 34.784718, 17.501734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334309, 0.510026, -0.792535,
		-0.923550, -0.009661, 0.383357,
		0.187865, 0.860105, 0.474264,
		40.376076, 35.042747, 17.644012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549416, 34.906170, 17.510765>,  <40.244572, 34.440674, 17.312029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549416, 34.906170, 17.510765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886112, 35.105881, 17.428602>,  <40.088131, 35.225708, 17.379305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886112, 35.105881, 17.428602>,  <39.549416, 34.906170, 17.510765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886112, 35.105881, 17.428602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389101, 0.297279, -0.871909,
		-0.374262, 0.813846, 0.444502,
		0.841741, 0.499279, -0.205408,
		40.138634, 35.255665, 17.366980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005894, 34.912212, 17.009712>,  <39.549416, 34.906170, 17.510765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005894, 34.912212, 17.009712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835693, 35.271347, 17.055042>,  <38.733574, 35.486828, 17.082241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835693, 35.271347, 17.055042>,  <39.005894, 34.912212, 17.009712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835693, 35.271347, 17.055042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122734, -0.066816, 0.990188,
		0.896598, 0.435231, -0.081765,
		-0.425498, 0.897836, 0.113325,
		38.708042, 35.540699, 17.089039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449512, 34.489986, 17.013428>,  <39.005894, 34.912212, 17.009712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449512, 34.489986, 17.013428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074097, 34.628044, 17.011881>,  <37.848846, 34.710880, 17.010952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074097, 34.628044, 17.011881>,  <38.449512, 34.489986, 17.013428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074097, 34.628044, 17.011881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069768, 0.200667, 0.977172,
		0.338041, 0.916847, -0.212414,
		-0.938542, 0.345144, -0.003867,
		37.792534, 34.731586, 17.010721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381805, 35.010258, 17.484268>,  <38.449512, 34.489986, 17.013428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381805, 35.010258, 17.484268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004536, 34.885880, 17.437401>,  <37.778172, 34.811253, 17.409281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004536, 34.885880, 17.437401>,  <38.381805, 35.010258, 17.484268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004536, 34.885880, 17.437401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099073, -0.073424, 0.992367,
		-0.317171, 0.947588, 0.038446,
		-0.943179, -0.310941, -0.117169,
		37.721581, 34.792599, 17.402250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973698, 35.504112, 17.869844>,  <38.381805, 35.010258, 17.484268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973698, 35.504112, 17.869844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787312, 35.150860, 17.848104>,  <37.675480, 34.938908, 17.835060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787312, 35.150860, 17.848104>,  <37.973698, 35.504112, 17.869844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787312, 35.150860, 17.848104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131307, 0.008273, 0.991307,
		-0.875008, 0.469047, -0.119817,
		-0.465961, -0.883134, -0.054351,
		37.647522, 34.885918, 17.831799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363640, 35.612320, 18.209694>,  <37.973698, 35.504112, 17.869844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363640, 35.612320, 18.209694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403301, 35.214329, 18.204107>,  <37.427097, 34.975536, 18.200756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403301, 35.214329, 18.204107>,  <37.363640, 35.612320, 18.209694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403301, 35.214329, 18.204107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231428, -0.036710, 0.972160,
		-0.967786, -0.093163, -0.233905,
		0.099156, -0.994974, -0.013967,
		37.433048, 34.915836, 18.199917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769394, 35.362259, 18.438278>,  <37.363640, 35.612320, 18.209694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769394, 35.362259, 18.438278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044910, 35.084236, 18.520706>,  <37.210220, 34.917423, 18.570164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044910, 35.084236, 18.520706>,  <36.769394, 35.362259, 18.438278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044910, 35.084236, 18.520706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334658, -0.052693, 0.940865,
		-0.643098, -0.717019, -0.268901,
		0.688788, -0.695059, 0.206069,
		37.251545, 34.875717, 18.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475876, 34.991539, 18.934793>,  <36.769394, 35.362259, 18.438278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475876, 34.991539, 18.934793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864521, 34.906567, 18.976440>,  <37.097710, 34.855583, 19.001429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864521, 34.906567, 18.976440>,  <36.475876, 34.991539, 18.934793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864521, 34.906567, 18.976440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124151, -0.083223, 0.988767,
		-0.201384, -0.973625, -0.107235,
		0.971613, -0.212435, 0.104117,
		37.156006, 34.842838, 19.007675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464565, 34.374374, 19.438679>,  <36.475876, 34.991539, 18.934793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464565, 34.374374, 19.438679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851059, 34.477398, 19.441717>,  <37.082954, 34.539211, 19.443541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851059, 34.477398, 19.441717>,  <36.464565, 34.374374, 19.438679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851059, 34.477398, 19.441717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070518, -0.292667, 0.953610,
		0.247833, -0.920874, -0.300948,
		0.966233, 0.257559, 0.007594,
		37.140930, 34.554665, 19.443995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871624, 33.830173, 19.735754>,  <36.464565, 34.374374, 19.438679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871624, 33.830173, 19.735754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074497, 34.167572, 19.806492>,  <37.196220, 34.370010, 19.848934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074497, 34.167572, 19.806492>,  <36.871624, 33.830173, 19.735754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074497, 34.167572, 19.806492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022261, -0.192304, 0.981083,
		0.861551, -0.501525, -0.078756,
		0.507183, 0.843500, 0.176844,
		37.226650, 34.420624, 19.859545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371449, 33.556404, 20.098471>,  <36.871624, 33.830173, 19.735754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371449, 33.556404, 20.098471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367622, 33.948689, 20.176561>,  <37.365326, 34.184059, 20.223415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367622, 33.948689, 20.176561>,  <37.371449, 33.556404, 20.098471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367622, 33.948689, 20.176561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031736, -0.194841, 0.980321,
		0.999451, 0.015577, -0.029260,
		-0.009570, 0.980711, 0.195229,
		37.364750, 34.242901, 20.235130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030426, 33.710415, 20.489672>,  <37.371449, 33.556404, 20.098471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030426, 33.710415, 20.489672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741947, 33.980240, 20.552700>,  <37.568859, 34.142136, 20.590517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741947, 33.980240, 20.552700>,  <38.030426, 33.710415, 20.489672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741947, 33.980240, 20.552700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100240, -0.123444, 0.987276,
		0.685435, 0.727819, 0.021410,
		-0.721201, 0.674567, 0.157569,
		37.525585, 34.182610, 20.599972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193558, 34.012100, 21.069859>,  <38.030426, 33.710415, 20.489672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193558, 34.012100, 21.069859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817085, 34.146622, 21.056757>,  <37.591202, 34.227333, 21.048897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817085, 34.146622, 21.056757>,  <38.193558, 34.012100, 21.069859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817085, 34.146622, 21.056757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041311, -0.018321, 0.998978,
		0.335356, 0.941577, 0.031137,
		-0.941185, 0.336299, -0.032754,
		37.534729, 34.247513, 21.046930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343559, 34.569016, 21.458487>,  <38.193558, 34.012100, 21.069859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343559, 34.569016, 21.458487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959484, 34.457592, 21.450008>,  <37.729038, 34.390739, 21.444921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959484, 34.457592, 21.450008>,  <38.343559, 34.569016, 21.458487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959484, 34.457592, 21.450008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008549, -0.105139, 0.994421,
		-0.279235, 0.954647, 0.103335,
		-0.960185, -0.278560, -0.021197,
		37.671429, 34.374023, 21.443649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002659, 34.885296, 22.053343>,  <38.343559, 34.569016, 21.458487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002659, 34.885296, 22.053343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.739643, 34.602623, 21.948853>,  <37.581833, 34.433018, 21.886158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.739643, 34.602623, 21.948853>,  <38.002659, 34.885296, 22.053343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739643, 34.602623, 21.948853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102130, -0.259918, 0.960214,
		-0.746466, 0.658058, 0.098733,
		-0.657539, -0.706684, -0.261228,
		37.542381, 34.390617, 21.870483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531151, 34.899746, 22.603769>,  <38.002659, 34.885296, 22.053343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531151, 34.899746, 22.603769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494125, 34.539524, 22.433861>,  <37.471909, 34.323391, 22.331915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494125, 34.539524, 22.433861>,  <37.531151, 34.899746, 22.603769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494125, 34.539524, 22.433861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186210, -0.403422, 0.895867,
		-0.978140, 0.162023, -0.130349,
		-0.092565, -0.900555, -0.424773,
		37.466354, 34.269356, 22.306429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986439, 34.641872, 22.872644>,  <37.531151, 34.899746, 22.603769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986439, 34.641872, 22.872644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165314, 34.305660, 22.750309>,  <37.272636, 34.103935, 22.676908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165314, 34.305660, 22.750309>,  <36.986439, 34.641872, 22.872644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165314, 34.305660, 22.750309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120825, -0.395563, 0.910457,
		-0.886243, -0.370191, -0.278447,
		0.447186, -0.840529, -0.305837,
		37.299469, 34.053501, 22.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608219, 34.112961, 23.096439>,  <36.986439, 34.641872, 22.872644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608219, 34.112961, 23.096439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948154, 33.916454, 23.020096>,  <37.152115, 33.798550, 22.974289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948154, 33.916454, 23.020096>,  <36.608219, 34.112961, 23.096439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948154, 33.916454, 23.020096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124765, -0.539373, 0.832773,
		-0.512053, -0.683915, -0.519675,
		0.849845, -0.491261, -0.190859,
		37.203106, 33.769073, 22.962837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524437, 33.336689, 23.199236>,  <36.608219, 34.112961, 23.096439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524437, 33.336689, 23.199236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919086, 33.386112, 23.241770>,  <37.155876, 33.415768, 23.267290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919086, 33.386112, 23.241770>,  <36.524437, 33.336689, 23.199236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919086, 33.386112, 23.241770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006928, -0.619937, 0.784621,
		0.162867, -0.774862, -0.610789,
		0.986624, 0.123557, 0.106336,
		37.215073, 33.423180, 23.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723717, 32.590511, 23.399420>,  <36.524437, 33.336689, 23.199236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723717, 32.590511, 23.399420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998360, 32.852249, 23.526163>,  <37.163147, 33.009293, 23.602209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998360, 32.852249, 23.526163>,  <36.723717, 32.590511, 23.399420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998360, 32.852249, 23.526163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000997, -0.436677, 0.899618,
		0.727026, -0.617369, -0.300479,
		0.686609, 0.654345, 0.316860,
		37.204342, 33.048553, 23.621222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196426, 32.168945, 23.822813>,  <36.723717, 32.590511, 23.399420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196426, 32.168945, 23.822813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260197, 32.550827, 23.923309>,  <37.298458, 32.779957, 23.983608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260197, 32.550827, 23.923309>,  <37.196426, 32.168945, 23.822813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260197, 32.550827, 23.923309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040460, -0.260601, 0.964598,
		0.986381, -0.143614, -0.080173,
		0.159423, 0.954705, 0.251242,
		37.308025, 32.837238, 23.998682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806011, 32.153183, 24.305342>,  <37.196426, 32.168945, 23.822813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806011, 32.153183, 24.305342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679089, 32.525398, 24.378454>,  <37.602936, 32.748730, 24.422321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679089, 32.525398, 24.378454>,  <37.806011, 32.153183, 24.305342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679089, 32.525398, 24.378454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057839, -0.211373, 0.975693,
		0.946559, 0.299018, 0.120891,
		-0.317303, 0.930542, 0.182782,
		37.583897, 32.804562, 24.433289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.757904, 32.360004, 28.538206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387119, 32.492203, 28.467209>,  <40.164646, 32.571522, 28.424610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387119, 32.492203, 28.467209>,  <40.757904, 32.360004, 28.538206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387119, 32.492203, 28.467209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044694, 0.372473, 0.926966,
		0.372473, 0.867199, -0.330498,
		-0.926966, 0.330498, -0.177495,
		40.109028, 32.591351, 28.413960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582882, 33.197525, 28.711624>,  <40.757904, 32.360004, 28.538206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582882, 33.197525, 28.711624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248207, 32.979931, 28.737045>,  <40.047401, 32.849373, 28.752298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248207, 32.979931, 28.737045>,  <40.582882, 33.197525, 28.711624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248207, 32.979931, 28.737045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164897, 0.360861, 0.917926,
		-0.522274, 0.757533, -0.391628,
		-0.836683, -0.543988, 0.063554,
		39.997204, 32.816734, 28.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065739, 33.666374, 29.105545>,  <40.582882, 33.197525, 28.711624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065739, 33.666374, 29.105545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925087, 33.292751, 29.130480>,  <39.840694, 33.068577, 29.145441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925087, 33.292751, 29.130480>,  <40.065739, 33.666374, 29.105545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925087, 33.292751, 29.130480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186807, 0.135260, 0.973040,
		-0.917311, 0.330504, -0.222051,
		-0.351629, -0.934062, 0.062335,
		39.819599, 33.012531, 29.149179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352448, 33.692940, 29.269554>,  <40.065739, 33.666374, 29.105545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352448, 33.692940, 29.269554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474480, 33.331097, 29.388618>,  <39.547699, 33.113991, 29.460058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474480, 33.331097, 29.388618>,  <39.352448, 33.692940, 29.269554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474480, 33.331097, 29.388618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405925, 0.159223, 0.899930,
		-0.861481, -0.395382, -0.318628,
		0.305083, -0.904611, 0.297663,
		39.566006, 33.059711, 29.477917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952557, 33.581158, 29.845694>,  <39.352448, 33.692940, 29.269554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952557, 33.581158, 29.845694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210651, 33.275581, 29.848633>,  <39.365509, 33.092236, 29.850397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210651, 33.275581, 29.848633>,  <38.952557, 33.581158, 29.845694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210651, 33.275581, 29.848633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060268, -0.041309, 0.997327,
		-0.761600, -0.643958, -0.072696,
		0.645240, -0.763945, 0.007349,
		39.404224, 33.046398, 29.850838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688732, 33.056686, 30.329344>,  <38.952557, 33.581158, 29.845694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688732, 33.056686, 30.329344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088264, 33.069988, 30.315287>,  <39.327984, 33.077969, 30.306852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088264, 33.069988, 30.315287>,  <38.688732, 33.056686, 30.329344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088264, 33.069988, 30.315287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030942, 0.119348, 0.992370,
		0.037195, -0.992296, 0.118179,
		0.998829, 0.033254, -0.035142,
		39.387913, 33.079967, 30.304745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879074, 32.513496, 30.854952>,  <38.688732, 33.056686, 30.329344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879074, 32.513496, 30.854952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178944, 32.772163, 30.798658>,  <39.358864, 32.927364, 30.764881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178944, 32.772163, 30.798658>,  <38.879074, 32.513496, 30.854952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178944, 32.772163, 30.798658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052928, 0.153389, 0.986747,
		0.659688, -0.747187, 0.080765,
		0.749674, 0.646670, -0.140736,
		39.403847, 32.966164, 30.756437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400494, 32.344254, 31.278971>,  <38.879074, 32.513496, 30.854952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400494, 32.344254, 31.278971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545567, 32.709538, 31.204666>,  <39.632610, 32.928707, 31.160084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545567, 32.709538, 31.204666>,  <39.400494, 32.344254, 31.278971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545567, 32.709538, 31.204666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311931, 0.068876, 0.947605,
		0.878159, -0.401622, -0.259880,
		0.362679, 0.913212, -0.185762,
		39.654369, 32.983501, 31.148937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940880, 32.532162, 31.795002>,  <39.400494, 32.344254, 31.278971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940880, 32.532162, 31.795002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885925, 32.900188, 31.648251>,  <39.852955, 33.121006, 31.560200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885925, 32.900188, 31.648251>,  <39.940880, 32.532162, 31.795002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885925, 32.900188, 31.648251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301991, 0.391662, 0.869139,
		0.943360, 0.008610, -0.331660,
		-0.137382, 0.920069, -0.366878,
		39.844711, 33.176208, 31.538187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579723, 32.893780, 31.850109>,  <39.940880, 32.532162, 31.795002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579723, 32.893780, 31.850109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299076, 33.178230, 31.832098>,  <40.130688, 33.348900, 31.821291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299076, 33.178230, 31.832098>,  <40.579723, 32.893780, 31.850109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299076, 33.178230, 31.832098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366832, 0.414658, 0.832762,
		0.610871, 0.567766, -0.551796,
		-0.701621, 0.711127, -0.045028,
		40.088589, 33.391567, 31.818590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954823, 33.482178, 31.889523>,  <40.579723, 32.893780, 31.850109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954823, 33.482178, 31.889523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589157, 33.609566, 31.989832>,  <40.369759, 33.685997, 32.050018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589157, 33.609566, 31.989832>,  <40.954823, 33.482178, 31.889523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589157, 33.609566, 31.989832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386144, 0.496016, 0.777728,
		0.123295, 0.807803, -0.576413,
		-0.914161, 0.318469, 0.250772,
		40.314907, 33.705105, 32.065063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976727, 34.217106, 32.016113>,  <40.954823, 33.482178, 31.889523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976727, 34.217106, 32.016113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656628, 34.092800, 32.221260>,  <40.464569, 34.018219, 32.344349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656628, 34.092800, 32.221260>,  <40.976727, 34.217106, 32.016113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656628, 34.092800, 32.221260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281593, 0.560352, 0.778917,
		-0.529441, 0.767746, -0.360913,
		-0.800248, -0.310760, 0.512865,
		40.416553, 33.999573, 32.375118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683327, 34.728477, 32.341702>,  <40.976727, 34.217106, 32.016113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683327, 34.728477, 32.341702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.526943, 34.443996, 32.575397>,  <40.433113, 34.273308, 32.715614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.526943, 34.443996, 32.575397>,  <40.683327, 34.728477, 32.341702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526943, 34.443996, 32.575397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175637, 0.565453, 0.805862,
		-0.903493, 0.417677, -0.096158,
		-0.390963, -0.711202, 0.584243,
		40.409653, 34.230637, 32.750671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091286, 34.899303, 32.849483>,  <40.683327, 34.728477, 32.341702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091286, 34.899303, 32.849483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337238, 34.613873, 32.983788>,  <40.484810, 34.442616, 33.064369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337238, 34.613873, 32.983788>,  <40.091286, 34.899303, 32.849483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337238, 34.613873, 32.983788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124119, 0.508009, 0.852362,
		-0.778793, -0.482426, 0.400932,
		0.614879, -0.713577, 0.335756,
		40.521702, 34.399799, 33.084515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843601, 35.334145, 33.362179>,  <40.091286, 34.899303, 32.849483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843601, 35.334145, 33.362179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.750191, 35.659245, 33.575684>,  <39.694145, 35.854305, 33.703789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.750191, 35.659245, 33.575684>,  <39.843601, 35.334145, 33.362179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750191, 35.659245, 33.575684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558187, 0.337429, -0.758003,
		-0.796173, -0.474957, 0.374866,
		-0.233528, 0.812747, 0.533766,
		39.680134, 35.903069, 33.735813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094307, 35.292160, 33.181263>,  <39.843601, 35.334145, 33.362179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094307, 35.292160, 33.181263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141598, 35.646236, 33.361244>,  <39.169971, 35.858681, 33.469234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141598, 35.646236, 33.361244>,  <39.094307, 35.292160, 33.181263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141598, 35.646236, 33.361244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651043, 0.411245, -0.637981,
		-0.749777, -0.217516, 0.624917,
		0.118223, 0.885192, 0.449955,
		39.177063, 35.911793, 33.496231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387859, 35.643005, 33.380196>,  <39.094307, 35.292160, 33.181263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387859, 35.643005, 33.380196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670536, 35.922012, 33.332783>,  <38.840141, 36.089417, 33.304337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670536, 35.922012, 33.332783>,  <38.387859, 35.643005, 33.380196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670536, 35.922012, 33.332783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594098, 0.494035, -0.634805,
		-0.384231, 0.519031, 0.763527,
		0.706692, 0.697521, -0.118532,
		38.882545, 36.131268, 33.297222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109669, 36.317116, 33.450249>,  <38.387859, 35.643005, 33.380196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109669, 36.317116, 33.450249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443810, 36.368980, 33.236565>,  <38.644295, 36.400101, 33.108356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443810, 36.368980, 33.236565>,  <38.109669, 36.317116, 33.450249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443810, 36.368980, 33.236565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521091, 0.496295, -0.694374,
		0.175088, 0.858416, 0.482147,
		0.835349, 0.129666, -0.534208,
		38.694416, 36.407879, 33.076302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880783, 36.741570, 32.914482>,  <38.109669, 36.317116, 33.450249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880783, 36.741570, 32.914482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263546, 36.677753, 32.817432>,  <38.493206, 36.639465, 32.759201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263546, 36.677753, 32.817432>,  <37.880783, 36.741570, 32.914482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263546, 36.677753, 32.817432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118357, 0.548701, -0.827598,
		0.265166, 0.820655, 0.506175,
		0.956911, -0.159541, -0.242627,
		38.550621, 36.629890, 32.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088737, 37.347118, 32.757862>,  <37.880783, 36.741570, 32.914482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088737, 37.347118, 32.757862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.326714, 37.097130, 32.555687>,  <38.469498, 36.947136, 32.434383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.326714, 37.097130, 32.555687>,  <38.088737, 37.347118, 32.757862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326714, 37.097130, 32.555687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097172, 0.568291, -0.817070,
		0.797877, 0.535219, 0.277368,
		0.594937, -0.624969, -0.505434,
		38.505196, 36.909637, 32.404057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534908, 37.754322, 32.320412>,  <38.088737, 37.347118, 32.757862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534908, 37.754322, 32.320412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531982, 37.387360, 32.161259>,  <38.530228, 37.167183, 32.065765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531982, 37.387360, 32.161259>,  <38.534908, 37.754322, 32.320412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531982, 37.387360, 32.161259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050514, 0.397724, -0.916114,
		0.998697, 0.013401, -0.049250,
		-0.007311, -0.917407, -0.397882,
		38.529789, 37.112137, 32.041893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075172, 37.763626, 31.772333>,  <38.534908, 37.754322, 32.320412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075172, 37.763626, 31.772333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857815, 37.433800, 31.709330>,  <38.727402, 37.235905, 31.671528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857815, 37.433800, 31.709330>,  <39.075172, 37.763626, 31.772333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857815, 37.433800, 31.709330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020414, 0.200554, -0.979470,
		0.839229, -0.529024, -0.125813,
		-0.543395, -0.824568, -0.157511,
		38.694798, 37.186428, 31.662077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402603, 37.317150, 31.373011>,  <39.075172, 37.763626, 31.772333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402603, 37.317150, 31.373011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013477, 37.240929, 31.320372>,  <38.780003, 37.195198, 31.288788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013477, 37.240929, 31.320372>,  <39.402603, 37.317150, 31.373011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013477, 37.240929, 31.320372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111814, 0.111128, -0.987496,
		0.202796, -0.975366, -0.086801,
		-0.972816, -0.190554, -0.131596,
		38.721634, 37.183762, 31.280893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372177, 36.792995, 30.909130>,  <39.402603, 37.317150, 31.373011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372177, 36.792995, 30.909130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016506, 36.974979, 30.889627>,  <38.803104, 37.084171, 30.877926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016506, 36.974979, 30.889627>,  <39.372177, 36.792995, 30.909130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016506, 36.974979, 30.889627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074115, 0.038060, -0.996523,
		-0.451524, -0.889697, -0.067561,
		-0.889175, 0.454962, -0.048754,
		38.749752, 37.111469, 30.875002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115170, 36.624397, 30.309473>,  <39.372177, 36.792995, 30.909130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115170, 36.624397, 30.309473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837692, 36.901718, 30.387575>,  <38.671207, 37.068111, 30.434437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837692, 36.901718, 30.387575>,  <39.115170, 36.624397, 30.309473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837692, 36.901718, 30.387575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134908, 0.141223, -0.980742,
		-0.707528, -0.706672, -0.004432,
		-0.693689, 0.693305, 0.195255,
		38.629585, 37.109711, 30.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493565, 36.496338, 29.853361>,  <39.115170, 36.624397, 30.309473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493565, 36.496338, 29.853361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502537, 36.884781, 29.948393>,  <38.507919, 37.117847, 30.005413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502537, 36.884781, 29.948393>,  <38.493565, 36.496338, 29.853361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502537, 36.884781, 29.948393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231857, 0.236216, -0.943634,
		-0.972491, -0.033915, 0.230457,
		0.022435, 0.971108, 0.237581,
		38.509266, 37.176113, 30.019667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968166, 36.874088, 29.333567>,  <38.493565, 36.496338, 29.853361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968166, 36.874088, 29.333567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.210995, 37.153965, 29.484247>,  <38.356689, 37.321892, 29.574656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.210995, 37.153965, 29.484247>,  <37.968166, 36.874088, 29.333567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210995, 37.153965, 29.484247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032570, 0.495555, -0.867966,
		-0.793983, 0.514644, 0.323623,
		0.607067, 0.699691, 0.376700,
		38.393116, 37.363873, 29.597258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643887, 37.543797, 29.209028>,  <37.968166, 36.874088, 29.333567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643887, 37.543797, 29.209028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040245, 37.597630, 29.207260>,  <38.278061, 37.629929, 29.206200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040245, 37.597630, 29.207260>,  <37.643887, 37.543797, 29.209028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040245, 37.597630, 29.207260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060146, 0.412991, -0.908747,
		-0.120471, 0.900737, 0.417324,
		0.990893, 0.134578, -0.004422,
		38.337513, 37.638004, 29.205933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210453, 38.085594, 29.484592>,  <37.643887, 37.543797, 29.209028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210453, 38.085594, 29.484592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.876781, 38.266468, 29.358311>,  <36.676579, 38.374992, 29.282541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.876781, 38.266468, 29.358311>,  <37.210453, 38.085594, 29.484592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876781, 38.266468, 29.358311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302246, 0.103976, 0.947542,
		0.461294, 0.885841, 0.049937,
		-0.834179, 0.452189, -0.315706,
		36.626526, 38.402126, 29.263599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100708, 38.700153, 30.011988>,  <37.210453, 38.085594, 29.484592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100708, 38.700153, 30.011988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741302, 38.628586, 29.851656>,  <36.525658, 38.585648, 29.755457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741302, 38.628586, 29.851656>,  <37.100708, 38.700153, 30.011988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741302, 38.628586, 29.851656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401339, -0.034961, 0.915262,
		-0.177768, 0.983243, -0.040393,
		-0.898513, -0.178916, -0.400829,
		36.471748, 38.574909, 29.731407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747520, 39.148029, 30.402100>,  <37.100708, 38.700153, 30.011988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747520, 39.148029, 30.402100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505810, 38.888569, 30.217014>,  <36.360783, 38.732895, 30.105963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505810, 38.888569, 30.217014>,  <36.747520, 39.148029, 30.402100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505810, 38.888569, 30.217014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385621, -0.270099, 0.882238,
		-0.697239, 0.711550, -0.086916,
		-0.604281, -0.648647, -0.462712,
		36.324524, 38.693974, 30.078201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028763, 39.288239, 30.634266>,  <36.747520, 39.148029, 30.402100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028763, 39.288239, 30.634266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.007610, 38.925789, 30.466387>,  <35.994919, 38.708321, 30.365660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.007610, 38.925789, 30.466387>,  <36.028763, 39.288239, 30.634266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007610, 38.925789, 30.466387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669096, -0.279840, 0.688476,
		-0.741292, 0.317227, -0.591484,
		-0.052882, -0.906122, -0.419699,
		35.991745, 38.653954, 30.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328636, 39.168571, 30.459923>,  <36.028763, 39.288239, 30.634266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328636, 39.168571, 30.459923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525585, 38.821976, 30.492802>,  <35.643753, 38.614017, 30.512529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525585, 38.821976, 30.492802>,  <35.328636, 39.168571, 30.459923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525585, 38.821976, 30.492802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469787, -0.185068, 0.863163,
		-0.732713, -0.463615, -0.498190,
		0.492374, -0.866494, 0.082198,
		35.673298, 38.562027, 30.517462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832794, 38.675373, 30.612545>,  <35.328636, 39.168571, 30.459923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832794, 38.675373, 30.612545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.172421, 38.502647, 30.734280>,  <35.376198, 38.399014, 30.807322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.172421, 38.502647, 30.734280>,  <34.832794, 38.675373, 30.612545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172421, 38.502647, 30.734280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488064, -0.420697, 0.764727,
		-0.202185, -0.797841, -0.567953,
		0.849067, -0.431813, 0.304339,
		35.427139, 38.373104, 30.825581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768967, 37.855492, 30.474396>,  <34.832794, 38.675373, 30.612545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768967, 37.855492, 30.474396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.038670, 37.952938, 30.753260>,  <35.200493, 38.011406, 30.920578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.038670, 37.952938, 30.753260>,  <34.768967, 37.855492, 30.474396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038670, 37.952938, 30.753260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311084, -0.762488, 0.567308,
		0.669780, -0.599386, -0.438327,
		0.674256, 0.243615, 0.697159,
		35.240948, 38.026024, 30.962408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633240, 37.374947, 30.868240>,  <34.768967, 37.855492, 30.474396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633240, 37.374947, 30.868240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.936470, 37.524734, 31.081818>,  <35.118408, 37.614609, 31.209965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.936470, 37.524734, 31.081818>,  <34.633240, 37.374947, 30.868240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936470, 37.524734, 31.081818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161584, -0.685344, 0.710066,
		0.631833, -0.624560, -0.459034,
		0.758075, 0.374471, 0.533942,
		35.163891, 37.637077, 31.242001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075325, 36.747589, 31.163307>,  <34.633240, 37.374947, 30.868240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075325, 36.747589, 31.163307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.127018, 37.079170, 31.380981>,  <35.158031, 37.278118, 31.511587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.127018, 37.079170, 31.380981>,  <35.075325, 36.747589, 31.163307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127018, 37.079170, 31.380981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229544, -0.508875, 0.829672,
		0.964681, -0.232133, 0.124518,
		0.129230, 0.828951, 0.544187,
		35.165787, 37.327854, 31.544237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475945, 36.560139, 31.744316>,  <35.075325, 36.747589, 31.163307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475945, 36.560139, 31.744316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.309185, 36.907516, 31.851639>,  <35.209129, 37.115944, 31.916033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.309185, 36.907516, 31.851639>,  <35.475945, 36.560139, 31.744316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309185, 36.907516, 31.851639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105731, -0.339514, 0.934640,
		0.902781, 0.361285, 0.233367,
		-0.416903, 0.868449, 0.268308,
		35.184113, 37.168053, 31.932131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790234, 36.582081, 32.357761>,  <35.475945, 36.560139, 31.744316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790234, 36.582081, 32.357761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.456768, 36.802937, 32.352776>,  <35.256691, 36.935448, 32.349785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.456768, 36.802937, 32.352776>,  <35.790234, 36.582081, 32.357761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456768, 36.802937, 32.352776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260880, -0.373801, 0.890064,
		0.486775, 0.745265, 0.455664,
		-0.833662, 0.552135, -0.012468,
		35.206669, 36.968578, 32.349037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719177, 37.034138, 33.047993>,  <35.790234, 36.582081, 32.357761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719177, 37.034138, 33.047993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.361050, 36.995121, 32.874149>,  <35.146172, 36.971710, 32.769844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.361050, 36.995121, 32.874149>,  <35.719177, 37.034138, 33.047993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361050, 36.995121, 32.874149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360155, -0.415592, 0.835208,
		-0.262091, 0.904306, 0.336957,
		-0.895320, -0.097543, -0.434613,
		35.092453, 36.965858, 32.743767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.655674, 39.990376, 26.190691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281750, 39.884434, 26.096054>,  <37.057396, 39.820869, 26.039272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281750, 39.884434, 26.096054>,  <37.655674, 39.990376, 26.190691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281750, 39.884434, 26.096054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214635, -0.109423, 0.970545,
		-0.282942, 0.958060, 0.045443,
		-0.934813, -0.264855, -0.236593,
		37.001305, 39.804977, 26.025076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231430, 40.319561, 26.697153>,  <37.655674, 39.990376, 26.190691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231430, 40.319561, 26.697153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001011, 40.025074, 26.555082>,  <36.862759, 39.848381, 26.469841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001011, 40.025074, 26.555082>,  <37.231430, 40.319561, 26.697153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001011, 40.025074, 26.555082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312351, -0.203281, 0.927962,
		-0.755382, 0.645493, -0.112858,
		-0.576052, -0.736217, -0.355176,
		36.828194, 39.804211, 26.448530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476440, 40.465942, 26.905195>,  <37.231430, 40.319561, 26.697153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476440, 40.465942, 26.905195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552116, 40.080662, 26.828819>,  <36.597523, 39.849495, 26.782993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552116, 40.080662, 26.828819>,  <36.476440, 40.465942, 26.905195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552116, 40.080662, 26.828819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220864, -0.231212, 0.947502,
		-0.956779, -0.137086, -0.256478,
		0.189190, -0.963197, -0.190941,
		36.608875, 39.791702, 26.771538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063519, 40.025082, 27.218742>,  <36.476440, 40.465942, 26.905195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063519, 40.025082, 27.218742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323170, 39.736378, 27.122669>,  <36.478962, 39.563156, 27.065025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323170, 39.736378, 27.122669>,  <36.063519, 40.025082, 27.218742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323170, 39.736378, 27.122669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206976, -0.471424, 0.857275,
		-0.731976, -0.506772, -0.455404,
		0.649131, -0.721763, -0.240181,
		36.517910, 39.519848, 27.050615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802597, 39.515415, 27.540564>,  <36.063519, 40.025082, 27.218742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802597, 39.515415, 27.540564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177933, 39.389130, 27.484222>,  <36.403133, 39.313358, 27.450418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177933, 39.389130, 27.484222>,  <35.802597, 39.515415, 27.540564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177933, 39.389130, 27.484222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000672, -0.409101, 0.912489,
		-0.345705, -0.856133, -0.384089,
		0.938343, -0.315711, -0.140853,
		36.459435, 39.294418, 27.441967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754520, 38.810925, 27.727709>,  <35.802597, 39.515415, 27.540564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754520, 38.810925, 27.727709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134518, 38.930305, 27.764471>,  <36.362514, 39.001934, 27.786530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134518, 38.930305, 27.764471>,  <35.754520, 38.810925, 27.727709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134518, 38.930305, 27.764471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045451, -0.423317, 0.904841,
		0.308956, -0.855412, -0.415711,
		0.949990, 0.298451, 0.091907,
		36.419514, 39.019840, 27.792044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028492, 38.212597, 27.961748>,  <35.754520, 38.810925, 27.727709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028492, 38.212597, 27.961748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293343, 38.506298, 28.021688>,  <36.452251, 38.682518, 28.057652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293343, 38.506298, 28.021688>,  <36.028492, 38.212597, 27.961748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293343, 38.506298, 28.021688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209378, -0.373258, 0.903791,
		0.719548, -0.567049, -0.400881,
		0.662126, 0.734257, 0.149850,
		36.491982, 38.726574, 28.066643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606503, 37.897953, 28.233164>,  <36.028492, 38.212597, 27.961748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606503, 37.897953, 28.233164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624779, 38.285980, 28.328569>,  <36.635746, 38.518795, 28.385813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624779, 38.285980, 28.328569>,  <36.606503, 37.897953, 28.233164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624779, 38.285980, 28.328569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007083, -0.238444, 0.971130,
		0.998931, -0.046060, -0.004024,
		0.045689, 0.970063, 0.238515,
		36.638485, 38.577000, 28.400124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071888, 37.905109, 28.740238>,  <36.606503, 37.897953, 28.233164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071888, 37.905109, 28.740238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827881, 38.219944, 28.776833>,  <36.681477, 38.408844, 28.798790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827881, 38.219944, 28.776833>,  <37.071888, 37.905109, 28.740238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827881, 38.219944, 28.776833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142804, -0.222772, 0.964355,
		0.779411, 0.575211, 0.248295,
		-0.610021, 0.787086, 0.091488,
		36.644875, 38.456070, 28.804279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785267, 38.176544, 28.833988>,  <37.071888, 37.905109, 28.740238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785267, 38.176544, 28.833988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154263, 38.022408, 28.824919>,  <38.375660, 37.929924, 28.819477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154263, 38.022408, 28.824919>,  <37.785267, 38.176544, 28.833988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154263, 38.022408, 28.824919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093630, 0.280354, -0.955319,
		0.374485, 0.879153, 0.294705,
		0.922494, -0.385346, -0.022673,
		38.431011, 37.906803, 28.818117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274857, 38.671883, 28.616444>,  <37.785267, 38.176544, 28.833988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274857, 38.671883, 28.616444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494045, 38.346222, 28.539612>,  <38.625557, 38.150826, 28.493513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494045, 38.346222, 28.539612>,  <38.274857, 38.671883, 28.616444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494045, 38.346222, 28.539612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172561, 0.334702, -0.926389,
		0.818507, 0.474487, 0.323897,
		0.547968, -0.814148, -0.192078,
		38.658436, 38.101978, 28.481989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979023, 38.864746, 28.358959>,  <38.274857, 38.671883, 28.616444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979023, 38.864746, 28.358959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940117, 38.485867, 28.236742>,  <38.916771, 38.258541, 28.163412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940117, 38.485867, 28.236742>,  <38.979023, 38.864746, 28.358959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940117, 38.485867, 28.236742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513899, 0.215110, -0.830443,
		0.852319, -0.237795, 0.465840,
		-0.097268, -0.947197, -0.305544,
		38.910934, 38.201706, 28.145079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558064, 38.814789, 28.055370>,  <38.979023, 38.864746, 28.358959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558064, 38.814789, 28.055370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368637, 38.490402, 27.917929>,  <39.254982, 38.295769, 27.835464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368637, 38.490402, 27.917929>,  <39.558064, 38.814789, 28.055370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368637, 38.490402, 27.917929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450116, 0.112485, -0.885857,
		0.757054, -0.574173, 0.311761,
		-0.473567, -0.810970, -0.343602,
		39.226566, 38.247112, 27.814848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061291, 38.337887, 27.865265>,  <39.558064, 38.814789, 28.055370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061291, 38.337887, 27.865265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730305, 38.223804, 27.671783>,  <39.531715, 38.155357, 27.555695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730305, 38.223804, 27.671783>,  <40.061291, 38.337887, 27.865265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730305, 38.223804, 27.671783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544507, -0.197078, -0.815274,
		0.137190, -0.937987, 0.318369,
		-0.827460, -0.285202, -0.483704,
		39.482067, 38.138245, 27.526672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304104, 37.867302, 27.395445>,  <40.061291, 38.337887, 27.865265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304104, 37.867302, 27.395445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947140, 37.950233, 27.235134>,  <39.732964, 37.999992, 27.138948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947140, 37.950233, 27.235134>,  <40.304104, 37.867302, 27.395445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947140, 37.950233, 27.235134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384353, -0.116040, -0.915865,
		-0.236390, -0.971365, 0.023868,
		-0.892409, 0.207328, -0.400777,
		39.679417, 38.012432, 27.114901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222519, 37.360855, 26.926823>,  <40.304104, 37.867302, 27.395445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222519, 37.360855, 26.926823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954979, 37.638153, 26.819448>,  <39.794456, 37.804531, 26.755024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954979, 37.638153, 26.819448>,  <40.222519, 37.360855, 26.926823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954979, 37.638153, 26.819448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198782, -0.181164, -0.963154,
		-0.716330, -0.697564, -0.016633,
		-0.668848, 0.693242, -0.268436,
		39.754326, 37.846127, 26.738918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822807, 37.061604, 26.345364>,  <40.222519, 37.360855, 26.926823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822807, 37.061604, 26.345364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772251, 37.458088, 26.329739>,  <39.741917, 37.695980, 26.320364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772251, 37.458088, 26.329739>,  <39.822807, 37.061604, 26.345364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772251, 37.458088, 26.329739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265013, -0.004207, -0.964235,
		-0.955926, -0.132217, -0.262152,
		-0.126386, 0.991212, -0.039061,
		39.734337, 37.755451, 26.318020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360390, 37.155121, 25.829388>,  <39.822807, 37.061604, 26.345364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360390, 37.155121, 25.829388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555553, 37.503448, 25.853453>,  <39.672649, 37.712444, 25.867891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555553, 37.503448, 25.853453>,  <39.360390, 37.155121, 25.829388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555553, 37.503448, 25.853453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106821, 0.008837, -0.994239,
		-0.866335, 0.491523, -0.088710,
		0.487907, 0.870820, 0.060161,
		39.701927, 37.764694, 25.871500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178734, 37.537724, 25.265305>,  <39.360390, 37.155121, 25.829388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178734, 37.537724, 25.265305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517170, 37.712666, 25.387192>,  <39.720230, 37.817631, 25.460323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517170, 37.712666, 25.387192>,  <39.178734, 37.537724, 25.265305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517170, 37.712666, 25.387192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374369, -0.080626, -0.923768,
		-0.379443, 0.895670, -0.231948,
		0.846092, 0.437351, 0.304718,
		39.770996, 37.843872, 25.478607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306801, 37.932129, 24.773575>,  <39.178734, 37.537724, 25.265305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306801, 37.932129, 24.773575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672409, 37.927113, 24.935764>,  <39.891773, 37.924103, 25.033077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672409, 37.927113, 24.935764>,  <39.306801, 37.932129, 24.773575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672409, 37.927113, 24.935764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405446, 0.061218, -0.912067,
		-0.013381, 0.998046, 0.061041,
		0.914021, -0.012545, 0.405472,
		39.946617, 37.923347, 25.057405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637680, 38.421089, 24.453724>,  <39.306801, 37.932129, 24.773575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637680, 38.421089, 24.453724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931355, 38.187893, 24.592920>,  <40.107559, 38.047977, 24.676437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931355, 38.187893, 24.592920>,  <39.637680, 38.421089, 24.453724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931355, 38.187893, 24.592920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416522, -0.018012, -0.908947,
		0.536172, 0.812282, 0.229603,
		0.734186, -0.582987, 0.347991,
		40.151611, 38.012997, 24.697317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147667, 38.637451, 24.082743>,  <39.637680, 38.421089, 24.453724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147667, 38.637451, 24.082743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281918, 38.296131, 24.242355>,  <40.362469, 38.091339, 24.338123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281918, 38.296131, 24.242355>,  <40.147667, 38.637451, 24.082743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281918, 38.296131, 24.242355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437098, -0.234166, -0.868396,
		0.834445, 0.465874, 0.294384,
		0.335629, -0.853304, 0.399032,
		40.382607, 38.040138, 24.362064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875710, 38.561733, 23.825361>,  <40.147667, 38.637451, 24.082743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875710, 38.561733, 23.825361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720051, 38.204853, 23.917048>,  <40.626656, 37.990726, 23.972059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720051, 38.204853, 23.917048>,  <40.875710, 38.561733, 23.825361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720051, 38.204853, 23.917048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190400, -0.321362, -0.927618,
		0.901284, -0.317337, 0.294933,
		-0.389148, -0.892202, 0.229217,
		40.603306, 37.937191, 23.985813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.760056, 34.165600, 22.721806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943024, 34.474724, 22.897774>,  <35.052807, 34.660198, 23.003355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943024, 34.474724, 22.897774>,  <34.760056, 34.165600, 22.721806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943024, 34.474724, 22.897774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148318, -0.421479, 0.894627,
		0.876792, -0.474472, -0.078173,
		0.457424, 0.772807, 0.439923,
		35.080250, 34.706566, 23.029751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148396, 33.877987, 23.310867>,  <34.760056, 34.165600, 22.721806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148396, 33.877987, 23.310867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122208, 34.270473, 23.383450>,  <35.106495, 34.505966, 23.426998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122208, 34.270473, 23.383450>,  <35.148396, 33.877987, 23.310867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122208, 34.270473, 23.383450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099500, -0.187356, 0.977240,
		0.992882, 0.045921, 0.109897,
		-0.065466, 0.981218, 0.181453,
		35.102570, 34.564838, 23.437885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499718, 33.872986, 23.879919>,  <35.148396, 33.877987, 23.310867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499718, 33.872986, 23.879919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.286720, 34.211132, 23.862955>,  <35.158920, 34.414021, 23.852777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.286720, 34.211132, 23.862955>,  <35.499718, 33.872986, 23.879919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286720, 34.211132, 23.862955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178856, -0.063406, 0.981830,
		0.827319, 0.530407, 0.184962,
		-0.532497, 0.845369, -0.042410,
		35.126972, 34.464741, 23.850233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811790, 34.261208, 24.306955>,  <35.499718, 33.872986, 23.879919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811790, 34.261208, 24.306955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459408, 34.450089, 24.294664>,  <35.247978, 34.563419, 24.287291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459408, 34.450089, 24.294664>,  <35.811790, 34.261208, 24.306955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459408, 34.450089, 24.294664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034699, 0.129222, 0.991008,
		0.471929, 0.871966, -0.130224,
		-0.880954, 0.472204, -0.030727,
		35.195122, 34.591751, 24.285446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835709, 34.871002, 24.710625>,  <35.811790, 34.261208, 24.306955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835709, 34.871002, 24.710625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.442963, 34.795364, 24.705122>,  <35.207317, 34.749981, 24.701820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.442963, 34.795364, 24.705122>,  <35.835709, 34.871002, 24.710625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442963, 34.795364, 24.705122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028116, 0.073457, 0.996902,
		-0.187499, 0.979207, -0.077442,
		-0.981862, -0.189096, -0.013758,
		35.148403, 34.738636, 24.700994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472099, 35.338505, 25.233465>,  <35.835709, 34.871002, 24.710625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472099, 35.338505, 25.233465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223049, 35.032909, 25.165756>,  <35.073620, 34.849552, 25.125132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223049, 35.032909, 25.165756>,  <35.472099, 35.338505, 25.233465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223049, 35.032909, 25.165756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067864, -0.162781, 0.984325,
		-0.779570, 0.624355, 0.049504,
		-0.622627, -0.763991, -0.169271,
		35.036263, 34.803711, 25.114975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934879, 35.487801, 25.641752>,  <35.472099, 35.338505, 25.233465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934879, 35.487801, 25.641752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904919, 35.095261, 25.570932>,  <34.886940, 34.859737, 25.528440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904919, 35.095261, 25.570932>,  <34.934879, 35.487801, 25.641752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904919, 35.095261, 25.570932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300968, -0.147023, 0.942233,
		-0.950688, 0.123864, -0.284342,
		-0.074904, -0.981347, -0.177052,
		34.882446, 34.800858, 25.517817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336372, 35.319260, 25.918978>,  <34.934879, 35.487801, 25.641752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336372, 35.319260, 25.918978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531746, 34.970680, 25.901073>,  <34.648972, 34.761532, 25.890331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531746, 34.970680, 25.901073>,  <34.336372, 35.319260, 25.918978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531746, 34.970680, 25.901073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357264, -0.246513, 0.900885,
		-0.796110, -0.424034, -0.431744,
		0.488437, -0.871450, -0.044760,
		34.678276, 34.709244, 25.887646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991005, 34.874290, 26.435131>,  <34.336372, 35.319260, 25.918978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991005, 34.874290, 26.435131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320984, 34.658245, 26.368504>,  <34.518970, 34.528618, 26.328527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320984, 34.658245, 26.368504>,  <33.991005, 34.874290, 26.435131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320984, 34.658245, 26.368504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035432, -0.343541, 0.938469,
		-0.564104, -0.768282, -0.302539,
		0.824943, -0.540114, -0.166571,
		34.568466, 34.496212, 26.318533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881260, 34.202824, 26.713575>,  <33.991005, 34.874290, 26.435131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881260, 34.202824, 26.713575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.279400, 34.240669, 26.720907>,  <34.518284, 34.263378, 26.725306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.279400, 34.240669, 26.720907>,  <33.881260, 34.202824, 26.713575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279400, 34.240669, 26.720907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035423, -0.536057, 0.843438,
		0.089626, -0.838863, -0.536913,
		0.995346, 0.094613, 0.018329,
		34.578003, 34.269054, 26.726406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073948, 33.491249, 26.881828>,  <33.881260, 34.202824, 26.713575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073948, 33.491249, 26.881828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393883, 33.719913, 26.955000>,  <34.585846, 33.857113, 26.998903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.393883, 33.719913, 26.955000>,  <34.073948, 33.491249, 26.881828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393883, 33.719913, 26.955000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097567, -0.424550, 0.900132,
		0.592232, -0.702113, -0.395347,
		0.799839, 0.571659, 0.182929,
		34.633835, 33.891411, 27.009878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616516, 33.083588, 27.260363>,  <34.073948, 33.491249, 26.881828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616516, 33.083588, 27.260363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752274, 33.447510, 27.355911>,  <34.833729, 33.665863, 27.413240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752274, 33.447510, 27.355911>,  <34.616516, 33.083588, 27.260363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752274, 33.447510, 27.355911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109764, -0.290518, 0.950553,
		0.934217, -0.296396, -0.198465,
		0.339398, 0.909807, 0.238873,
		34.854092, 33.720451, 27.427572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201408, 32.922958, 27.760984>,  <34.616516, 33.083588, 27.260363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201408, 32.922958, 27.760984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079830, 33.300587, 27.812115>,  <35.006882, 33.527164, 27.842793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079830, 33.300587, 27.812115>,  <35.201408, 32.922958, 27.760984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079830, 33.300587, 27.812115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165266, -0.079891, 0.983008,
		0.938245, 0.319906, -0.131741,
		-0.303945, 0.944075, 0.127827,
		34.988647, 33.583809, 27.850462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703960, 33.147152, 28.101757>,  <35.201408, 32.922958, 27.760984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703960, 33.147152, 28.101757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384819, 33.377113, 28.174330>,  <35.193333, 33.515091, 28.217873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384819, 33.377113, 28.174330>,  <35.703960, 33.147152, 28.101757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384819, 33.377113, 28.174330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043251, -0.245591, 0.968408,
		0.601295, 0.780496, 0.171081,
		-0.797855, 0.574900, 0.181430,
		35.145462, 33.549583, 28.228758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276962, 33.461365, 28.399324>,  <35.703960, 33.147152, 28.101757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276962, 33.461365, 28.399324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476166, 33.119869, 28.460140>,  <36.595688, 32.914974, 28.496630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476166, 33.119869, 28.460140>,  <36.276962, 33.461365, 28.399324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476166, 33.119869, 28.460140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312404, 0.013075, -0.949859,
		0.808942, 0.520541, 0.273222,
		0.498013, -0.853737, 0.152042,
		36.625568, 32.863747, 28.505753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107182, 33.589108, 28.170233>,  <36.276962, 33.461365, 28.399324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107182, 33.589108, 28.170233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028278, 33.196980, 28.173594>,  <36.980938, 32.961704, 28.175610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028278, 33.196980, 28.173594>,  <37.107182, 33.589108, 28.170233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028278, 33.196980, 28.173594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404716, -0.089236, -0.910078,
		0.892913, -0.176120, 0.414352,
		-0.197258, -0.980316, 0.008401,
		36.969101, 32.902885, 28.176113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804951, 33.224434, 28.068628>,  <37.107182, 33.589108, 28.170233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804951, 33.224434, 28.068628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508640, 32.980225, 27.956545>,  <37.330853, 32.833698, 27.889296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508640, 32.980225, 27.956545>,  <37.804951, 33.224434, 28.068628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508640, 32.980225, 27.956545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361294, -0.010439, -0.932394,
		0.566319, -0.791932, 0.228310,
		-0.740776, -0.610519, -0.280208,
		37.286407, 32.797070, 27.872482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095287, 32.993668, 27.514923>,  <37.804951, 33.224434, 28.068628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095287, 32.993668, 27.514923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740883, 32.819904, 27.450090>,  <37.528240, 32.715649, 27.411190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740883, 32.819904, 27.450090>,  <38.095287, 32.993668, 27.514923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740883, 32.819904, 27.450090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165662, 0.029902, -0.985729,
		0.433052, -0.900221, 0.045471,
		-0.886015, -0.434405, -0.162082,
		37.475079, 32.689583, 27.401466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222145, 32.509212, 26.943661>,  <38.095287, 32.993668, 27.514923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222145, 32.509212, 26.943661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834496, 32.602444, 26.911459>,  <37.601906, 32.658382, 26.892138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834496, 32.602444, 26.911459>,  <38.222145, 32.509212, 26.943661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834496, 32.602444, 26.911459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088065, 0.022194, -0.995867,
		-0.230331, -0.972204, -0.042035,
		-0.969119, 0.233081, -0.080505,
		37.543758, 32.672367, 26.887308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963783, 32.004551, 26.491756>,  <38.222145, 32.509212, 26.943661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963783, 32.004551, 26.491756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710934, 32.314499, 26.492231>,  <37.559223, 32.500465, 26.492516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710934, 32.314499, 26.492231>,  <37.963783, 32.004551, 26.491756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710934, 32.314499, 26.492231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039878, -0.031004, -0.998724,
		-0.773842, -0.631362, 0.050499,
		-0.632122, 0.774868, 0.001185,
		37.521297, 32.546959, 26.492586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355755, 31.863531, 26.023302>,  <37.963783, 32.004551, 26.491756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355755, 31.863531, 26.023302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370892, 32.260342, 26.071386>,  <37.379974, 32.498428, 26.100237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370892, 32.260342, 26.071386>,  <37.355755, 31.863531, 26.023302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370892, 32.260342, 26.071386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027039, 0.119238, -0.992498,
		-0.998918, 0.040804, -0.022311,
		0.037838, 0.992027, 0.120212,
		37.382244, 32.557949, 26.107450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800457, 32.128868, 25.620665>,  <37.355755, 31.863531, 26.023302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800457, 32.128868, 25.620665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035408, 32.451290, 25.649666>,  <37.176380, 32.644745, 25.667067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035408, 32.451290, 25.649666>,  <36.800457, 32.128868, 25.620665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035408, 32.451290, 25.649666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017008, 0.077274, -0.996865,
		-0.809134, 0.586769, 0.031679,
		0.587378, 0.806059, 0.072505,
		37.211620, 32.693108, 25.671417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410255, 32.713387, 25.260342>,  <36.800457, 32.128868, 25.620665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410255, 32.713387, 25.260342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806557, 32.767426, 25.255249>,  <37.044338, 32.799850, 25.252193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806557, 32.767426, 25.255249>,  <36.410255, 32.713387, 25.260342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806557, 32.767426, 25.255249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053447, 0.302272, -0.951722,
		-0.124726, 0.943600, 0.306697,
		0.990751, 0.135096, -0.012731,
		37.103783, 32.807953, 25.251431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501747, 33.380421, 24.879171>,  <36.410255, 32.713387, 25.260342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501747, 33.380421, 24.879171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857693, 33.198086, 24.886700>,  <37.071259, 33.088684, 24.891216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857693, 33.198086, 24.886700>,  <36.501747, 33.380421, 24.879171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857693, 33.198086, 24.886700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225966, 0.404531, -0.886168,
		0.396334, 0.792823, 0.462981,
		0.889864, -0.455837, 0.018822,
		37.124653, 33.061337, 24.892345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029465, 33.892006, 24.759989>,  <36.501747, 33.380421, 24.879171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029465, 33.892006, 24.759989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.194500, 33.545143, 24.648407>,  <37.293522, 33.337025, 24.581457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.194500, 33.545143, 24.648407>,  <37.029465, 33.892006, 24.759989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194500, 33.545143, 24.648407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365125, 0.437990, -0.821491,
		0.834540, 0.237080, 0.497328,
		0.412584, -0.867155, -0.278957,
		37.318275, 33.284996, 24.564720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660637, 34.037521, 24.503952>,  <37.029465, 33.892006, 24.759989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660637, 34.037521, 24.503952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556953, 33.686825, 24.341894>,  <37.494743, 33.476406, 24.244659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556953, 33.686825, 24.341894>,  <37.660637, 34.037521, 24.503952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556953, 33.686825, 24.341894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307474, 0.322746, -0.895150,
		0.915571, -0.356601, 0.185916,
		-0.259209, -0.876738, -0.405142,
		37.479191, 33.423801, 24.220352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026638, 34.023071, 23.881186>,  <37.660637, 34.037521, 24.503952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026638, 34.023071, 23.881186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.819969, 33.689667, 23.802895>,  <37.695969, 33.489624, 23.755920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.819969, 33.689667, 23.802895>,  <38.026638, 34.023071, 23.881186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819969, 33.689667, 23.802895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140183, 0.143163, -0.979721,
		0.844631, -0.533630, 0.042876,
		-0.516670, -0.833513, -0.195726,
		37.664967, 33.439613, 23.744177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450710, 33.616917, 23.320606>,  <38.026638, 34.023071, 23.881186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450710, 33.616917, 23.320606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062428, 33.522247, 23.304089>,  <37.829456, 33.465446, 23.294178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062428, 33.522247, 23.304089>,  <38.450710, 33.616917, 23.320606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062428, 33.522247, 23.304089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010169, 0.212204, -0.977173,
		0.240043, -0.948130, -0.208395,
		-0.970709, -0.236683, -0.041296,
		37.771214, 33.451244, 23.291700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960400, 33.015518, 22.991735>,  <38.450710, 33.616917, 23.320606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960400, 33.015518, 22.991735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.306911, 33.214787, 22.976910>,  <39.514820, 33.334347, 22.968014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.306911, 33.214787, 22.976910>,  <38.960400, 33.015518, 22.991735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306911, 33.214787, 22.976910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233633, -0.338448, 0.911520,
		0.441552, -0.798294, -0.409583,
		0.866283, 0.498176, -0.037066,
		39.566795, 33.364239, 22.965790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467812, 32.527130, 23.277964>,  <38.960400, 33.015518, 22.991735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467812, 32.527130, 23.277964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626423, 32.893887, 23.296152>,  <39.721588, 33.113941, 23.307064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626423, 32.893887, 23.296152>,  <39.467812, 32.527130, 23.277964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626423, 32.893887, 23.296152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257275, -0.158536, 0.953245,
		0.881235, -0.366290, -0.298758,
		0.396528, 0.916896, 0.045470,
		39.745380, 33.168957, 23.309793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128548, 32.461906, 23.540688>,  <39.467812, 32.527130, 23.277964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128548, 32.461906, 23.540688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091450, 32.853252, 23.614653>,  <40.069191, 33.088062, 23.659033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091450, 32.853252, 23.614653>,  <40.128548, 32.461906, 23.540688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091450, 32.853252, 23.614653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344954, -0.142639, 0.927718,
		0.934026, 0.149831, -0.324263,
		-0.092748, 0.978368, 0.184914,
		40.063625, 33.146763, 23.670126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763454, 32.675659, 23.780624>,  <40.128548, 32.461906, 23.540688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763454, 32.675659, 23.780624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.475220, 32.923031, 23.906040>,  <40.302280, 33.071453, 23.981289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.475220, 32.923031, 23.906040>,  <40.763454, 32.675659, 23.780624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475220, 32.923031, 23.906040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177191, -0.272939, 0.945573,
		0.670343, 0.736923, 0.087096,
		-0.720586, 0.618425, 0.313539,
		40.259045, 33.108559, 24.000101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044533, 33.195091, 24.322111>,  <40.763454, 32.675659, 23.780624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044533, 33.195091, 24.322111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647335, 33.182236, 24.367599>,  <40.409016, 33.174522, 24.394894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647335, 33.182236, 24.367599>,  <41.044533, 33.195091, 24.322111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647335, 33.182236, 24.367599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115908, -0.077189, 0.990256,
		-0.023052, 0.996498, 0.080374,
		-0.992992, -0.032143, 0.113723,
		40.349438, 33.172592, 24.401716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905926, 33.592243, 24.977272>,  <41.044533, 33.195091, 24.322111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905926, 33.592243, 24.977272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.593536, 33.355179, 24.898443>,  <40.406101, 33.212940, 24.851145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.593536, 33.355179, 24.898443>,  <40.905926, 33.592243, 24.977272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593536, 33.355179, 24.898443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117418, -0.170589, 0.978321,
		-0.613428, 0.787182, 0.063637,
		-0.780973, -0.592658, -0.197073,
		40.359245, 33.177380, 24.839321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482468, 33.753151, 25.403378>,  <40.905926, 33.592243, 24.977272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482468, 33.753151, 25.403378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335873, 33.396854, 25.295855>,  <40.247917, 33.183075, 25.231340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335873, 33.396854, 25.295855>,  <40.482468, 33.753151, 25.403378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335873, 33.396854, 25.295855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111186, -0.244912, 0.963149,
		-0.923755, 0.382870, -0.009281,
		-0.366488, -0.890746, -0.268809,
		40.225925, 33.129631, 25.215212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844673, 33.709492, 25.772472>,  <40.482468, 33.753151, 25.403378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844673, 33.709492, 25.772472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930534, 33.330105, 25.679228>,  <39.982052, 33.102474, 25.623281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930534, 33.330105, 25.679228>,  <39.844673, 33.709492, 25.772472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930534, 33.330105, 25.679228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192591, -0.275090, 0.941931,
		-0.957515, -0.157289, -0.241714,
		0.214649, -0.948465, -0.233110,
		39.994930, 33.045567, 25.609295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256680, 33.321133, 26.010839>,  <39.844673, 33.709492, 25.772472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256680, 33.321133, 26.010839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575527, 33.080605, 25.988846>,  <39.766834, 32.936287, 25.975649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575527, 33.080605, 25.988846>,  <39.256680, 33.321133, 26.010839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575527, 33.080605, 25.988846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145939, -0.280216, 0.948779,
		-0.585926, -0.748261, -0.311121,
		0.797115, -0.601318, -0.054985,
		39.814663, 32.900208, 25.972351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995598, 32.708717, 26.309933>,  <39.256680, 33.321133, 26.010839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995598, 32.708717, 26.309933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393627, 32.670307, 26.319771>,  <39.632446, 32.647263, 26.325674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393627, 32.670307, 26.319771>,  <38.995598, 32.708717, 26.309933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393627, 32.670307, 26.319771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042732, -0.191676, 0.980528,
		-0.089440, -0.976750, -0.194836,
		0.995075, -0.096024, 0.024595,
		39.692150, 32.641499, 26.327150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122089, 32.037216, 26.664112>,  <38.995598, 32.708717, 26.309933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122089, 32.037216, 26.664112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464355, 32.244095, 26.671608>,  <39.669716, 32.368221, 26.676105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464355, 32.244095, 26.671608>,  <39.122089, 32.037216, 26.664112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464355, 32.244095, 26.671608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068930, -0.149780, 0.986314,
		0.512925, -0.842659, -0.163811,
		0.855661, 0.517196, 0.018742,
		39.721054, 32.399254, 26.677231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666023, 31.596596, 27.000143>,  <39.122089, 32.037216, 26.664112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666023, 31.596596, 27.000143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780121, 31.975002, 27.061701>,  <39.848579, 32.202045, 27.098635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780121, 31.975002, 27.061701>,  <39.666023, 31.596596, 27.000143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780121, 31.975002, 27.061701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091621, -0.186744, 0.978127,
		0.954065, -0.264907, -0.139943,
		0.285247, 0.946018, 0.153895,
		39.865696, 32.258808, 27.107870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077396, 31.549673, 27.526846>,  <39.666023, 31.596596, 27.000143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077396, 31.549673, 27.526846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.044476, 31.948313, 27.528362>,  <40.024723, 32.187496, 27.529272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.044476, 31.948313, 27.528362>,  <40.077396, 31.549673, 27.526846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044476, 31.948313, 27.528362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033095, -0.006536, 0.999431,
		0.996058, 0.082127, 0.033520,
		-0.082300, 0.996600, 0.003792,
		40.019787, 32.247292, 27.529499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418388, 31.717377, 28.097147>,  <40.077396, 31.549673, 27.526846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418388, 31.717377, 28.097147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213154, 32.054996, 28.034771>,  <40.090012, 32.257568, 27.997345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213154, 32.054996, 28.034771>,  <40.418388, 31.717377, 28.097147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213154, 32.054996, 28.034771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115840, 0.111921, 0.986942,
		0.850483, 0.524453, 0.040349,
		-0.513089, 0.844051, -0.155939,
		40.059227, 32.308212, 27.987989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.606510, 37.891136, 23.736784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.233704, 37.746586, 23.725832>,  <41.010021, 37.659855, 23.719261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.233704, 37.746586, 23.725832>,  <41.606510, 37.891136, 23.736784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233704, 37.746586, 23.725832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080747, -0.133413, -0.987766,
		0.353307, -0.922825, 0.153523,
		-0.932016, -0.361381, -0.027380,
		40.954098, 37.638172, 23.717617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675667, 37.310188, 23.308626>,  <41.606510, 37.891136, 23.736784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675667, 37.310188, 23.308626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.278946, 37.354561, 23.334002>,  <41.040913, 37.381184, 23.349226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.278946, 37.354561, 23.334002>,  <41.675667, 37.310188, 23.308626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278946, 37.354561, 23.334002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070588, -0.061776, -0.995591,
		-0.106527, -0.991906, 0.069100,
		-0.991801, 0.110935, 0.063436,
		40.981407, 37.387840, 23.353033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392422, 36.690105, 23.078346>,  <41.675667, 37.310188, 23.308626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392422, 36.690105, 23.078346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147469, 37.002285, 23.027914>,  <41.000496, 37.189590, 22.997654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147469, 37.002285, 23.027914>,  <41.392422, 36.690105, 23.078346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147469, 37.002285, 23.027914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053240, -0.199835, -0.978382,
		-0.788770, -0.592428, 0.163926,
		-0.612379, 0.780446, -0.126083,
		40.963757, 37.236420, 22.990089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953678, 36.448208, 22.551506>,  <41.392422, 36.690105, 23.078346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953678, 36.448208, 22.551506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871742, 36.839661, 22.558592>,  <40.822578, 37.074532, 22.562843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871742, 36.839661, 22.558592>,  <40.953678, 36.448208, 22.551506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871742, 36.839661, 22.558592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112379, -0.005534, -0.993650,
		-0.972322, -0.205534, 0.111111,
		-0.204843, 0.978634, 0.017716,
		40.810287, 37.133251, 22.563908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437126, 36.629730, 22.208727>,  <40.953678, 36.448208, 22.551506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437126, 36.629730, 22.208727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624119, 36.982063, 22.178780>,  <40.736313, 37.193462, 22.160812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624119, 36.982063, 22.178780>,  <40.437126, 36.629730, 22.208727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624119, 36.982063, 22.178780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121534, -0.019846, -0.992389,
		-0.875610, 0.473020, 0.097773,
		0.467480, 0.880828, -0.074866,
		40.764362, 37.246311, 22.156321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120670, 36.956741, 21.741873>,  <40.437126, 36.629730, 22.208727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120670, 36.956741, 21.741873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431866, 37.208046, 21.740593>,  <40.618584, 37.358829, 21.739826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431866, 37.208046, 21.740593>,  <40.120670, 36.956741, 21.741873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431866, 37.208046, 21.740593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104156, 0.123956, -0.986806,
		-0.619579, 0.768061, 0.161874,
		0.777993, 0.628265, -0.003198,
		40.665264, 37.396526, 21.739634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865242, 37.480331, 21.222210>,  <40.120670, 36.956741, 21.741873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865242, 37.480331, 21.222210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.263977, 37.492851, 21.251425>,  <40.503220, 37.500362, 21.268953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.263977, 37.492851, 21.251425>,  <39.865242, 37.480331, 21.222210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263977, 37.492851, 21.251425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064279, 0.222765, -0.972751,
		-0.046717, 0.974369, 0.220049,
		0.996838, 0.031299, 0.073038,
		40.563030, 37.502239, 21.273336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931763, 38.119232, 20.884720>,  <39.865242, 37.480331, 21.222210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931763, 38.119232, 20.884720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301792, 37.967438, 20.878733>,  <40.523811, 37.876362, 20.875141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301792, 37.967438, 20.878733>,  <39.931763, 38.119232, 20.884720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301792, 37.967438, 20.878733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027410, -0.027407, -0.999249,
		0.378793, 0.924791, -0.035755,
		0.925076, -0.379488, -0.014967,
		40.579315, 37.853592, 20.874243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270157, 38.498493, 20.437057>,  <39.931763, 38.119232, 20.884720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270157, 38.498493, 20.437057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.455345, 38.144169, 20.449703>,  <40.566460, 37.931576, 20.457291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.455345, 38.144169, 20.449703>,  <40.270157, 38.498493, 20.437057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455345, 38.144169, 20.449703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142870, -0.109777, -0.983635,
		0.874784, 0.450877, -0.177379,
		0.462971, -0.885809, 0.031614,
		40.594238, 37.878426, 20.459187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821697, 38.557564, 19.926842>,  <40.270157, 38.498493, 20.437057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821697, 38.557564, 19.926842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.751705, 38.166939, 19.976959>,  <40.709709, 37.932564, 20.007030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.751705, 38.166939, 19.976959>,  <40.821697, 38.557564, 19.926842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751705, 38.166939, 19.976959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178153, -0.093753, -0.979526,
		0.968320, -0.193720, -0.157573,
		-0.174981, -0.976567, 0.125295,
		40.699211, 37.873970, 20.014547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147266, 38.184528, 19.428358>,  <40.821697, 38.557564, 19.926842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147266, 38.184528, 19.428358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865753, 37.925682, 19.545620>,  <40.696846, 37.770374, 19.615976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865753, 37.925682, 19.545620>,  <41.147266, 38.184528, 19.428358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865753, 37.925682, 19.545620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134947, -0.283362, -0.949471,
		0.697482, -0.707780, 0.112099,
		-0.703782, -0.647111, 0.293153,
		40.654617, 37.731548, 19.633566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242756, 37.548649, 19.051310>,  <41.147266, 38.184528, 19.428358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242756, 37.548649, 19.051310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.863747, 37.521580, 19.176289>,  <40.636341, 37.505337, 19.251276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.863747, 37.521580, 19.176289>,  <41.242756, 37.548649, 19.051310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863747, 37.521580, 19.176289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294995, -0.191582, -0.936095,
		0.123213, -0.979140, 0.161564,
		-0.947521, -0.067678, 0.312447,
		40.579491, 37.501278, 19.270023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994518, 37.039253, 18.659296>,  <41.242756, 37.548649, 19.051310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994518, 37.039253, 18.659296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693386, 37.261547, 18.800381>,  <40.512707, 37.394924, 18.885033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693386, 37.261547, 18.800381>,  <40.994518, 37.039253, 18.659296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693386, 37.261547, 18.800381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346552, 0.120924, -0.930204,
		-0.559602, -0.822516, 0.101558,
		-0.752826, 0.555739, 0.352714,
		40.467537, 37.428268, 18.906195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365990, 36.784676, 18.497358>,  <40.994518, 37.039253, 18.659296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365990, 36.784676, 18.497358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303261, 37.178204, 18.531992>,  <40.265625, 37.414322, 18.552773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303261, 37.178204, 18.531992>,  <40.365990, 36.784676, 18.497358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303261, 37.178204, 18.531992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362283, 0.024253, -0.931753,
		-0.918781, -0.177486, 0.352619,
		-0.156821, 0.983824, 0.086583,
		40.256214, 37.473351, 18.557966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672077, 36.223957, 18.054781>,  <40.365990, 36.784676, 18.497358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672077, 36.223957, 18.054781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582367, 35.857246, 17.922583>,  <40.528542, 35.637222, 17.843264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582367, 35.857246, 17.922583>,  <40.672077, 36.223957, 18.054781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582367, 35.857246, 17.922583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033751, -0.346238, 0.937540,
		-0.973942, 0.199110, 0.108593,
		-0.224273, -0.916774, -0.330495,
		40.515083, 35.582214, 17.823435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989697, 36.043396, 18.336817>,  <40.672077, 36.223957, 18.054781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989697, 36.043396, 18.336817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.196819, 35.711308, 18.254257>,  <40.321095, 35.512054, 18.204721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.196819, 35.711308, 18.254257>,  <39.989697, 36.043396, 18.336817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196819, 35.711308, 18.254257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034117, -0.261113, 0.964705,
		-0.854816, -0.492490, -0.163531,
		0.517808, -0.830225, -0.206401,
		40.352161, 35.462238, 18.192337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555862, 35.608471, 18.638632>,  <39.989697, 36.043396, 18.336817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555862, 35.608471, 18.638632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.904240, 35.416096, 18.598337>,  <40.113266, 35.300671, 18.574160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.904240, 35.416096, 18.598337>,  <39.555862, 35.608471, 18.638632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904240, 35.416096, 18.598337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163616, -0.477153, 0.863455,
		-0.463326, -0.735548, -0.494266,
		0.870953, -0.480931, -0.100730,
		40.165524, 35.271812, 18.568115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397770, 34.902878, 18.673641>,  <39.555862, 35.608471, 18.638632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397770, 34.902878, 18.673641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.790916, 34.879799, 18.743673>,  <40.026802, 34.865952, 18.785692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.790916, 34.879799, 18.743673>,  <39.397770, 34.902878, 18.673641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790916, 34.879799, 18.743673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174537, -0.596858, 0.783133,
		0.059313, -0.800270, -0.596700,
		0.982863, -0.057696, 0.175078,
		40.085773, 34.862492, 18.796196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499443, 34.230709, 18.852039>,  <39.397770, 34.902878, 18.673641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499443, 34.230709, 18.852039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826180, 34.414165, 18.991997>,  <40.022221, 34.524239, 19.075972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826180, 34.414165, 18.991997>,  <39.499443, 34.230709, 18.852039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826180, 34.414165, 18.991997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149081, -0.418105, 0.896082,
		0.557272, -0.784116, -0.273150,
		0.816838, 0.458640, 0.349895,
		40.071232, 34.551758, 19.096966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768124, 33.682529, 19.306385>,  <39.499443, 34.230709, 18.852039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768124, 33.682529, 19.306385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.944725, 34.028828, 19.400663>,  <40.050686, 34.236607, 19.457230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.944725, 34.028828, 19.400663>,  <39.768124, 33.682529, 19.306385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944725, 34.028828, 19.400663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008103, -0.266521, 0.963795,
		0.897221, -0.423612, -0.124686,
		0.441507, 0.865748, 0.235695,
		40.077179, 34.288551, 19.471373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329288, 33.519394, 19.634594>,  <39.768124, 33.682529, 19.306385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329288, 33.519394, 19.634594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.251133, 33.887138, 19.771175>,  <40.204239, 34.107784, 19.853125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.251133, 33.887138, 19.771175>,  <40.329288, 33.519394, 19.634594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251133, 33.887138, 19.771175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066402, -0.334963, 0.939889,
		0.978475, 0.206320, 0.004401,
		-0.195392, 0.919365, 0.341453,
		40.192516, 34.162949, 19.873611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848324, 33.788055, 20.098694>,  <40.329288, 33.519394, 19.634594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848324, 33.788055, 20.098694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.523129, 34.002762, 20.188967>,  <40.328011, 34.131584, 20.243132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.523129, 34.002762, 20.188967>,  <40.848324, 33.788055, 20.098694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523129, 34.002762, 20.188967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228217, -0.062842, 0.971580,
		0.535695, 0.841387, -0.071410,
		-0.812987, 0.536767, 0.225683,
		40.279232, 34.163792, 20.256672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971962, 34.291634, 20.652874>,  <40.848324, 33.788055, 20.098694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971962, 34.291634, 20.652874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572887, 34.268398, 20.667042>,  <40.333443, 34.254459, 20.675543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572887, 34.268398, 20.667042>,  <40.971962, 34.291634, 20.652874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572887, 34.268398, 20.667042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030443, 0.084447, 0.995963,
		-0.060842, 0.994734, -0.082483,
		-0.997683, -0.058085, 0.035421,
		40.273582, 34.250973, 20.677668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792797, 34.736477, 21.357481>,  <40.971962, 34.291634, 20.652874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792797, 34.736477, 21.357481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.457306, 34.539200, 21.265141>,  <40.256012, 34.420834, 21.209736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.457306, 34.539200, 21.265141>,  <40.792797, 34.736477, 21.357481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457306, 34.539200, 21.265141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135240, -0.221991, 0.965624,
		-0.527486, 0.841119, 0.119491,
		-0.838730, -0.493193, -0.230850,
		40.205688, 34.391243, 21.195885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338581, 34.846153, 21.774055>,  <40.792797, 34.736477, 21.357481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338581, 34.846153, 21.774055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183647, 34.512596, 21.616779>,  <40.090687, 34.312462, 21.522413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183647, 34.512596, 21.616779>,  <40.338581, 34.846153, 21.774055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183647, 34.512596, 21.616779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108067, -0.382476, 0.917624,
		-0.915583, 0.397920, 0.058030,
		-0.387336, -0.833890, -0.393191,
		40.067448, 34.262428, 21.498821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606709, 34.763546, 22.042519>,  <40.338581, 34.846153, 21.774055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606709, 34.763546, 22.042519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705883, 34.393044, 21.928972>,  <39.765388, 34.170742, 21.860846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705883, 34.393044, 21.928972>,  <39.606709, 34.763546, 22.042519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705883, 34.393044, 21.928972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139335, -0.324063, 0.935718,
		-0.958703, -0.192449, -0.209408,
		0.247939, -0.926254, -0.283865,
		39.780266, 34.115166, 21.843813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055771, 34.265743, 22.222317>,  <39.606709, 34.763546, 22.042519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055771, 34.265743, 22.222317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381218, 34.034729, 22.195559>,  <39.576488, 33.896122, 22.179504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381218, 34.034729, 22.195559>,  <39.055771, 34.265743, 22.222317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381218, 34.034729, 22.195559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230498, -0.426053, 0.874843,
		-0.533753, -0.696370, -0.479766,
		0.813620, -0.577535, -0.066895,
		39.625305, 33.861469, 22.175489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865025, 33.553196, 22.522850>,  <39.055771, 34.265743, 22.222317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865025, 33.553196, 22.522850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263325, 33.589466, 22.529379>,  <39.502304, 33.611229, 22.533297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263325, 33.589466, 22.529379>,  <38.865025, 33.553196, 22.522850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263325, 33.589466, 22.529379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021025, -0.396105, 0.917965,
		0.089704, -0.913717, -0.396326,
		0.995747, 0.090678, 0.016321,
		39.562050, 33.616669, 22.534275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315002, 33.226944, 22.689415>,  <38.865025, 33.553196, 22.522850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315002, 33.226944, 22.689415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.955166, 33.379166, 22.775120>,  <37.739262, 33.470497, 22.826542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.955166, 33.379166, 22.775120>,  <38.315002, 33.226944, 22.689415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955166, 33.379166, 22.775120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060613, 0.377063, -0.924202,
		-0.432499, -0.844394, -0.316137,
		-0.899595, 0.380555, 0.214261,
		37.685287, 33.493332, 22.839397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789036, 32.986893, 22.166466>,  <38.315002, 33.226944, 22.689415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789036, 32.986893, 22.166466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641659, 33.325150, 22.320938>,  <37.553234, 33.528103, 22.413622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641659, 33.325150, 22.320938>,  <37.789036, 32.986893, 22.166466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641659, 33.325150, 22.320938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186537, 0.339705, -0.921848,
		-0.910743, -0.411685, 0.032582,
		-0.368443, 0.845645, 0.386179,
		37.531124, 33.578842, 22.436792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198078, 33.083092, 21.877733>,  <37.789036, 32.986893, 22.166466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198078, 33.083092, 21.877733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289963, 33.454304, 21.995037>,  <37.345093, 33.677029, 22.065418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289963, 33.454304, 21.995037>,  <37.198078, 33.083092, 21.877733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289963, 33.454304, 21.995037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086544, 0.319599, -0.943593,
		-0.969403, 0.191376, 0.153731,
		0.229713, 0.928026, 0.293257,
		37.358875, 33.732712, 22.083014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721558, 33.458626, 21.521864>,  <37.198078, 33.083092, 21.877733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721558, 33.458626, 21.521864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.988617, 33.739006, 21.622194>,  <37.148853, 33.907234, 21.682392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.988617, 33.739006, 21.622194>,  <36.721558, 33.458626, 21.521864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988617, 33.739006, 21.622194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190589, 0.486618, -0.852572,
		-0.719666, 0.521415, 0.458484,
		0.667650, 0.700949, 0.250827,
		37.188911, 33.949291, 21.697443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408474, 33.984539, 21.501778>,  <36.721558, 33.458626, 21.521864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408474, 33.984539, 21.501778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794186, 34.081917, 21.460003>,  <37.025612, 34.140343, 21.434938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794186, 34.081917, 21.460003>,  <36.408474, 33.984539, 21.501778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794186, 34.081917, 21.460003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203249, 0.427068, -0.881080,
		-0.169895, 0.870830, 0.461292,
		0.964275, 0.243448, -0.104439,
		37.083469, 34.154953, 21.428671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352707, 34.589134, 21.205820>,  <36.408474, 33.984539, 21.501778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352707, 34.589134, 21.205820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738300, 34.492538, 21.161243>,  <36.969658, 34.434582, 21.134497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738300, 34.492538, 21.161243>,  <36.352707, 34.589134, 21.205820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738300, 34.492538, 21.161243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008393, 0.391187, -0.920273,
		0.265832, 0.888063, 0.375071,
		0.963983, -0.241490, -0.111444,
		37.027496, 34.420090, 21.127810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727955, 35.158871, 20.886217>,  <36.352707, 34.589134, 21.205820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727955, 35.158871, 20.886217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.964504, 34.849205, 20.795938>,  <37.106434, 34.663406, 20.741772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.964504, 34.849205, 20.795938>,  <36.727955, 35.158871, 20.886217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964504, 34.849205, 20.795938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062213, 0.322851, -0.944403,
		0.803993, 0.544455, 0.239089,
		0.591375, -0.774168, -0.225698,
		37.141918, 34.616955, 20.728230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855339, 35.871899, 20.765398>,  <36.727955, 35.158871, 20.886217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855339, 35.871899, 20.765398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473278, 35.852909, 20.648485>,  <36.244041, 35.841515, 20.578337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473278, 35.852909, 20.648485>,  <36.855339, 35.871899, 20.765398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473278, 35.852909, 20.648485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262785, -0.319042, 0.910580,
		-0.136481, 0.946551, 0.292258,
		-0.955153, -0.047476, -0.292282,
		36.186733, 35.838665, 20.560801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547817, 36.024731, 21.410484>,  <36.855339, 35.871899, 20.765398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547817, 36.024731, 21.410484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.245434, 35.867073, 21.201418>,  <36.064003, 35.772480, 21.075977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.245434, 35.867073, 21.201418>,  <36.547817, 36.024731, 21.410484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245434, 35.867073, 21.201418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435137, -0.293950, 0.851028,
		-0.489064, 0.870773, 0.050707,
		-0.755957, -0.394143, -0.522666,
		36.018646, 35.748829, 21.044619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911201, 36.361534, 21.561289>,  <36.547817, 36.024731, 21.410484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911201, 36.361534, 21.561289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824692, 35.985012, 21.457624>,  <35.772785, 35.759098, 21.395426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824692, 35.985012, 21.457624>,  <35.911201, 36.361534, 21.561289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824692, 35.985012, 21.457624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495174, -0.123015, 0.860041,
		-0.841443, 0.314337, -0.439506,
		-0.216277, -0.941307, -0.259162,
		35.759808, 35.702621, 21.379875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280048, 36.318710, 21.771482>,  <35.911201, 36.361534, 21.561289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280048, 36.318710, 21.771482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399464, 35.939953, 21.723709>,  <35.471111, 35.712696, 21.695045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399464, 35.939953, 21.723709>,  <35.280048, 36.318710, 21.771482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399464, 35.939953, 21.723709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326269, -0.218853, 0.919593,
		-0.896898, -0.235564, -0.374278,
		0.298535, -0.946896, -0.119432,
		35.489025, 35.655884, 21.687880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708141, 35.927952, 21.946522>,  <35.280048, 36.318710, 21.771482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708141, 35.927952, 21.946522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009071, 35.667690, 21.987803>,  <35.189629, 35.511532, 22.012571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009071, 35.667690, 21.987803>,  <34.708141, 35.927952, 21.946522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009071, 35.667690, 21.987803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353100, -0.266004, 0.896974,
		-0.556172, -0.711256, -0.429869,
		0.752325, -0.650659, 0.103200,
		35.234768, 35.472492, 22.018763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353436, 35.469151, 22.238462>,  <34.708141, 35.927952, 21.946522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353436, 35.469151, 22.238462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729473, 35.343948, 22.292505>,  <34.955097, 35.268829, 22.324932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729473, 35.343948, 22.292505>,  <34.353436, 35.469151, 22.238462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729473, 35.343948, 22.292505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198572, -0.180591, 0.963305,
		-0.277118, -0.932425, -0.231926,
		0.940093, -0.313003, 0.135109,
		35.011501, 35.250050, 22.333038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390469, 34.817959, 22.413280>,  <34.353436, 35.469151, 22.238462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390469, 34.817959, 22.413280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745106, 34.925949, 22.563515>,  <34.957890, 34.990742, 22.653656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745106, 34.925949, 22.563515>,  <34.390469, 34.817959, 22.413280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745106, 34.925949, 22.563515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230419, -0.446288, 0.864716,
		0.401070, -0.853195, -0.333469,
		0.886595, 0.269974, 0.375585,
		35.011086, 35.006943, 22.676189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.200500, 39.552734, 19.175014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317513, 39.193604, 19.306667>,  <38.387718, 38.978123, 19.385660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317513, 39.193604, 19.306667>,  <38.200500, 39.552734, 19.175014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317513, 39.193604, 19.306667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556972, 0.119808, 0.821844,
		-0.777310, -0.423729, -0.465020,
		0.292526, -0.897831, 0.329133,
		38.405270, 38.924255, 19.405407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678391, 39.139442, 19.338163>,  <38.200500, 39.552734, 19.175014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678391, 39.139442, 19.338163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981983, 39.020786, 19.570009>,  <38.164139, 38.949593, 19.709116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981983, 39.020786, 19.570009>,  <37.678391, 39.139442, 19.338163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981983, 39.020786, 19.570009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624695, -0.080763, 0.776681,
		-0.183582, -0.951568, -0.246607,
		0.758982, -0.296639, 0.579613,
		38.209679, 38.931793, 19.743893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400177, 38.585796, 19.751513>,  <37.678391, 39.139442, 19.338163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400177, 38.585796, 19.751513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726120, 38.727379, 19.935129>,  <37.921684, 38.812328, 20.045300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726120, 38.727379, 19.935129>,  <37.400177, 38.585796, 19.751513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726120, 38.727379, 19.935129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511015, 0.064834, 0.857123,
		0.273627, -0.933010, 0.233710,
		0.814857, 0.353961, 0.459042,
		37.970577, 38.833569, 20.072842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562309, 38.172768, 20.307325>,  <37.400177, 38.585796, 19.751513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562309, 38.172768, 20.307325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.745083, 38.514538, 20.406258>,  <37.854748, 38.719601, 20.465618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.745083, 38.514538, 20.406258>,  <37.562309, 38.172768, 20.307325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745083, 38.514538, 20.406258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545628, 0.049633, 0.836557,
		0.702498, -0.517200, 0.488876,
		0.456931, 0.854424, 0.247332,
		37.882164, 38.770866, 20.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750694, 38.060711, 20.949886>,  <37.562309, 38.172768, 20.307325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750694, 38.060711, 20.949886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.804428, 38.456718, 20.932810>,  <37.836670, 38.694321, 20.922564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.804428, 38.456718, 20.932810>,  <37.750694, 38.060711, 20.949886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804428, 38.456718, 20.932810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262275, 0.077069, 0.961911,
		0.955597, -0.118025, 0.270010,
		0.134339, 0.990016, -0.042692,
		37.844730, 38.753723, 20.920002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094852, 38.326809, 21.589249>,  <37.750694, 38.060711, 20.949886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094852, 38.326809, 21.589249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.925240, 38.663277, 21.455008>,  <37.823471, 38.865158, 21.374464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.925240, 38.663277, 21.455008>,  <38.094852, 38.326809, 21.589249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925240, 38.663277, 21.455008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329885, 0.201648, 0.922233,
		0.843428, 0.501768, 0.191984,
		-0.424034, 0.841170, -0.335602,
		37.798031, 38.915627, 21.354326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329372, 38.833591, 22.155678>,  <38.094852, 38.326809, 21.589249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329372, 38.833591, 22.155678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.043427, 39.009151, 21.937933>,  <37.871861, 39.114487, 21.807285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.043427, 39.009151, 21.937933>,  <38.329372, 38.833591, 22.155678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043427, 39.009151, 21.937933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518532, 0.189560, 0.833781,
		0.469139, 0.878311, 0.092075,
		-0.714866, 0.438904, -0.544363,
		37.828968, 39.140823, 21.774624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336849, 39.507698, 22.248302>,  <38.329372, 38.833591, 22.155678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336849, 39.507698, 22.248302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961300, 39.449581, 22.123457>,  <37.735970, 39.414711, 22.048550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961300, 39.449581, 22.123457>,  <38.336849, 39.507698, 22.248302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961300, 39.449581, 22.123457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337440, 0.208601, 0.917943,
		-0.068261, 0.967148, -0.244875,
		-0.938869, -0.145290, -0.312116,
		37.679638, 39.405994, 22.029821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107384, 40.050583, 22.577553>,  <38.336849, 39.507698, 22.248302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107384, 40.050583, 22.577553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.793808, 39.835972, 22.452604>,  <37.605663, 39.707207, 22.377636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.793808, 39.835972, 22.452604>,  <38.107384, 40.050583, 22.577553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793808, 39.835972, 22.452604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531781, 0.320658, 0.783828,
		-0.320379, 0.780589, -0.536692,
		-0.783943, -0.536525, -0.312370,
		37.558624, 39.675014, 22.358892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540325, 40.434277, 22.740396>,  <38.107384, 40.050583, 22.577553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540325, 40.434277, 22.740396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393562, 40.062176, 22.741119>,  <37.305504, 39.838913, 22.741554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393562, 40.062176, 22.741119>,  <37.540325, 40.434277, 22.740396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393562, 40.062176, 22.741119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513290, 0.204072, 0.833599,
		-0.775829, 0.304927, -0.552367,
		-0.366909, -0.930255, 0.001809,
		37.283489, 39.783100, 22.741663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790321, 40.467884, 22.826172>,  <37.540325, 40.434277, 22.740396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790321, 40.467884, 22.826172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.897980, 40.097370, 22.931667>,  <36.962574, 39.875061, 22.994965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.897980, 40.097370, 22.931667>,  <36.790321, 40.467884, 22.826172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897980, 40.097370, 22.931667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639907, 0.032664, 0.767758,
		-0.719776, -0.375409, -0.583943,
		0.269150, -0.926283, 0.263738,
		36.978725, 39.819485, 23.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109596, 40.005547, 22.976862>,  <36.790321, 40.467884, 22.826172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109596, 40.005547, 22.976862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433529, 39.885605, 23.178555>,  <36.627892, 39.813641, 23.299570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433529, 39.885605, 23.178555>,  <36.109596, 40.005547, 22.976862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433529, 39.885605, 23.178555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542967, -0.057635, 0.837774,
		-0.222152, -0.952241, -0.209488,
		0.809837, -0.299858, 0.504232,
		36.676479, 39.795647, 23.329824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440132, 39.716236, 22.801483>,  <36.109596, 40.005547, 22.976862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440132, 39.716236, 22.801483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.046295, 39.655128, 22.767435>,  <34.809994, 39.618465, 22.747005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.046295, 39.655128, 22.767435>,  <35.440132, 39.716236, 22.801483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046295, 39.655128, 22.767435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070032, 0.101573, -0.992360,
		0.160246, -0.983028, -0.089309,
		-0.984589, -0.152767, -0.085120,
		34.750919, 39.609299, 22.741899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393841, 39.443264, 22.105770>,  <35.440132, 39.716236, 22.801483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393841, 39.443264, 22.105770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.011200, 39.507202, 22.203220>,  <34.781616, 39.545567, 22.261690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.011200, 39.507202, 22.203220>,  <35.393841, 39.443264, 22.105770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011200, 39.507202, 22.203220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242445, 0.027163, -0.969785,
		-0.161638, -0.986768, 0.012770,
		-0.956605, 0.159850, 0.243628,
		34.724216, 39.555157, 22.276308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937065, 38.834816, 21.876055>,  <35.393841, 39.443264, 22.105770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937065, 38.834816, 21.876055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736660, 39.179863, 21.903982>,  <34.616417, 39.386890, 21.920738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736660, 39.179863, 21.903982>,  <34.937065, 38.834816, 21.876055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736660, 39.179863, 21.903982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006697, 0.076808, -0.997023,
		-0.865415, -0.499987, -0.032704,
		-0.501011, 0.862620, 0.069819,
		34.586357, 39.438648, 21.924929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483280, 38.790249, 21.439301>,  <34.937065, 38.834816, 21.876055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483280, 38.790249, 21.439301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.443737, 39.185600, 21.485491>,  <34.420010, 39.422810, 21.513205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.443737, 39.185600, 21.485491>,  <34.483280, 38.790249, 21.439301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443737, 39.185600, 21.485491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095151, 0.124902, -0.987596,
		-0.990542, -0.086645, -0.106393,
		-0.098859, 0.988379, 0.115476,
		34.414078, 39.482113, 21.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962563, 39.073673, 20.938450>,  <34.483280, 38.790249, 21.439301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962563, 39.073673, 20.938450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.195454, 39.385601, 21.030443>,  <34.335190, 39.572758, 21.085640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.195454, 39.385601, 21.030443>,  <33.962563, 39.073673, 20.938450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195454, 39.385601, 21.030443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186764, 0.147027, -0.971341,
		-0.791281, 0.608499, -0.060037,
		0.582232, 0.779815, 0.229985,
		34.370125, 39.619545, 21.099440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907257, 39.366222, 20.338001>,  <33.962563, 39.073673, 20.938450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907257, 39.366222, 20.338001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.236961, 39.514664, 20.509056>,  <34.434784, 39.603729, 20.611689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.236961, 39.514664, 20.509056>,  <33.907257, 39.366222, 20.338001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236961, 39.514664, 20.509056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382678, 0.191528, -0.903811,
		-0.417311, 0.908625, 0.015857,
		0.824262, 0.371102, 0.427638,
		34.484241, 39.625996, 20.637348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094345, 40.002712, 20.017498>,  <33.907257, 39.366222, 20.338001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094345, 40.002712, 20.017498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435196, 39.880802, 20.187675>,  <34.639706, 39.807655, 20.289782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435196, 39.880802, 20.187675>,  <34.094345, 40.002712, 20.017498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435196, 39.880802, 20.187675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462211, 0.056996, -0.884936,
		0.245455, 0.950719, 0.189437,
		0.852123, -0.304772, 0.425443,
		34.690834, 39.789371, 20.315308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602055, 40.441792, 19.883888>,  <34.094345, 40.002712, 20.017498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602055, 40.441792, 19.883888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.800056, 40.102680, 19.960037>,  <34.918858, 39.899212, 20.005728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.800056, 40.102680, 19.960037>,  <34.602055, 40.441792, 19.883888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800056, 40.102680, 19.960037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549949, 0.136060, -0.824041,
		0.672704, 0.512597, 0.533586,
		0.495001, -0.847780, 0.190374,
		34.948555, 39.848347, 20.017149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246437, 40.600357, 19.731701>,  <34.602055, 40.441792, 19.883888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246437, 40.600357, 19.731701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.293858, 40.203197, 19.735744>,  <35.322311, 39.964901, 19.738171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.293858, 40.203197, 19.735744>,  <35.246437, 40.600357, 19.731701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293858, 40.203197, 19.735744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475704, 0.047857, -0.878303,
		0.871579, 0.108936, 0.477998,
		0.118554, -0.992896, 0.010110,
		35.329422, 39.905327, 19.738777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008533, 40.503895, 19.559692>,  <35.246437, 40.600357, 19.731701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008533, 40.503895, 19.559692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.814953, 40.168674, 19.458927>,  <35.698803, 39.967541, 19.398468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.814953, 40.168674, 19.458927>,  <36.008533, 40.503895, 19.559692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814953, 40.168674, 19.458927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534581, -0.055214, -0.843312,
		0.692830, -0.542790, 0.474727,
		-0.483953, -0.838052, -0.251911,
		35.669765, 39.917259, 19.383354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481354, 40.076641, 19.246744>,  <36.008533, 40.503895, 19.559692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481354, 40.076641, 19.246744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150356, 39.888527, 19.124052>,  <35.951759, 39.775658, 19.050436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150356, 39.888527, 19.124052>,  <36.481354, 40.076641, 19.246744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150356, 39.888527, 19.124052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409608, -0.131989, -0.902663,
		0.384025, -0.872588, 0.301853,
		-0.827494, -0.470287, -0.306731,
		35.902107, 39.747440, 19.032032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733887, 39.474068, 18.942282>,  <36.481354, 40.076641, 19.246744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733887, 39.474068, 18.942282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.369572, 39.493259, 18.778250>,  <36.150982, 39.504772, 18.679831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.369572, 39.493259, 18.778250>,  <36.733887, 39.474068, 18.942282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369572, 39.493259, 18.778250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393962, -0.196188, -0.897945,
		-0.123528, -0.979392, 0.159786,
		-0.910788, 0.047972, -0.410078,
		36.096336, 39.507652, 18.655226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787464, 38.999348, 18.445171>,  <36.733887, 39.474068, 18.942282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787464, 38.999348, 18.445171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.479820, 39.238247, 18.354162>,  <36.295235, 39.381588, 18.299557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.479820, 39.238247, 18.354162>,  <36.787464, 38.999348, 18.445171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479820, 39.238247, 18.354162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295054, 0.016013, -0.955346,
		-0.566936, -0.801896, -0.188536,
		-0.769108, 0.597249, -0.227525,
		36.249088, 39.417423, 18.285904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275543, 38.631439, 18.929375>,  <36.787464, 38.999348, 18.445171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275543, 38.631439, 18.929375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.246162, 38.322510, 18.676989>,  <37.228535, 38.137154, 18.525557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.246162, 38.322510, 18.676989>,  <37.275543, 38.631439, 18.929375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246162, 38.322510, 18.676989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535036, -0.503402, 0.678471,
		-0.841630, 0.387428, -0.376243,
		-0.073457, -0.772325, -0.630966,
		37.224125, 38.090813, 18.487700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500820, 38.369675, 18.820751>,  <37.275543, 38.631439, 18.929375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500820, 38.369675, 18.820751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.716766, 38.050243, 18.714302>,  <36.846336, 37.858585, 18.650433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.716766, 38.050243, 18.714302>,  <36.500820, 38.369675, 18.820751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716766, 38.050243, 18.714302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600128, -0.586856, 0.543550,
		-0.590259, -0.133711, -0.796063,
		0.539853, -0.798574, -0.266154,
		36.878727, 37.810673, 18.634466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974545, 37.841187, 18.858040>,  <36.500820, 38.369675, 18.820751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974545, 37.841187, 18.858040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311710, 37.626072, 18.851301>,  <36.514008, 37.497002, 18.847258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311710, 37.626072, 18.851301>,  <35.974545, 37.841187, 18.858040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311710, 37.626072, 18.851301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435653, -0.700534, 0.565207,
		-0.315762, -0.469080, -0.824777,
		0.842912, -0.537788, -0.016846,
		36.564583, 37.464737, 18.846247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857719, 37.232517, 18.541203>,  <35.974545, 37.841187, 18.858040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857719, 37.232517, 18.541203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.175999, 37.173237, 18.776115>,  <36.366966, 37.137669, 18.917063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.175999, 37.173237, 18.776115>,  <35.857719, 37.232517, 18.541203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175999, 37.173237, 18.776115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498407, -0.711163, 0.495820,
		0.344172, -0.687229, -0.639736,
		0.795699, -0.148202, 0.587282,
		36.414707, 37.128777, 18.952299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002861, 36.508244, 18.636408>,  <35.857719, 37.232517, 18.541203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002861, 36.508244, 18.636408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.200714, 36.649666, 18.953983>,  <36.319427, 36.734520, 19.144527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.200714, 36.649666, 18.953983>,  <36.002861, 36.508244, 18.636408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200714, 36.649666, 18.953983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402960, -0.716095, 0.569939,
		0.770037, -0.601838, -0.211740,
		0.494637, 0.353552, 0.793937,
		36.349106, 36.755730, 19.192163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395992, 35.952030, 18.933882>,  <36.002861, 36.508244, 18.636408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395992, 35.952030, 18.933882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.350231, 36.218182, 19.228956>,  <36.322773, 36.377872, 19.406000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.350231, 36.218182, 19.228956>,  <36.395992, 35.952030, 18.933882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350231, 36.218182, 19.228956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062068, -0.745899, 0.663161,
		0.991494, 0.030081, 0.126632,
		-0.114403, 0.665380, 0.737687,
		36.315910, 36.417797, 19.450262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654037, 35.545799, 19.451736>,  <36.395992, 35.952030, 18.933882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654037, 35.545799, 19.451736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.482658, 35.870365, 19.610754>,  <36.379829, 36.065105, 19.706163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.482658, 35.870365, 19.610754>,  <36.654037, 35.545799, 19.451736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482658, 35.870365, 19.610754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097642, -0.478971, 0.872383,
		0.898276, 0.334953, 0.284442,
		-0.428447, 0.811414, 0.397543,
		36.354126, 36.113789, 19.730017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846905, 35.562794, 20.061403>,  <36.654037, 35.545799, 19.451736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846905, 35.562794, 20.061403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.510338, 35.773006, 20.111725>,  <36.308399, 35.899136, 20.141918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.510338, 35.773006, 20.111725>,  <36.846905, 35.562794, 20.061403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510338, 35.773006, 20.111725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179911, -0.491964, 0.851824,
		0.509555, 0.694107, 0.508497,
		-0.841419, 0.525536, 0.125805,
		36.257912, 35.930668, 20.149466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448753, 35.477268, 20.509583>,  <36.846905, 35.562794, 20.061403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448753, 35.477268, 20.509583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415493, 35.086193, 20.432415>,  <37.395538, 34.851547, 20.386114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415493, 35.086193, 20.432415>,  <37.448753, 35.477268, 20.509583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415493, 35.086193, 20.432415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276055, 0.163417, -0.947148,
		0.957538, -0.132013, 0.256307,
		-0.083151, -0.977685, -0.192921,
		37.390549, 34.792889, 20.374538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036549, 35.342915, 20.049368>,  <37.448753, 35.477268, 20.509583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036549, 35.342915, 20.049368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.768707, 35.050438, 19.997223>,  <37.608002, 34.874954, 19.965935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.768707, 35.050438, 19.997223>,  <38.036549, 35.342915, 20.049368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768707, 35.050438, 19.997223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151225, 0.037625, -0.987783,
		0.727159, -0.681139, 0.085380,
		-0.669605, -0.731187, -0.130364,
		37.567825, 34.831081, 19.958113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303608, 35.194077, 19.471880>,  <38.036549, 35.342915, 20.049368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303608, 35.194077, 19.471880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.963078, 34.984238, 19.474239>,  <37.758759, 34.858334, 19.475655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.963078, 34.984238, 19.474239>,  <38.303608, 35.194077, 19.471880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963078, 34.984238, 19.474239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018436, -0.041152, -0.998983,
		0.524311, -0.850353, 0.044705,
		-0.851327, -0.524602, 0.005899,
		37.707680, 34.826859, 19.476009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425270, 34.513908, 19.018970>,  <38.303608, 35.194077, 19.471880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425270, 34.513908, 19.018970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.037498, 34.611893, 19.024582>,  <37.804836, 34.670681, 19.027948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.037498, 34.611893, 19.024582>,  <38.425270, 34.513908, 19.018970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037498, 34.611893, 19.024582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044123, -0.117798, -0.992057,
		-0.241360, -0.962351, 0.125005,
		-0.969432, 0.244958, 0.014030,
		37.746670, 34.685379, 19.028791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056313, 33.890171, 18.783211>,  <38.425270, 34.513908, 19.018970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056313, 33.890171, 18.783211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.828381, 34.215157, 18.733906>,  <37.691620, 34.410149, 18.704323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.828381, 34.215157, 18.733906>,  <38.056313, 33.890171, 18.783211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828381, 34.215157, 18.733906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046531, -0.181660, -0.982260,
		-0.820444, -0.553986, 0.141320,
		-0.569830, 0.812465, -0.123264,
		37.657433, 34.458897, 18.696926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579765, 33.670746, 18.324961>,  <38.056313, 33.890171, 18.783211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579765, 33.670746, 18.324961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.566322, 34.065762, 18.263458>,  <37.558254, 34.302769, 18.226557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.566322, 34.065762, 18.263458>,  <37.579765, 33.670746, 18.324961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566322, 34.065762, 18.263458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022198, -0.154542, -0.987737,
		-0.999188, -0.029785, 0.027116,
		-0.033610, 0.987537, -0.153756,
		37.556240, 34.362022, 18.217331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007523, 33.746460, 17.744089>,  <37.579765, 33.670746, 18.324961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007523, 33.746460, 17.744089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216076, 34.086945, 17.768099>,  <37.341209, 34.291233, 17.782505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216076, 34.086945, 17.768099>,  <37.007523, 33.746460, 17.744089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216076, 34.086945, 17.768099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022682, 0.084144, -0.996195,
		-0.853022, 0.518037, 0.063178,
		0.521382, 0.851209, 0.060027,
		37.372490, 34.342308, 17.786106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577618, 34.209145, 17.389008>,  <37.007523, 33.746460, 17.744089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577618, 34.209145, 17.389008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.944923, 34.367367, 17.396255>,  <37.165306, 34.462299, 17.400604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.944923, 34.367367, 17.396255>,  <36.577618, 34.209145, 17.389008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944923, 34.367367, 17.396255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090626, 0.254496, -0.962818,
		-0.385456, 0.882480, 0.269542,
		0.918265, 0.395551, 0.018121,
		37.220402, 34.486031, 17.401691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453411, 34.968597, 17.013824>,  <36.577618, 34.209145, 17.389008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453411, 34.968597, 17.013824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844040, 34.886219, 17.038811>,  <37.078415, 34.836792, 17.053802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844040, 34.886219, 17.038811>,  <36.453411, 34.968597, 17.013824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844040, 34.886219, 17.038811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156138, 0.478257, -0.864228,
		0.148105, 0.853732, 0.499206,
		0.976568, -0.205942, 0.062467,
		37.137009, 34.824436, 17.057550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.105148, 32.793396, 33.283047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439869, 32.957985, 33.138577>,  <37.640701, 33.056740, 33.051895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439869, 32.957985, 33.138577>,  <37.105148, 32.793396, 33.283047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439869, 32.957985, 33.138577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307891, -0.191827, -0.931883,
		-0.452727, 0.891007, -0.033833,
		0.836804, 0.411472, -0.361178,
		37.690910, 33.081425, 33.030224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912254, 33.335083, 32.759380>,  <37.105148, 32.793396, 33.283047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912254, 33.335083, 32.759380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278057, 33.196316, 32.676128>,  <37.497540, 33.113056, 32.626179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278057, 33.196316, 32.676128>,  <36.912254, 33.335083, 32.759380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278057, 33.196316, 32.676128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264116, -0.122269, -0.956710,
		0.306451, 0.929892, -0.203442,
		0.914511, -0.346917, -0.208130,
		37.552410, 33.092239, 32.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088951, 33.709408, 32.232410>,  <36.912254, 33.335083, 32.759380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088951, 33.709408, 32.232410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304138, 33.373341, 32.204941>,  <37.433250, 33.171700, 32.188457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304138, 33.373341, 32.204941>,  <37.088951, 33.709408, 32.232410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304138, 33.373341, 32.204941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271197, -0.095362, -0.957788,
		0.798151, 0.533881, -0.279152,
		0.537965, -0.840165, -0.068674,
		37.465527, 33.121292, 32.184338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390404, 33.736305, 31.609636>,  <37.088951, 33.709408, 32.232410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390404, 33.736305, 31.609636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.425365, 33.349243, 31.704302>,  <37.446342, 33.117008, 31.761101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.425365, 33.349243, 31.704302>,  <37.390404, 33.736305, 31.609636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425365, 33.349243, 31.704302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240267, -0.251040, -0.937684,
		0.966764, 0.025098, -0.254438,
		0.087408, -0.967652, 0.236666,
		37.451588, 33.058949, 31.775301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819252, 33.454422, 31.135941>,  <37.390404, 33.736305, 31.609636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819252, 33.454422, 31.135941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625610, 33.128738, 31.264135>,  <37.509426, 32.933331, 31.341053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625610, 33.128738, 31.264135>,  <37.819252, 33.454422, 31.135941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625610, 33.128738, 31.264135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113352, -0.304827, -0.945638,
		0.867637, -0.494116, 0.055277,
		-0.484105, -0.814205, 0.320488,
		37.480377, 32.884476, 31.360281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021267, 32.771809, 30.778271>,  <37.819252, 33.454422, 31.135941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021267, 32.771809, 30.778271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664841, 32.688900, 30.939785>,  <37.450985, 32.639153, 31.036694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664841, 32.688900, 30.939785>,  <38.021267, 32.771809, 30.778271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664841, 32.688900, 30.939785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282282, -0.443571, -0.850624,
		0.355421, -0.871942, 0.336739,
		-0.891063, -0.207274, 0.403788,
		37.397522, 32.626717, 31.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944916, 32.175037, 30.464075>,  <38.021267, 32.771809, 30.778271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944916, 32.175037, 30.464075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582180, 32.280018, 30.595989>,  <37.364536, 32.343006, 30.675137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582180, 32.280018, 30.595989>,  <37.944916, 32.175037, 30.464075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582180, 32.280018, 30.595989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386526, -0.205922, -0.898996,
		-0.168025, -0.942720, 0.288180,
		-0.906844, 0.262443, 0.329786,
		37.310127, 32.358753, 30.694923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491283, 31.673679, 30.256924>,  <37.944916, 32.175037, 30.464075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491283, 31.673679, 30.256924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280346, 32.008602, 30.314646>,  <37.153782, 32.209557, 30.349279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280346, 32.008602, 30.314646>,  <37.491283, 31.673679, 30.256924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280346, 32.008602, 30.314646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388464, -0.086552, -0.917390,
		-0.755647, -0.539838, 0.370907,
		-0.527345, 0.837307, 0.144305,
		37.122143, 32.259796, 30.357937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808918, 31.496819, 29.975271>,  <37.491283, 31.673679, 30.256924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808918, 31.496819, 29.975271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830200, 31.894728, 30.010136>,  <36.842968, 32.133472, 30.031054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830200, 31.894728, 30.010136>,  <36.808918, 31.496819, 29.975271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830200, 31.894728, 30.010136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294340, 0.099027, -0.950557,
		-0.954219, 0.024918, 0.298070,
		0.053202, 0.994773, 0.087159,
		36.846161, 32.193161, 30.036283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174683, 31.778748, 29.783836>,  <36.808918, 31.496819, 29.975271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174683, 31.778748, 29.783836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423222, 32.089268, 29.741350>,  <36.572346, 32.275581, 29.715858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423222, 32.089268, 29.741350>,  <36.174683, 31.778748, 29.783836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423222, 32.089268, 29.741350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129651, -0.031828, -0.991049,
		-0.772732, 0.629559, 0.080872,
		0.621350, 0.776300, -0.106217,
		36.609627, 32.322159, 29.709486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806015, 32.285938, 29.332464>,  <36.174683, 31.778748, 29.783836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806015, 32.285938, 29.332464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196293, 32.373154, 29.323751>,  <36.430462, 32.425484, 29.318523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196293, 32.373154, 29.323751>,  <35.806015, 32.285938, 29.332464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196293, 32.373154, 29.323751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089281, 0.304810, -0.948219,
		-0.200106, 0.927120, 0.316869,
		0.975698, 0.218034, -0.021780,
		36.489002, 32.438564, 29.317217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807087, 32.942310, 28.974375>,  <35.806015, 32.285938, 29.332464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807087, 32.942310, 28.974375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182686, 32.805363, 28.961325>,  <36.408047, 32.723194, 28.953495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182686, 32.805363, 28.961325>,  <35.807087, 32.942310, 28.974375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182686, 32.805363, 28.961325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090469, 0.337409, -0.937001,
		0.331810, 0.876890, 0.347800,
		0.938998, -0.342371, -0.032624,
		36.464386, 32.702652, 28.951538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834629, 33.635220, 28.945354>,  <35.807087, 32.942310, 28.974375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834629, 33.635220, 28.945354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469341, 33.759575, 28.839994>,  <35.250168, 33.834187, 28.776777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469341, 33.759575, 28.839994>,  <35.834629, 33.635220, 28.945354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469341, 33.759575, 28.839994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194315, 0.235924, 0.952146,
		0.358152, 0.920701, -0.155040,
		-0.913219, 0.310887, -0.263402,
		35.195377, 33.852840, 28.760973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645981, 34.184097, 29.288881>,  <35.834629, 33.635220, 28.945354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645981, 34.184097, 29.288881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285290, 34.032654, 29.205406>,  <35.068874, 33.941788, 29.155321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285290, 34.032654, 29.205406>,  <35.645981, 34.184097, 29.288881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285290, 34.032654, 29.205406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273973, 0.127053, 0.953308,
		-0.334415, 0.916795, -0.218295,
		-0.901724, -0.378607, -0.208689,
		35.014774, 33.919071, 29.142799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069267, 34.631664, 29.607645>,  <35.645981, 34.184097, 29.288881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069267, 34.631664, 29.607645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910240, 34.267609, 29.561029>,  <34.814823, 34.049175, 29.533060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910240, 34.267609, 29.561029>,  <35.069267, 34.631664, 29.607645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910240, 34.267609, 29.561029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255573, -0.012140, 0.966714,
		-0.881261, 0.414119, -0.227781,
		-0.397569, -0.910142, -0.116537,
		34.790970, 33.994568, 29.526068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381413, 34.649719, 29.943031>,  <35.069267, 34.631664, 29.607645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381413, 34.649719, 29.943031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513283, 34.274097, 29.904079>,  <34.592403, 34.048725, 29.880709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513283, 34.274097, 29.904079>,  <34.381413, 34.649719, 29.943031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513283, 34.274097, 29.904079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271730, -0.193165, 0.942788,
		-0.904144, -0.284352, -0.318852,
		0.329675, -0.939059, -0.097382,
		34.612186, 33.992378, 29.874865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801174, 34.259655, 30.284826>,  <34.381413, 34.649719, 29.943031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801174, 34.259655, 30.284826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122089, 34.020939, 30.279613>,  <34.314640, 33.877708, 30.276485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122089, 34.020939, 30.279613>,  <33.801174, 34.259655, 30.284826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122089, 34.020939, 30.279613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167243, -0.245681, 0.954814,
		-0.573028, -0.763858, -0.296917,
		0.802290, -0.596792, -0.013032,
		34.362778, 33.841900, 30.275703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632431, 33.600498, 30.687042>,  <33.801174, 34.259655, 30.284826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632431, 33.600498, 30.687042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031879, 33.621395, 30.689005>,  <34.271549, 33.633934, 30.690182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031879, 33.621395, 30.689005>,  <33.632431, 33.600498, 30.687042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031879, 33.621395, 30.689005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003665, -0.162713, 0.986667,
		0.052349, -0.985289, -0.162680,
		0.998622, 0.052248, 0.004907,
		34.331467, 33.637070, 30.690477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870266, 33.070854, 31.148094>,  <33.632431, 33.600498, 30.687042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870266, 33.070854, 31.148094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169270, 33.333435, 31.107475>,  <34.348671, 33.490982, 31.083103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169270, 33.333435, 31.107475>,  <33.870266, 33.070854, 31.148094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169270, 33.333435, 31.107475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122782, 0.013697, 0.992339,
		0.652810, -0.754247, -0.070362,
		0.747505, 0.656448, -0.101549,
		34.393520, 33.530369, 31.077011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336716, 32.795910, 31.640436>,  <33.870266, 33.070854, 31.148094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336716, 32.795910, 31.640436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447834, 33.176697, 31.588930>,  <34.514503, 33.405170, 31.558025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447834, 33.176697, 31.588930>,  <34.336716, 32.795910, 31.640436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447834, 33.176697, 31.588930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067343, 0.114415, 0.991148,
		0.958276, -0.284010, -0.032325,
		0.277797, 0.951970, -0.128767,
		34.531174, 33.462288, 31.550301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901100, 32.861412, 32.092686>,  <34.336716, 32.795910, 31.640436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901100, 32.861412, 32.092686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783669, 33.229900, 31.990576>,  <34.713211, 33.450993, 31.929310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783669, 33.229900, 31.990576>,  <34.901100, 32.861412, 32.092686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783669, 33.229900, 31.990576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004254, 0.265783, 0.964024,
		0.955927, 0.284099, -0.074109,
		-0.293574, 0.921221, -0.255277,
		34.695595, 33.506268, 31.913992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244411, 33.324711, 32.492226>,  <34.901100, 32.861412, 32.092686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244411, 33.324711, 32.492226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939648, 33.551342, 32.366699>,  <34.756790, 33.687321, 32.291382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939648, 33.551342, 32.366699>,  <35.244411, 33.324711, 32.492226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939648, 33.551342, 32.366699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126856, 0.344600, 0.930139,
		0.635139, 0.748491, -0.190679,
		-0.761909, 0.566579, -0.313820,
		34.711075, 33.721317, 32.272552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393112, 34.027927, 32.690884>,  <35.244411, 33.324711, 32.492226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393112, 34.027927, 32.690884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996738, 33.979782, 32.667000>,  <34.758915, 33.950893, 32.652668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996738, 33.979782, 32.667000>,  <35.393112, 34.027927, 32.690884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996738, 33.979782, 32.667000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110173, 0.473517, 0.873867,
		-0.076910, 0.872521, -0.482484,
		-0.990932, -0.120366, -0.059710,
		34.699459, 33.943672, 32.649086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196568, 34.633148, 32.964024>,  <35.393112, 34.027927, 32.690884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196568, 34.633148, 32.964024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871723, 34.399746, 32.964413>,  <34.676819, 34.259705, 32.964645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871723, 34.399746, 32.964413>,  <35.196568, 34.633148, 32.964024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871723, 34.399746, 32.964413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302139, 0.421928, 0.854804,
		-0.499192, 0.693900, -0.518951,
		-0.812108, -0.583506, 0.000969,
		34.628090, 34.224693, 32.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642002, 35.018471, 32.896587>,  <35.196568, 34.633148, 32.964024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642002, 35.018471, 32.896587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503517, 34.686691, 33.071930>,  <34.420425, 34.487625, 33.177135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503517, 34.686691, 33.071930>,  <34.642002, 35.018471, 32.896587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503517, 34.686691, 33.071930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311608, 0.542395, 0.780198,
		-0.884892, 0.133523, -0.446248,
		-0.346217, -0.829445, 0.438354,
		34.399651, 34.437859, 33.203438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026379, 35.210781, 32.991142>,  <34.642002, 35.018471, 32.896587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026379, 35.210781, 32.991142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098492, 34.892818, 33.222874>,  <34.141762, 34.702042, 33.361912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098492, 34.892818, 33.222874>,  <34.026379, 35.210781, 32.991142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098492, 34.892818, 33.222874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338474, 0.502876, 0.795331,
		-0.923543, -0.339476, -0.178393,
		0.180286, -0.794904, 0.579331,
		34.152576, 34.654346, 33.396671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274345, 35.480255, 32.631367>,  <34.026379, 35.210781, 32.991142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274345, 35.480255, 32.631367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998131, 35.727455, 32.781693>,  <32.832401, 35.875774, 32.871887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998131, 35.727455, 32.781693>,  <33.274345, 35.480255, 32.631367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998131, 35.727455, 32.781693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334365, 0.187988, -0.923504,
		-0.641378, -0.763369, 0.076827,
		-0.690532, 0.618003, 0.375816,
		32.790970, 35.912857, 32.894436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553177, 35.358620, 32.261238>,  <33.274345, 35.480255, 32.631367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553177, 35.358620, 32.261238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575844, 35.733303, 32.399441>,  <32.589443, 35.958111, 32.482361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575844, 35.733303, 32.399441>,  <32.553177, 35.358620, 32.261238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575844, 35.733303, 32.399441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348928, 0.342819, -0.872195,
		-0.935435, -0.071134, 0.346269,
		0.056665, 0.936704, 0.345506,
		32.592842, 36.014313, 32.503094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900719, 35.761475, 32.135353>,  <32.553177, 35.358620, 32.261238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900719, 35.761475, 32.135353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212872, 36.011333, 32.146759>,  <32.400162, 36.161251, 32.153603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212872, 36.011333, 32.146759>,  <31.900719, 35.761475, 32.135353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212872, 36.011333, 32.146759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215275, 0.311197, -0.925642,
		-0.587077, 0.716217, 0.377325,
		0.780383, 0.624651, 0.028513,
		32.446987, 36.198730, 32.155312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748560, 36.404377, 31.838867>,  <31.900719, 35.761475, 32.135353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748560, 36.404377, 31.838867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139584, 36.365547, 31.764082>,  <32.374199, 36.342247, 31.719210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139584, 36.365547, 31.764082>,  <31.748560, 36.404377, 31.838867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139584, 36.365547, 31.764082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132087, 0.408929, -0.902956,
		0.164111, 0.907388, 0.386930,
		0.977558, -0.097077, -0.186964,
		32.432850, 36.336426, 31.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867201, 36.907204, 31.351267>,  <31.748560, 36.404377, 31.838867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867201, 36.907204, 31.351267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205437, 36.694630, 31.331020>,  <32.408379, 36.567085, 31.318872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205437, 36.694630, 31.331020>,  <31.867201, 36.907204, 31.351267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205437, 36.694630, 31.331020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062932, 0.193386, -0.979102,
		0.530114, 0.824732, 0.196969,
		0.845588, -0.531432, -0.050615,
		32.459114, 36.535202, 31.315836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382668, 37.324532, 31.109993>,  <31.867201, 36.907204, 31.351267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382668, 37.324532, 31.109993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.514118, 36.957409, 31.020876>,  <32.592987, 36.737137, 30.967405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.514118, 36.957409, 31.020876>,  <32.382668, 37.324532, 31.109993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514118, 36.957409, 31.020876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311248, 0.327958, -0.891946,
		0.891700, 0.223773, 0.393442,
		0.328626, -0.917806, -0.222792,
		32.612705, 36.682068, 30.954039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046474, 37.478451, 30.829643>,  <32.382668, 37.324532, 31.109993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046474, 37.478451, 30.829643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952705, 37.106445, 30.716423>,  <32.896442, 36.883244, 30.648491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952705, 37.106445, 30.716423>,  <33.046474, 37.478451, 30.829643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952705, 37.106445, 30.716423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473831, 0.144923, -0.868609,
		0.848840, -0.337742, 0.406696,
		-0.234426, -0.930015, -0.283049,
		32.882378, 36.827442, 30.631508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718384, 37.099709, 30.519747>,  <33.046474, 37.478451, 30.829643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718384, 37.099709, 30.519747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385876, 36.922367, 30.385624>,  <33.186371, 36.815960, 30.305151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385876, 36.922367, 30.385624>,  <33.718384, 37.099709, 30.519747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385876, 36.922367, 30.385624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319295, 0.112932, -0.940902,
		0.455023, -0.889202, 0.047685,
		-0.831267, -0.443357, -0.335305,
		33.136494, 36.789360, 30.285032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914875, 36.566895, 30.082310>,  <33.718384, 37.099709, 30.519747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914875, 36.566895, 30.082310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535545, 36.615955, 29.965248>,  <33.307949, 36.645390, 29.895012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535545, 36.615955, 29.965248>,  <33.914875, 36.566895, 30.082310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535545, 36.615955, 29.965248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306072, 0.110241, -0.945604,
		-0.083715, -0.986308, -0.142083,
		-0.948321, 0.122649, -0.292653,
		33.251049, 36.652748, 29.877453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855270, 36.207123, 29.470171>,  <33.914875, 36.566895, 30.082310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855270, 36.207123, 29.470171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523399, 36.429943, 29.455553>,  <33.324276, 36.563633, 29.446783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523399, 36.429943, 29.455553>,  <33.855270, 36.207123, 29.470171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523399, 36.429943, 29.455553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038318, -0.008481, -0.999230,
		-0.556930, -0.830436, -0.014309,
		-0.829675, 0.557049, -0.036544,
		33.274498, 36.597057, 29.444590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393497, 35.863514, 29.037064>,  <33.855270, 36.207123, 29.470171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393497, 35.863514, 29.037064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277412, 36.245640, 29.014616>,  <33.207760, 36.474915, 29.001148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277412, 36.245640, 29.014616>,  <33.393497, 35.863514, 29.037064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277412, 36.245640, 29.014616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129947, -0.018759, -0.991343,
		-0.948097, -0.294997, -0.118696,
		-0.290217, 0.955314, -0.056119,
		33.190346, 36.532234, 28.997780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842190, 35.977570, 28.541998>,  <33.393497, 35.863514, 29.037064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842190, 35.977570, 28.541998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040474, 36.324074, 28.566893>,  <33.159443, 36.531975, 28.581829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040474, 36.324074, 28.566893>,  <32.842190, 35.977570, 28.541998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040474, 36.324074, 28.566893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125845, -0.000738, -0.992050,
		-0.859324, 0.499599, -0.109380,
		0.495708, 0.866257, 0.062238,
		33.189186, 36.583950, 28.585564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522091, 36.336987, 27.982731>,  <32.842190, 35.977570, 28.541998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522091, 36.336987, 27.982731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867535, 36.512291, 28.082415>,  <33.074802, 36.617474, 28.142225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867535, 36.512291, 28.082415>,  <32.522091, 36.336987, 27.982731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867535, 36.512291, 28.082415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244910, 0.067382, -0.967202,
		-0.440678, 0.896319, -0.049142,
		0.863610, 0.438260, 0.249211,
		33.126617, 36.643768, 28.157179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563248, 36.882275, 27.470943>,  <32.522091, 36.336987, 27.982731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563248, 36.882275, 27.470943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938213, 36.846832, 27.605642>,  <33.163193, 36.825565, 27.686462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938213, 36.846832, 27.605642>,  <32.563248, 36.882275, 27.470943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938213, 36.846832, 27.605642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348173, 0.252671, -0.902736,
		-0.005097, 0.963487, 0.267708,
		0.937416, -0.088607, 0.336748,
		33.219437, 36.820251, 27.706667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893360, 37.545094, 27.269175>,  <32.563248, 36.882275, 27.470943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893360, 37.545094, 27.269175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173958, 37.267078, 27.332199>,  <33.342316, 37.100269, 27.370014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173958, 37.267078, 27.332199>,  <32.893360, 37.545094, 27.269175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173958, 37.267078, 27.332199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366826, 0.162592, -0.915971,
		0.611017, 0.700347, 0.369016,
		0.701496, -0.695038, 0.157559,
		33.384407, 37.058567, 27.379467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484184, 37.943340, 27.358545>,  <32.893360, 37.545094, 27.269175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484184, 37.943340, 27.358545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601089, 37.575497, 27.253542>,  <33.671230, 37.354790, 27.190540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601089, 37.575497, 27.253542>,  <33.484184, 37.943340, 27.358545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601089, 37.575497, 27.253542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362232, 0.360488, -0.859556,
		0.885083, 0.156126, 0.438466,
		0.292261, -0.919605, -0.262508,
		33.688766, 37.299614, 27.174789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257202, 37.966473, 27.183386>,  <33.484184, 37.943340, 27.358545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257202, 37.966473, 27.183386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129307, 37.626129, 27.016624>,  <34.052570, 37.421925, 26.916569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129307, 37.626129, 27.016624>,  <34.257202, 37.966473, 27.183386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129307, 37.626129, 27.016624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448128, 0.251880, -0.857752,
		0.834833, -0.461085, 0.300756,
		-0.319742, -0.850857, -0.416903,
		34.033382, 37.370872, 26.891554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863029, 37.714634, 26.854364>,  <34.257202, 37.966473, 27.183386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863029, 37.714634, 26.854364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533268, 37.550537, 26.698383>,  <34.335411, 37.452080, 26.604795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533268, 37.550537, 26.698383>,  <34.863029, 37.714634, 26.854364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533268, 37.550537, 26.698383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304551, 0.259207, -0.916548,
		0.477086, -0.874364, -0.088751,
		-0.824401, -0.410243, -0.389953,
		34.285946, 37.427464, 26.581398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130215, 37.376453, 26.272760>,  <34.863029, 37.714634, 26.854364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130215, 37.376453, 26.272760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739868, 37.437473, 26.210251>,  <34.505661, 37.474083, 26.172745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739868, 37.437473, 26.210251>,  <35.130215, 37.376453, 26.272760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739868, 37.437473, 26.210251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213398, 0.514068, -0.830780,
		-0.046397, -0.844076, -0.534213,
		-0.975863, 0.152545, -0.156273,
		34.447109, 37.483238, 26.163368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054699, 37.055042, 25.580997>,  <35.130215, 37.376453, 26.272760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054699, 37.055042, 25.580997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737583, 37.292824, 25.634832>,  <34.547314, 37.435493, 25.667133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737583, 37.292824, 25.634832>,  <35.054699, 37.055042, 25.580997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737583, 37.292824, 25.634832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067176, 0.304690, -0.950079,
		-0.605783, -0.744171, -0.281488,
		-0.792789, 0.594452, 0.134586,
		34.499748, 37.471161, 25.675209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687809, 37.015446, 24.945078>,  <35.054699, 37.055042, 25.580997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687809, 37.015446, 24.945078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529259, 37.331932, 25.131353>,  <34.434128, 37.521824, 25.243118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529259, 37.331932, 25.131353>,  <34.687809, 37.015446, 24.945078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529259, 37.331932, 25.131353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276609, 0.380747, -0.882337,
		-0.875428, -0.478551, 0.067938,
		-0.396376, 0.791215, 0.465688,
		34.410347, 37.569298, 25.271059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037495, 37.246250, 24.546227>,  <34.687809, 37.015446, 24.945078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037495, 37.246250, 24.546227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182533, 37.551987, 24.759506>,  <34.269558, 37.735428, 24.887474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182533, 37.551987, 24.759506>,  <34.037495, 37.246250, 24.546227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182533, 37.551987, 24.759506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221502, 0.626424, -0.747349,
		-0.905240, 0.152882, 0.396444,
		0.362598, 0.764343, 0.533200,
		34.291313, 37.781288, 24.919466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558125, 37.731659, 24.492447>,  <34.037495, 37.246250, 24.546227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558125, 37.731659, 24.492447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883915, 37.940994, 24.592644>,  <34.079391, 38.066593, 24.652761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883915, 37.940994, 24.592644>,  <33.558125, 37.731659, 24.492447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883915, 37.940994, 24.592644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215638, 0.673859, -0.706692,
		-0.538632, 0.521570, 0.661695,
		0.814479, 0.523334, 0.250492,
		34.128258, 38.097996, 24.667791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439537, 38.512333, 24.360804>,  <33.558125, 37.731659, 24.492447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439537, 38.512333, 24.360804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839237, 38.507885, 24.375635>,  <34.079056, 38.505215, 24.384533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839237, 38.507885, 24.375635>,  <33.439537, 38.512333, 24.360804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839237, 38.507885, 24.375635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032676, 0.755891, -0.653882,
		-0.020754, 0.654603, 0.755688,
		0.999250, -0.011122, 0.037078,
		34.139011, 38.504547, 24.386759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593662, 39.235352, 24.358177>,  <33.439537, 38.512333, 24.360804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593662, 39.235352, 24.358177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919132, 39.034161, 24.241592>,  <34.114414, 38.913448, 24.171640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919132, 39.034161, 24.241592>,  <33.593662, 39.235352, 24.358177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919132, 39.034161, 24.241592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250040, 0.755443, -0.605628,
		0.524801, 0.419906, 0.740448,
		0.813673, -0.502975, -0.291464,
		34.163235, 38.883266, 24.154154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058666, 39.756969, 24.250326>,  <33.593662, 39.235352, 24.358177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058666, 39.756969, 24.250326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219479, 39.439152, 24.068312>,  <34.315968, 39.248459, 23.959103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219479, 39.439152, 24.068312>,  <34.058666, 39.756969, 24.250326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219479, 39.439152, 24.068312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310178, 0.585771, -0.748774,
		0.861485, 0.159891, 0.481952,
		0.402036, -0.794549, -0.455038,
		34.340088, 39.200787, 23.931801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613926, 40.038116, 23.951185>,  <34.058666, 39.756969, 24.250326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613926, 40.038116, 23.951185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564522, 39.693344, 23.754486>,  <34.534878, 39.486481, 23.636467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564522, 39.693344, 23.754486>,  <34.613926, 40.038116, 23.951185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564522, 39.693344, 23.754486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286190, 0.443550, -0.849329,
		0.950179, -0.245636, 0.191893,
		-0.123511, -0.861932, -0.491750,
		34.527470, 39.434765, 23.606960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220539, 39.808048, 23.558470>,  <34.613926, 40.038116, 23.951185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220539, 39.808048, 23.558470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892002, 39.667271, 23.378899>,  <34.694881, 39.582806, 23.271156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892002, 39.667271, 23.378899>,  <35.220539, 39.808048, 23.558470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892002, 39.667271, 23.378899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295101, 0.411344, -0.862387,
		0.488173, -0.840793, -0.233996,
		-0.821342, -0.351941, -0.448926,
		34.645599, 39.561687, 23.244221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802658, 39.416630, 23.683235>,  <35.220539, 39.808048, 23.558470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802658, 39.416630, 23.683235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188557, 39.504295, 23.741520>,  <36.420097, 39.556896, 23.776491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188557, 39.504295, 23.741520>,  <35.802658, 39.416630, 23.683235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188557, 39.504295, 23.741520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158648, 0.042543, 0.986418,
		0.209989, -0.974760, 0.075814,
		0.964746, 0.219164, 0.145711,
		36.477982, 39.570045, 23.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018299, 38.887985, 24.143751>,  <35.802658, 39.416630, 23.683235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018299, 38.887985, 24.143751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284424, 39.183823, 24.184469>,  <36.444099, 39.361324, 24.208900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284424, 39.183823, 24.184469>,  <36.018299, 38.887985, 24.143751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284424, 39.183823, 24.184469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010565, -0.145662, 0.989278,
		0.746493, -0.657101, -0.104724,
		0.665309, 0.739595, 0.101794,
		36.484016, 39.405701, 24.215008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559902, 38.600330, 24.583298>,  <36.018299, 38.887985, 24.143751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559902, 38.600330, 24.583298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582294, 38.998173, 24.618242>,  <36.595730, 39.236877, 24.639210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582294, 38.998173, 24.618242>,  <36.559902, 38.600330, 24.583298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582294, 38.998173, 24.618242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123523, -0.093725, 0.987906,
		0.990761, -0.044517, -0.128103,
		0.055985, 0.994602, 0.087361,
		36.599091, 39.296555, 24.644451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210281, 38.711361, 24.908615>,  <36.559902, 38.600330, 24.583298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210281, 38.711361, 24.908615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970345, 39.025387, 24.970390>,  <36.826382, 39.213802, 25.007456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970345, 39.025387, 24.970390>,  <37.210281, 38.711361, 24.908615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970345, 39.025387, 24.970390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056067, -0.151302, 0.986896,
		0.798149, 0.600645, 0.046741,
		-0.599846, 0.785069, 0.154438,
		36.790390, 39.260906, 25.016722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632507, 39.135998, 25.307747>,  <37.210281, 38.711361, 24.908615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632507, 39.135998, 25.307747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289185, 39.322834, 25.392725>,  <37.083191, 39.434937, 25.443712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289185, 39.322834, 25.392725>,  <37.632507, 39.135998, 25.307747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289185, 39.322834, 25.392725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220624, -0.037873, 0.974623,
		0.463285, 0.883397, -0.070545,
		-0.858308, 0.467093, 0.212444,
		37.031693, 39.462963, 25.456459>
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
