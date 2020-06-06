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
	<24.134327, 34.860069, 35.539593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409386, 34.808590, 35.253773>,  <24.574421, 34.777702, 35.082283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409386, 34.808590, 35.253773>,  <24.134327, 34.860069, 35.539593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409386, 34.808590, 35.253773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577705, -0.499126, 0.645857,
		-0.439768, -0.856919, -0.268874,
		0.687649, -0.128697, -0.714546,
		24.615681, 34.769981, 35.039410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.353313, 34.055271, 35.476929>,  <24.134327, 34.860069, 35.539593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.353313, 34.055271, 35.476929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625181, 34.334850, 35.387913>,  <24.788301, 34.502598, 35.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625181, 34.334850, 35.387913>,  <24.353313, 34.055271, 35.476929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625181, 34.334850, 35.387913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612428, -0.373748, 0.696595,
		0.403711, -0.609741, -0.682080,
		0.679668, 0.698948, -0.222536,
		24.829082, 34.544537, 35.321152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854139, 33.749008, 36.007248>,  <24.353313, 34.055271, 35.476929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854139, 33.749008, 36.007248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770893, 33.503117, 35.702934>,  <24.720945, 33.355579, 35.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770893, 33.503117, 35.702934>,  <24.854139, 33.749008, 36.007248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770893, 33.503117, 35.702934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379274, 0.666239, -0.642088,
		0.901577, -0.422173, 0.094499,
		-0.208113, -0.614732, -0.760785,
		24.708460, 33.318695, 35.474697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446009, 33.592545, 35.749001>,  <24.854139, 33.749008, 36.007248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446009, 33.592545, 35.749001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143627, 33.583736, 35.487297>,  <24.962198, 33.578449, 35.330276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143627, 33.583736, 35.487297>,  <25.446009, 33.592545, 35.749001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143627, 33.583736, 35.487297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449745, 0.708751, -0.543508,
		0.475675, -0.705115, -0.525877,
		-0.755952, -0.022023, -0.654257,
		24.916842, 33.577129, 35.291019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793383, 33.392666, 35.198307>,  <25.446009, 33.592545, 35.749001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793383, 33.392666, 35.198307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474703, 33.631313, 35.159706>,  <25.283495, 33.774502, 35.136547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474703, 33.631313, 35.159706>,  <25.793383, 33.392666, 35.198307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474703, 33.631313, 35.159706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599631, 0.760332, -0.249674,
		-0.075588, -0.256780, -0.963510,
		-0.796699, 0.596623, -0.096501,
		25.235693, 33.810299, 35.130756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520916, 33.637505, 34.514736>,  <25.793383, 33.392666, 35.198307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520916, 33.637505, 34.514736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460707, 33.916611, 34.794872>,  <25.424582, 34.084072, 34.962952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460707, 33.916611, 34.794872>,  <25.520916, 33.637505, 34.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460707, 33.916611, 34.794872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696214, 0.577761, -0.426002,
		-0.701875, 0.423462, -0.572757,
		-0.150521, 0.697762, 0.700337,
		25.415550, 34.125938, 35.004974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251780, 34.436481, 34.418621>,  <25.520916, 33.637505, 34.514736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251780, 34.436481, 34.418621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509336, 34.416306, 34.724003>,  <25.663872, 34.404198, 34.907230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509336, 34.416306, 34.724003>,  <25.251780, 34.436481, 34.418621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509336, 34.416306, 34.724003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635945, 0.590085, -0.497367,
		-0.425412, 0.805764, 0.412032,
		0.643894, -0.050444, 0.763450,
		25.702505, 34.401173, 34.953037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456003, 35.023052, 34.530190>,  <25.251780, 34.436481, 34.418621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456003, 35.023052, 34.530190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765665, 34.835415, 34.700191>,  <25.951462, 34.722832, 34.802193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765665, 34.835415, 34.700191>,  <25.456003, 35.023052, 34.530190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765665, 34.835415, 34.700191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632208, 0.606480, -0.482177,
		-0.031572, 0.641973, 0.766077,
		0.774155, -0.469097, 0.425008,
		25.997911, 34.694687, 34.827694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856007, 35.485062, 34.825832>,  <25.456003, 35.023052, 34.530190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856007, 35.485062, 34.825832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076937, 35.169243, 34.718830>,  <26.209496, 34.979752, 34.654629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076937, 35.169243, 34.718830>,  <25.856007, 35.485062, 34.825832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076937, 35.169243, 34.718830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653797, 0.609353, -0.448596,
		0.517191, 0.072877, 0.852762,
		0.552326, -0.789542, -0.267505,
		26.242634, 34.932381, 34.638580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437977, 35.609226, 35.096233>,  <25.856007, 35.485062, 34.825832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437977, 35.609226, 35.096233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521835, 35.346699, 34.806324>,  <26.572151, 35.189182, 34.632378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521835, 35.346699, 34.806324>,  <26.437977, 35.609226, 35.096233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521835, 35.346699, 34.806324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653762, 0.645280, -0.395232,
		0.727079, -0.390967, 0.564359,
		0.209647, -0.656322, -0.724769,
		26.584730, 35.149803, 34.588894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227373, 35.593903, 35.044079>,  <26.437977, 35.609226, 35.096233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227373, 35.593903, 35.044079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090427, 35.430542, 34.705612>,  <27.008261, 35.332527, 34.502533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090427, 35.430542, 34.705612>,  <27.227373, 35.593903, 35.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090427, 35.430542, 34.705612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589430, 0.607971, -0.531924,
		0.731683, -0.680866, 0.032578,
		-0.342363, -0.408402, -0.846165,
		26.987719, 35.308022, 34.451763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851940, 35.513512, 34.691383>,  <27.227373, 35.593903, 35.044079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851940, 35.513512, 34.691383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525000, 35.562923, 34.466286>,  <27.328835, 35.592571, 34.331226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525000, 35.562923, 34.466286>,  <27.851940, 35.513512, 34.691383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525000, 35.562923, 34.466286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532762, 0.533875, -0.656614,
		0.219319, -0.836491, -0.502178,
		-0.817351, 0.123534, -0.562739,
		27.279795, 35.599983, 34.297462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119194, 35.533215, 34.043045>,  <27.851940, 35.513512, 34.691383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119194, 35.533215, 34.043045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756149, 35.693657, 33.993477>,  <27.538322, 35.789921, 33.963737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756149, 35.693657, 33.993477>,  <28.119194, 35.533215, 34.043045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756149, 35.693657, 33.993477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410426, 0.785732, -0.462792,
		-0.088261, -0.470895, -0.877763,
		-0.907613, 0.401103, -0.123918,
		27.483866, 35.813988, 33.956303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240089, 35.796844, 33.418652>,  <28.119194, 35.533215, 34.043045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240089, 35.796844, 33.418652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901155, 35.962704, 33.551376>,  <27.697796, 36.062218, 33.631012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901155, 35.962704, 33.551376>,  <28.240089, 35.796844, 33.418652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901155, 35.962704, 33.551376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245131, 0.859634, -0.448263,
		-0.471104, -0.298492, -0.830039,
		-0.847332, 0.414646, 0.331807,
		27.646955, 36.087097, 33.650917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840841, 36.075008, 32.774994>,  <28.240089, 35.796844, 33.418652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840841, 36.075008, 32.774994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755009, 36.276424, 33.109753>,  <27.703508, 36.397274, 33.310608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755009, 36.276424, 33.109753>,  <27.840841, 36.075008, 32.774994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755009, 36.276424, 33.109753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290315, 0.851014, -0.437599,
		-0.932562, 0.149063, -0.328800,
		-0.214583, 0.503543, 0.836898,
		27.690634, 36.427486, 33.360821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657402, 36.675327, 32.435417>,  <27.840841, 36.075008, 32.774994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657402, 36.675327, 32.435417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728622, 36.723774, 32.826035>,  <27.771355, 36.752842, 33.060406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728622, 36.723774, 32.826035>,  <27.657402, 36.675327, 32.435417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728622, 36.723774, 32.826035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383397, 0.905434, -0.182198,
		-0.906259, 0.406843, 0.114778,
		0.178050, 0.121113, 0.976540,
		27.782038, 36.760109, 33.118996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338131, 37.316254, 32.582565>,  <27.657402, 36.675327, 32.435417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338131, 37.316254, 32.582565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613535, 37.235863, 32.861294>,  <27.778778, 37.187630, 33.028530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613535, 37.235863, 32.861294>,  <27.338131, 37.316254, 32.582565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613535, 37.235863, 32.861294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361104, 0.928262, -0.089069,
		-0.628934, 0.312951, 0.711691,
		0.688510, -0.200976, 0.696823,
		27.820087, 37.175571, 33.070339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132565, 37.770588, 33.148991>,  <27.338131, 37.316254, 32.582565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132565, 37.770588, 33.148991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515560, 37.663731, 33.192528>,  <27.745358, 37.599617, 33.218651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515560, 37.663731, 33.192528>,  <27.132565, 37.770588, 33.148991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515560, 37.663731, 33.192528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267523, 0.963485, 0.011335,
		-0.107900, 0.018266, 0.993994,
		0.957491, -0.267139, 0.108847,
		27.802807, 37.583588, 33.225182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415661, 38.191936, 33.634750>,  <27.132565, 37.770588, 33.148991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415661, 38.191936, 33.634750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756817, 38.056786, 33.475544>,  <27.961510, 37.975697, 33.380020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756817, 38.056786, 33.475544>,  <27.415661, 38.191936, 33.634750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756817, 38.056786, 33.475544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375898, 0.926466, 0.019013,
		0.362325, -0.165830, 0.917181,
		0.852890, -0.337878, -0.398016,
		28.012684, 37.955421, 33.356140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990990, 38.584278, 33.988243>,  <27.415661, 38.191936, 33.634750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990990, 38.584278, 33.988243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163027, 38.453793, 33.651527>,  <28.266249, 38.375504, 33.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163027, 38.453793, 33.651527>,  <27.990990, 38.584278, 33.988243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163027, 38.453793, 33.651527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531901, 0.844974, -0.055682,
		0.729453, -0.423800, 0.536929,
		0.430093, -0.326210, -0.841788,
		28.292055, 38.355930, 33.398991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710995, 38.696365, 34.068096>,  <27.990990, 38.584278, 33.988243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710995, 38.696365, 34.068096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631386, 38.680229, 33.676430>,  <28.583620, 38.670547, 33.441429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631386, 38.680229, 33.676430>,  <28.710995, 38.696365, 34.068096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631386, 38.680229, 33.676430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620756, 0.767957, -0.157810,
		0.758322, -0.639230, -0.127801,
		-0.199022, -0.040338, -0.979164,
		28.571678, 38.668129, 33.382679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293667, 38.934109, 33.824257>,  <28.710995, 38.696365, 34.068096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293667, 38.934109, 33.824257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025198, 38.967979, 33.529678>,  <28.864117, 38.988300, 33.352932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025198, 38.967979, 33.529678>,  <29.293667, 38.934109, 33.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025198, 38.967979, 33.529678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409298, 0.870628, -0.272914,
		0.618063, -0.484600, -0.619000,
		-0.671173, 0.084678, -0.736449,
		28.823847, 38.993382, 33.308743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648066, 39.298313, 33.425446>,  <29.293667, 38.934109, 33.824257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648066, 39.298313, 33.425446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282246, 39.353260, 33.273273>,  <29.062754, 39.386227, 33.181969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282246, 39.353260, 33.273273>,  <29.648066, 39.298313, 33.425446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282246, 39.353260, 33.273273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271543, 0.905605, -0.325797,
		0.299768, -0.401261, -0.865522,
		-0.914551, 0.137363, -0.380431,
		29.007881, 39.394470, 33.159145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718527, 39.566753, 32.762737>,  <29.648066, 39.298313, 33.425446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718527, 39.566753, 32.762737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349552, 39.671684, 32.876083>,  <29.128168, 39.734642, 32.944092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349552, 39.671684, 32.876083>,  <29.718527, 39.566753, 32.762737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349552, 39.671684, 32.876083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198880, 0.951758, -0.233674,
		-0.330998, -0.159193, -0.930106,
		-0.922435, 0.262326, 0.283370,
		29.072821, 39.750381, 32.961094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402010, 39.888885, 32.170856>,  <29.718527, 39.566753, 32.762737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402010, 39.888885, 32.170856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229568, 40.018173, 32.507824>,  <29.126102, 40.095745, 32.710007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229568, 40.018173, 32.507824>,  <29.402010, 39.888885, 32.170856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229568, 40.018173, 32.507824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209127, 0.944007, -0.255178,
		-0.877732, 0.066165, -0.474561,
		-0.431106, 0.323222, 0.842422,
		29.100237, 40.115139, 32.760551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978275, 40.326317, 32.027004>,  <29.402010, 39.888885, 32.170856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978275, 40.326317, 32.027004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065825, 40.418064, 32.406368>,  <29.118355, 40.473114, 32.633987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065825, 40.418064, 32.406368>,  <28.978275, 40.326317, 32.027004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065825, 40.418064, 32.406368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226582, 0.933463, -0.278042,
		-0.949081, 0.275749, 0.152339,
		0.218873, 0.229368, 0.948412,
		29.131487, 40.486874, 32.690891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551624, 40.872921, 32.228718>,  <28.978275, 40.326317, 32.027004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551624, 40.872921, 32.228718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920723, 40.860516, 32.382381>,  <29.142181, 40.853073, 32.474579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920723, 40.860516, 32.382381>,  <28.551624, 40.872921, 32.228718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920723, 40.860516, 32.382381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155351, 0.942127, -0.297091,
		-0.352709, 0.333819, 0.874163,
		0.922747, -0.031016, 0.384155,
		29.197548, 40.851212, 32.497627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681818, 41.370407, 32.657124>,  <28.551624, 40.872921, 32.228718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681818, 41.370407, 32.657124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032263, 41.284935, 32.484257>,  <29.242529, 41.233650, 32.380535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032263, 41.284935, 32.484257>,  <28.681818, 41.370407, 32.657124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032263, 41.284935, 32.484257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152688, 0.973248, -0.171684,
		0.457292, 0.084427, 0.885300,
		0.876111, -0.213684, -0.432167,
		29.295095, 41.220829, 32.354607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241196, 41.902794, 32.813526>,  <28.681818, 41.370407, 32.657124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241196, 41.902794, 32.813526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312973, 41.755421, 32.448658>,  <29.356039, 41.666996, 32.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312973, 41.755421, 32.448658>,  <29.241196, 41.902794, 32.813526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312973, 41.755421, 32.448658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102216, 0.915219, -0.389778,
		0.978443, 0.163182, 0.126572,
		0.179446, -0.368438, -0.912169,
		29.366806, 41.644890, 32.175007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879963, 42.098248, 32.468086>,  <29.241196, 41.902794, 32.813526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879963, 42.098248, 32.468086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584452, 42.055767, 32.201874>,  <29.407145, 42.030277, 32.042149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584452, 42.055767, 32.201874>,  <29.879963, 42.098248, 32.468086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584452, 42.055767, 32.201874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092889, 0.962036, -0.256628,
		0.667517, -0.251412, -0.700866,
		-0.738778, -0.106201, -0.665529,
		29.362818, 42.023907, 32.002216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214304, 41.470810, 32.836880>,  <29.879963, 42.098248, 32.468086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214304, 41.470810, 32.836880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162567, 41.776985, 33.089031>,  <30.131525, 41.960690, 33.240322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162567, 41.776985, 33.089031>,  <30.214304, 41.470810, 32.836880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162567, 41.776985, 33.089031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750353, -0.340050, 0.566866,
		0.648261, 0.546326, -0.530365,
		-0.129343, 0.765438, 0.630378,
		30.123764, 42.006615, 33.278145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912498, 41.870636, 33.002823>,  <30.214304, 41.470810, 32.836880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912498, 41.870636, 33.002823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635237, 41.918076, 33.287209>,  <30.468880, 41.946541, 33.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635237, 41.918076, 33.287209>,  <30.912498, 41.870636, 33.002823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635237, 41.918076, 33.287209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700967, -0.118801, 0.703229,
		0.167867, 0.985809, -0.000788,
		-0.693156, 0.118601, 0.710963,
		30.427290, 41.953655, 33.500496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090757, 42.527946, 33.379387>,  <30.912498, 41.870636, 33.002823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090757, 42.527946, 33.379387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914625, 42.216526, 33.558262>,  <30.808947, 42.029675, 33.665585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914625, 42.216526, 33.558262>,  <31.090757, 42.527946, 33.379387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914625, 42.216526, 33.558262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660265, 0.056716, 0.748888,
		-0.608407, 0.625019, 0.489073,
		-0.440331, -0.778547, 0.447184,
		30.782526, 41.982964, 33.692417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989567, 42.730812, 34.135445>,  <31.090757, 42.527946, 33.379387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989567, 42.730812, 34.135445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042326, 42.340511, 34.065586>,  <31.073982, 42.106331, 34.023670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042326, 42.340511, 34.065586>,  <30.989567, 42.730812, 34.135445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042326, 42.340511, 34.065586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850446, 0.020876, 0.525648,
		-0.509259, -0.217862, 0.832582,
		0.131900, -0.975756, -0.174648,
		31.081896, 42.047783, 34.013191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129862, 42.338196, 34.789005>,  <30.989567, 42.730812, 34.135445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129862, 42.338196, 34.789005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304375, 42.213375, 34.451420>,  <31.409082, 42.138481, 34.248867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304375, 42.213375, 34.451420>,  <31.129862, 42.338196, 34.789005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304375, 42.213375, 34.451420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896833, 0.074550, 0.436043,
		-0.073151, -0.947135, 0.312385,
		0.436280, -0.312054, -0.843968,
		31.435259, 42.119759, 34.198231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383434, 42.148479, 35.086010>,  <31.129862, 42.338196, 34.789005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383434, 42.148479, 35.086010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166815, 42.237026, 35.410408>,  <30.036842, 42.290154, 35.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166815, 42.237026, 35.410408>,  <30.383434, 42.148479, 35.086010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166815, 42.237026, 35.410408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020798, -0.967941, 0.250315,
		0.840411, 0.118692, 0.528793,
		-0.541551, 0.221365, 0.810999,
		30.004349, 42.303436, 35.653709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498337, 41.656326, 35.685879>,  <30.383434, 42.148479, 35.086010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498337, 41.656326, 35.685879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122057, 41.777874, 35.746208>,  <29.896290, 41.850803, 35.782406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122057, 41.777874, 35.746208>,  <30.498337, 41.656326, 35.685879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122057, 41.777874, 35.746208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247621, -0.918937, 0.306984,
		0.231883, 0.251431, 0.939687,
		-0.940699, 0.303871, 0.150826,
		29.839848, 41.869034, 35.791454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363279, 41.287376, 36.253494>,  <30.498337, 41.656326, 35.685879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363279, 41.287376, 36.253494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014454, 41.415714, 36.105679>,  <29.805159, 41.492718, 36.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014454, 41.415714, 36.105679>,  <30.363279, 41.287376, 36.253494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014454, 41.415714, 36.105679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388486, -0.913070, 0.124026,
		-0.297626, 0.251721, 0.920899,
		-0.872065, 0.320843, -0.369543,
		29.752834, 41.511967, 35.994816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732334, 41.054832, 36.791542>,  <30.363279, 41.287376, 36.253494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732334, 41.054832, 36.791542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531294, 41.140091, 36.456409>,  <29.410669, 41.191246, 36.255329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531294, 41.140091, 36.456409>,  <29.732334, 41.054832, 36.791542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531294, 41.140091, 36.456409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463521, -0.884497, 0.053042,
		-0.729753, 0.415011, 0.543347,
		-0.502602, 0.213145, -0.837831,
		29.380514, 41.204033, 36.205059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021347, 40.858749, 36.922398>,  <29.732334, 41.054832, 36.791542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021347, 40.858749, 36.922398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067816, 40.864899, 36.525154>,  <29.095697, 40.868587, 36.286808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067816, 40.864899, 36.525154>,  <29.021347, 40.858749, 36.922398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067816, 40.864899, 36.525154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314122, -0.947989, -0.051425,
		-0.942248, 0.317933, -0.105301,
		0.116174, 0.015378, -0.993110,
		29.102669, 40.869511, 36.227222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338396, 40.554356, 36.673138>,  <29.021347, 40.858749, 36.922398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338396, 40.554356, 36.673138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626867, 40.521259, 36.398022>,  <28.799950, 40.501404, 36.232952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626867, 40.521259, 36.398022>,  <28.338396, 40.554356, 36.673138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626867, 40.521259, 36.398022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224841, -0.967049, -0.119424,
		-0.655249, 0.240770, -0.716016,
		0.721177, -0.082738, -0.687793,
		28.843220, 40.496437, 36.191685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070683, 40.241600, 36.199615>,  <28.338396, 40.554356, 36.673138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070683, 40.241600, 36.199615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464769, 40.186409, 36.159004>,  <28.701221, 40.153294, 36.134640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464769, 40.186409, 36.159004>,  <28.070683, 40.241600, 36.199615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464769, 40.186409, 36.159004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142881, -0.988819, -0.042689,
		-0.094499, 0.056564, -0.993917,
		0.985218, -0.137978, -0.101525,
		28.760334, 40.145016, 36.128548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007387, 39.590466, 36.014957>,  <28.070683, 40.241600, 36.199615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007387, 39.590466, 36.014957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403162, 39.596672, 36.072609>,  <28.640627, 39.600395, 36.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403162, 39.596672, 36.072609>,  <28.007387, 39.590466, 36.014957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403162, 39.596672, 36.072609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022730, -0.998563, -0.048522,
		0.143168, 0.051286, -0.988369,
		0.989437, 0.015519, 0.144128,
		28.699993, 39.601326, 36.115849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369949, 39.197876, 35.436520>,  <28.007387, 39.590466, 36.014957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369949, 39.197876, 35.436520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635094, 39.195419, 35.736008>,  <28.794180, 39.193947, 35.915699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635094, 39.195419, 35.736008>,  <28.369949, 39.197876, 35.436520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635094, 39.195419, 35.736008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060120, -0.996301, -0.061393,
		0.746327, 0.085708, -0.660038,
		0.662859, -0.006138, 0.748719,
		28.833952, 39.193577, 35.960625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011208, 38.762238, 35.316414>,  <28.369949, 39.197876, 35.436520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011208, 38.762238, 35.316414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927866, 38.773079, 35.707485>,  <28.877861, 38.779583, 35.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927866, 38.773079, 35.707485>,  <29.011208, 38.762238, 35.316414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927866, 38.773079, 35.707485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109079, -0.994024, 0.004312,
		0.971952, -0.105746, 0.210065,
		-0.208354, 0.027105, 0.977678,
		28.865360, 38.781212, 36.000790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224808, 38.110188, 35.505020>,  <29.011208, 38.762238, 35.316414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224808, 38.110188, 35.505020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054739, 38.215645, 35.851368>,  <28.952698, 38.278919, 36.059177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054739, 38.215645, 35.851368>,  <29.224808, 38.110188, 35.505020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054739, 38.215645, 35.851368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047729, -0.961837, 0.269427,
		0.903854, 0.073225, 0.421528,
		-0.425170, 0.263642, 0.865866,
		28.927189, 38.294739, 36.111126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347895, 37.495274, 35.876419>,  <29.224808, 38.110188, 35.505020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347895, 37.495274, 35.876419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093180, 37.709415, 36.098373>,  <28.940351, 37.837902, 36.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093180, 37.709415, 36.098373>,  <29.347895, 37.495274, 35.876419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093180, 37.709415, 36.098373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212041, -0.813503, 0.541527,
		0.741311, 0.227178, 0.631544,
		-0.636786, 0.535353, 0.554888,
		28.902143, 37.870022, 36.264839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613724, 37.434975, 36.589806>,  <29.347895, 37.495274, 35.876419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613724, 37.434975, 36.589806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218470, 37.496063, 36.583241>,  <28.981318, 37.532715, 36.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218470, 37.496063, 36.583241>,  <29.613724, 37.434975, 36.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218470, 37.496063, 36.583241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142510, -0.871656, 0.468943,
		0.057307, 0.465717, 0.883076,
		-0.988133, 0.152721, -0.016417,
		28.922029, 37.541878, 36.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300270, 37.238991, 37.220524>,  <29.613724, 37.434975, 36.589806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300270, 37.238991, 37.220524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020380, 37.204403, 36.936859>,  <28.852446, 37.183651, 36.766663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020380, 37.204403, 36.936859>,  <29.300270, 37.238991, 37.220524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020380, 37.204403, 36.936859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296657, -0.867850, 0.398535,
		-0.649906, 0.489243, 0.581605,
		-0.699726, -0.086473, -0.709158,
		28.810463, 37.178459, 36.724113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814171, 36.723164, 37.515995>,  <29.300270, 37.238991, 37.220524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814171, 36.723164, 37.515995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710886, 36.763199, 37.131638>,  <28.648916, 36.787220, 36.901024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710886, 36.763199, 37.131638>,  <28.814171, 36.723164, 37.515995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710886, 36.763199, 37.131638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298301, -0.954278, -0.019237,
		-0.918882, 0.281668, 0.276259,
		-0.258210, 0.100085, -0.960890,
		28.633423, 36.793224, 36.843369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129305, 36.448700, 37.526592>,  <28.814171, 36.723164, 37.515995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129305, 36.448700, 37.526592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253428, 36.443932, 37.146366>,  <28.327902, 36.441071, 36.918232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253428, 36.443932, 37.146366>,  <28.129305, 36.448700, 37.526592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253428, 36.443932, 37.146366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381519, -0.917423, -0.113041,
		-0.870720, 0.397735, -0.289230,
		0.310306, -0.011920, -0.950562,
		28.346519, 36.440357, 36.861198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552761, 36.021820, 37.155823>,  <28.129305, 36.448700, 37.526592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552761, 36.021820, 37.155823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862635, 36.026093, 36.902920>,  <28.048559, 36.028656, 36.751179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862635, 36.026093, 36.902920>,  <27.552761, 36.021820, 37.155823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862635, 36.026093, 36.902920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242427, -0.918441, -0.312562,
		-0.584029, 0.395413, -0.708913,
		0.774686, 0.010686, -0.632256,
		28.095041, 36.029297, 36.713242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300280, 35.724609, 36.385418>,  <27.552761, 36.021820, 37.155823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300280, 35.724609, 36.385418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698008, 35.687592, 36.406448>,  <27.936644, 35.665382, 36.419067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698008, 35.687592, 36.406448>,  <27.300280, 35.724609, 36.385418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698008, 35.687592, 36.406448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076862, -0.966018, -0.246782,
		0.073627, 0.241339, -0.967644,
		0.994319, -0.092544, 0.052575,
		27.996304, 35.659828, 36.422222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368523, 35.334621, 35.871582>,  <27.300280, 35.724609, 36.385418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368523, 35.334621, 35.871582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708044, 35.295097, 36.079338>,  <27.911757, 35.271381, 36.203991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708044, 35.295097, 36.079338>,  <27.368523, 35.334621, 35.871582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708044, 35.295097, 36.079338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029725, -0.971906, -0.233483,
		0.527869, 0.213621, -0.822022,
		0.848805, -0.098814, 0.519389,
		27.962687, 35.265453, 36.235153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766195, 34.994198, 35.350143>,  <27.368523, 35.334621, 35.871582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766195, 34.994198, 35.350143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931509, 34.931526, 35.708950>,  <28.030697, 34.893921, 35.924236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931509, 34.931526, 35.708950>,  <27.766195, 34.994198, 35.350143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931509, 34.931526, 35.708950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194763, -0.947080, -0.255159,
		0.889530, 0.280160, -0.360898,
		0.413285, -0.156682, 0.897021,
		28.055494, 34.884521, 35.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457571, 34.485851, 35.375847>,  <27.766195, 34.994198, 35.350143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457571, 34.485851, 35.375847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314716, 34.484573, 35.749466>,  <28.229004, 34.483807, 35.973637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314716, 34.484573, 35.749466>,  <28.457571, 34.485851, 35.375847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314716, 34.484573, 35.749466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200558, -0.976932, 0.073348,
		0.912266, 0.213526, 0.349539,
		-0.357137, -0.003190, 0.934047,
		28.207575, 34.483616, 36.029678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910378, 34.053665, 35.766064>,  <28.457571, 34.485851, 35.375847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910378, 34.053665, 35.766064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579163, 34.055119, 35.990326>,  <28.380434, 34.055992, 36.124886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579163, 34.055119, 35.990326>,  <28.910378, 34.053665, 35.766064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579163, 34.055119, 35.990326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301794, -0.839863, 0.451165,
		0.472517, 0.542786, 0.694342,
		-0.828039, 0.003634, 0.560659,
		28.330751, 34.056210, 36.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190277, 33.579166, 36.321022>,  <28.910378, 34.053665, 35.766064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190277, 33.579166, 36.321022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806391, 33.639713, 36.226334>,  <28.576059, 33.676041, 36.169521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806391, 33.639713, 36.226334>,  <29.190277, 33.579166, 36.321022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806391, 33.639713, 36.226334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193272, -0.967147, 0.165146,
		-0.203943, 0.204244, 0.957440,
		-0.959715, 0.151366, -0.236717,
		28.518476, 33.685123, 36.155319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410055, 33.719929, 36.981815>,  <29.190277, 33.579166, 36.321022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410055, 33.719929, 36.981815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742176, 33.851635, 36.801956>,  <29.941448, 33.930656, 36.694038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742176, 33.851635, 36.801956>,  <29.410055, 33.719929, 36.981815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742176, 33.851635, 36.801956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366096, 0.286091, 0.885508,
		0.420206, -0.899854, 0.117000,
		0.830302, 0.329263, -0.449651,
		29.991266, 33.950413, 36.667061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957991, 33.424641, 37.257572>,  <29.410055, 33.719929, 36.981815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957991, 33.424641, 37.257572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117521, 33.755150, 37.098469>,  <30.213240, 33.953453, 37.003006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117521, 33.755150, 37.098469>,  <29.957991, 33.424641, 37.257572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117521, 33.755150, 37.098469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513657, 0.158035, 0.843316,
		0.759667, -0.540651, -0.361390,
		0.398827, 0.826269, -0.397763,
		30.237169, 34.003029, 36.979141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717993, 33.443214, 37.386913>,  <29.957991, 33.424641, 37.257572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717993, 33.443214, 37.386913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580690, 33.814991, 37.332783>,  <30.498308, 34.038055, 37.300304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580690, 33.814991, 37.332783>,  <30.717993, 33.443214, 37.386913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580690, 33.814991, 37.332783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545670, 0.314607, 0.776703,
		0.764473, 0.192767, -0.615159,
		-0.343256, 0.929442, -0.135322,
		30.477713, 34.093822, 37.292187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236591, 33.999889, 37.305065>,  <30.717993, 33.443214, 37.386913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236591, 33.999889, 37.305065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902950, 34.130314, 37.483036>,  <30.702766, 34.208569, 37.589817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902950, 34.130314, 37.483036>,  <31.236591, 33.999889, 37.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902950, 34.130314, 37.483036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516344, 0.177736, 0.837734,
		0.194070, 0.928491, -0.316608,
		-0.834102, 0.326058, 0.444927,
		30.652719, 34.228130, 37.616516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461231, 34.552898, 37.646542>,  <31.236591, 33.999889, 37.305065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461231, 34.552898, 37.646542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142267, 34.394131, 37.828354>,  <30.950890, 34.298870, 37.937439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142267, 34.394131, 37.828354>,  <31.461231, 34.552898, 37.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142267, 34.394131, 37.828354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418618, 0.178651, 0.890417,
		-0.434623, 0.900301, 0.023698,
		-0.797410, -0.396916, 0.454527,
		30.903044, 34.275055, 37.964710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082933, 35.020123, 38.021320>,  <31.461231, 34.552898, 37.646542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082933, 35.020123, 38.021320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070658, 34.665131, 38.205250>,  <31.063292, 34.452137, 38.315609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070658, 34.665131, 38.205250>,  <31.082933, 35.020123, 38.021320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070658, 34.665131, 38.205250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417765, 0.406544, 0.812523,
		-0.908037, 0.217037, 0.358280,
		-0.030691, -0.887478, 0.459827,
		31.061451, 34.398888, 38.343197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848156, 35.124302, 38.713196>,  <31.082933, 35.020123, 38.021320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848156, 35.124302, 38.713196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089697, 34.806091, 38.693214>,  <31.234621, 34.615166, 38.681225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089697, 34.806091, 38.693214>,  <30.848156, 35.124302, 38.713196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089697, 34.806091, 38.693214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556920, 0.376237, 0.740464,
		-0.570265, -0.474952, 0.670237,
		0.603853, -0.795529, -0.049955,
		31.270853, 34.567432, 38.678226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991730, 34.984360, 39.356461>,  <30.848156, 35.124302, 38.713196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991730, 34.984360, 39.356461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288212, 34.785034, 39.176552>,  <31.466101, 34.665440, 39.068607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288212, 34.785034, 39.176552>,  <30.991730, 34.984360, 39.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288212, 34.785034, 39.176552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614787, 0.234884, 0.752905,
		-0.269538, -0.834573, 0.480455,
		0.741205, -0.498314, -0.449775,
		31.510574, 34.635540, 39.041618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287474, 34.579426, 39.904305>,  <30.991730, 34.984360, 39.356461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287474, 34.579426, 39.904305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543041, 34.616234, 39.598804>,  <31.696381, 34.638317, 39.415504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543041, 34.616234, 39.598804>,  <31.287474, 34.579426, 39.904305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543041, 34.616234, 39.598804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691973, 0.365016, 0.622846,
		0.336091, -0.926443, 0.169545,
		0.638917, 0.092012, -0.763752,
		31.734716, 34.643837, 39.369678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960213, 34.335960, 40.137638>,  <31.287474, 34.579426, 39.904305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960213, 34.335960, 40.137638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019325, 34.572517, 39.820545>,  <32.054794, 34.714451, 39.630291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019325, 34.572517, 39.820545>,  <31.960213, 34.335960, 40.137638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019325, 34.572517, 39.820545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695444, 0.507773, 0.508453,
		0.703220, -0.626439, -0.336239,
		0.147782, 0.591389, -0.792729,
		32.063660, 34.749935, 39.582726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676010, 34.342781, 40.084110>,  <31.960213, 34.335960, 40.137638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676010, 34.342781, 40.084110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549995, 34.670345, 39.892220>,  <32.474384, 34.866882, 39.777084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549995, 34.670345, 39.892220>,  <32.676010, 34.342781, 40.084110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549995, 34.670345, 39.892220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729750, 0.532191, 0.429231,
		0.606808, -0.214858, -0.765258,
		-0.315040, 0.818907, -0.479730,
		32.455482, 34.916016, 39.748299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250877, 34.652412, 39.833641>,  <32.676010, 34.342781, 40.084110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250877, 34.652412, 39.833641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003361, 34.965446, 39.806343>,  <32.854851, 35.153267, 39.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003361, 34.965446, 39.806343>,  <33.250877, 34.652412, 39.833641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003361, 34.965446, 39.806343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732899, 0.606405, 0.308433,
		0.282760, 0.140839, -0.948795,
		-0.618794, 0.782584, -0.068246,
		32.817722, 35.200222, 39.785870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666775, 35.221340, 39.475060>,  <33.250877, 34.652412, 39.833641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666775, 35.221340, 39.475060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349800, 35.380104, 39.660324>,  <33.159615, 35.475361, 39.771484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349800, 35.380104, 39.660324>,  <33.666775, 35.221340, 39.475060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349800, 35.380104, 39.660324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583085, 0.715832, 0.384182,
		-0.179061, 0.574500, -0.798678,
		-0.792432, 0.396906, 0.463160,
		33.112072, 35.499176, 39.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801193, 35.936691, 39.338566>,  <33.666775, 35.221340, 39.475060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801193, 35.936691, 39.338566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538792, 35.883926, 39.635822>,  <33.381351, 35.852268, 39.814178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538792, 35.883926, 39.635822>,  <33.801193, 35.936691, 39.338566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538792, 35.883926, 39.635822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467798, 0.701625, 0.537483,
		-0.592306, 0.700231, -0.398561,
		-0.656002, -0.131908, 0.743143,
		33.341991, 35.844353, 39.858765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737473, 36.594818, 39.659706>,  <33.801193, 35.936691, 39.338566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737473, 36.594818, 39.659706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630283, 36.351162, 39.958271>,  <33.565968, 36.204967, 40.137409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630283, 36.351162, 39.958271>,  <33.737473, 36.594818, 39.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630283, 36.351162, 39.958271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424639, 0.620757, 0.659046,
		-0.864795, 0.493566, 0.092317,
		-0.267976, -0.609141, 0.746415,
		33.549892, 36.168419, 40.182194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370098, 36.989079, 40.190384>,  <33.737473, 36.594818, 39.659706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370098, 36.989079, 40.190384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467983, 36.657253, 40.391155>,  <33.526714, 36.458157, 40.511620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467983, 36.657253, 40.391155>,  <33.370098, 36.989079, 40.190384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467983, 36.657253, 40.391155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278393, 0.555988, 0.783183,
		-0.928770, -0.051920, 0.367002,
		0.244711, -0.829567, 0.501931,
		33.541397, 36.408382, 40.541733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217087, 37.142338, 40.882046>,  <33.370098, 36.989079, 40.190384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217087, 37.142338, 40.882046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447754, 36.818943, 40.929043>,  <33.586155, 36.624905, 40.957241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447754, 36.818943, 40.929043>,  <33.217087, 37.142338, 40.882046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447754, 36.818943, 40.929043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386508, 0.396686, 0.832617,
		-0.719768, -0.434731, 0.541242,
		0.576667, -0.808486, 0.117495,
		33.620754, 36.576397, 40.964291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100933, 36.883873, 41.559532>,  <33.217087, 37.142338, 40.882046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100933, 36.883873, 41.559532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457157, 36.725060, 41.470753>,  <33.670891, 36.629772, 41.417484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457157, 36.725060, 41.470753>,  <33.100933, 36.883873, 41.559532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457157, 36.725060, 41.470753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339916, 0.256682, 0.904749,
		-0.302249, -0.881179, 0.363551,
		0.890563, -0.397036, -0.221945,
		33.724327, 36.605949, 41.404171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189129, 36.444130, 42.181007>,  <33.100933, 36.883873, 41.559532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189129, 36.444130, 42.181007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530815, 36.516373, 41.985989>,  <33.735828, 36.559719, 41.868977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530815, 36.516373, 41.985989>,  <33.189129, 36.444130, 42.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530815, 36.516373, 41.985989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447317, 0.222663, 0.866215,
		0.265003, -0.958020, 0.109413,
		0.854213, 0.180607, -0.487545,
		33.787079, 36.570553, 41.839725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684704, 36.194759, 42.575096>,  <33.189129, 36.444130, 42.181007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684704, 36.194759, 42.575096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860798, 36.479664, 42.356419>,  <33.966454, 36.650608, 42.225212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860798, 36.479664, 42.356419>,  <33.684704, 36.194759, 42.575096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860798, 36.479664, 42.356419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562881, 0.255440, 0.786076,
		0.699540, -0.653782, -0.288466,
		0.440236, 0.712264, -0.546692,
		33.992870, 36.693344, 42.192410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407009, 36.061321, 42.608116>,  <33.684704, 36.194759, 42.575096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407009, 36.061321, 42.608116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386898, 36.452759, 42.528297>,  <34.374832, 36.687622, 42.480404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386898, 36.452759, 42.528297>,  <34.407009, 36.061321, 42.608116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386898, 36.452759, 42.528297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612235, 0.188057, 0.767986,
		0.789076, -0.083560, -0.608586,
		-0.050277, 0.978597, -0.199550,
		34.371815, 36.746338, 42.468433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118179, 36.374664, 42.611691>,  <34.407009, 36.061321, 42.608116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118179, 36.374664, 42.611691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857811, 36.672729, 42.669708>,  <34.701591, 36.851566, 42.704521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857811, 36.672729, 42.669708>,  <35.118179, 36.374664, 42.611691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857811, 36.672729, 42.669708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485001, 0.261207, 0.834593,
		0.584019, 0.613601, -0.531428,
		-0.650920, 0.745161, 0.145047,
		34.662537, 36.896278, 42.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464664, 36.794807, 43.066269>,  <35.118179, 36.374664, 42.611691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464664, 36.794807, 43.066269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103176, 36.961796, 43.104218>,  <34.886284, 37.061989, 43.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103176, 36.961796, 43.104218>,  <35.464664, 36.794807, 43.066269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103176, 36.961796, 43.104218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262913, 0.366312, 0.892576,
		0.337874, 0.831585, -0.440804,
		-0.903724, 0.417472, 0.094867,
		34.832058, 37.087036, 43.132679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544346, 37.286415, 43.459370>,  <35.464664, 36.794807, 43.066269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544346, 37.286415, 43.459370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149452, 37.265491, 43.519558>,  <34.912518, 37.252937, 43.555672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149452, 37.265491, 43.519558>,  <35.544346, 37.286415, 43.459370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149452, 37.265491, 43.519558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110040, 0.459048, 0.881570,
		-0.115186, 0.886870, -0.447430,
		-0.987230, -0.052309, 0.150467,
		34.853283, 37.249798, 43.564697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394661, 37.923798, 43.688091>,  <35.544346, 37.286415, 43.459370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394661, 37.923798, 43.688091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102314, 37.682735, 43.816242>,  <34.926907, 37.538097, 43.893131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102314, 37.682735, 43.816242>,  <35.394661, 37.923798, 43.688091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102314, 37.682735, 43.816242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061114, 0.525303, 0.848718,
		-0.679777, 0.600721, -0.420758,
		-0.730868, -0.602653, 0.320377,
		34.883053, 37.501938, 43.912354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864994, 38.388985, 43.998394>,  <35.394661, 37.923798, 43.688091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864994, 38.388985, 43.998394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824646, 38.033333, 44.176952>,  <34.800438, 37.819942, 44.284088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824646, 38.033333, 44.176952>,  <34.864994, 38.388985, 43.998394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824646, 38.033333, 44.176952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153825, 0.457223, 0.875948,
		-0.982936, 0.019693, -0.182893,
		-0.100873, -0.889134, 0.446392,
		34.794384, 37.766594, 44.310871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440952, 38.527355, 44.503105>,  <34.864994, 38.388985, 43.998394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440952, 38.527355, 44.503105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571636, 38.175873, 44.642323>,  <34.650047, 37.964981, 44.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571636, 38.175873, 44.642323>,  <34.440952, 38.527355, 44.503105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571636, 38.175873, 44.642323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017442, 0.362580, 0.931789,
		-0.944964, -0.310493, 0.103131,
		0.326708, -0.878709, 0.348041,
		34.669647, 37.912262, 44.746735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941784, 38.168201, 45.015068>,  <34.440952, 38.527355, 44.503105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941784, 38.168201, 45.015068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306667, 38.026512, 45.097435>,  <34.525597, 37.941498, 45.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306667, 38.026512, 45.097435>,  <33.941784, 38.168201, 45.015068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306667, 38.026512, 45.097435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074124, 0.351606, 0.933209,
		-0.402968, -0.866544, 0.294481,
		0.912207, -0.354225, 0.205917,
		34.580330, 37.920246, 45.159210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904053, 37.761463, 45.669552>,  <33.941784, 38.168201, 45.015068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904053, 37.761463, 45.669552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298847, 37.812107, 45.629890>,  <34.535725, 37.842495, 45.606094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298847, 37.812107, 45.629890>,  <33.904053, 37.761463, 45.669552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298847, 37.812107, 45.629890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063987, 0.256493, 0.964426,
		0.147540, -0.958217, 0.245053,
		0.986984, 0.126611, -0.099156,
		34.594944, 37.850090, 45.600143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270962, 37.445446, 46.182384>,  <33.904053, 37.761463, 45.669552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270962, 37.445446, 46.182384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512897, 37.738697, 46.058006>,  <34.658058, 37.914650, 45.983379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512897, 37.738697, 46.058006>,  <34.270962, 37.445446, 46.182384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512897, 37.738697, 46.058006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055441, 0.350748, 0.934827,
		0.794414, -0.582661, 0.171502,
		0.604841, 0.733132, -0.310942,
		34.694351, 37.958637, 45.964725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838932, 37.418747, 46.657013>,  <34.270962, 37.445446, 46.182384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838932, 37.418747, 46.657013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852039, 37.784527, 46.495667>,  <34.859905, 38.003994, 46.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852039, 37.784527, 46.495667>,  <34.838932, 37.418747, 46.657013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852039, 37.784527, 46.495667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092040, 0.404628, 0.909838,
		0.995216, 0.007311, 0.097426,
		0.032769, 0.914452, -0.403365,
		34.861870, 38.058861, 46.374657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368877, 37.765224, 47.017708>,  <34.838932, 37.418747, 46.657013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368877, 37.765224, 47.017708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175888, 38.072105, 46.848656>,  <35.060093, 38.256233, 46.747223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175888, 38.072105, 46.848656>,  <35.368877, 37.765224, 47.017708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175888, 38.072105, 46.848656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079685, 0.518947, 0.851084,
		0.872278, 0.376949, -0.311514,
		-0.482475, 0.767205, -0.422629,
		35.031147, 38.302265, 46.721867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826778, 38.338257, 47.193821>,  <35.368877, 37.765224, 47.017708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826778, 38.338257, 47.193821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457298, 38.467754, 47.111877>,  <35.235611, 38.545452, 47.062710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457298, 38.467754, 47.111877>,  <35.826778, 38.338257, 47.193821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457298, 38.467754, 47.111877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020536, 0.492122, 0.870284,
		0.382562, 0.808090, -0.447926,
		-0.923702, 0.323739, -0.204862,
		35.180187, 38.564877, 47.050419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853657, 39.126957, 47.244560>,  <35.826778, 38.338257, 47.193821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853657, 39.126957, 47.244560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477715, 39.000912, 47.297295>,  <35.252151, 38.925285, 47.328934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477715, 39.000912, 47.297295>,  <35.853657, 39.126957, 47.244560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477715, 39.000912, 47.297295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106945, 0.638014, 0.762562,
		-0.324404, 0.702598, -0.633339,
		-0.939854, -0.315111, 0.131835,
		35.195759, 38.906380, 47.336845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568794, 39.693768, 47.280483>,  <35.853657, 39.126957, 47.244560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568794, 39.693768, 47.280483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293667, 39.448982, 47.436646>,  <35.128590, 39.302113, 47.530342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293667, 39.448982, 47.436646>,  <35.568794, 39.693768, 47.280483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293667, 39.448982, 47.436646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270488, 0.715169, 0.644491,
		-0.673607, 0.337692, -0.657433,
		-0.687815, -0.611961, 0.390401,
		35.087322, 39.265392, 47.553764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036507, 40.134800, 47.540863>,  <35.568794, 39.693768, 47.280483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036507, 40.134800, 47.540863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916683, 39.786087, 47.695919>,  <34.844791, 39.576859, 47.788952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916683, 39.786087, 47.695919>,  <35.036507, 40.134800, 47.540863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916683, 39.786087, 47.695919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421086, 0.485392, 0.766212,
		-0.856127, 0.066291, -0.512495,
		-0.299554, -0.871780, 0.387643,
		34.826817, 39.524551, 47.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286144, 40.191616, 47.680031>,  <35.036507, 40.134800, 47.540863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286144, 40.191616, 47.680031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399242, 39.900002, 47.929371>,  <34.467102, 39.725033, 48.078976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399242, 39.900002, 47.929371>,  <34.286144, 40.191616, 47.680031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399242, 39.900002, 47.929371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341102, 0.530968, 0.775707,
		-0.896496, -0.431953, -0.098547,
		0.282744, -0.729033, 0.623351,
		34.484066, 39.681293, 48.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669094, 39.884144, 48.089584>,  <34.286144, 40.191616, 47.680031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669094, 39.884144, 48.089584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006840, 39.826168, 48.295898>,  <34.209488, 39.791382, 48.419685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006840, 39.826168, 48.295898>,  <33.669094, 39.884144, 48.089584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006840, 39.826168, 48.295898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380661, 0.515161, 0.767924,
		-0.377015, -0.844750, 0.379812,
		0.844368, -0.144939, 0.515787,
		34.260151, 39.782688, 48.450634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397953, 39.935844, 48.713539>,  <33.669094, 39.884144, 48.089584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397953, 39.935844, 48.713539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785324, 39.911205, 48.810165>,  <34.017746, 39.896423, 48.868141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785324, 39.911205, 48.810165>,  <33.397953, 39.935844, 48.713539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785324, 39.911205, 48.810165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204537, 0.357657, 0.911178,
		-0.142522, -0.931819, 0.333766,
		0.968428, -0.061596, 0.241565,
		34.075851, 39.892727, 48.882633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463642, 39.939701, 49.442490>,  <33.397953, 39.935844, 48.713539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463642, 39.939701, 49.442490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855251, 40.000820, 49.388577>,  <34.090218, 40.037491, 49.356228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855251, 40.000820, 49.388577>,  <33.463642, 39.939701, 49.442490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855251, 40.000820, 49.388577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045571, 0.480561, 0.875776,
		0.198587, -0.863548, 0.463517,
		0.979023, 0.152795, -0.134786,
		34.148960, 40.046658, 49.348141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992233, 39.501644, 49.829475>,  <33.463642, 39.939701, 49.442490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992233, 39.501644, 49.829475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183697, 39.842068, 49.743149>,  <34.298576, 40.046322, 49.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183697, 39.842068, 49.743149>,  <33.992233, 39.501644, 49.829475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183697, 39.842068, 49.743149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124687, 0.177421, 0.976204,
		0.869101, -0.494180, -0.021192,
		0.478660, 0.851063, -0.215815,
		34.327293, 40.097385, 49.678406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544273, 39.522392, 50.323189>,  <33.992233, 39.501644, 49.829475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544273, 39.522392, 50.323189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565819, 39.902683, 50.201061>,  <34.578747, 40.130856, 50.127785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565819, 39.902683, 50.201061>,  <34.544273, 39.522392, 50.323189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565819, 39.902683, 50.201061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000531, 0.305738, 0.952115,
		0.998548, -0.051445, 0.015963,
		0.053863, 0.950725, -0.305322,
		34.581978, 40.187901, 50.109467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176979, 39.801018, 50.560165>,  <34.544273, 39.522392, 50.323189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176979, 39.801018, 50.560165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953197, 40.125263, 50.490978>,  <34.818932, 40.319813, 50.449467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953197, 40.125263, 50.490978>,  <35.176979, 39.801018, 50.560165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953197, 40.125263, 50.490978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235808, 0.355713, 0.904358,
		0.794614, 0.465155, -0.390153,
		-0.559449, 0.810616, -0.172967,
		34.785362, 40.368446, 50.439087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628201, 40.282413, 50.775543>,  <35.176979, 39.801018, 50.560165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628201, 40.282413, 50.775543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267075, 40.454426, 50.775188>,  <35.050400, 40.557632, 50.774975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267075, 40.454426, 50.775188>,  <35.628201, 40.282413, 50.775543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267075, 40.454426, 50.775188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265908, 0.559868, 0.784756,
		0.337961, 0.708255, -0.619805,
		-0.902815, 0.430028, -0.000883,
		34.996231, 40.583435, 50.774925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714756, 40.949764, 50.958157>,  <35.628201, 40.282413, 50.775543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714756, 40.949764, 50.958157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330269, 40.897434, 51.055267>,  <35.099575, 40.866035, 51.113533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330269, 40.897434, 51.055267>,  <35.714756, 40.949764, 50.958157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330269, 40.897434, 51.055267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155499, 0.469931, 0.868899,
		-0.227757, 0.872955, -0.431365,
		-0.961222, -0.130821, 0.242774,
		35.041901, 40.858189, 51.128098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540668, 41.614822, 51.192036>,  <35.714756, 40.949764, 50.958157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540668, 41.614822, 51.192036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276413, 41.354214, 51.341202>,  <35.117859, 41.197849, 51.430702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276413, 41.354214, 51.341202>,  <35.540668, 41.614822, 51.192036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276413, 41.354214, 51.341202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228740, 0.298429, 0.926617,
		-0.715004, 0.697462, -0.048125,
		-0.660642, -0.651526, 0.372915,
		35.078220, 41.158756, 51.453075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243538, 42.004971, 51.664295>,  <35.540668, 41.614822, 51.192036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243538, 42.004971, 51.664295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142513, 41.628368, 51.753544>,  <35.081898, 41.402409, 51.807091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142513, 41.628368, 51.753544>,  <35.243538, 42.004971, 51.664295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142513, 41.628368, 51.753544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005003, 0.231860, 0.972736,
		-0.967568, 0.244558, -0.063269,
		-0.252560, -0.941505, 0.223117,
		35.066746, 41.345917, 51.820480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729961, 41.933563, 52.207211>,  <35.243538, 42.004971, 51.664295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729961, 41.933563, 52.207211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913269, 41.581501, 52.256721>,  <35.023254, 41.370266, 52.286430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913269, 41.581501, 52.256721>,  <34.729961, 41.933563, 52.207211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913269, 41.581501, 52.256721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077709, 0.099054, 0.992043,
		-0.885411, -0.464240, -0.023003,
		0.458268, -0.880153, 0.123779,
		35.050751, 41.317455, 52.293854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294136, 41.499947, 52.644272>,  <34.729961, 41.933563, 52.207211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294136, 41.499947, 52.644272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685940, 41.513622, 52.723660>,  <34.921021, 41.521828, 52.771294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685940, 41.513622, 52.723660>,  <34.294136, 41.499947, 52.644272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685940, 41.513622, 52.723660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192621, 0.446706, 0.873699,
		-0.058785, -0.894027, 0.444140,
		0.979511, 0.034190, 0.198468,
		34.979794, 41.523880, 52.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278893, 41.283524, 53.360184>,  <34.294136, 41.499947, 52.644272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278893, 41.283524, 53.360184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584599, 41.492485, 53.208923>,  <34.768021, 41.617863, 53.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584599, 41.492485, 53.208923>,  <34.278893, 41.283524, 53.360184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584599, 41.492485, 53.208923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082957, 0.661126, 0.745674,
		0.639543, -0.538525, 0.548613,
		0.764266, 0.522402, -0.378144,
		34.813877, 41.649208, 53.095478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096973, 41.334076, 54.058826>,  <34.278893, 41.283524, 53.360184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096973, 41.334076, 54.058826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221478, 41.141262, 54.386429>,  <34.296181, 41.025574, 54.582989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221478, 41.141262, 54.386429>,  <34.096973, 41.334076, 54.058826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221478, 41.141262, 54.386429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630580, -0.539998, -0.557469,
		0.710977, 0.689963, 0.135881,
		0.311257, -0.482031, 0.819002,
		34.314854, 40.996655, 54.632130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823986, 41.402031, 54.121395>,  <34.096973, 41.334076, 54.058826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823986, 41.402031, 54.121395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693043, 41.064793, 54.292053>,  <34.614479, 40.862450, 54.394447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693043, 41.064793, 54.292053>,  <34.823986, 41.402031, 54.121395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693043, 41.064793, 54.292053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603322, -0.533995, -0.592328,
		0.727215, 0.063501, 0.683465,
		-0.327354, -0.843100, 0.426641,
		34.594837, 40.811863, 54.420044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388420, 41.029778, 54.131687>,  <34.823986, 41.402031, 54.121395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388420, 41.029778, 54.131687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098263, 40.759747, 54.185463>,  <34.924168, 40.597729, 54.217728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098263, 40.759747, 54.185463>,  <35.388420, 41.029778, 54.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098263, 40.759747, 54.185463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558993, -0.691712, -0.457233,
		0.401662, -0.256523, 0.879127,
		-0.725393, -0.675079, 0.134439,
		34.880646, 40.557224, 54.225796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605938, 40.378120, 54.342152>,  <35.388420, 41.029778, 54.131687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605938, 40.378120, 54.342152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271015, 40.283268, 54.145100>,  <35.070061, 40.226357, 54.026867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271015, 40.283268, 54.145100>,  <35.605938, 40.378120, 54.342152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271015, 40.283268, 54.145100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436567, -0.832402, -0.341344,
		-0.329125, -0.500877, 0.800499,
		-0.837309, -0.237127, -0.492631,
		35.019821, 40.212132, 53.997311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309921, 39.755203, 54.525642>,  <35.605938, 40.378120, 54.342152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309921, 39.755203, 54.525642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219193, 39.824883, 54.142349>,  <35.164757, 39.866692, 53.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219193, 39.824883, 54.142349>,  <35.309921, 39.755203, 54.525642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219193, 39.824883, 54.142349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510998, -0.816290, -0.269353,
		-0.829116, -0.550749, 0.096134,
		-0.226819, 0.174201, -0.958231,
		35.151146, 39.877144, 53.854881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753059, 39.176598, 54.176857>,  <35.309921, 39.755203, 54.525642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753059, 39.176598, 54.176857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473427, 39.288250, 53.913532>,  <35.305649, 39.355240, 53.755539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473427, 39.288250, 53.913532>,  <35.753059, 39.176598, 54.176857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473427, 39.288250, 53.913532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168532, -0.830401, -0.531066,
		-0.694898, -0.482205, 0.533475,
		-0.699081, 0.279129, -0.658311,
		35.263702, 39.371990, 53.716038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337204, 38.619499, 54.082142>,  <35.753059, 39.176598, 54.176857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337204, 38.619499, 54.082142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314186, 38.826385, 53.740574>,  <35.300377, 38.950520, 53.535633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314186, 38.826385, 53.740574>,  <35.337204, 38.619499, 54.082142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314186, 38.826385, 53.740574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145889, -0.841796, -0.519708,
		-0.987626, -0.154482, -0.027018,
		-0.057542, 0.517219, -0.853917,
		35.296925, 38.981552, 53.484398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390335, 38.086956, 53.703831>,  <35.337204, 38.619499, 54.082142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390335, 38.086956, 53.703831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346344, 38.341095, 53.398090>,  <35.319950, 38.493580, 53.214645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346344, 38.341095, 53.398090>,  <35.390335, 38.086956, 53.703831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346344, 38.341095, 53.398090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071118, -0.762015, -0.643642,
		-0.991387, -0.125143, 0.038618,
		-0.109975, 0.635352, -0.764352,
		35.313351, 38.531700, 53.168785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009747, 37.708733, 53.250900>,  <35.390335, 38.086956, 53.703831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009747, 37.708733, 53.250900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124474, 38.018696, 53.025600>,  <35.193310, 38.204674, 52.890419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124474, 38.018696, 53.025600>,  <35.009747, 37.708733, 53.250900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124474, 38.018696, 53.025600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108487, -0.557901, -0.822786,
		-0.951822, 0.297097, -0.075950,
		0.286820, 0.774906, -0.563254,
		35.210518, 38.251167, 52.856625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547279, 37.756779, 52.768547>,  <35.009747, 37.708733, 53.250900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547279, 37.756779, 52.768547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883720, 37.921612, 52.628410>,  <35.085583, 38.020512, 52.544327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883720, 37.921612, 52.628410>,  <34.547279, 37.756779, 52.768547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883720, 37.921612, 52.628410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053989, -0.580525, -0.812450,
		-0.538181, 0.702265, -0.466031,
		0.841098, 0.412085, -0.350343,
		35.136051, 38.045238, 52.523308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449314, 38.084949, 52.000870>,  <34.547279, 37.756779, 52.768547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449314, 38.084949, 52.000870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834240, 37.996616, 52.064350>,  <35.065197, 37.943619, 52.102440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834240, 37.996616, 52.064350>,  <34.449314, 38.084949, 52.000870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834240, 37.996616, 52.064350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059866, -0.397250, -0.915756,
		0.265271, 0.890745, -0.369059,
		0.962314, -0.220830, 0.158704,
		35.122932, 37.930367, 52.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683006, 38.008057, 51.355568>,  <34.449314, 38.084949, 52.000870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683006, 38.008057, 51.355568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002590, 37.869247, 51.552036>,  <35.194340, 37.785961, 51.669918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002590, 37.869247, 51.552036>,  <34.683006, 38.008057, 51.355568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002590, 37.869247, 51.552036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331175, -0.427853, -0.840991,
		0.501988, 0.834577, -0.226911,
		0.798956, -0.347020, 0.491168,
		35.242275, 37.765141, 51.699387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199673, 38.054768, 50.880623>,  <34.683006, 38.008057, 51.355568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199673, 38.054768, 50.880623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336315, 37.789612, 51.147121>,  <35.418301, 37.630520, 51.307022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336315, 37.789612, 51.147121>,  <35.199673, 38.054768, 50.880623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336315, 37.789612, 51.147121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579625, -0.409429, -0.704558,
		0.739824, 0.626854, 0.244364,
		0.341606, -0.662889, 0.666246,
		35.438797, 37.590744, 51.346996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924892, 38.029911, 50.859245>,  <35.199673, 38.054768, 50.880623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924892, 38.029911, 50.859245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781940, 37.679764, 50.989483>,  <35.696167, 37.469677, 51.067627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781940, 37.679764, 50.989483>,  <35.924892, 38.029911, 50.859245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781940, 37.679764, 50.989483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534600, -0.477594, -0.697214,
		0.765820, -0.075108, 0.638654,
		-0.357384, -0.875364, 0.325598,
		35.674725, 37.417156, 51.087162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355915, 37.661888, 50.608383>,  <35.924892, 38.029911, 50.859245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355915, 37.661888, 50.608383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112015, 37.381985, 50.757267>,  <35.965675, 37.214043, 50.846600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112015, 37.381985, 50.757267>,  <36.355915, 37.661888, 50.608383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112015, 37.381985, 50.757267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417718, -0.682812, -0.599399,
		0.673588, -0.210002, 0.708645,
		-0.609746, -0.699762, 0.372212,
		35.929092, 37.172054, 50.868931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809536, 36.950626, 50.878342>,  <36.355915, 37.661888, 50.608383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809536, 36.950626, 50.878342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433239, 36.916611, 50.747025>,  <36.207462, 36.896202, 50.668236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433239, 36.916611, 50.747025>,  <36.809536, 36.950626, 50.878342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433239, 36.916611, 50.747025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287079, -0.715027, -0.637434,
		-0.180530, -0.693906, 0.697068,
		-0.940741, -0.085038, -0.328289,
		36.151016, 36.891098, 50.648537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895386, 36.271988, 50.619965>,  <36.809536, 36.950626, 50.878342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895386, 36.271988, 50.619965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543419, 36.404305, 50.483540>,  <36.332241, 36.483696, 50.401684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543419, 36.404305, 50.483540>,  <36.895386, 36.271988, 50.619965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543419, 36.404305, 50.483540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044213, -0.657714, -0.751969,
		-0.473069, -0.676748, 0.564108,
		-0.879915, 0.330792, -0.341065,
		36.279446, 36.503544, 50.381218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778503, 35.653522, 50.245384>,  <36.895386, 36.271988, 50.619965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778503, 35.653522, 50.245384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528522, 35.942749, 50.127666>,  <36.378532, 36.116283, 50.057037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528522, 35.942749, 50.127666>,  <36.778503, 35.653522, 50.245384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528522, 35.942749, 50.127666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158722, -0.486794, -0.858976,
		-0.764355, -0.490110, 0.418991,
		-0.624955, 0.723066, -0.294292,
		36.341038, 36.159668, 50.039379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150593, 35.325558, 50.186920>,  <36.778503, 35.653522, 50.245384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150593, 35.325558, 50.186920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130436, 35.668533, 49.982075>,  <36.118340, 35.874317, 49.859165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130436, 35.668533, 49.982075>,  <36.150593, 35.325558, 50.186920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130436, 35.668533, 49.982075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330467, -0.498201, -0.801616,
		-0.942471, 0.128841, 0.308460,
		-0.050394, 0.857436, -0.512118,
		36.115318, 35.925762, 49.828438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465363, 35.362530, 49.896263>,  <36.150593, 35.325558, 50.186920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465363, 35.362530, 49.896263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653091, 35.623425, 49.658165>,  <35.765728, 35.779961, 49.515305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653091, 35.623425, 49.658165>,  <35.465363, 35.362530, 49.896263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653091, 35.623425, 49.658165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449444, -0.403807, -0.796831,
		-0.760090, 0.641502, 0.103629,
		0.469323, 0.652238, -0.595249,
		35.793888, 35.819096, 49.479591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026524, 35.632488, 49.384258>,  <35.465363, 35.362530, 49.896263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026524, 35.632488, 49.384258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386185, 35.687576, 49.218094>,  <35.601982, 35.720631, 49.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386185, 35.687576, 49.218094>,  <35.026524, 35.632488, 49.384258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386185, 35.687576, 49.218094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299238, -0.499176, -0.813191,
		-0.319355, 0.855486, -0.407622,
		0.899149, 0.137721, -0.415409,
		35.655930, 35.728893, 49.093472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950356, 36.005455, 48.684284>,  <35.026524, 35.632488, 49.384258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950356, 36.005455, 48.684284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306526, 35.824310, 48.666138>,  <35.520229, 35.715626, 48.655251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306526, 35.824310, 48.666138>,  <34.950356, 36.005455, 48.684284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306526, 35.824310, 48.666138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206939, -0.314071, -0.926572,
		0.405358, 0.834433, -0.373371,
		0.890428, -0.452858, -0.045365,
		35.573654, 35.688454, 48.652527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278008, 36.127029, 47.913349>,  <34.950356, 36.005455, 48.684284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278008, 36.127029, 47.913349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467274, 35.816132, 48.079247>,  <35.580833, 35.629593, 48.178787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467274, 35.816132, 48.079247>,  <35.278008, 36.127029, 47.913349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467274, 35.816132, 48.079247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090961, -0.511367, -0.854535,
		0.876267, 0.366608, -0.312658,
		0.473162, -0.777241, 0.414746,
		35.609222, 35.582958, 48.203671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759903, 35.946800, 47.339977>,  <35.278008, 36.127029, 47.913349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759903, 35.946800, 47.339977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717495, 35.635353, 47.587368>,  <35.692051, 35.448486, 47.735802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717495, 35.635353, 47.587368>,  <35.759903, 35.946800, 47.339977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717495, 35.635353, 47.587368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060668, -0.625893, -0.777546,
		0.992511, -0.044916, 0.113596,
		-0.106023, -0.778614, 0.618481,
		35.685688, 35.401768, 47.772911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284500, 35.498356, 47.096291>,  <35.759903, 35.946800, 47.339977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284500, 35.498356, 47.096291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035732, 35.271832, 47.312626>,  <35.886471, 35.135918, 47.442429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035732, 35.271832, 47.312626>,  <36.284500, 35.498356, 47.096291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035732, 35.271832, 47.312626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050248, -0.660372, -0.749255,
		0.781464, -0.493156, 0.382246,
		-0.621925, -0.566309, 0.540837,
		35.849155, 35.101940, 47.474876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529518, 34.781048, 47.211563>,  <36.284500, 35.498356, 47.096291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529518, 34.781048, 47.211563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130329, 34.784092, 47.236816>,  <35.890816, 34.785919, 47.251968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130329, 34.784092, 47.236816>,  <36.529518, 34.781048, 47.211563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130329, 34.784092, 47.236816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048822, -0.727799, -0.684050,
		0.040739, -0.685748, 0.726698,
		-0.997976, 0.007611, 0.063129,
		35.830936, 34.786377, 47.255756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263447, 34.071877, 47.136505>,  <36.529518, 34.781048, 47.211563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263447, 34.071877, 47.136505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906013, 34.246666, 47.095406>,  <35.691555, 34.351540, 47.070747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906013, 34.246666, 47.095406>,  <36.263447, 34.071877, 47.136505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906013, 34.246666, 47.095406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294558, -0.743507, -0.600361,
		-0.338736, -0.506209, 0.793102,
		-0.893585, 0.436978, -0.102745,
		35.637939, 34.377758, 47.064583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719006, 33.522976, 47.183353>,  <36.263447, 34.071877, 47.136505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719006, 33.522976, 47.183353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554638, 33.837612, 46.999001>,  <35.456017, 34.026394, 46.888390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554638, 33.837612, 46.999001>,  <35.719006, 33.522976, 47.183353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554638, 33.837612, 46.999001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387425, -0.608288, -0.692740,
		-0.825256, -0.106101, 0.554702,
		-0.410919, 0.786593, -0.460887,
		35.431362, 34.073589, 46.860733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997753, 33.354862, 46.998238>,  <35.719006, 33.522976, 47.183353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997753, 33.354862, 46.998238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084381, 33.640678, 46.732147>,  <35.136356, 33.812168, 46.572491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084381, 33.640678, 46.732147>,  <34.997753, 33.354862, 46.998238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084381, 33.640678, 46.732147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443948, -0.534790, -0.718964,
		-0.869488, 0.451030, 0.201401,
		0.216567, 0.714542, -0.665228,
		35.149353, 33.855042, 46.532578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424938, 33.361198, 46.576878>,  <34.997753, 33.354862, 46.998238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424938, 33.361198, 46.576878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699471, 33.566910, 46.371174>,  <34.864189, 33.690338, 46.247753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699471, 33.566910, 46.371174>,  <34.424938, 33.361198, 46.576878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699471, 33.566910, 46.371174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330011, -0.409884, -0.850346,
		-0.648102, 0.753332, -0.111599,
		0.686335, 0.514282, -0.514255,
		34.905373, 33.721195, 46.216896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114716, 33.500332, 46.007919>,  <34.424938, 33.361198, 46.576878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114716, 33.500332, 46.007919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500004, 33.555149, 45.915466>,  <34.731178, 33.588039, 45.859993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500004, 33.555149, 45.915466>,  <34.114716, 33.500332, 46.007919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500004, 33.555149, 45.915466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159125, -0.402203, -0.901616,
		-0.216524, 0.905235, -0.365604,
		0.963222, 0.137045, -0.231132,
		34.788971, 33.596264, 45.846127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188255, 33.945625, 45.385620>,  <34.114716, 33.500332, 46.007919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188255, 33.945625, 45.385620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528011, 33.734985, 45.399635>,  <34.731865, 33.608601, 45.408043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528011, 33.734985, 45.399635>,  <34.188255, 33.945625, 45.385620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528011, 33.734985, 45.399635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030301, -0.114937, -0.992911,
		0.526898, 0.842305, -0.113583,
		0.849388, -0.526604, 0.035037,
		34.782829, 33.577003, 45.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626251, 34.160969, 44.828217>,  <34.188255, 33.945625, 45.385620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626251, 34.160969, 44.828217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771091, 33.804493, 44.937519>,  <34.857994, 33.590607, 45.003101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771091, 33.804493, 44.937519>,  <34.626251, 34.160969, 44.828217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771091, 33.804493, 44.937519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002774, -0.294182, -0.955745,
		0.932135, 0.345317, -0.108996,
		0.362100, -0.891186, 0.273259,
		34.879723, 33.537136, 45.019497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185307, 34.039577, 44.381485>,  <34.626251, 34.160969, 44.828217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185307, 34.039577, 44.381485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060810, 33.678692, 44.500912>,  <34.986111, 33.462162, 44.572567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060810, 33.678692, 44.500912>,  <35.185307, 34.039577, 44.381485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060810, 33.678692, 44.500912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086835, -0.339852, -0.936461,
		0.946355, -0.265540, 0.184120,
		-0.311242, -0.902213, 0.298563,
		34.967438, 33.408028, 44.590481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444145, 33.605679, 43.900494>,  <35.185307, 34.039577, 44.381485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444145, 33.605679, 43.900494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170971, 33.374146, 44.078732>,  <35.007069, 33.235226, 44.185673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170971, 33.374146, 44.078732>,  <35.444145, 33.605679, 43.900494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170971, 33.374146, 44.078732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173093, -0.464398, -0.868547,
		0.709677, -0.670288, 0.216961,
		-0.682933, -0.578834, 0.445594,
		34.966091, 33.200497, 44.212410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531967, 32.988125, 43.619640>,  <35.444145, 33.605679, 43.900494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531967, 32.988125, 43.619640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155914, 32.967239, 43.754353>,  <34.930283, 32.954708, 43.835178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155914, 32.967239, 43.754353>,  <35.531967, 32.988125, 43.619640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155914, 32.967239, 43.754353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314753, -0.245894, -0.916770,
		0.130681, -0.967889, 0.214739,
		-0.940135, -0.052215, 0.336780,
		34.873875, 32.951576, 43.855385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245937, 32.343132, 43.410824>,  <35.531967, 32.988125, 43.619640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245937, 32.343132, 43.410824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946095, 32.597939, 43.482708>,  <34.766190, 32.750824, 43.525837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946095, 32.597939, 43.482708>,  <35.245937, 32.343132, 43.410824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946095, 32.597939, 43.482708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451473, -0.293566, -0.842610,
		-0.484002, -0.712760, 0.507656,
		-0.749609, 0.637018, 0.179705,
		34.721210, 32.789043, 43.536621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761169, 31.978151, 43.114296>,  <35.245937, 32.343132, 43.410824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761169, 31.978151, 43.114296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615440, 32.347847, 43.159996>,  <34.528004, 32.569664, 43.187416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615440, 32.347847, 43.159996>,  <34.761169, 31.978151, 43.114296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615440, 32.347847, 43.159996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532504, -0.106103, -0.839751,
		-0.764008, -0.366777, 0.530816,
		-0.364323, 0.924238, 0.114247,
		34.506142, 32.625118, 43.194271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073570, 31.849449, 42.926323>,  <34.761169, 31.978151, 43.114296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073570, 31.849449, 42.926323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127796, 32.244411, 42.893696>,  <34.160332, 32.481388, 42.874119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127796, 32.244411, 42.893696>,  <34.073570, 31.849449, 42.926323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127796, 32.244411, 42.893696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495930, -0.003642, -0.868355,
		-0.857715, 0.158169, 0.489190,
		0.135566, 0.987405, -0.081565,
		34.168465, 32.540634, 42.869225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410973, 32.165863, 42.659340>,  <34.073570, 31.849449, 42.926323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410973, 32.165863, 42.659340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709427, 32.422253, 42.587299>,  <33.888500, 32.576088, 42.544075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709427, 32.422253, 42.587299>,  <33.410973, 32.165863, 42.659340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709427, 32.422253, 42.587299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333088, 0.125147, -0.934554,
		-0.576488, 0.757290, 0.306878,
		0.746133, 0.640976, -0.180098,
		33.933266, 32.614544, 42.533268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077820, 32.686878, 42.203602>,  <33.410973, 32.165863, 42.659340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077820, 32.686878, 42.203602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470020, 32.698879, 42.125927>,  <33.705341, 32.706078, 42.079323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470020, 32.698879, 42.125927>,  <33.077820, 32.686878, 42.203602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470020, 32.698879, 42.125927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183418, -0.214694, -0.959304,
		-0.070469, 0.976221, -0.205006,
		0.980506, 0.029999, -0.194186,
		33.764172, 32.707878, 42.067673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113121, 33.132603, 41.565384>,  <33.077820, 32.686878, 42.203602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113121, 33.132603, 41.565384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449432, 32.920994, 41.611401>,  <33.651218, 32.794029, 41.639011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449432, 32.920994, 41.611401>,  <33.113121, 33.132603, 41.565384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449432, 32.920994, 41.611401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047756, -0.284138, -0.957593,
		0.539274, 0.799627, -0.264160,
		0.840775, -0.529021, 0.115042,
		33.701664, 32.762287, 41.645912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548458, 33.337761, 41.022785>,  <33.113121, 33.132603, 41.565384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548458, 33.337761, 41.022785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698502, 32.983898, 41.133545>,  <33.788528, 32.771580, 41.200001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698502, 32.983898, 41.133545>,  <33.548458, 33.337761, 41.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698502, 32.983898, 41.133545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198209, -0.215257, -0.956231,
		0.905542, 0.413574, 0.094603,
		0.375109, -0.884659, 0.276898,
		33.811035, 32.718502, 41.216614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266365, 33.248825, 40.640545>,  <33.548458, 33.337761, 41.022785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266365, 33.248825, 40.640545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125889, 32.891899, 40.753990>,  <34.041603, 32.677742, 40.822060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125889, 32.891899, 40.753990>,  <34.266365, 33.248825, 40.640545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125889, 32.891899, 40.753990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198122, -0.366871, -0.908930,
		0.915104, -0.263014, 0.305628,
		-0.351187, -0.892317, 0.283616,
		34.020535, 32.624203, 40.839073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644749, 32.851185, 40.258442>,  <34.266365, 33.248825, 40.640545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644749, 32.851185, 40.258442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357845, 32.589436, 40.354218>,  <34.185703, 32.432384, 40.411682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357845, 32.589436, 40.354218>,  <34.644749, 32.851185, 40.258442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357845, 32.589436, 40.354218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039001, -0.380784, -0.923841,
		0.695713, -0.653296, 0.298643,
		-0.717260, -0.654376, 0.239437,
		34.142666, 32.393124, 40.426048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853611, 32.357582, 39.928246>,  <34.644749, 32.851185, 40.258442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853611, 32.357582, 39.928246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489685, 32.219849, 40.020916>,  <34.271328, 32.137211, 40.076519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489685, 32.219849, 40.020916>,  <34.853611, 32.357582, 39.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489685, 32.219849, 40.020916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024516, -0.512673, -0.858234,
		0.414291, -0.786513, 0.457996,
		-0.909814, -0.344330, 0.231678,
		34.216740, 32.116550, 40.090420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853809, 31.596672, 39.805573>,  <34.853611, 32.357582, 39.928246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853809, 31.596672, 39.805573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468319, 31.702734, 39.793373>,  <34.237026, 31.766371, 39.786053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468319, 31.702734, 39.793373>,  <34.853809, 31.596672, 39.805573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468319, 31.702734, 39.793373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139830, -0.598920, -0.788507,
		-0.227343, -0.755637, 0.614270,
		-0.963723, 0.265155, -0.030500,
		34.179203, 31.782280, 39.784222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472137, 31.663679, 40.184128>,  <34.853809, 31.596672, 39.805573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472137, 31.663679, 40.184128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864586, 31.732222, 40.148277>,  <36.100056, 31.773346, 40.126766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864586, 31.732222, 40.148277>,  <35.472137, 31.663679, 40.184128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864586, 31.732222, 40.148277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056225, 0.190683, 0.980040,
		0.184983, -0.966587, 0.177453,
		0.981132, 0.171313, -0.089619,
		36.158924, 31.783628, 40.121387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706688, 31.359203, 40.760468>,  <35.472137, 31.663679, 40.184128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706688, 31.359203, 40.760468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022942, 31.578794, 40.652008>,  <36.212692, 31.710548, 40.586933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022942, 31.578794, 40.652008>,  <35.706688, 31.359203, 40.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022942, 31.578794, 40.652008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240288, 0.129128, 0.962074,
		0.563172, -0.825801, -0.029820,
		0.790632, 0.548978, -0.271152,
		36.260132, 31.743488, 40.570663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331902, 31.020195, 41.062782>,  <35.706688, 31.359203, 40.760468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331902, 31.020195, 41.062782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445927, 31.394676, 40.980553>,  <36.514343, 31.619366, 40.931213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445927, 31.394676, 40.980553>,  <36.331902, 31.020195, 41.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445927, 31.394676, 40.980553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346910, 0.099163, 0.932642,
		0.893528, -0.337180, -0.296510,
		0.285065, 0.936203, -0.205576,
		36.531445, 31.675537, 40.918880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993645, 31.067774, 41.362312>,  <36.331902, 31.020195, 41.062782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993645, 31.067774, 41.362312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844498, 31.436756, 41.322227>,  <36.755009, 31.658146, 41.298176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844498, 31.436756, 41.322227>,  <36.993645, 31.067774, 41.362312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844498, 31.436756, 41.322227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428899, 0.267115, 0.862957,
		0.822811, 0.278785, -0.495239,
		-0.372865, 0.922458, -0.100215,
		36.732639, 31.713493, 41.292164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521976, 31.579393, 41.321152>,  <36.993645, 31.067774, 41.362312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521976, 31.579393, 41.321152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195297, 31.769495, 41.452076>,  <36.999290, 31.883556, 41.530628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195297, 31.769495, 41.452076>,  <37.521976, 31.579393, 41.321152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195297, 31.769495, 41.452076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564434, 0.539909, 0.624430,
		0.120046, 0.694718, -0.709194,
		-0.816703, 0.475254, 0.327308,
		36.950287, 31.912071, 41.550270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813938, 32.210163, 41.473026>,  <37.521976, 31.579393, 41.321152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813938, 32.210163, 41.473026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455639, 32.168137, 41.645813>,  <37.240658, 32.142921, 41.749485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455639, 32.168137, 41.645813>,  <37.813938, 32.210163, 41.473026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455639, 32.168137, 41.645813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355539, 0.414003, 0.837969,
		-0.266873, 0.904192, -0.333491,
		-0.895751, -0.105062, 0.431962,
		37.186913, 32.136620, 41.775402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628716, 32.949760, 41.837498>,  <37.813938, 32.210163, 41.473026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628716, 32.949760, 41.837498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415920, 32.652370, 41.999603>,  <37.288242, 32.473938, 42.096867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415920, 32.652370, 41.999603>,  <37.628716, 32.949760, 41.837498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415920, 32.652370, 41.999603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273436, 0.302128, 0.913209,
		-0.801386, 0.596631, 0.042563,
		-0.531990, -0.743471, 0.405261,
		37.256325, 32.429329, 42.121181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435719, 33.220387, 42.374943>,  <37.628716, 32.949760, 41.837498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435719, 33.220387, 42.374943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351589, 32.837040, 42.452202>,  <37.301113, 32.607033, 42.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351589, 32.837040, 42.452202>,  <37.435719, 33.220387, 42.374943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351589, 32.837040, 42.452202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456477, 0.078440, 0.886271,
		-0.864519, 0.274571, 0.420973,
		-0.210323, -0.958362, 0.193149,
		37.288490, 32.549530, 42.510147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147648, 33.285950, 42.974155>,  <37.435719, 33.220387, 42.374943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147648, 33.285950, 42.974155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213570, 32.891434, 42.970856>,  <37.253120, 32.654724, 42.968876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213570, 32.891434, 42.970856>,  <37.147648, 33.285950, 42.974155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213570, 32.891434, 42.970856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206865, 0.026387, 0.978014,
		-0.964390, -0.162884, 0.208378,
		0.164802, -0.986292, -0.008247,
		37.263012, 32.595547, 42.968380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946594, 33.085716, 43.620453>,  <37.147648, 33.285950, 42.974155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946594, 33.085716, 43.620453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221584, 32.831131, 43.480564>,  <37.386578, 32.678379, 43.396633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221584, 32.831131, 43.480564>,  <36.946594, 33.085716, 43.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221584, 32.831131, 43.480564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534181, 0.116953, 0.837241,
		-0.491971, -0.762391, 0.420387,
		0.687471, -0.636461, -0.349718,
		37.427826, 32.640194, 43.375648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013554, 32.612255, 44.106998>,  <36.946594, 33.085716, 43.620453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013554, 32.612255, 44.106998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349411, 32.566463, 43.894627>,  <37.550926, 32.538990, 43.767204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349411, 32.566463, 43.894627>,  <37.013554, 32.612255, 44.106998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349411, 32.566463, 43.894627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538023, 0.041515, 0.841907,
		-0.074339, -0.992558, 0.096450,
		0.839646, -0.114479, -0.530933,
		37.601303, 32.532120, 43.735348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379807, 31.981583, 44.365814>,  <37.013554, 32.612255, 44.106998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379807, 31.981583, 44.365814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647675, 32.224777, 44.195217>,  <37.808395, 32.370693, 44.092857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647675, 32.224777, 44.195217>,  <37.379807, 31.981583, 44.365814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647675, 32.224777, 44.195217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602135, -0.108336, 0.791010,
		0.434716, -0.786523, -0.438638,
		0.669668, 0.607984, -0.426497,
		37.848576, 32.407173, 44.067268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024986, 31.878704, 44.705666>,  <37.379807, 31.981583, 44.365814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024986, 31.878704, 44.705666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093655, 32.228943, 44.525059>,  <38.134853, 32.439087, 44.416695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093655, 32.228943, 44.525059>,  <38.024986, 31.878704, 44.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093655, 32.228943, 44.525059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411326, 0.352752, 0.840462,
		0.895177, -0.329999, -0.299599,
		0.171667, 0.875595, -0.451512,
		38.145157, 32.491623, 44.389606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684166, 32.094807, 44.982399>,  <38.024986, 31.878704, 44.705666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684166, 32.094807, 44.982399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530457, 32.437153, 44.843933>,  <38.438232, 32.642559, 44.760853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530457, 32.437153, 44.843933>,  <38.684166, 32.094807, 44.982399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530457, 32.437153, 44.843933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377791, 0.487897, 0.786912,
		0.842384, 0.171607, -0.510822,
		-0.384269, 0.855866, -0.346165,
		38.415176, 32.693913, 44.740082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138737, 32.568439, 45.176777>,  <38.684166, 32.094807, 44.982399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138737, 32.568439, 45.176777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799263, 32.766472, 45.102348>,  <38.595577, 32.885292, 45.057693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799263, 32.766472, 45.102348>,  <39.138737, 32.568439, 45.176777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799263, 32.766472, 45.102348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085793, 0.476016, 0.875242,
		0.521887, 0.726845, -0.446464,
		-0.848689, 0.495081, -0.186069,
		38.544655, 32.914997, 45.046528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246235, 33.193291, 45.460884>,  <39.138737, 32.568439, 45.176777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246235, 33.193291, 45.460884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848942, 33.177273, 45.417259>,  <38.610565, 33.167664, 45.391087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848942, 33.177273, 45.417259>,  <39.246235, 33.193291, 45.460884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848942, 33.177273, 45.417259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116019, 0.391124, 0.912996,
		0.006097, 0.919466, -0.393121,
		-0.993228, -0.040043, -0.109060,
		38.550972, 33.165260, 45.384541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004951, 33.833862, 45.713451>,  <39.246235, 33.193291, 45.460884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004951, 33.833862, 45.713451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706963, 33.568470, 45.741196>,  <38.528168, 33.409237, 45.757843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706963, 33.568470, 45.741196>,  <39.004951, 33.833862, 45.713451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706963, 33.568470, 45.741196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204834, 0.326466, 0.922747,
		-0.634866, 0.673216, -0.379111,
		-0.744975, -0.663476, 0.069365,
		38.483471, 33.369427, 45.762005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515125, 34.219837, 45.895649>,  <39.004951, 33.833862, 45.713451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515125, 34.219837, 45.895649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400627, 33.848644, 45.991070>,  <38.331928, 33.625927, 46.048321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400627, 33.848644, 45.991070>,  <38.515125, 34.219837, 45.895649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400627, 33.848644, 45.991070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392826, 0.340739, 0.854158,
		-0.873930, 0.150790, -0.462072,
		-0.286244, -0.927987, 0.238548,
		38.314754, 33.570248, 46.062634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807262, 34.242943, 46.089985>,  <38.515125, 34.219837, 45.895649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807262, 34.242943, 46.089985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933620, 33.906734, 46.266041>,  <38.009438, 33.705009, 46.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933620, 33.906734, 46.266041>,  <37.807262, 34.242943, 46.089985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933620, 33.906734, 46.266041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349548, 0.328168, 0.877566,
		-0.882058, -0.431071, -0.190136,
		0.315897, -0.840526, 0.440143,
		38.028389, 33.654575, 46.398083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183212, 34.005470, 46.506710>,  <37.807262, 34.242943, 46.089985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183212, 34.005470, 46.506710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527222, 33.845146, 46.633022>,  <37.733627, 33.748951, 46.708809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527222, 33.845146, 46.633022>,  <37.183212, 34.005470, 46.506710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527222, 33.845146, 46.633022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184641, 0.332478, 0.924860,
		-0.475683, -0.853704, 0.211932,
		0.860019, -0.400809, 0.315782,
		37.785229, 33.724903, 46.727757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140980, 33.780926, 47.132710>,  <37.183212, 34.005470, 46.506710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140980, 33.780926, 47.132710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540390, 33.799511, 47.143936>,  <37.780037, 33.810661, 47.150673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540390, 33.799511, 47.143936>,  <37.140980, 33.780926, 47.132710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540390, 33.799511, 47.143936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045090, 0.422192, 0.905384,
		0.030219, -0.905315, 0.423665,
		0.998526, 0.046463, 0.028063,
		37.839947, 33.813450, 47.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161308, 33.860332, 47.755341>,  <37.140980, 33.780926, 47.132710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161308, 33.860332, 47.755341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537777, 33.934174, 47.642124>,  <37.763660, 33.978477, 47.574196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537777, 33.934174, 47.642124>,  <37.161308, 33.860332, 47.755341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537777, 33.934174, 47.642124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117304, 0.607029, 0.785974,
		0.316903, -0.772941, 0.549667,
		0.941176, 0.184599, -0.283038,
		37.820129, 33.989552, 47.557213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529194, 33.850040, 48.352596>,  <37.161308, 33.860332, 47.755341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529194, 33.850040, 48.352596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770050, 34.042011, 48.097382>,  <37.914566, 34.157192, 47.944252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770050, 34.042011, 48.097382>,  <37.529194, 33.850040, 48.352596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770050, 34.042011, 48.097382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184519, 0.693870, 0.696058,
		0.776775, -0.536856, 0.329252,
		0.602141, 0.479927, -0.638041,
		37.950691, 34.185989, 47.905968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161236, 33.926003, 48.679867>,  <37.529194, 33.850040, 48.352596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161236, 33.926003, 48.679867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119541, 34.211189, 48.402504>,  <38.094524, 34.382301, 48.236088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119541, 34.211189, 48.402504>,  <38.161236, 33.926003, 48.679867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119541, 34.211189, 48.402504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177398, 0.699351, 0.692414,
		0.978604, -0.050836, -0.199375,
		-0.104234, 0.712968, -0.693406,
		38.088272, 34.425079, 48.194481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668259, 34.460114, 48.855534>,  <38.161236, 33.926003, 48.679867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668259, 34.460114, 48.855534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426571, 34.651321, 48.600529>,  <38.281559, 34.766045, 48.447525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426571, 34.651321, 48.600529>,  <38.668259, 34.460114, 48.855534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426571, 34.651321, 48.600529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100340, 0.839346, 0.534257,
		0.790475, 0.258841, -0.555114,
		-0.604220, 0.478017, -0.637510,
		38.245304, 34.794727, 48.409275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968304, 35.144932, 48.707283>,  <38.668259, 34.460114, 48.855534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968304, 35.144932, 48.707283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578259, 35.198486, 48.636589>,  <38.344231, 35.230618, 48.594173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578259, 35.198486, 48.636589>,  <38.968304, 35.144932, 48.707283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578259, 35.198486, 48.636589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042810, 0.895793, 0.442405,
		0.217553, 0.423827, -0.879228,
		-0.975109, 0.133887, -0.176739,
		38.285725, 35.238651, 48.583569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949451, 35.873081, 48.552704>,  <38.968304, 35.144932, 48.707283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949451, 35.873081, 48.552704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587463, 35.737534, 48.655621>,  <38.370270, 35.656204, 48.717373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587463, 35.737534, 48.655621>,  <38.949451, 35.873081, 48.552704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587463, 35.737534, 48.655621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142395, 0.811062, 0.567364,
		-0.400942, 0.476809, -0.782239,
		-0.904969, -0.338867, 0.257294,
		38.315971, 35.635872, 48.732807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513096, 36.388550, 48.331348>,  <38.949451, 35.873081, 48.552704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513096, 36.388550, 48.331348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369247, 36.181862, 48.642136>,  <38.282940, 36.057850, 48.828606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369247, 36.181862, 48.642136>,  <38.513096, 36.388550, 48.331348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369247, 36.181862, 48.642136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011129, 0.834987, 0.550157,
		-0.933033, 0.189200, -0.306028,
		-0.359619, -0.516721, 0.776965,
		38.261360, 36.026844, 48.875225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214413, 36.866531, 48.702000>,  <38.513096, 36.388550, 48.331348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214413, 36.866531, 48.702000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191013, 36.582653, 48.982830>,  <38.176975, 36.412327, 49.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191013, 36.582653, 48.982830>,  <38.214413, 36.866531, 48.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191013, 36.582653, 48.982830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070026, 0.704463, 0.706277,
		-0.995829, -0.007850, -0.090905,
		-0.058495, -0.709697, 0.702075,
		38.173466, 36.369743, 49.193451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665970, 37.157024, 49.109436>,  <38.214413, 36.866531, 48.702000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665970, 37.157024, 49.109436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863037, 36.890472, 49.333298>,  <37.981277, 36.730541, 49.467613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863037, 36.890472, 49.333298>,  <37.665970, 37.157024, 49.109436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863037, 36.890472, 49.333298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053834, 0.665230, 0.744695,
		-0.868549, -0.336761, 0.363613,
		0.492671, -0.666379, 0.559655,
		38.010838, 36.690559, 49.501194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378708, 37.193848, 49.816372>,  <37.665970, 37.157024, 49.109436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378708, 37.193848, 49.816372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739735, 37.026314, 49.856285>,  <37.956348, 36.925793, 49.880234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739735, 37.026314, 49.856285>,  <37.378708, 37.193848, 49.816372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739735, 37.026314, 49.856285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195647, 0.605397, 0.771503,
		-0.383541, -0.676808, 0.628353,
		0.902562, -0.418839, 0.099779,
		38.010502, 36.900661, 49.886219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405048, 37.095615, 50.487038>,  <37.378708, 37.193848, 49.816372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405048, 37.095615, 50.487038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781677, 37.105297, 50.352661>,  <38.007656, 37.111107, 50.272038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781677, 37.105297, 50.352661>,  <37.405048, 37.095615, 50.487038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781677, 37.105297, 50.352661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228442, 0.687034, 0.689782,
		0.247496, -0.726222, 0.641363,
		0.941573, 0.024203, -0.335938,
		38.064148, 37.112556, 50.251881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806049, 37.093079, 51.123001>,  <37.405048, 37.095615, 50.487038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806049, 37.093079, 51.123001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092766, 37.188541, 50.860931>,  <38.264797, 37.245819, 50.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092766, 37.188541, 50.860931>,  <37.806049, 37.093079, 51.123001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092766, 37.188541, 50.860931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281140, 0.760928, 0.584763,
		0.638097, -0.603349, 0.478332,
		0.716793, 0.238658, -0.655172,
		38.307804, 37.260139, 50.664379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309864, 37.158806, 51.574913>,  <37.806049, 37.093079, 51.123001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309864, 37.158806, 51.574913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446991, 37.366699, 51.261898>,  <38.529266, 37.491436, 51.074089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446991, 37.366699, 51.261898>,  <38.309864, 37.158806, 51.574913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446991, 37.366699, 51.261898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129629, 0.798871, 0.587368,
		0.930416, -0.302797, 0.206493,
		0.342815, 0.519729, -0.782535,
		38.549835, 37.522617, 51.027138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806503, 37.622990, 51.821316>,  <38.309864, 37.158806, 51.574913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806503, 37.622990, 51.821316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693932, 37.793411, 51.477390>,  <38.626389, 37.895664, 51.271034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693932, 37.793411, 51.477390>,  <38.806503, 37.622990, 51.821316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693932, 37.793411, 51.477390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095946, 0.879044, 0.466987,
		0.954774, 0.213917, -0.206507,
		-0.281425, 0.426053, -0.859813,
		38.609505, 37.921227, 51.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955048, 38.265347, 51.917065>,  <38.806503, 37.622990, 51.821316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955048, 38.265347, 51.917065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716846, 38.306442, 51.598362>,  <38.573925, 38.331100, 51.407139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716846, 38.306442, 51.598362>,  <38.955048, 38.265347, 51.917065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716846, 38.306442, 51.598362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454773, 0.774462, 0.439763,
		0.662238, 0.624223, -0.414471,
		-0.595502, 0.102738, -0.796758,
		38.538197, 38.337265, 51.359333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055283, 38.987225, 51.691410>,  <38.955048, 38.265347, 51.917065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055283, 38.987225, 51.691410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702217, 38.867470, 51.546482>,  <38.490379, 38.795616, 51.459526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702217, 38.867470, 51.546482>,  <39.055283, 38.987225, 51.691410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702217, 38.867470, 51.546482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447575, 0.770737, 0.453477,
		0.143489, 0.562433, -0.814298,
		-0.882659, -0.299391, -0.362323,
		38.437420, 38.777653, 51.437786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776672, 39.588932, 51.367039>,  <39.055283, 38.987225, 51.691410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776672, 39.588932, 51.367039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461857, 39.352604, 51.438034>,  <38.272968, 39.210808, 51.480633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461857, 39.352604, 51.438034>,  <38.776672, 39.588932, 51.367039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461857, 39.352604, 51.438034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430759, 0.732281, 0.527458,
		-0.441606, 0.338673, -0.830834,
		-0.787039, -0.590818, 0.177493,
		38.225746, 39.175358, 51.491283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431248, 40.271416, 51.276791>,  <38.776672, 39.588932, 51.367039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431248, 40.271416, 51.276791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590725, 40.622383, 51.170071>,  <38.686413, 40.832962, 51.106037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590725, 40.622383, 51.170071>,  <38.431248, 40.271416, 51.276791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590725, 40.622383, 51.170071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208238, -0.369942, -0.905417,
		-0.893128, 0.305429, -0.330206,
		0.398698, 0.877414, -0.266804,
		38.710335, 40.885609, 51.090031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091438, 40.447308, 50.697384>,  <38.431248, 40.271416, 51.276791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091438, 40.447308, 50.697384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450207, 40.623337, 50.680092>,  <38.665466, 40.728954, 50.669716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450207, 40.623337, 50.680092>,  <38.091438, 40.447308, 50.697384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450207, 40.623337, 50.680092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115361, -0.327252, -0.937869,
		-0.426880, 0.836206, -0.344287,
		0.896920, 0.440074, -0.043232,
		38.719284, 40.755360, 50.667122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207298, 40.677658, 49.966751>,  <38.091438, 40.447308, 50.697384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207298, 40.677658, 49.966751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571476, 40.665985, 50.131794>,  <38.789982, 40.658981, 50.230820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571476, 40.665985, 50.131794>,  <38.207298, 40.677658, 49.966751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571476, 40.665985, 50.131794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359113, -0.439247, -0.823468,
		0.205263, 0.897892, -0.389431,
		0.910442, -0.029178, 0.412606,
		38.844608, 40.657230, 50.255577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648590, 41.064514, 49.509827>,  <38.207298, 40.677658, 49.966751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648590, 41.064514, 49.509827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809875, 40.772789, 49.730923>,  <38.906647, 40.597755, 49.863579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809875, 40.772789, 49.730923>,  <38.648590, 41.064514, 49.509827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809875, 40.772789, 49.730923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144445, -0.545721, -0.825424,
		0.903634, 0.412664, -0.114697,
		0.403215, -0.729313, 0.552739,
		38.930840, 40.553993, 49.896744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945324, 40.636604, 48.968346>,  <38.648590, 41.064514, 49.509827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945324, 40.636604, 48.968346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081802, 40.446594, 49.292801>,  <39.163689, 40.332588, 49.487473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081802, 40.446594, 49.292801>,  <38.945324, 40.636604, 48.968346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081802, 40.446594, 49.292801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355187, -0.733789, -0.579133,
		0.870304, 0.485701, -0.081642,
		0.341194, -0.475024, 0.811135,
		39.184162, 40.304089, 49.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583672, 40.433212, 48.761673>,  <38.945324, 40.636604, 48.968346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583672, 40.433212, 48.761673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520763, 40.189865, 49.072842>,  <39.483017, 40.043858, 49.259541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520763, 40.189865, 49.072842>,  <39.583672, 40.433212, 48.761673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520763, 40.189865, 49.072842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270056, -0.784189, -0.558674,
		0.949914, 0.122219, 0.287621,
		-0.157269, -0.608366, 0.777918,
		39.473583, 40.007355, 49.306217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169197, 39.797192, 48.756153>,  <39.583672, 40.433212, 48.761673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169197, 39.797192, 48.756153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861313, 39.666153, 48.975323>,  <39.676582, 39.587528, 49.106823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861313, 39.666153, 48.975323>,  <40.169197, 39.797192, 48.756153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861313, 39.666153, 48.975323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098111, -0.787391, -0.608596,
		0.630805, -0.522202, 0.573925,
		-0.769713, -0.327598, 0.547924,
		39.630398, 39.567875, 49.139702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251083, 39.101868, 48.795433>,  <40.169197, 39.797192, 48.756153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251083, 39.101868, 48.795433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865826, 39.164989, 48.882568>,  <39.634670, 39.202862, 48.934849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865826, 39.164989, 48.882568>,  <40.251083, 39.101868, 48.795433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865826, 39.164989, 48.882568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240853, -0.866535, -0.437159,
		0.119776, -0.473513, 0.872605,
		-0.963143, 0.157809, 0.217837,
		39.576881, 39.212334, 48.947918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021374, 38.484081, 49.112667>,  <40.251083, 39.101868, 48.795433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021374, 38.484081, 49.112667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722851, 38.678696, 48.930981>,  <39.543739, 38.795464, 48.821968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722851, 38.678696, 48.930981>,  <40.021374, 38.484081, 49.112667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722851, 38.678696, 48.930981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255869, -0.839682, -0.479025,
		-0.614460, -0.241278, 0.751148,
		-0.746304, 0.486538, -0.454215,
		39.498959, 38.824657, 48.794716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583698, 37.960232, 48.913433>,  <40.021374, 38.484081, 49.112667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583698, 37.960232, 48.913433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393272, 38.241680, 48.702423>,  <39.279018, 38.410549, 48.575817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393272, 38.241680, 48.702423>,  <39.583698, 37.960232, 48.913433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393272, 38.241680, 48.702423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342947, -0.700913, -0.625386,
		-0.809785, -0.116809, 0.574982,
		-0.476064, 0.703617, -0.527529,
		39.250454, 38.452766, 48.544163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983402, 37.686916, 48.745338>,  <39.583698, 37.960232, 48.913433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983402, 37.686916, 48.745338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045631, 37.975941, 48.475906>,  <39.082970, 38.149353, 48.314247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045631, 37.975941, 48.475906>,  <38.983402, 37.686916, 48.745338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045631, 37.975941, 48.475906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361159, -0.593068, -0.719607,
		-0.919436, 0.355219, 0.168694,
		0.155571, 0.722558, -0.673578,
		39.092304, 38.192707, 48.273834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400742, 37.788837, 48.401405>,  <38.983402, 37.686916, 48.745338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400742, 37.788837, 48.401405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650833, 37.941154, 48.128910>,  <38.800888, 38.032543, 47.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650833, 37.941154, 48.128910>,  <38.400742, 37.788837, 48.401405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650833, 37.941154, 48.128910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402973, -0.590012, -0.699642,
		-0.668358, 0.711957, -0.215442,
		0.625228, 0.380794, -0.681238,
		38.838402, 38.055393, 47.924538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971508, 37.740021, 47.807732>,  <38.400742, 37.788837, 48.401405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971508, 37.740021, 47.807732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344723, 37.774647, 47.668049>,  <38.568653, 37.795422, 47.584240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344723, 37.774647, 47.668049>,  <37.971508, 37.740021, 47.807732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344723, 37.774647, 47.668049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257326, -0.517776, -0.815899,
		-0.251436, 0.851126, -0.460830,
		0.933040, 0.086563, -0.349204,
		38.624634, 37.800617, 47.563286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896927, 37.931801, 47.147797>,  <37.971508, 37.740021, 47.807732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896927, 37.931801, 47.147797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258999, 37.762394, 47.162151>,  <38.476242, 37.660751, 47.170765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258999, 37.762394, 47.162151>,  <37.896927, 37.931801, 47.147797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258999, 37.762394, 47.162151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230761, -0.560602, -0.795283,
		0.356934, 0.711591, -0.605175,
		0.905178, -0.423514, 0.035890,
		38.530552, 37.635342, 47.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083340, 37.930199, 46.459267>,  <37.896927, 37.931801, 47.147797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083340, 37.930199, 46.459267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288719, 37.642616, 46.646660>,  <38.411949, 37.470066, 46.759094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288719, 37.642616, 46.646660>,  <38.083340, 37.930199, 46.459267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288719, 37.642616, 46.646660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067346, -0.578018, -0.813241,
		0.855471, 0.386010, -0.345203,
		0.513453, -0.718952, 0.468481,
		38.442757, 37.426929, 46.787205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528873, 37.775314, 45.952793>,  <38.083340, 37.930199, 46.459267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528873, 37.775314, 45.952793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550213, 37.459263, 46.197041>,  <38.563015, 37.269630, 46.343590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550213, 37.459263, 46.197041>,  <38.528873, 37.775314, 45.952793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550213, 37.459263, 46.197041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286027, -0.573773, -0.767446,
		0.956735, 0.215593, 0.195389,
		0.053347, -0.790129, 0.610615,
		38.566216, 37.222225, 46.380226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020676, 37.393269, 45.659306>,  <38.528873, 37.775314, 45.952793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020676, 37.393269, 45.659306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842117, 37.124596, 45.895805>,  <38.734982, 36.963394, 46.037704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842117, 37.124596, 45.895805>,  <39.020676, 37.393269, 45.659306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842117, 37.124596, 45.895805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167184, -0.711704, -0.682295,
		0.879078, -0.205728, 0.429997,
		-0.446398, -0.671679, 0.591249,
		38.708199, 36.923092, 46.073181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444248, 36.769142, 45.697582>,  <39.020676, 37.393269, 45.659306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444248, 36.769142, 45.697582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077057, 36.639725, 45.789349>,  <38.856743, 36.562077, 45.844410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077057, 36.639725, 45.789349>,  <39.444248, 36.769142, 45.697582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077057, 36.639725, 45.789349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112171, -0.766592, -0.632261,
		0.380432, -0.554669, 0.740009,
		-0.917981, -0.323540, 0.229419,
		38.801662, 36.542664, 45.858173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439377, 36.084656, 45.536686>,  <39.444248, 36.769142, 45.697582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439377, 36.084656, 45.536686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044556, 36.126617, 45.585224>,  <38.807663, 36.151794, 45.614346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044556, 36.126617, 45.585224>,  <39.439377, 36.084656, 45.536686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044556, 36.126617, 45.585224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159893, -0.703880, -0.692089,
		0.012805, -0.702529, 0.711540,
		-0.987051, 0.104908, 0.121343,
		38.748440, 36.158089, 45.621628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193016, 35.450054, 45.597080>,  <39.439377, 36.084656, 45.536686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193016, 35.450054, 45.597080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890656, 35.675915, 45.464554>,  <38.709240, 35.811432, 45.385036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890656, 35.675915, 45.464554>,  <39.193016, 35.450054, 45.597080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890656, 35.675915, 45.464554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211849, -0.689814, -0.692298,
		-0.619455, -0.453123, 0.641057,
		-0.755906, 0.564655, -0.331315,
		38.663883, 35.845310, 45.365158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521378, 35.082726, 45.520584>,  <39.193016, 35.450054, 45.597080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521378, 35.082726, 45.520584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478027, 35.377335, 45.253513>,  <38.452019, 35.554100, 45.093269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478027, 35.377335, 45.253513>,  <38.521378, 35.082726, 45.520584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478027, 35.377335, 45.253513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163908, -0.675680, -0.718743,
		-0.980505, 0.031547, 0.193946,
		-0.108371, 0.736520, -0.667678,
		38.445515, 35.598289, 45.053211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918358, 34.748837, 45.086327>,  <38.521378, 35.082726, 45.520584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918358, 34.748837, 45.086327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035683, 35.068707, 44.876762>,  <38.106075, 35.260628, 44.751022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035683, 35.068707, 44.876762>,  <37.918358, 34.748837, 45.086327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035683, 35.068707, 44.876762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090268, -0.522403, -0.847907,
		-0.951746, 0.295992, -0.081041,
		0.293310, 0.799677, -0.523914,
		38.123676, 35.308609, 44.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619987, 34.653599, 44.428787>,  <37.918358, 34.748837, 45.086327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619987, 34.653599, 44.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897762, 34.934723, 44.367069>,  <38.064426, 35.103397, 44.330036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897762, 34.934723, 44.367069>,  <37.619987, 34.653599, 44.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897762, 34.934723, 44.367069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219257, -0.410921, -0.884912,
		-0.685331, 0.580688, -0.439457,
		0.694440, 0.702812, -0.154297,
		38.106094, 35.145565, 44.320782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526970, 35.089931, 43.680866>,  <37.619987, 34.653599, 44.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526970, 35.089931, 43.680866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910736, 35.094967, 43.793556>,  <38.140995, 35.097988, 43.861172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910736, 35.094967, 43.793556>,  <37.526970, 35.089931, 43.680866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910736, 35.094967, 43.793556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279886, -0.164809, -0.945781,
		0.034523, 0.986245, -0.161644,
		0.959412, 0.012590, 0.281726,
		38.198559, 35.098743, 43.878075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826546, 35.444706, 43.091396>,  <37.526970, 35.089931, 43.680866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826546, 35.444706, 43.091396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124462, 35.263687, 43.287560>,  <38.303211, 35.155075, 43.405258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124462, 35.263687, 43.287560>,  <37.826546, 35.444706, 43.091396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124462, 35.263687, 43.287560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406419, -0.275252, -0.871241,
		0.529259, 0.848199, -0.021082,
		0.744788, -0.452543, 0.490403,
		38.347900, 35.127926, 43.434681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396614, 35.604141, 42.767067>,  <37.826546, 35.444706, 43.091396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396614, 35.604141, 42.767067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561710, 35.293812, 42.957954>,  <38.660767, 35.107613, 43.072487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561710, 35.293812, 42.957954>,  <38.396614, 35.604141, 42.767067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561710, 35.293812, 42.957954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201238, -0.433310, -0.878491,
		0.888340, 0.458623, -0.022718,
		0.412740, -0.775827, 0.477219,
		38.685532, 35.061062, 43.101120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078205, 35.619499, 42.512169>,  <38.396614, 35.604141, 42.767067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078205, 35.619499, 42.512169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992306, 35.249146, 42.636501>,  <38.940765, 35.026932, 42.711102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992306, 35.249146, 42.636501>,  <39.078205, 35.619499, 42.512169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992306, 35.249146, 42.636501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328656, -0.368202, -0.869720,
		0.919710, -0.084616, 0.383370,
		-0.214750, -0.925887, 0.310829,
		38.927879, 34.971378, 42.729752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654251, 35.357784, 42.357628>,  <39.078205, 35.619499, 42.512169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654251, 35.357784, 42.357628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374573, 35.074780, 42.398724>,  <39.206764, 34.904976, 42.423382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374573, 35.074780, 42.398724>,  <39.654251, 35.357784, 42.357628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374573, 35.074780, 42.398724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216496, -0.346487, -0.912730,
		0.681361, -0.615936, 0.395436,
		-0.699197, -0.707509, 0.102736,
		39.164814, 34.862526, 42.429543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939285, 34.719048, 42.092106>,  <39.654251, 35.357784, 42.357628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939285, 34.719048, 42.092106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542454, 34.668991, 42.096401>,  <39.304356, 34.638958, 42.098976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542454, 34.668991, 42.096401>,  <39.939285, 34.719048, 42.092106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542454, 34.668991, 42.096401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051797, -0.485502, -0.872700,
		0.114424, -0.865233, 0.488139,
		-0.992081, -0.125142, 0.010737,
		39.244831, 34.631447, 42.099621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828701, 34.029915, 41.956451>,  <39.939285, 34.719048, 42.092106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828701, 34.029915, 41.956451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490959, 34.224655, 41.866970>,  <39.288315, 34.341499, 41.813282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490959, 34.224655, 41.866970>,  <39.828701, 34.029915, 41.956451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490959, 34.224655, 41.866970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002693, -0.413658, -0.910428,
		-0.535785, -0.769323, 0.347961,
		-0.844351, 0.486856, -0.223703,
		39.237652, 34.370712, 41.799858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455753, 33.559807, 41.494854>,  <39.828701, 34.029915, 41.956451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455753, 33.559807, 41.494854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266853, 33.903973, 41.418262>,  <39.153515, 34.110474, 41.372307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266853, 33.903973, 41.418262>,  <39.455753, 33.559807, 41.494854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266853, 33.903973, 41.418262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079138, -0.257733, -0.962970,
		-0.877907, -0.439607, 0.189805,
		-0.472247, 0.860418, -0.191476,
		39.125179, 34.162098, 41.360821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162533, 33.352062, 41.009640>,  <39.455753, 33.559807, 41.494854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162533, 33.352062, 41.009640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090122, 33.742863, 40.964558>,  <39.046677, 33.977341, 40.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090122, 33.742863, 40.964558>,  <39.162533, 33.352062, 41.009640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090122, 33.742863, 40.964558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076762, -0.128284, -0.988762,
		-0.980479, -0.170338, 0.098219,
		-0.181024, 0.977000, -0.112705,
		39.035816, 34.035961, 40.930748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525883, 33.386272, 40.538990>,  <39.162533, 33.352062, 41.009640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525883, 33.386272, 40.538990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733624, 33.727318, 40.515930>,  <38.858269, 33.931946, 40.502094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733624, 33.727318, 40.515930>,  <38.525883, 33.386272, 40.538990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733624, 33.727318, 40.515930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187132, -0.179297, -0.965833,
		-0.833818, 0.490821, -0.252670,
		0.519354, 0.852612, -0.057653,
		38.889431, 33.983101, 40.498634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271957, 33.746227, 39.953678>,  <38.525883, 33.386272, 40.538990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271957, 33.746227, 39.953678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626011, 33.924049, 40.008678>,  <38.838444, 34.030743, 40.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626011, 33.924049, 40.008678>,  <38.271957, 33.746227, 39.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626011, 33.924049, 40.008678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061052, 0.181986, -0.981404,
		-0.461313, 0.877069, 0.133941,
		0.885135, 0.444557, 0.137499,
		38.891552, 34.057415, 40.049927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282200, 34.195774, 39.485786>,  <38.271957, 33.746227, 39.953678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282200, 34.195774, 39.485786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675694, 34.176128, 39.554909>,  <38.911789, 34.164341, 39.596382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675694, 34.176128, 39.554909>,  <38.282200, 34.195774, 39.485786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675694, 34.176128, 39.554909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179504, 0.230230, -0.956437,
		0.007187, 0.971896, 0.235301,
		0.983731, -0.049112, 0.172805,
		38.970814, 34.161396, 39.606750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590504, 34.633839, 38.998520>,  <38.282200, 34.195774, 39.485786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590504, 34.633839, 38.998520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908611, 34.443367, 39.148613>,  <39.099476, 34.329082, 39.238670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908611, 34.443367, 39.148613>,  <38.590504, 34.633839, 38.998520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908611, 34.443367, 39.148613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442818, 0.033513, -0.895985,
		0.414075, 0.878709, 0.237513,
		0.795270, -0.476180, 0.375232,
		39.147194, 34.300514, 39.261181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179333, 34.926403, 38.718212>,  <38.590504, 34.633839, 38.998520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179333, 34.926403, 38.718212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322021, 34.569958, 38.830406>,  <39.407635, 34.356091, 38.897724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322021, 34.569958, 38.830406>,  <39.179333, 34.926403, 38.718212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322021, 34.569958, 38.830406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654772, 0.024334, -0.755435,
		0.666351, 0.453134, 0.592154,
		0.356723, -0.891110, 0.280484,
		39.429039, 34.302624, 38.914551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924816, 34.996986, 38.815083>,  <39.179333, 34.926403, 38.718212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924816, 34.996986, 38.815083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802467, 34.632492, 38.704746>,  <39.729057, 34.413795, 38.638546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802467, 34.632492, 38.704746>,  <39.924816, 34.996986, 38.815083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802467, 34.632492, 38.704746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345733, 0.163639, -0.923954,
		0.887081, -0.377977, 0.264993,
		-0.305870, -0.911238, -0.275840,
		39.710705, 34.359119, 38.621994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522816, 34.752998, 38.395630>,  <39.924816, 34.996986, 38.815083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522816, 34.752998, 38.395630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207050, 34.528023, 38.297253>,  <40.017590, 34.393036, 38.238228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207050, 34.528023, 38.297253>,  <40.522816, 34.752998, 38.395630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207050, 34.528023, 38.297253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233452, 0.095476, -0.967670,
		0.567735, -0.821309, 0.055932,
		-0.789415, -0.562438, -0.245941,
		39.970226, 34.359291, 38.223469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816212, 34.110626, 37.985432>,  <40.522816, 34.752998, 38.395630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816212, 34.110626, 37.985432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427872, 34.145836, 37.896259>,  <40.194866, 34.166962, 37.842754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427872, 34.145836, 37.896259>,  <40.816212, 34.110626, 37.985432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427872, 34.145836, 37.896259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217997, -0.062286, -0.973960,
		-0.099623, -0.994169, 0.041281,
		-0.970852, 0.088029, -0.222930,
		40.136616, 34.172241, 37.829380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313068, 34.436966, 38.406078>,  <40.816212, 34.110626, 37.985432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313068, 34.436966, 38.406078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205811, 34.150814, 38.664173>,  <41.141457, 33.979122, 38.819031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205811, 34.150814, 38.664173>,  <41.313068, 34.436966, 38.406078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205811, 34.150814, 38.664173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040044, -0.660910, -0.749396,
		0.962547, -0.226781, 0.148570,
		-0.268140, -0.715379, 0.645239,
		41.125370, 33.936199, 38.857746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725048, 33.847588, 38.420403>,  <41.313068, 34.436966, 38.406078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725048, 33.847588, 38.420403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348892, 33.737152, 38.499844>,  <41.123199, 33.670891, 38.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348892, 33.737152, 38.499844>,  <41.725048, 33.847588, 38.420403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348892, 33.737152, 38.499844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109682, -0.798956, -0.591303,
		0.321925, -0.534272, 0.781612,
		-0.940390, -0.276084, 0.198604,
		41.066776, 33.654327, 38.559425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849110, 33.242783, 38.674309>,  <41.725048, 33.847588, 38.420403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849110, 33.242783, 38.674309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509224, 33.314377, 38.475933>,  <41.305294, 33.357334, 38.356907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509224, 33.314377, 38.475933>,  <41.849110, 33.242783, 38.674309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509224, 33.314377, 38.475933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089024, -0.878410, -0.469542,
		-0.519675, -0.443126, 0.730463,
		-0.849713, 0.178981, -0.495937,
		41.254311, 33.368073, 38.327152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190674, 32.622662, 38.769104>,  <41.849110, 33.242783, 38.674309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190674, 32.622662, 38.769104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380009, 32.830521, 38.484592>,  <42.493610, 32.955235, 38.313885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380009, 32.830521, 38.484592>,  <42.190674, 32.622662, 38.769104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380009, 32.830521, 38.484592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237534, -0.852848, -0.465004,
		-0.848250, 0.051151, -0.527120,
		0.473338, 0.519649, -0.711278,
		42.522011, 32.986416, 38.271210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870537, 32.501865, 38.081337>,  <42.190674, 32.622662, 38.769104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870537, 32.501865, 38.081337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257751, 32.596405, 38.047756>,  <42.490078, 32.653130, 38.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257751, 32.596405, 38.047756>,  <41.870537, 32.501865, 38.081337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257751, 32.596405, 38.047756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159435, -0.838224, -0.521499,
		-0.193625, 0.491445, -0.849112,
		0.968034, 0.236353, -0.083948,
		42.548161, 32.667313, 38.022572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001770, 32.418869, 37.409508>,  <41.870537, 32.501865, 38.081337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001770, 32.418869, 37.409508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338619, 32.358276, 37.616539>,  <42.540730, 32.321922, 37.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338619, 32.358276, 37.616539>,  <42.001770, 32.418869, 37.409508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338619, 32.358276, 37.616539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116134, -0.886283, -0.448348,
		0.526634, 0.437672, -0.728766,
		0.842122, -0.151481, 0.517575,
		42.591255, 32.312832, 37.771812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483566, 32.460899, 36.930359>,  <42.001770, 32.418869, 37.409508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483566, 32.460899, 36.930359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603813, 32.215763, 37.222675>,  <42.675961, 32.068680, 37.398064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603813, 32.215763, 37.222675>,  <42.483566, 32.460899, 36.930359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603813, 32.215763, 37.222675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064519, -0.777543, -0.625511,
		0.951561, 0.140888, -0.273281,
		0.300615, -0.612844, 0.730789,
		42.693996, 32.031910, 37.441914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142487, 32.451408, 36.618515>,  <42.483566, 32.460899, 36.930359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142487, 32.451408, 36.618515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362095, 32.212784, 36.384357>,  <43.493862, 32.069611, 36.243862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362095, 32.212784, 36.384357>,  <43.142487, 32.451408, 36.618515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362095, 32.212784, 36.384357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561101, 0.256033, -0.787155,
		0.619467, 0.760632, -0.194163,
		0.549023, -0.596562, -0.585395,
		43.526802, 32.033813, 36.208740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468403, 32.786144, 36.000294>,  <43.142487, 32.451408, 36.618515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468403, 32.786144, 36.000294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452690, 32.402596, 35.887852>,  <43.443264, 32.172466, 35.820389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452690, 32.402596, 35.887852>,  <43.468403, 32.786144, 36.000294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452690, 32.402596, 35.887852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518661, 0.260019, -0.814482,
		0.854077, 0.113803, -0.507545,
		-0.039281, -0.958874, -0.281101,
		43.440907, 32.114933, 35.803520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515827, 32.838783, 35.239147>,  <43.468403, 32.786144, 36.000294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515827, 32.838783, 35.239147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385624, 32.465157, 35.297894>,  <43.307503, 32.240982, 35.333141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385624, 32.465157, 35.297894>,  <43.515827, 32.838783, 35.239147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385624, 32.465157, 35.297894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372009, -0.016291, -0.928086,
		0.869284, -0.356735, -0.342177,
		-0.325507, -0.934063, 0.146870,
		43.287971, 32.184937, 35.341953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749199, 32.349689, 34.626514>,  <43.515827, 32.838783, 35.239147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749199, 32.349689, 34.626514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428852, 32.176163, 34.791641>,  <43.236645, 32.072048, 34.890717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428852, 32.176163, 34.791641>,  <43.749199, 32.349689, 34.626514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428852, 32.176163, 34.791641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466097, 0.018750, -0.884535,
		0.375982, -0.900808, -0.217215,
		-0.800869, -0.433813, 0.412815,
		43.188591, 32.046021, 34.915485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475708, 31.892979, 34.096397>,  <43.749199, 32.349689, 34.626514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475708, 31.892979, 34.096397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166672, 31.940294, 34.345913>,  <42.981251, 31.968683, 34.495621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166672, 31.940294, 34.345913>,  <43.475708, 31.892979, 34.096397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166672, 31.940294, 34.345913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607431, 0.148189, -0.780428,
		-0.184754, -0.981859, -0.042637,
		-0.772588, 0.118288, 0.623790,
		42.934895, 31.975780, 34.533051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917221, 31.562798, 33.673115>,  <43.475708, 31.892979, 34.096397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917221, 31.562798, 33.673115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764629, 31.810459, 33.947670>,  <42.673077, 31.959055, 34.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764629, 31.810459, 33.947670>,  <42.917221, 31.562798, 33.673115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764629, 31.810459, 33.947670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740197, 0.240175, -0.628032,
		-0.553700, -0.747641, 0.366673,
		-0.381477, 0.619152, 0.686387,
		42.650185, 31.996204, 34.153587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245663, 31.469662, 33.574825>,  <42.917221, 31.562798, 33.673115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245663, 31.469662, 33.574825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300243, 31.828053, 33.743874>,  <42.332993, 32.043087, 33.845303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300243, 31.828053, 33.743874>,  <42.245663, 31.469662, 33.574825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300243, 31.828053, 33.743874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609029, 0.412334, -0.677543,
		-0.781323, -0.164934, 0.601939,
		0.136450, 0.895978, 0.422616,
		42.341179, 32.096848, 33.870659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535160, 31.828312, 33.633522>,  <42.245663, 31.469662, 33.574825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535160, 31.828312, 33.633522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799236, 32.128651, 33.641254>,  <41.957684, 32.308853, 33.645893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799236, 32.128651, 33.641254>,  <41.535160, 31.828312, 33.633522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799236, 32.128651, 33.641254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575687, 0.522374, -0.629055,
		-0.482420, 0.404172, 0.777120,
		0.660194, 0.750846, 0.019327,
		41.997295, 32.353905, 33.647053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133553, 32.476841, 33.639980>,  <41.535160, 31.828312, 33.633522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133553, 32.476841, 33.639980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497383, 32.602745, 33.531460>,  <41.715679, 32.678288, 33.466347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497383, 32.602745, 33.531460>,  <41.133553, 32.476841, 33.639980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497383, 32.602745, 33.531460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413475, 0.620456, -0.666388,
		-0.041418, 0.718306, 0.694494,
		0.909573, 0.314756, -0.271304,
		41.770256, 32.697170, 33.450069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923019, 33.160988, 33.509808>,  <41.133553, 32.476841, 33.639980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923019, 33.160988, 33.509808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275291, 33.085236, 33.336128>,  <41.486656, 33.039783, 33.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275291, 33.085236, 33.336128>,  <40.923019, 33.160988, 33.509808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275291, 33.085236, 33.336128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236653, 0.618142, -0.749598,
		0.410355, 0.762914, 0.499571,
		0.880684, -0.189376, -0.434203,
		41.539497, 33.028423, 33.205868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059612, 33.755325, 33.283077>,  <40.923019, 33.160988, 33.509808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059612, 33.755325, 33.283077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276768, 33.491657, 33.074936>,  <41.407063, 33.333458, 32.950050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276768, 33.491657, 33.074936>,  <41.059612, 33.755325, 33.283077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276768, 33.491657, 33.074936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203816, 0.497673, -0.843078,
		0.814698, 0.563753, 0.135831,
		0.542887, -0.659170, -0.520354,
		41.439632, 33.293907, 32.918831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365005, 34.164421, 32.833633>,  <41.059612, 33.755325, 33.283077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365005, 34.164421, 32.833633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375702, 33.805737, 32.656910>,  <41.382118, 33.590527, 32.550877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375702, 33.805737, 32.656910>,  <41.365005, 34.164421, 32.833633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375702, 33.805737, 32.656910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331048, 0.409087, -0.850326,
		0.943235, 0.168998, -0.285915,
		0.026739, -0.896709, -0.441812,
		41.383724, 33.536724, 32.524368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571869, 34.366722, 32.175488>,  <41.365005, 34.164421, 32.833633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571869, 34.366722, 32.175488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433350, 33.995247, 32.122410>,  <41.350239, 33.772362, 32.090561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433350, 33.995247, 32.122410>,  <41.571869, 34.366722, 32.175488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433350, 33.995247, 32.122410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533131, 0.311211, -0.786714,
		0.771911, -0.201695, -0.602887,
		-0.346301, -0.928691, -0.132697,
		41.329460, 33.716640, 32.082600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638771, 34.208073, 31.511311>,  <41.571869, 34.366722, 32.175488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638771, 34.208073, 31.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361496, 33.947327, 31.634321>,  <41.195133, 33.790878, 31.708128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361496, 33.947327, 31.634321>,  <41.638771, 34.208073, 31.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361496, 33.947327, 31.634321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589615, 0.267452, -0.762117,
		0.414548, -0.709608, -0.569742,
		-0.693184, -0.651863, 0.307524,
		41.153542, 33.751770, 31.726580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422451, 33.817295, 30.882414>,  <41.638771, 34.208073, 31.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422451, 33.817295, 30.882414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132378, 33.734024, 31.144947>,  <40.958332, 33.684063, 31.302467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132378, 33.734024, 31.144947>,  <41.422451, 33.817295, 30.882414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132378, 33.734024, 31.144947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684946, 0.120641, -0.718536,
		0.070401, -0.970623, -0.230076,
		-0.725184, -0.208176, 0.656331,
		40.914822, 33.671574, 31.341846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097271, 33.148838, 30.606731>,  <41.422451, 33.817295, 30.882414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097271, 33.148838, 30.606731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822014, 33.336723, 30.827940>,  <40.656860, 33.449455, 30.960665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822014, 33.336723, 30.827940>,  <41.097271, 33.148838, 30.606731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822014, 33.336723, 30.827940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640713, -0.035683, -0.766950,
		-0.340514, -0.882097, 0.325507,
		-0.688140, 0.469714, 0.553021,
		40.615570, 33.477638, 30.993847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608082, 33.036858, 30.275675>,  <41.097271, 33.148838, 30.606731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608082, 33.036858, 30.275675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429855, 33.311104, 30.505945>,  <40.322922, 33.475651, 30.644108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429855, 33.311104, 30.505945>,  <40.608082, 33.036858, 30.275675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429855, 33.311104, 30.505945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709757, 0.121386, -0.693909,
		-0.545635, -0.717770, 0.432537,
		-0.445563, 0.685618, 0.575675,
		40.296185, 33.516788, 30.678648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941189, 32.708771, 30.358816>,  <40.608082, 33.036858, 30.275675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941189, 32.708771, 30.358816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965633, 33.105583, 30.402901>,  <39.980301, 33.343670, 30.429352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965633, 33.105583, 30.402901>,  <39.941189, 32.708771, 30.358816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965633, 33.105583, 30.402901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623522, 0.124164, -0.771883,
		-0.779414, -0.021552, 0.626139,
		0.061108, 0.992027, 0.110214,
		39.983967, 33.403191, 30.435965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233192, 33.063198, 30.624372>,  <39.941189, 32.708771, 30.358816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233192, 33.063198, 30.624372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456043, 33.311008, 30.403181>,  <39.589756, 33.459694, 30.270466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456043, 33.311008, 30.403181>,  <39.233192, 33.063198, 30.624372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456043, 33.311008, 30.403181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766728, 0.127996, -0.629083,
		-0.318957, 0.774467, 0.546322,
		0.557131, 0.619530, -0.552980,
		39.623184, 33.496868, 30.237288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714123, 33.437428, 30.315306>,  <39.233192, 33.063198, 30.624372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714123, 33.437428, 30.315306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039700, 33.561474, 30.118807>,  <39.235046, 33.635902, 30.000908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039700, 33.561474, 30.118807>,  <38.714123, 33.437428, 30.315306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039700, 33.561474, 30.118807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568560, 0.251551, -0.783238,
		-0.119320, 0.916816, 0.381067,
		0.813943, 0.310115, -0.491249,
		39.283882, 33.654507, 29.971432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387596, 33.833351, 29.897449>,  <38.714123, 33.437428, 30.315306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387596, 33.833351, 29.897449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747025, 33.771980, 29.732996>,  <38.962681, 33.735157, 29.634323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747025, 33.771980, 29.732996>,  <38.387596, 33.833351, 29.897449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747025, 33.771980, 29.732996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298103, 0.474118, -0.828461,
		0.322036, 0.866990, 0.380290,
		0.898570, -0.153429, -0.411135,
		39.016594, 33.725952, 29.609655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872608, 34.416161, 29.868498>,  <38.387596, 33.833351, 29.897449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872608, 34.416161, 29.868498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942722, 34.196655, 29.541540>,  <38.984791, 34.064953, 29.345366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942722, 34.196655, 29.541540>,  <38.872608, 34.416161, 29.868498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942722, 34.196655, 29.541540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293044, 0.763537, -0.575444,
		0.939893, 0.340403, -0.026971,
		0.175290, -0.548759, -0.817396,
		38.995308, 34.032028, 29.296322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353775, 34.839798, 29.413235>,  <38.872608, 34.416161, 29.868498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353775, 34.839798, 29.413235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096283, 34.589466, 29.237082>,  <38.941788, 34.439266, 29.131390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096283, 34.589466, 29.237082>,  <39.353775, 34.839798, 29.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096283, 34.589466, 29.237082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380464, 0.761056, -0.525396,
		0.663967, -0.170666, -0.728025,
		-0.643735, -0.625834, -0.440383,
		38.903164, 34.401714, 29.104967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302662, 34.837975, 28.651390>,  <39.353775, 34.839798, 29.413235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302662, 34.837975, 28.651390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964378, 34.731663, 28.836491>,  <38.761410, 34.667873, 28.947552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964378, 34.731663, 28.836491>,  <39.302662, 34.837975, 28.651390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964378, 34.731663, 28.836491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449883, 0.821493, -0.350363,
		-0.287028, -0.504489, -0.814313,
		-0.845707, -0.265782, 0.462752,
		38.710667, 34.651928, 28.975317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859047, 35.018528, 28.233969>,  <39.302662, 34.837975, 28.651390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859047, 35.018528, 28.233969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846466, 34.723389, 27.964277>,  <39.838917, 34.546303, 27.802462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846466, 34.723389, 27.964277>,  <39.859047, 35.018528, 28.233969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846466, 34.723389, 27.964277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998312, 0.009760, -0.057246,
		0.048819, -0.674893, 0.736299,
		-0.031448, -0.737851, -0.674230,
		39.837032, 34.502033, 27.762009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285290, 34.639801, 28.509684>,  <39.859047, 35.018528, 28.233969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285290, 34.639801, 28.509684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306213, 34.619572, 28.110744>,  <40.318768, 34.607433, 27.871380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306213, 34.619572, 28.110744>,  <40.285290, 34.639801, 28.509684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306213, 34.619572, 28.110744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989671, -0.130861, 0.058541,
		-0.133474, -0.990110, 0.043206,
		0.052308, -0.050574, -0.997349,
		40.321907, 34.604401, 27.811539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524220, 33.959099, 28.335226>,  <40.285290, 34.639801, 28.509684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524220, 33.959099, 28.335226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652702, 34.210972, 28.052292>,  <40.729790, 34.362095, 27.882530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652702, 34.210972, 28.052292>,  <40.524220, 33.959099, 28.335226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652702, 34.210972, 28.052292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940221, -0.301325, 0.158710,
		-0.113201, -0.716031, -0.688829,
		0.321203, 0.629685, -0.707337,
		40.749062, 34.399876, 27.840092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047405, 33.615532, 27.823235>,  <40.524220, 33.959099, 28.335226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047405, 33.615532, 27.823235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141132, 34.004253, 27.833687>,  <41.197369, 34.237488, 27.839958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141132, 34.004253, 27.833687>,  <41.047405, 33.615532, 27.823235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141132, 34.004253, 27.833687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917232, -0.229908, 0.325311,
		0.322149, -0.052257, -0.945246,
		0.234320, 0.971808, 0.026133,
		41.211430, 34.295795, 27.841526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689327, 33.537033, 27.715488>,  <41.047405, 33.615532, 27.823235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689327, 33.537033, 27.715488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630848, 33.906078, 27.858271>,  <41.595760, 34.127506, 27.943939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630848, 33.906078, 27.858271>,  <41.689327, 33.537033, 27.715488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630848, 33.906078, 27.858271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776117, -0.116766, 0.619683,
		0.613406, 0.367639, -0.698981,
		-0.146202, 0.922609, 0.356956,
		41.586987, 34.182861, 27.965357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340904, 33.852001, 27.731152>,  <41.689327, 33.537033, 27.715488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340904, 33.852001, 27.731152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100395, 33.961857, 28.031296>,  <41.956089, 34.027771, 28.211382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100395, 33.961857, 28.031296>,  <42.340904, 33.852001, 27.731152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100395, 33.961857, 28.031296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647938, -0.381957, 0.659003,
		0.467597, 0.882428, 0.051709,
		-0.601273, 0.274644, 0.750361,
		41.920013, 34.044250, 28.256405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798805, 34.060516, 28.354296>,  <42.340904, 33.852001, 27.731152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798805, 34.060516, 28.354296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433681, 34.018101, 28.512049>,  <42.214607, 33.992653, 28.606701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433681, 34.018101, 28.512049>,  <42.798805, 34.060516, 28.354296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433681, 34.018101, 28.512049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407693, -0.292938, 0.864855,
		0.023820, 0.950233, 0.310628,
		-0.912808, -0.106040, 0.394381,
		42.159840, 33.986290, 28.630363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793713, 34.382355, 29.092310>,  <42.798805, 34.060516, 28.354296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793713, 34.382355, 29.092310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518589, 34.096363, 29.042162>,  <42.353516, 33.924767, 29.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518589, 34.096363, 29.042162>,  <42.793713, 34.382355, 29.092310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518589, 34.096363, 29.042162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279922, -0.420605, 0.862980,
		-0.669744, 0.558476, 0.489436,
		-0.687813, -0.714980, -0.125368,
		42.312244, 33.881870, 29.004551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463001, 34.349072, 29.684555>,  <42.793713, 34.382355, 29.092310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463001, 34.349072, 29.684555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419636, 33.986263, 29.521795>,  <42.393616, 33.768578, 29.424139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419636, 33.986263, 29.521795>,  <42.463001, 34.349072, 29.684555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419636, 33.986263, 29.521795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288515, -0.420400, 0.860245,
		-0.951318, -0.024134, 0.307266,
		-0.108413, -0.907018, -0.406897,
		42.387112, 33.714157, 29.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360558, 34.054119, 30.262680>,  <42.463001, 34.349072, 29.684555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360558, 34.054119, 30.262680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461723, 33.781666, 29.987844>,  <42.522423, 33.618195, 29.822943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461723, 33.781666, 29.987844>,  <42.360558, 34.054119, 30.262680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461723, 33.781666, 29.987844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416237, -0.564488, 0.712812,
		-0.873374, -0.466269, 0.140749,
		0.252911, -0.681136, -0.687088,
		42.537598, 33.577324, 29.781717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189728, 33.370518, 30.504957>,  <42.360558, 34.054119, 30.262680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189728, 33.370518, 30.504957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454895, 33.285881, 30.217688>,  <42.613995, 33.235100, 30.045326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454895, 33.285881, 30.217688>,  <42.189728, 33.370518, 30.504957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454895, 33.285881, 30.217688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591633, -0.439793, 0.675687,
		-0.458820, -0.872817, -0.166357,
		0.662913, -0.211596, -0.718173,
		42.653770, 33.222404, 30.002235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269608, 32.642174, 30.462624>,  <42.189728, 33.370518, 30.504957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269608, 32.642174, 30.462624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602325, 32.808060, 30.315044>,  <42.801956, 32.907589, 30.226496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602325, 32.808060, 30.315044>,  <42.269608, 32.642174, 30.462624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602325, 32.808060, 30.315044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539334, -0.446660, 0.713873,
		0.131257, -0.792786, -0.595200,
		0.831800, 0.414712, -0.368949,
		42.851864, 32.932472, 30.204359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761063, 32.132240, 30.509365>,  <42.269608, 32.642174, 30.462624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761063, 32.132240, 30.509365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001888, 32.449112, 30.469442>,  <43.146385, 32.639236, 30.445488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001888, 32.449112, 30.469442>,  <42.761063, 32.132240, 30.509365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001888, 32.449112, 30.469442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624427, -0.389254, 0.677180,
		0.497600, -0.470030, -0.729017,
		0.602068, 0.792182, -0.099807,
		43.182510, 32.686768, 30.439501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473038, 31.910006, 30.586943>,  <42.761063, 32.132240, 30.509365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473038, 31.910006, 30.586943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486225, 32.295795, 30.691784>,  <43.494137, 32.527271, 30.754688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486225, 32.295795, 30.691784>,  <43.473038, 31.910006, 30.586943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486225, 32.295795, 30.691784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705898, -0.208124, 0.677047,
		0.707546, 0.162694, -0.687685,
		0.032972, 0.964477, 0.262102,
		43.496117, 32.585140, 30.770414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102081, 31.938053, 30.748953>,  <43.473038, 31.910006, 30.586943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102081, 31.938053, 30.748953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954395, 32.269958, 30.916365>,  <43.865784, 32.469101, 31.016811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954395, 32.269958, 30.916365>,  <44.102081, 31.938053, 30.748953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954395, 32.269958, 30.916365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614481, -0.119890, 0.779769,
		0.697202, 0.545085, -0.465609,
		-0.369218, 0.829765, 0.418532,
		43.843628, 32.518887, 31.041924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634647, 32.274704, 30.905102>,  <44.102081, 31.938053, 30.748953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634647, 32.274704, 30.905102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363266, 32.459167, 31.133848>,  <44.200436, 32.569847, 31.271095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363266, 32.459167, 31.133848>,  <44.634647, 32.274704, 30.905102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363266, 32.459167, 31.133848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615469, -0.068220, 0.785203,
		0.401117, 0.884691, -0.237545,
		-0.678457, 0.461160, 0.571864,
		44.159729, 32.597515, 31.305407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883049, 32.947514, 31.198862>,  <44.634647, 32.274704, 30.905102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883049, 32.947514, 31.198862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606865, 32.823643, 31.460352>,  <44.441154, 32.749321, 31.617247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606865, 32.823643, 31.460352>,  <44.883049, 32.947514, 31.198862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606865, 32.823643, 31.460352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599418, 0.260931, 0.756712,
		-0.404916, 0.914338, 0.005465,
		-0.690464, -0.309680, 0.653726,
		44.399727, 32.730740, 31.656469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899231, 33.389561, 31.805197>,  <44.883049, 32.947514, 31.198862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899231, 33.389561, 31.805197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711819, 33.069168, 31.954277>,  <44.599369, 32.876934, 32.043724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711819, 33.069168, 31.954277>,  <44.899231, 33.389561, 31.805197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711819, 33.069168, 31.954277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287130, 0.260906, 0.921675,
		-0.835483, 0.538851, 0.107741,
		-0.468535, -0.800979, 0.372703,
		44.571259, 32.828873, 32.066090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722969, 33.578743, 32.554031>,  <44.899231, 33.389561, 31.805197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722969, 33.578743, 32.554031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670567, 33.182201, 32.550896>,  <44.639126, 32.944279, 32.549015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670567, 33.182201, 32.550896>,  <44.722969, 33.578743, 32.554031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670567, 33.182201, 32.550896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173582, -0.030717, 0.984340,
		-0.976068, 0.127591, 0.176105,
		-0.131003, -0.991351, -0.007835,
		44.631268, 32.884796, 32.548546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480896, 33.530025, 33.176453>,  <44.722969, 33.578743, 32.554031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480896, 33.530025, 33.176453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.563644, 33.154800, 33.065285>,  <44.613293, 32.929665, 32.998585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.563644, 33.154800, 33.065285>,  <44.480896, 33.530025, 33.176453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563644, 33.154800, 33.065285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352289, -0.193592, 0.915650,
		-0.912742, -0.287329, 0.290421,
		0.206870, -0.938064, -0.277922,
		44.625706, 32.873383, 32.981907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152843, 33.113464, 33.656879>,  <44.480896, 33.530025, 33.176453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152843, 33.113464, 33.656879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456448, 32.911407, 33.492569>,  <44.638611, 32.790173, 33.393982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456448, 32.911407, 33.492569>,  <44.152843, 33.113464, 33.656879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456448, 32.911407, 33.492569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343673, -0.225011, 0.911734,
		-0.552983, -0.833188, 0.002817,
		0.759012, -0.505141, -0.410772,
		44.684151, 32.759865, 33.369339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246502, 32.562618, 33.999260>,  <44.152843, 33.113464, 33.656879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246502, 32.562618, 33.999260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614258, 32.559055, 33.841965>,  <44.834911, 32.556915, 33.747589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614258, 32.559055, 33.841965>,  <44.246502, 32.562618, 33.999260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614258, 32.559055, 33.841965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378195, -0.254700, 0.889998,
		-0.108088, -0.966979, -0.230800,
		0.919394, -0.008911, -0.393237,
		44.890076, 32.556381, 33.723995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570187, 31.927431, 34.263821>,  <44.246502, 32.562618, 33.999260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570187, 31.927431, 34.263821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858284, 32.172867, 34.134354>,  <45.031143, 32.320129, 34.056675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858284, 32.172867, 34.134354>,  <44.570187, 31.927431, 34.263821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858284, 32.172867, 34.134354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557400, -0.234105, 0.796555,
		0.412984, -0.754126, -0.510626,
		0.720243, 0.613587, -0.323669,
		45.074356, 32.356941, 34.037254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217430, 31.537968, 34.317558>,  <44.570187, 31.927431, 34.263821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217430, 31.537968, 34.317558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320683, 31.924408, 34.319485>,  <45.382633, 32.156273, 34.320641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320683, 31.924408, 34.319485>,  <45.217430, 31.537968, 34.317558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320683, 31.924408, 34.319485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694454, -0.189010, 0.694269,
		0.671643, -0.175865, -0.719700,
		0.258128, 0.966099, 0.004817,
		45.398121, 32.214237, 34.320930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982418, 31.544542, 34.405682>,  <45.217430, 31.537968, 34.317558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982418, 31.544542, 34.405682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875908, 31.923664, 34.475838>,  <45.812000, 32.151138, 34.517929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875908, 31.923664, 34.475838>,  <45.982418, 31.544542, 34.405682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875908, 31.923664, 34.475838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435434, -0.044050, 0.899142,
		0.859938, 0.315789, -0.400978,
		-0.266277, 0.947806, 0.175386,
		45.796024, 32.208008, 34.528454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488342, 31.830685, 34.883045>,  <45.982418, 31.544542, 34.405682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488342, 31.830685, 34.883045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217674, 32.124214, 34.907131>,  <46.055275, 32.300331, 34.921581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217674, 32.124214, 34.907131>,  <46.488342, 31.830685, 34.883045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217674, 32.124214, 34.907131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224080, 0.127347, 0.966215,
		0.701362, 0.667299, -0.250606,
		-0.676668, 0.733822, 0.060212,
		46.014675, 32.344360, 34.925194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880672, 32.471725, 35.107071>,  <46.488342, 31.830685, 34.883045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880672, 32.471725, 35.107071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497185, 32.492695, 35.218864>,  <46.267094, 32.505276, 35.285942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497185, 32.492695, 35.218864>,  <46.880672, 32.471725, 35.107071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497185, 32.492695, 35.218864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284028, 0.224136, 0.932251,
		-0.013767, 0.973147, -0.229774,
		-0.958717, 0.052428, 0.279486,
		46.209568, 32.508423, 35.302711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777618, 33.143776, 35.394127>,  <46.880672, 32.471725, 35.107071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777618, 33.143776, 35.394127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546722, 32.859024, 35.554134>,  <46.408184, 32.688171, 35.650139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546722, 32.859024, 35.554134>,  <46.777618, 33.143776, 35.394127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546722, 32.859024, 35.554134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279883, 0.287717, 0.915906,
		-0.767108, 0.640660, 0.033160,
		-0.577244, -0.711881, 0.400020,
		46.373550, 32.645458, 35.674141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993515, 33.586906, 35.945297>,  <46.777618, 33.143776, 35.394127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993515, 33.586906, 35.945297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348209, 33.754818, 36.022747>,  <47.561024, 33.855564, 36.069218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348209, 33.754818, 36.022747>,  <46.993515, 33.586906, 35.945297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348209, 33.754818, 36.022747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003876, 0.412085, -0.911137,
		-0.462263, 0.808687, 0.363783,
		0.886734, 0.419775, 0.193626,
		47.614231, 33.880749, 36.080833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046951, 34.379673, 35.933868>,  <46.993515, 33.586906, 35.945297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046951, 34.379673, 35.933868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377426, 34.208702, 35.787048>,  <47.575710, 34.106117, 35.698956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377426, 34.208702, 35.787048>,  <47.046951, 34.379673, 35.933868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377426, 34.208702, 35.787048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150619, 0.460204, -0.874944,
		0.542895, 0.778148, 0.315834,
		0.826183, -0.427432, -0.367046,
		47.625282, 34.080471, 35.676933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551903, 34.947556, 35.836887>,  <47.046951, 34.379673, 35.933868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551903, 34.947556, 35.836887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578346, 34.651100, 35.569653>,  <47.594212, 34.473228, 35.409309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578346, 34.651100, 35.569653>,  <47.551903, 34.947556, 35.836887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.578346, 34.651100, 35.569653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330643, 0.615455, -0.715465,
		0.941438, 0.268199, -0.204365,
		0.066110, -0.741138, -0.668090,
		47.598179, 34.428761, 35.369225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.991703, 35.206146, 35.263336>,  <47.551903, 34.947556, 35.836887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.991703, 35.206146, 35.263336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720108, 34.922176, 35.188534>,  <47.557152, 34.751793, 35.143654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720108, 34.922176, 35.188534>,  <47.991703, 35.206146, 35.263336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720108, 34.922176, 35.188534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268276, 0.477046, -0.836932,
		0.683374, -0.518100, -0.514367,
		-0.678991, -0.709930, -0.187007,
		47.516411, 34.709198, 35.132431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.763588, 41.234600, 43.556999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459812, 41.043102, 43.733208>,  <35.277546, 40.928204, 43.838932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459812, 41.043102, 43.733208>,  <35.763588, 41.234600, 43.556999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459812, 41.043102, 43.733208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072025, -0.734828, -0.674419,
		0.646576, -0.480454, 0.592540,
		-0.759442, -0.478741, 0.440517,
		35.231979, 40.899479, 43.865364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001686, 40.522648, 43.620716>,  <35.763588, 41.234600, 43.556999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001686, 40.522648, 43.620716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601704, 40.525959, 43.622051>,  <35.361713, 40.527946, 43.622852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601704, 40.525959, 43.622051>,  <36.001686, 40.522648, 43.620716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601704, 40.525959, 43.622051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008349, -0.736256, -0.676651,
		-0.003145, -0.676652, 0.736296,
		-0.999960, 0.008275, 0.003334,
		35.301716, 40.528442, 43.623051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850243, 39.773106, 43.543526>,  <36.001686, 40.522648, 43.620716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850243, 39.773106, 43.543526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503029, 39.947830, 43.449108>,  <35.294701, 40.052666, 43.392460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503029, 39.947830, 43.449108>,  <35.850243, 39.773106, 43.543526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503029, 39.947830, 43.449108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144234, -0.676749, -0.721947,
		-0.475093, -0.592629, 0.650444,
		-0.868035, 0.436807, -0.236041,
		35.242619, 40.078873, 43.378296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348244, 39.194065, 43.654060>,  <35.850243, 39.773106, 43.543526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348244, 39.194065, 43.654060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224796, 39.484459, 43.408230>,  <35.150726, 39.658695, 43.260731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224796, 39.484459, 43.408230>,  <35.348244, 39.194065, 43.654060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224796, 39.484459, 43.408230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055454, -0.658748, -0.750317,
		-0.949567, -0.197483, 0.243562,
		-0.308621, 0.725984, -0.614574,
		35.132210, 39.702255, 43.223858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863617, 38.872929, 43.284615>,  <35.348244, 39.194065, 43.654060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863617, 38.872929, 43.284615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.938370, 39.192276, 43.055637>,  <34.983219, 39.383884, 42.918251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.938370, 39.192276, 43.055637>,  <34.863617, 38.872929, 43.284615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938370, 39.192276, 43.055637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136623, -0.555924, -0.819928,
		-0.972836, 0.231437, 0.005184,
		0.186879, 0.798364, -0.572443,
		34.994434, 39.431786, 42.883904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388084, 38.853287, 42.621696>,  <34.863617, 38.872929, 43.284615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388084, 38.853287, 42.621696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664082, 39.111763, 42.491249>,  <34.829678, 39.266850, 42.412979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664082, 39.111763, 42.491249>,  <34.388084, 38.853287, 42.621696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664082, 39.111763, 42.491249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040806, -0.484565, -0.873803,
		-0.722669, 0.589607, -0.360713,
		0.689989, 0.646190, -0.326121,
		34.871078, 39.305618, 42.393414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192383, 39.130230, 41.975468>,  <34.388084, 38.853287, 42.621696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192383, 39.130230, 41.975468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.591625, 39.153309, 41.984032>,  <34.831169, 39.167156, 41.989170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.591625, 39.153309, 41.984032>,  <34.192383, 39.130230, 41.975468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591625, 39.153309, 41.984032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042032, -0.384909, -0.921997,
		-0.044957, 0.921149, -0.386605,
		0.998104, 0.057700, 0.021414,
		34.891056, 39.170620, 41.990456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428356, 39.374222, 41.272842>,  <34.192383, 39.130230, 41.975468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428356, 39.374222, 41.272842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.752052, 39.196770, 41.426895>,  <34.946270, 39.090298, 41.519325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.752052, 39.196770, 41.426895>,  <34.428356, 39.374222, 41.272842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752052, 39.196770, 41.426895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191727, -0.420240, -0.886927,
		0.555314, 0.791576, -0.255019,
		0.809239, -0.443628, 0.385132,
		34.994823, 39.063683, 41.542435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846508, 39.367176, 40.819279>,  <34.428356, 39.374222, 41.272842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846508, 39.367176, 40.819279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048367, 39.094353, 41.030987>,  <35.169479, 38.930660, 41.158012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048367, 39.094353, 41.030987>,  <34.846508, 39.367176, 40.819279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048367, 39.094353, 41.030987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313216, -0.426650, -0.848449,
		0.804507, 0.593941, -0.001675,
		0.504643, -0.682058, 0.529275,
		35.199760, 38.889736, 41.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562126, 39.291821, 40.501663>,  <34.846508, 39.367176, 40.819279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562126, 39.291821, 40.501663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491188, 38.960209, 40.713799>,  <35.448624, 38.761242, 40.841080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491188, 38.960209, 40.713799>,  <35.562126, 39.291821, 40.501663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491188, 38.960209, 40.713799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465282, -0.545482, -0.697109,
		0.867214, 0.123128, 0.482471,
		-0.177346, -0.829029, 0.530339,
		35.437984, 38.711502, 40.872902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127747, 39.006279, 40.505608>,  <35.562126, 39.291821, 40.501663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127747, 39.006279, 40.505608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900562, 38.694439, 40.611172>,  <35.764252, 38.507336, 40.674511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900562, 38.694439, 40.611172>,  <36.127747, 39.006279, 40.505608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900562, 38.694439, 40.611172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425208, -0.552465, -0.716924,
		0.704713, -0.294968, 0.645270,
		-0.567959, -0.779600, 0.263907,
		35.730175, 38.460560, 40.690342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500629, 38.485542, 40.364605>,  <36.127747, 39.006279, 40.505608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500629, 38.485542, 40.364605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149792, 38.294533, 40.385311>,  <35.939289, 38.179928, 40.397736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149792, 38.294533, 40.385311>,  <36.500629, 38.485542, 40.364605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149792, 38.294533, 40.385311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317895, -0.657904, -0.682719,
		0.360072, -0.582351, 0.728845,
		-0.877093, -0.477524, 0.051766,
		35.886665, 38.151276, 40.400841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663960, 37.781353, 40.403667>,  <36.500629, 38.485542, 40.364605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663960, 37.781353, 40.403667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295059, 37.784737, 40.249065>,  <36.073719, 37.786766, 40.156303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295059, 37.784737, 40.249065>,  <36.663960, 37.781353, 40.403667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295059, 37.784737, 40.249065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280887, -0.672286, -0.684934,
		-0.265639, -0.740243, 0.617638,
		-0.922247, 0.008459, -0.386510,
		36.018387, 37.787273, 40.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709755, 37.166725, 40.153137>,  <36.663960, 37.781353, 40.403667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709755, 37.166725, 40.153137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370014, 37.293835, 39.984554>,  <36.166168, 37.370102, 39.883404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370014, 37.293835, 39.984554>,  <36.709755, 37.166725, 40.153137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370014, 37.293835, 39.984554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146710, -0.624877, -0.766815,
		-0.507028, -0.713127, 0.484120,
		-0.849352, 0.317772, -0.421453,
		36.115208, 37.389168, 39.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143383, 36.528976, 40.146759>,  <36.709755, 37.166725, 40.153137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143383, 36.528976, 40.146759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088718, 36.808437, 39.865841>,  <36.055920, 36.976112, 39.697292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088718, 36.808437, 39.865841>,  <36.143383, 36.528976, 40.146759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088718, 36.808437, 39.865841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169528, -0.681991, -0.711441,
		-0.976005, -0.216282, -0.025240,
		-0.136659, 0.698649, -0.702292,
		36.047722, 37.018032, 39.655155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667274, 36.253094, 39.840294>,  <36.143383, 36.528976, 40.146759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667274, 36.253094, 39.840294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824673, 36.508091, 39.575336>,  <35.919113, 36.661087, 39.416363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824673, 36.508091, 39.575336>,  <35.667274, 36.253094, 39.840294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824673, 36.508091, 39.575336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186662, -0.650111, -0.736555,
		-0.900177, 0.413476, -0.136821,
		0.393497, 0.637490, -0.662395,
		35.942722, 36.699337, 39.376617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380177, 36.099041, 39.255970>,  <35.667274, 36.253094, 39.840294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380177, 36.099041, 39.255970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704754, 36.298393, 39.133869>,  <35.899502, 36.418003, 39.060608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704754, 36.298393, 39.133869>,  <35.380177, 36.099041, 39.255970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704754, 36.298393, 39.133869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103740, -0.636843, -0.763982,
		-0.575151, 0.588260, -0.568464,
		0.811443, 0.498378, -0.305255,
		35.948185, 36.447906, 39.042294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302830, 36.096695, 38.585682>,  <35.380177, 36.099041, 39.255970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302830, 36.096695, 38.585682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694450, 36.164703, 38.630501>,  <35.929424, 36.205509, 38.657391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694450, 36.164703, 38.630501>,  <35.302830, 36.096695, 38.585682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694450, 36.164703, 38.630501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200480, -0.708640, -0.676489,
		-0.035614, 0.684780, -0.727880,
		0.979050, 0.170017, 0.112047,
		35.988167, 36.215710, 38.664116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520802, 36.162704, 37.926983>,  <35.302830, 36.096695, 38.585682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520802, 36.162704, 37.926983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834942, 36.087086, 38.162773>,  <36.023426, 36.041714, 38.304249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834942, 36.087086, 38.162773>,  <35.520802, 36.162704, 37.926983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834942, 36.087086, 38.162773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385424, -0.595832, -0.704580,
		0.484424, 0.780543, -0.395078,
		0.785355, -0.189043, 0.589475,
		36.070549, 36.030373, 38.339615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047436, 36.207458, 37.385296>,  <35.520802, 36.162704, 37.926983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047436, 36.207458, 37.385296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191238, 36.025871, 37.711403>,  <36.277519, 35.916920, 37.907066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191238, 36.025871, 37.711403>,  <36.047436, 36.207458, 37.385296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191238, 36.025871, 37.711403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433354, -0.692529, -0.576722,
		0.826413, 0.560636, -0.052240,
		0.359509, -0.453972, 0.815269,
		36.299091, 35.889679, 37.955982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781902, 36.069939, 37.215469>,  <36.047436, 36.207458, 37.385296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781902, 36.069939, 37.215469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666172, 35.809002, 37.495682>,  <36.596733, 35.652439, 37.663807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666172, 35.809002, 37.495682>,  <36.781902, 36.069939, 37.215469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666172, 35.809002, 37.495682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310334, -0.756225, -0.576035,
		0.905529, 0.050735, 0.421241,
		-0.289328, -0.652342, 0.700528,
		36.579372, 35.613300, 37.705841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278980, 35.932316, 36.770035>,  <36.781902, 36.069939, 37.215469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278980, 35.932316, 36.770035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468998, 36.280113, 36.824169>,  <37.583008, 36.488792, 36.856651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468998, 36.280113, 36.824169>,  <37.278980, 35.932316, 36.770035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468998, 36.280113, 36.824169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794027, -0.489838, 0.359971,
		0.379286, -0.063539, -0.923095,
		0.475040, 0.869495, 0.135337,
		37.611511, 36.540962, 36.864769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591293, 35.980610, 37.474205>,  <37.278980, 35.932316, 36.770035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591293, 35.980610, 37.474205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979298, 36.029110, 37.558475>,  <38.212101, 36.058212, 37.609039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979298, 36.029110, 37.558475>,  <37.591293, 35.980610, 37.474205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979298, 36.029110, 37.558475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242713, 0.530662, 0.812089,
		-0.013329, -0.838866, 0.544175,
		0.970007, 0.121254, 0.210677,
		38.270298, 36.065487, 37.621677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631836, 35.902763, 38.254868>,  <37.591293, 35.980610, 37.474205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631836, 35.902763, 38.254868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959309, 36.094391, 38.128212>,  <38.155792, 36.209366, 38.052219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959309, 36.094391, 38.128212>,  <37.631836, 35.902763, 38.254868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959309, 36.094391, 38.128212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009741, 0.562900, 0.826468,
		0.574179, -0.673522, 0.465497,
		0.818672, 0.479074, -0.316644,
		38.204910, 36.238110, 38.033218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960487, 36.024235, 38.876892>,  <37.631836, 35.902763, 38.254868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960487, 36.024235, 38.876892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136654, 36.269909, 38.614960>,  <38.242355, 36.417313, 38.457798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136654, 36.269909, 38.614960>,  <37.960487, 36.024235, 38.876892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136654, 36.269909, 38.614960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144120, 0.671557, 0.726802,
		0.886149, -0.414472, 0.207250,
		0.440419, 0.614186, -0.654833,
		38.268780, 36.454166, 38.418510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470249, 36.294563, 39.262054>,  <37.960487, 36.024235, 38.876892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470249, 36.294563, 39.262054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433270, 36.542507, 38.950356>,  <38.411079, 36.691273, 38.763336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433270, 36.542507, 38.950356>,  <38.470249, 36.294563, 39.262054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433270, 36.542507, 38.950356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165390, 0.781286, 0.601862,
		0.981885, -0.073236, -0.174751,
		-0.092453, 0.619861, -0.779246,
		38.405533, 36.728466, 38.716583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025394, 36.735271, 39.265839>,  <38.470249, 36.294563, 39.262054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025394, 36.735271, 39.265839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749748, 36.942394, 39.063061>,  <38.584362, 37.066669, 38.941395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749748, 36.942394, 39.063061>,  <39.025394, 36.735271, 39.265839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749748, 36.942394, 39.063061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197058, 0.807114, 0.556538,
		0.697347, 0.283619, -0.658231,
		-0.689112, 0.517810, -0.506949,
		38.543015, 37.097736, 38.910976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364716, 37.350994, 39.024879>,  <39.025394, 36.735271, 39.265839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364716, 37.350994, 39.024879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974957, 37.440880, 39.022160>,  <38.741100, 37.494812, 39.020527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974957, 37.440880, 39.022160>,  <39.364716, 37.350994, 39.024879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974957, 37.440880, 39.022160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165296, 0.736607, 0.655811,
		0.152378, 0.637899, -0.754895,
		-0.974401, 0.224712, -0.006800,
		38.682636, 37.508293, 39.020119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285278, 38.028019, 39.132618>,  <39.364716, 37.350994, 39.024879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285278, 38.028019, 39.132618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905056, 37.943470, 39.223633>,  <38.676922, 37.892742, 39.278240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905056, 37.943470, 39.223633>,  <39.285278, 38.028019, 39.132618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905056, 37.943470, 39.223633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043829, 0.634016, 0.772077,
		-0.307453, 0.743873, -0.593402,
		-0.950553, -0.211369, 0.227533,
		38.619888, 37.880058, 39.291893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010860, 38.660278, 39.464123>,  <39.285278, 38.028019, 39.132618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010860, 38.660278, 39.464123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728592, 38.397015, 39.569088>,  <38.559231, 38.239056, 39.632069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728592, 38.397015, 39.569088>,  <39.010860, 38.660278, 39.464123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728592, 38.397015, 39.569088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215284, 0.552012, 0.805565,
		-0.675046, 0.511967, -0.531228,
		-0.705667, -0.658158, 0.262415,
		38.516891, 38.199566, 39.647812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340183, 39.042225, 39.600494>,  <39.010860, 38.660278, 39.464123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340183, 39.042225, 39.600494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306335, 38.696030, 39.797985>,  <38.286026, 38.488312, 39.916477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306335, 38.696030, 39.797985>,  <38.340183, 39.042225, 39.600494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306335, 38.696030, 39.797985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323544, 0.492520, 0.807925,
		-0.942422, -0.091373, -0.321702,
		-0.084622, -0.865491, 0.493725,
		38.280949, 38.436382, 39.946102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711761, 39.123756, 39.887093>,  <38.340183, 39.042225, 39.600494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711761, 39.123756, 39.887093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894981, 38.827942, 40.084381>,  <38.004913, 38.650452, 40.202755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894981, 38.827942, 40.084381>,  <37.711761, 39.123756, 39.887093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894981, 38.827942, 40.084381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199957, 0.454915, 0.867796,
		-0.866146, -0.496116, 0.060496,
		0.458049, -0.739541, 0.493224,
		38.032394, 38.606079, 40.232349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193420, 38.777824, 40.433498>,  <37.711761, 39.123756, 39.887093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193420, 38.777824, 40.433498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569675, 38.700573, 40.545143>,  <37.795429, 38.654224, 40.612129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569675, 38.700573, 40.545143>,  <37.193420, 38.777824, 40.433498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569675, 38.700573, 40.545143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184135, 0.400444, 0.897630,
		-0.285125, -0.895739, 0.341111,
		0.940637, -0.193126, 0.279113,
		37.851868, 38.642635, 40.628876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148693, 38.352524, 41.009087>,  <37.193420, 38.777824, 40.433498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148693, 38.352524, 41.009087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504169, 38.535759, 41.016964>,  <37.717457, 38.645699, 41.021690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504169, 38.535759, 41.016964>,  <37.148693, 38.352524, 41.009087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504169, 38.535759, 41.016964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186223, 0.321355, 0.928467,
		0.418989, -0.828787, 0.370891,
		0.888690, 0.458086, 0.019695,
		37.770775, 38.673183, 41.022873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437435, 38.395424, 41.718449>,  <37.148693, 38.352524, 41.009087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437435, 38.395424, 41.718449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687099, 38.668198, 41.565929>,  <37.836899, 38.831863, 41.474419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687099, 38.668198, 41.565929>,  <37.437435, 38.395424, 41.718449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687099, 38.668198, 41.565929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117697, 0.400390, 0.908754,
		0.772382, -0.612084, 0.169645,
		0.624158, 0.681939, -0.381295,
		37.874348, 38.872780, 41.451542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047668, 38.343414, 42.152657>,  <37.437435, 38.395424, 41.718449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047668, 38.343414, 42.152657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.081936, 38.695736, 41.966389>,  <38.102497, 38.907127, 41.854630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.081936, 38.695736, 41.966389>,  <38.047668, 38.343414, 42.152657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081936, 38.695736, 41.966389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114288, 0.455616, 0.882809,
		0.989747, -0.128850, -0.061633,
		0.085669, 0.880802, -0.465671,
		38.107635, 38.959976, 41.826687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649471, 38.671120, 42.432858>,  <38.047668, 38.343414, 42.152657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649471, 38.671120, 42.432858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390392, 38.948170, 42.305893>,  <38.234943, 39.114399, 42.229713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390392, 38.948170, 42.305893>,  <38.649471, 38.671120, 42.432858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390392, 38.948170, 42.305893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031017, 0.440234, 0.897347,
		0.761262, 0.571368, -0.306624,
		-0.647702, 0.692627, -0.317412,
		38.196083, 39.155956, 42.210670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944000, 39.273701, 42.511654>,  <38.649471, 38.671120, 42.432858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944000, 39.273701, 42.511654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565044, 39.399925, 42.490250>,  <38.337669, 39.475662, 42.477409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565044, 39.399925, 42.490250>,  <38.944000, 39.273701, 42.511654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565044, 39.399925, 42.490250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097742, 0.444431, 0.890465,
		0.304780, 0.838391, -0.451895,
		-0.947394, 0.315565, -0.053507,
		38.280827, 39.494595, 42.474197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882267, 39.852211, 42.944946>,  <38.944000, 39.273701, 42.511654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882267, 39.852211, 42.944946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493446, 39.791931, 42.872944>,  <38.260155, 39.755764, 42.829742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493446, 39.791931, 42.872944>,  <38.882267, 39.852211, 42.944946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493446, 39.791931, 42.872944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232259, 0.505665, 0.830878,
		-0.034192, 0.849465, -0.526535,
		-0.972053, -0.150702, -0.180007,
		38.201832, 39.746719, 42.818943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628017, 40.527847, 42.996738>,  <38.882267, 39.852211, 42.944946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628017, 40.527847, 42.996738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330307, 40.271076, 43.070469>,  <38.151680, 40.117012, 43.114708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330307, 40.271076, 43.070469>,  <38.628017, 40.527847, 42.996738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330307, 40.271076, 43.070469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135767, 0.415656, 0.899332,
		-0.653925, 0.644327, -0.396516,
		-0.744278, -0.641929, 0.184329,
		38.107025, 40.078499, 43.125767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.021183, 40.911709, 43.209541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934998, 40.541943, 43.335415>,  <37.883286, 40.320084, 43.410938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934998, 40.541943, 43.335415>,  <38.021183, 40.911709, 43.209541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934998, 40.541943, 43.335415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170022, 0.352845, 0.920105,
		-0.961595, 0.144750, -0.233199,
		-0.215468, -0.924417, 0.314683,
		37.870358, 40.264618, 43.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317055, 40.943756, 43.463020>,  <38.021183, 40.911709, 43.209541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317055, 40.943756, 43.463020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511875, 40.633530, 43.623661>,  <37.628765, 40.447395, 43.720047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511875, 40.633530, 43.623661>,  <37.317055, 40.943756, 43.463020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511875, 40.633530, 43.623661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199995, 0.348570, 0.915697,
		-0.850169, -0.526306, 0.014661,
		0.487047, -0.775565, 0.401602,
		37.657990, 40.400860, 43.744141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856995, 40.716450, 43.791740>,  <37.317055, 40.943756, 43.463020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856995, 40.716450, 43.791740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188259, 40.580166, 43.969761>,  <37.387016, 40.498398, 44.076572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188259, 40.580166, 43.969761>,  <36.856995, 40.716450, 43.791740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188259, 40.580166, 43.969761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324148, 0.356646, 0.876203,
		-0.457257, -0.869897, 0.184919,
		0.828157, -0.340708, 0.445054,
		37.436707, 40.477955, 44.103279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666752, 40.439011, 44.467617>,  <36.856995, 40.716450, 43.791740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666752, 40.439011, 44.467617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063641, 40.475391, 44.501621>,  <37.301773, 40.497219, 44.522022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063641, 40.475391, 44.501621>,  <36.666752, 40.439011, 44.467617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063641, 40.475391, 44.501621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121381, 0.555101, 0.822879,
		0.027651, -0.826796, 0.561822,
		0.992220, 0.090948, 0.085008,
		37.361305, 40.502674, 44.527122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667679, 40.482887, 45.141521>,  <36.666752, 40.439011, 44.467617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667679, 40.482887, 45.141521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031788, 40.621922, 45.051556>,  <37.250252, 40.705341, 44.997574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031788, 40.621922, 45.051556>,  <36.667679, 40.482887, 45.141521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031788, 40.621922, 45.051556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054474, 0.437990, 0.897328,
		0.410405, -0.829067, 0.379757,
		0.910275, 0.347581, -0.224916,
		37.304871, 40.726196, 44.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065536, 40.303898, 45.750595>,  <36.667679, 40.482887, 45.141521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065536, 40.303898, 45.750595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218681, 40.607658, 45.540176>,  <37.310566, 40.789913, 45.413925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218681, 40.607658, 45.540176>,  <37.065536, 40.303898, 45.750595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218681, 40.607658, 45.540176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211314, 0.482351, 0.850108,
		0.899314, -0.436632, 0.024200,
		0.382857, 0.759401, -0.526051,
		37.333538, 40.835480, 45.382362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728935, 40.515671, 46.057842>,  <37.065536, 40.303898, 45.750595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728935, 40.515671, 46.057842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584312, 40.821510, 45.844425>,  <37.497540, 41.005013, 45.716373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584312, 40.821510, 45.844425>,  <37.728935, 40.515671, 46.057842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584312, 40.821510, 45.844425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204108, 0.623285, 0.754888,
		0.909735, 0.164032, -0.381412,
		-0.361554, 0.764597, -0.533544,
		37.475845, 41.050888, 45.684361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219460, 41.023598, 46.166962>,  <37.728935, 40.515671, 46.057842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219460, 41.023598, 46.166962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906223, 41.229816, 46.027832>,  <37.718281, 41.353550, 45.944355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906223, 41.229816, 46.027832>,  <38.219460, 41.023598, 46.166962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906223, 41.229816, 46.027832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104394, 0.660312, 0.743700,
		0.613083, 0.546075, -0.570905,
		-0.783091, 0.515549, -0.347819,
		37.671295, 41.384480, 45.923485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404278, 41.732151, 46.215202>,  <38.219460, 41.023598, 46.166962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404278, 41.732151, 46.215202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006351, 41.693775, 46.228687>,  <37.767597, 41.670750, 46.236778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006351, 41.693775, 46.228687>,  <38.404278, 41.732151, 46.215202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006351, 41.693775, 46.228687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033644, 0.623374, 0.781200,
		-0.095967, 0.776016, -0.623370,
		-0.994816, -0.095942, 0.033715,
		37.707909, 41.664993, 46.238800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099167, 42.344261, 46.250309>,  <38.404278, 41.732151, 46.215202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099167, 42.344261, 46.250309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819164, 42.103191, 46.403553>,  <37.651165, 41.958549, 46.495499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819164, 42.103191, 46.403553>,  <38.099167, 42.344261, 46.250309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819164, 42.103191, 46.403553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022223, 0.517824, 0.855199,
		-0.713792, 0.607157, -0.349086,
		-0.700005, -0.602676, 0.383111,
		37.609161, 41.922390, 46.518486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715797, 42.868469, 46.613842>,  <38.099167, 42.344261, 46.250309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715797, 42.868469, 46.613842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592510, 42.510979, 46.744228>,  <37.518536, 42.296486, 46.822460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592510, 42.510979, 46.744228>,  <37.715797, 42.868469, 46.613842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592510, 42.510979, 46.744228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042006, 0.355100, 0.933884,
		-0.950387, 0.274149, -0.146990,
		-0.308220, -0.893726, 0.325966,
		37.500046, 42.242863, 46.842018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295444, 42.981232, 47.177204>,  <37.715797, 42.868469, 46.613842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295444, 42.981232, 47.177204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375717, 42.595520, 47.246372>,  <37.423882, 42.364094, 47.287872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375717, 42.595520, 47.246372>,  <37.295444, 42.981232, 47.177204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375717, 42.595520, 47.246372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188789, 0.211266, 0.959023,
		-0.961293, -0.159817, 0.224443,
		0.200685, -0.964274, 0.172917,
		37.435925, 42.306236, 47.298248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796135, 42.789528, 47.707832>,  <37.295444, 42.981232, 47.177204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796135, 42.789528, 47.707832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075119, 42.503067, 47.718204>,  <37.242508, 42.331188, 47.724426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075119, 42.503067, 47.718204>,  <36.796135, 42.789528, 47.707832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075119, 42.503067, 47.718204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028790, 0.008147, 0.999552,
		-0.716046, -0.697894, -0.014935,
		0.697459, -0.716155, 0.025926,
		37.284355, 42.288219, 47.725983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562706, 42.134270, 47.969158>,  <36.796135, 42.789528, 47.707832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562706, 42.134270, 47.969158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956650, 42.139069, 48.038345>,  <37.193016, 42.141949, 48.079857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956650, 42.139069, 48.038345>,  <36.562706, 42.134270, 47.969158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956650, 42.139069, 48.038345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170747, 0.240338, 0.955554,
		-0.030110, -0.970615, 0.238746,
		0.984855, 0.011994, 0.172966,
		37.252106, 42.142666, 48.090237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769978, 41.627502, 48.418327>,  <36.562706, 42.134270, 47.969158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769978, 41.627502, 48.418327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050247, 41.912533, 48.432728>,  <37.218407, 42.083549, 48.441368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050247, 41.912533, 48.432728>,  <36.769978, 41.627502, 48.418327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050247, 41.912533, 48.432728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119119, 0.067079, 0.990612,
		0.703472, -0.698380, 0.131882,
		0.700670, 0.712577, 0.036002,
		37.260448, 42.126305, 48.443527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136932, 41.323677, 48.931149>,  <36.769978, 41.627502, 48.418327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136932, 41.323677, 48.931149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250511, 41.704849, 48.888638>,  <37.318657, 41.933552, 48.863132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250511, 41.704849, 48.888638>,  <37.136932, 41.323677, 48.931149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250511, 41.704849, 48.888638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286285, 0.190035, 0.939110,
		0.915105, -0.236229, 0.326770,
		0.283943, 0.952934, -0.106273,
		37.335693, 41.990730, 48.856754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684319, 41.538048, 49.396915>,  <37.136932, 41.323677, 48.931149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684319, 41.538048, 49.396915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561558, 41.905319, 49.296707>,  <37.487900, 42.125683, 49.236580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561558, 41.905319, 49.296707>,  <37.684319, 41.538048, 49.396915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561558, 41.905319, 49.296707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214106, 0.323086, 0.921832,
		0.927344, 0.229277, -0.295744,
		-0.306905, 0.918176, -0.250523,
		37.469486, 42.180771, 49.221550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194309, 41.935642, 49.629974>,  <37.684319, 41.538048, 49.396915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194309, 41.935642, 49.629974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871117, 42.168201, 49.591747>,  <37.677200, 42.307739, 49.568810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871117, 42.168201, 49.591747>,  <38.194309, 41.935642, 49.629974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871117, 42.168201, 49.591747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166572, 0.380980, 0.909455,
		0.565167, 0.718907, -0.404671,
		-0.807985, 0.581401, -0.095568,
		37.628719, 42.342621, 49.563076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452133, 42.560440, 49.795494>,  <38.194309, 41.935642, 49.629974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452133, 42.560440, 49.795494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057755, 42.612621, 49.837227>,  <37.821125, 42.643932, 49.862267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057755, 42.612621, 49.837227>,  <38.452133, 42.560440, 49.795494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057755, 42.612621, 49.837227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162005, 0.594430, 0.787659,
		0.040735, 0.793495, -0.607212,
		-0.985949, 0.130457, 0.104336,
		37.761971, 42.651760, 49.868526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451569, 43.318016, 49.929993>,  <38.452133, 42.560440, 49.795494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451569, 43.318016, 49.929993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135574, 43.117630, 50.071392>,  <37.945976, 42.997398, 50.156231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135574, 43.117630, 50.071392>,  <38.451569, 43.318016, 49.929993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135574, 43.117630, 50.071392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120842, 0.438020, 0.890806,
		-0.601101, 0.746440, -0.285491,
		-0.789984, -0.500964, 0.353496,
		37.898579, 42.967342, 50.177441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199009, 43.772839, 50.375732>,  <38.451569, 43.318016, 49.929993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199009, 43.772839, 50.375732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996899, 43.448868, 50.494873>,  <37.875633, 43.254486, 50.566357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996899, 43.448868, 50.494873>,  <38.199009, 43.772839, 50.375732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996899, 43.448868, 50.494873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064082, 0.308983, 0.948906,
		-0.860574, 0.498548, -0.104220,
		-0.505278, -0.809925, 0.297851,
		37.845314, 43.205891, 50.584229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846470, 44.029106, 50.857113>,  <38.199009, 43.772839, 50.375732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846470, 44.029106, 50.857113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844532, 43.638954, 50.945312>,  <37.843369, 43.404865, 50.998230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844532, 43.638954, 50.945312>,  <37.846470, 44.029106, 50.857113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844532, 43.638954, 50.945312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012968, 0.220418, 0.975319,
		-0.999904, 0.007585, 0.011581,
		-0.004845, -0.975376, 0.220495,
		37.843079, 43.346340, 51.011459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047421, 44.047401, 50.916759>,  <37.846470, 44.029106, 50.857113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047421, 44.047401, 50.916759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292297, 43.938255, 50.619904>,  <37.439224, 43.872768, 50.441792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292297, 43.938255, 50.619904>,  <37.047421, 44.047401, 50.916759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292297, 43.938255, 50.619904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727549, -0.561958, -0.393542,
		-0.309666, 0.780864, -0.542549,
		0.612192, -0.272864, -0.742136,
		37.475956, 43.856396, 50.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613949, 43.963673, 50.439064>,  <37.047421, 44.047401, 50.916759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613949, 43.963673, 50.439064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928680, 43.786079, 50.267590>,  <37.117519, 43.679523, 50.164703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928680, 43.786079, 50.267590>,  <36.613949, 43.963673, 50.439064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928680, 43.786079, 50.267590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615397, -0.511779, -0.599474,
		0.046764, 0.735498, -0.675911,
		0.786829, -0.443987, -0.428690,
		37.164730, 43.652882, 50.138981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950306, 44.181202, 50.817482>,  <36.613949, 43.963673, 50.439064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950306, 44.181202, 50.817482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720551, 43.939079, 51.037910>,  <35.582695, 43.793808, 51.170170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720551, 43.939079, 51.037910>,  <35.950306, 44.181202, 50.817482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720551, 43.939079, 51.037910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316299, -0.456802, -0.831437,
		0.755002, -0.651875, 0.070928,
		-0.574393, -0.605302, 0.551073,
		35.548233, 43.757488, 51.203232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168938, 43.415550, 50.785671>,  <35.950306, 44.181202, 50.817482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168938, 43.415550, 50.785671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777107, 43.483994, 50.827911>,  <35.542007, 43.525059, 50.853256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777107, 43.483994, 50.827911>,  <36.168938, 43.415550, 50.785671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777107, 43.483994, 50.827911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184644, -0.557584, -0.809325,
		-0.079599, -0.812294, 0.577790,
		-0.979577, 0.171107, 0.105602,
		35.483234, 43.535324, 50.859592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901260, 42.811909, 50.992332>,  <36.168938, 43.415550, 50.785671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901260, 42.811909, 50.992332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611755, 43.036938, 50.832489>,  <35.438053, 43.171955, 50.736584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611755, 43.036938, 50.832489>,  <35.901260, 42.811909, 50.992332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611755, 43.036938, 50.832489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121337, -0.673829, -0.728857,
		-0.679307, -0.479025, 0.555947,
		-0.723754, 0.562574, -0.399613,
		35.394627, 43.205708, 50.712608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471859, 42.282360, 50.596512>,  <35.901260, 42.811909, 50.992332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471859, 42.282360, 50.596512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341930, 42.631813, 50.451595>,  <35.263973, 42.841484, 50.364647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341930, 42.631813, 50.451595>,  <35.471859, 42.282360, 50.596512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341930, 42.631813, 50.451595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228785, -0.444265, -0.866190,
		-0.917687, -0.198469, 0.344181,
		-0.324819, 0.873635, -0.362290,
		35.244484, 42.893902, 50.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844074, 42.071110, 50.327213>,  <35.471859, 42.282360, 50.596512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844074, 42.071110, 50.327213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.960651, 42.412437, 50.154282>,  <35.030598, 42.617233, 50.050522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.960651, 42.412437, 50.154282>,  <34.844074, 42.071110, 50.327213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960651, 42.412437, 50.154282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192699, -0.390316, -0.900289,
		-0.936979, 0.345690, 0.050680,
		0.291439, 0.853318, -0.432333,
		35.048084, 42.668434, 50.024582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329651, 42.267727, 49.845333>,  <34.844074, 42.071110, 50.327213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329651, 42.267727, 49.845333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657322, 42.467419, 49.732391>,  <34.853924, 42.587234, 49.664627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657322, 42.467419, 49.732391>,  <34.329651, 42.267727, 49.845333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657322, 42.467419, 49.732391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171540, -0.256507, -0.951198,
		-0.547288, 0.827634, -0.124487,
		0.819176, 0.499225, -0.282356,
		34.903076, 42.617188, 49.647686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183296, 42.601707, 49.217972>,  <34.329651, 42.267727, 49.845333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183296, 42.601707, 49.217972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583046, 42.588501, 49.223011>,  <34.822895, 42.580578, 49.226032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583046, 42.588501, 49.223011>,  <34.183296, 42.601707, 49.217972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583046, 42.588501, 49.223011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004795, -0.226390, -0.974025,
		0.035011, 0.973477, -0.226090,
		0.999375, -0.033017, 0.012594,
		34.882858, 42.578594, 49.226788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378597, 42.965981, 48.608582>,  <34.183296, 42.601707, 49.217972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378597, 42.965981, 48.608582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703918, 42.751476, 48.698879>,  <34.899113, 42.622776, 48.753059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703918, 42.751476, 48.698879>,  <34.378597, 42.965981, 48.608582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703918, 42.751476, 48.698879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098391, -0.255642, -0.961752,
		0.573458, 0.804409, -0.155152,
		0.813305, -0.536259, 0.225746,
		34.947910, 42.590599, 48.766602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862492, 43.204681, 48.197021>,  <34.378597, 42.965981, 48.608582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862492, 43.204681, 48.197021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007042, 42.850304, 48.313301>,  <35.093773, 42.637676, 48.383068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007042, 42.850304, 48.313301>,  <34.862492, 43.204681, 48.197021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007042, 42.850304, 48.313301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075685, -0.282872, -0.956167,
		0.929342, 0.367542, -0.035172,
		0.361380, -0.885944, 0.290703,
		35.115456, 42.584522, 48.400513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427460, 43.025772, 47.760334>,  <34.862492, 43.204681, 48.197021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427460, 43.025772, 47.760334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307739, 42.682236, 47.926617>,  <35.235905, 42.476116, 48.026386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307739, 42.682236, 47.926617>,  <35.427460, 43.025772, 47.760334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307739, 42.682236, 47.926617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017909, -0.440663, -0.897494,
		0.953990, -0.261177, 0.147273,
		-0.299303, -0.858838, 0.415711,
		35.217949, 42.424583, 48.051331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666527, 42.634125, 47.296486>,  <35.427460, 43.025772, 47.760334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666527, 42.634125, 47.296486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435303, 42.395138, 47.518795>,  <35.296570, 42.251747, 47.652180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435303, 42.395138, 47.518795>,  <35.666527, 42.634125, 47.296486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435303, 42.395138, 47.518795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210290, -0.549018, -0.808924,
		0.788435, -0.584477, 0.191722,
		-0.578056, -0.597467, 0.555775,
		35.261887, 42.215897, 47.685528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887001, 41.946136, 47.287651>,  <35.666527, 42.634125, 47.296486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887001, 41.946136, 47.287651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490643, 41.989124, 47.320061>,  <35.252827, 42.014915, 47.339508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490643, 41.989124, 47.320061>,  <35.887001, 41.946136, 47.287651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490643, 41.989124, 47.320061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124112, -0.496665, -0.859022,
		-0.052075, -0.861263, 0.505485,
		-0.990901, 0.107470, 0.081029,
		35.193371, 42.021366, 47.344368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626801, 41.265972, 47.042820>,  <35.887001, 41.946136, 47.287651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626801, 41.265972, 47.042820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308105, 41.507633, 47.036964>,  <35.116890, 41.652630, 47.033451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308105, 41.507633, 47.036964>,  <35.626801, 41.265972, 47.042820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308105, 41.507633, 47.036964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321316, -0.444014, -0.836426,
		-0.511830, -0.661704, 0.547885,
		-0.796734, 0.604152, -0.014643,
		35.069084, 41.688877, 47.032570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979984, 40.828609, 46.872799>,  <35.626801, 41.265972, 47.042820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979984, 40.828609, 46.872799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915802, 41.207539, 46.761925>,  <34.877293, 41.434895, 46.695400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915802, 41.207539, 46.761925>,  <34.979984, 40.828609, 46.872799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915802, 41.207539, 46.761925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405844, -0.319309, -0.856349,
		-0.899746, -0.024916, 0.435701,
		-0.160460, 0.947323, -0.277185,
		34.867664, 41.491737, 46.678768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319775, 40.871948, 46.569080>,  <34.979984, 40.828609, 46.872799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319775, 40.871948, 46.569080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533134, 41.180500, 46.430252>,  <34.661148, 41.365631, 46.346954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533134, 41.180500, 46.430252>,  <34.319775, 40.871948, 46.569080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533134, 41.180500, 46.430252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229412, -0.263010, -0.937121,
		-0.814161, 0.579479, 0.036675,
		0.533396, 0.771381, -0.347072,
		34.693153, 41.411915, 46.326130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031525, 41.030735, 45.973251>,  <34.319775, 40.871948, 46.569080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031525, 41.030735, 45.973251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355141, 41.261372, 45.927650>,  <34.549309, 41.399754, 45.900291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355141, 41.261372, 45.927650>,  <34.031525, 41.030735, 45.973251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355141, 41.261372, 45.927650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034395, -0.147185, -0.988511,
		-0.586746, 0.803666, -0.099247,
		0.809040, 0.576591, -0.114002,
		34.597855, 41.434349, 45.893452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922165, 41.545689, 45.441162>,  <34.031525, 41.030735, 45.973251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922165, 41.545689, 45.441162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318169, 41.490105, 45.450741>,  <34.555771, 41.456753, 45.456490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318169, 41.490105, 45.450741>,  <33.922165, 41.545689, 45.441162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318169, 41.490105, 45.450741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009219, -0.233272, -0.972368,
		0.140707, 0.962432, -0.232222,
		0.990008, -0.138960, 0.023950,
		34.615170, 41.448418, 45.457928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147316, 41.884743, 44.790707>,  <33.922165, 41.545689, 45.441162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147316, 41.884743, 44.790707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466721, 41.672382, 44.904209>,  <34.658363, 41.544968, 44.972309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466721, 41.672382, 44.904209>,  <34.147316, 41.884743, 44.790707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466721, 41.672382, 44.904209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153260, -0.276542, -0.948702,
		0.582138, 0.801041, -0.139457,
		0.798515, -0.530902, 0.283753,
		34.706276, 41.513111, 44.989334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654068, 41.952065, 44.210114>,  <34.147316, 41.884743, 44.790707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654068, 41.952065, 44.210114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.775364, 41.620174, 44.397556>,  <34.848141, 41.421040, 44.510021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.775364, 41.620174, 44.397556>,  <34.654068, 41.952065, 44.210114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775364, 41.620174, 44.397556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198916, -0.425811, -0.882676,
		0.931920, 0.360879, 0.035923,
		0.303243, -0.829730, 0.468606,
		34.866337, 41.371254, 44.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272465, 41.771557, 43.806969>,  <34.654068, 41.952065, 44.210114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272465, 41.771557, 43.806969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146629, 41.452415, 44.012672>,  <35.071129, 41.260929, 44.136097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146629, 41.452415, 44.012672>,  <35.272465, 41.771557, 43.806969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146629, 41.452415, 44.012672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197105, -0.584867, -0.786817,
		0.928538, -0.146161, 0.341254,
		-0.314590, -0.797852, 0.514262,
		35.052254, 41.213058, 44.166950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.016151, 33.570568, 29.086758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741158, 33.812233, 29.247934>,  <39.576160, 33.957230, 29.344641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741158, 33.812233, 29.247934>,  <40.016151, 33.570568, 29.086758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741158, 33.812233, 29.247934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491626, -0.021178, 0.870549,
		0.534485, 0.796581, -0.282462,
		-0.687481, 0.604160, 0.402940,
		39.534912, 33.993481, 29.368816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353951, 34.151581, 29.391275>,  <40.016151, 33.570568, 29.086758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353951, 34.151581, 29.391275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014282, 34.048130, 29.575460>,  <39.810482, 33.986061, 29.685972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014282, 34.048130, 29.575460>,  <40.353951, 34.151581, 29.391275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014282, 34.048130, 29.575460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507895, -0.160918, 0.846255,
		-0.144767, 0.952480, 0.268001,
		-0.849167, -0.258626, 0.460464,
		39.759533, 33.970543, 29.713600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130898, 34.604317, 29.920696>,  <40.353951, 34.151581, 29.391275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130898, 34.604317, 29.920696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952919, 34.256416, 30.006079>,  <39.846134, 34.047676, 30.057308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952919, 34.256416, 30.006079>,  <40.130898, 34.604317, 29.920696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952919, 34.256416, 30.006079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519616, -0.056597, 0.852523,
		-0.729400, 0.490239, 0.477118,
		-0.444944, -0.869748, 0.213454,
		39.819435, 33.995491, 30.070114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878483, 34.673599, 30.579975>,  <40.130898, 34.604317, 29.920696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878483, 34.673599, 30.579975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929031, 34.278275, 30.545887>,  <39.959362, 34.041080, 30.525434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929031, 34.278275, 30.545887>,  <39.878483, 34.673599, 30.579975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929031, 34.278275, 30.545887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614491, 0.010554, 0.788853,
		-0.778736, -0.152058, 0.608645,
		0.126375, -0.988315, -0.085219,
		39.966946, 33.981781, 30.520321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760658, 34.530399, 31.295849>,  <39.878483, 34.673599, 30.579975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760658, 34.530399, 31.295849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.944012, 34.222790, 31.117640>,  <40.054024, 34.038223, 31.010714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.944012, 34.222790, 31.117640>,  <39.760658, 34.530399, 31.295849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944012, 34.222790, 31.117640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496619, -0.194097, 0.845988,
		-0.737059, -0.609041, 0.292940,
		0.458382, -0.769023, -0.445522,
		40.081528, 33.992085, 30.983982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819225, 34.066578, 31.895138>,  <39.760658, 34.530399, 31.295849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819225, 34.066578, 31.895138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.063232, 33.948277, 31.601088>,  <40.209637, 33.877296, 31.424658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.063232, 33.948277, 31.601088>,  <39.819225, 34.066578, 31.895138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063232, 33.948277, 31.601088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752379, -0.074880, 0.654460,
		-0.248603, -0.952326, 0.176838,
		0.610018, -0.295750, -0.735126,
		40.246239, 33.859550, 31.380550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065990, 33.457096, 32.269001>,  <39.819225, 34.066578, 31.895138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065990, 33.457096, 32.269001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.313717, 33.514923, 31.960316>,  <40.462353, 33.549618, 31.775105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.313717, 33.514923, 31.960316>,  <40.065990, 33.457096, 32.269001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313717, 33.514923, 31.960316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784460, -0.154830, 0.600542,
		-0.032665, -0.977307, -0.209297,
		0.619318, 0.144568, -0.771715,
		40.499512, 33.558292, 31.728802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323284, 32.852779, 32.099430>,  <40.065990, 33.457096, 32.269001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323284, 32.852779, 32.099430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.573124, 33.144104, 31.986694>,  <40.723026, 33.318897, 31.919052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.573124, 33.144104, 31.986694>,  <40.323284, 32.852779, 32.099430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573124, 33.144104, 31.986694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689192, -0.344342, 0.637529,
		0.367271, -0.592444, -0.717023,
		0.624601, 0.728313, -0.281841,
		40.760506, 33.362598, 31.902142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951012, 32.516922, 32.030373>,  <40.323284, 32.852779, 32.099430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951012, 32.516922, 32.030373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049412, 32.903885, 32.054417>,  <41.108452, 33.136063, 32.068844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049412, 32.903885, 32.054417>,  <40.951012, 32.516922, 32.030373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049412, 32.903885, 32.054417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822129, -0.241102, 0.515726,
		0.513408, -0.077451, -0.854642,
		0.245999, 0.967404, 0.060109,
		41.123211, 33.194107, 32.072449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607025, 32.444290, 31.864458>,  <40.951012, 32.516922, 32.030373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607025, 32.444290, 31.864458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546150, 32.774162, 32.082355>,  <41.509624, 32.972084, 32.213093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546150, 32.774162, 32.082355>,  <41.607025, 32.444290, 31.864458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546150, 32.774162, 32.082355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772295, -0.244717, 0.586237,
		0.616765, 0.509920, -0.599651,
		-0.152189, 0.824678, 0.544742,
		41.500492, 33.021564, 32.245777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150879, 32.829185, 31.971197>,  <41.607025, 32.444290, 31.864458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150879, 32.829185, 31.971197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929447, 32.937832, 32.286098>,  <41.796589, 33.003021, 32.475040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929447, 32.937832, 32.286098>,  <42.150879, 32.829185, 31.971197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929447, 32.937832, 32.286098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749791, -0.248848, 0.613097,
		0.362434, 0.929677, -0.065897,
		-0.553584, 0.271616, 0.787255,
		41.763371, 33.019318, 32.522274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579681, 33.087704, 32.476086>,  <42.150879, 32.829185, 31.971197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579681, 33.087704, 32.476086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258675, 33.020912, 32.705200>,  <42.066071, 32.980839, 32.842670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258675, 33.020912, 32.705200>,  <42.579681, 33.087704, 32.476086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258675, 33.020912, 32.705200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596036, -0.267245, 0.757179,
		0.026642, 0.949051, 0.313994,
		-0.802515, -0.166979, 0.572789,
		42.017921, 32.970818, 32.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961853, 33.018818, 33.171234>,  <42.579681, 33.087704, 32.476086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961853, 33.018818, 33.171234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579731, 32.942719, 33.261734>,  <42.350456, 32.897060, 33.316036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579731, 32.942719, 33.261734>,  <42.961853, 33.018818, 33.171234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579731, 32.942719, 33.261734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262906, -0.196883, 0.944520,
		-0.135146, 0.961792, 0.238101,
		-0.955309, -0.190246, 0.226253,
		42.293137, 32.885643, 33.329609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716599, 33.397629, 33.723854>,  <42.961853, 33.018818, 33.171234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716599, 33.397629, 33.723854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495567, 33.064415, 33.713207>,  <42.362949, 32.864487, 33.706821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495567, 33.064415, 33.713207>,  <42.716599, 33.397629, 33.723854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495567, 33.064415, 33.713207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299356, -0.228170, 0.926458,
		-0.777848, 0.503971, 0.375456,
		-0.552575, -0.833038, -0.026615,
		42.329796, 32.814503, 33.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445198, 33.297028, 34.425919>,  <42.716599, 33.397629, 33.723854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445198, 33.297028, 34.425919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442707, 32.937546, 34.250515>,  <42.441212, 32.721855, 34.145271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442707, 32.937546, 34.250515>,  <42.445198, 33.297028, 34.425919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442707, 32.937546, 34.250515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211510, -0.429782, 0.877810,
		-0.977356, -0.087283, 0.192761,
		-0.006227, -0.898704, -0.438511,
		42.440838, 32.667934, 34.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068871, 32.854843, 34.939529>,  <42.445198, 33.297028, 34.425919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068871, 32.854843, 34.939529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.242542, 32.590893, 34.694237>,  <42.346745, 32.432522, 34.547062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.242542, 32.590893, 34.694237>,  <42.068871, 32.854843, 34.939529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242542, 32.590893, 34.694237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237412, -0.572855, 0.784521,
		-0.868980, -0.486209, -0.092058,
		0.434177, -0.659877, -0.613231,
		42.372795, 32.392929, 34.510269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846115, 32.136082, 35.231644>,  <42.068871, 32.854843, 34.939529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846115, 32.136082, 35.231644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.191975, 32.120461, 35.031303>,  <42.399490, 32.111088, 34.911098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.191975, 32.120461, 35.031303>,  <41.846115, 32.136082, 35.231644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191975, 32.120461, 35.031303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397920, -0.555326, 0.730255,
		-0.306654, -0.830716, -0.464624,
		0.864652, -0.039052, -0.500851,
		42.451370, 32.108746, 34.881046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118938, 31.533875, 35.349846>,  <41.846115, 32.136082, 35.231644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118938, 31.533875, 35.349846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459000, 31.705788, 35.228176>,  <42.663036, 31.808935, 35.155174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459000, 31.705788, 35.228176>,  <42.118938, 31.533875, 35.349846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459000, 31.705788, 35.228176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507128, -0.512990, 0.692576,
		0.141617, -0.743054, -0.654076,
		0.850156, 0.429781, -0.304175,
		42.714046, 31.834723, 35.136925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730167, 31.007513, 35.468460>,  <42.118938, 31.533875, 35.349846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730167, 31.007513, 35.468460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921783, 31.354698, 35.416065>,  <43.036755, 31.563009, 35.384628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921783, 31.354698, 35.416065>,  <42.730167, 31.007513, 35.468460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921783, 31.354698, 35.416065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731466, -0.312222, 0.606197,
		0.485261, -0.386205, -0.784454,
		0.479040, 0.867965, -0.130987,
		43.065495, 31.615088, 35.376770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462540, 30.875360, 35.541645>,  <42.730167, 31.007513, 35.468460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462540, 30.875360, 35.541645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444290, 31.268591, 35.612614>,  <43.433342, 31.504530, 35.655197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444290, 31.268591, 35.612614>,  <43.462540, 30.875360, 35.541645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444290, 31.268591, 35.612614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795415, -0.071701, 0.601809,
		0.604346, 0.168581, -0.778683,
		-0.045621, 0.983077, 0.177424,
		43.430603, 31.563515, 35.665840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199474, 31.198029, 35.408848>,  <43.462540, 30.875360, 35.541645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199474, 31.198029, 35.408848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.005978, 31.449148, 35.652771>,  <43.889881, 31.599819, 35.799126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.005978, 31.449148, 35.652771>,  <44.199474, 31.198029, 35.408848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005978, 31.449148, 35.652771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771778, -0.022596, 0.635490,
		0.412740, 0.778047, -0.473592,
		-0.483740, 0.627800, 0.609806,
		43.860855, 31.637487, 35.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599384, 31.846735, 35.614597>,  <44.199474, 31.198029, 35.408848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599384, 31.846735, 35.614597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335529, 31.713657, 35.884174>,  <44.177216, 31.633810, 36.045921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335529, 31.713657, 35.884174>,  <44.599384, 31.846735, 35.614597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335529, 31.713657, 35.884174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686949, 0.096927, 0.720213,
		-0.304933, 0.938040, 0.164608,
		-0.659634, -0.332694, 0.673942,
		44.137638, 31.613850, 36.086357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982002, 32.529564, 35.656269>,  <44.599384, 31.846735, 35.614597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982002, 32.529564, 35.656269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.368736, 32.513348, 35.555397>,  <45.600777, 32.503616, 35.494873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.368736, 32.513348, 35.555397>,  <44.982002, 32.529564, 35.656269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368736, 32.513348, 35.555397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249284, 0.065322, -0.966225,
		0.055648, 0.997040, 0.053049,
		0.966830, -0.040544, -0.252181,
		45.658787, 32.501183, 35.479744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996811, 33.088615, 35.180428>,  <44.982002, 32.529564, 35.656269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996811, 33.088615, 35.180428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329464, 32.885803, 35.089825>,  <45.529057, 32.764114, 35.035461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329464, 32.885803, 35.089825>,  <44.996811, 33.088615, 35.180428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329464, 32.885803, 35.089825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258570, 0.007426, -0.965964,
		0.491455, 0.861896, -0.124927,
		0.831633, -0.507031, -0.226510,
		45.578953, 32.733692, 35.021873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312828, 33.442036, 34.739811>,  <44.996811, 33.088615, 35.180428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312828, 33.442036, 34.739811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459900, 33.076195, 34.672497>,  <45.548141, 32.856689, 34.632111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459900, 33.076195, 34.672497>,  <45.312828, 33.442036, 34.739811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459900, 33.076195, 34.672497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276530, 0.065246, -0.958788,
		0.887887, 0.399060, -0.228925,
		0.367677, -0.914600, -0.168283,
		45.570202, 32.801815, 34.622013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728863, 33.417725, 34.121880>,  <45.312828, 33.442036, 34.739811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728863, 33.417725, 34.121880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644264, 33.034073, 34.197075>,  <45.593506, 32.803883, 34.242191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644264, 33.034073, 34.197075>,  <45.728863, 33.417725, 34.121880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644264, 33.034073, 34.197075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287027, -0.122910, -0.950004,
		0.934283, -0.254880, -0.249301,
		-0.211495, -0.959129, 0.187991,
		45.580814, 32.746334, 34.253471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100521, 33.057789, 33.611885>,  <45.728863, 33.417725, 34.121880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100521, 33.057789, 33.611885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.789608, 32.843414, 33.743702>,  <45.603058, 32.714790, 33.822792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.789608, 32.843414, 33.743702>,  <46.100521, 33.057789, 33.611885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789608, 32.843414, 33.743702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392739, 0.004116, -0.919641,
		0.491511, -0.844249, -0.213683,
		-0.777285, -0.535936, 0.329547,
		45.556423, 32.682632, 33.842567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031940, 32.596649, 33.130287>,  <46.100521, 33.057789, 33.611885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031940, 32.596649, 33.130287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673843, 32.586555, 33.308231>,  <45.458984, 32.580498, 33.414997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673843, 32.586555, 33.308231>,  <46.031940, 32.596649, 33.130287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673843, 32.586555, 33.308231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444809, -0.007902, -0.895591,
		0.026114, -0.999650, -0.004149,
		-0.895245, -0.025233, 0.444860,
		45.405270, 32.578983, 33.441689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591129, 31.960999, 32.881107>,  <46.031940, 32.596649, 33.130287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591129, 31.960999, 32.881107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322659, 32.218441, 33.028236>,  <45.161575, 32.372906, 33.116516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322659, 32.218441, 33.028236>,  <45.591129, 31.960999, 32.881107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322659, 32.218441, 33.028236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428579, 0.067959, -0.900945,
		-0.604850, -0.762334, 0.230224,
		-0.671175, 0.643606, 0.367826,
		45.121307, 32.411522, 33.138584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967262, 31.628555, 32.785954>,  <45.591129, 31.960999, 32.881107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967262, 31.628555, 32.785954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873184, 32.014069, 32.836246>,  <44.816738, 32.245377, 32.866421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873184, 32.014069, 32.836246>,  <44.967262, 31.628555, 32.785954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873184, 32.014069, 32.836246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570282, -0.032089, -0.820822,
		-0.787058, -0.264758, 0.557174,
		-0.235198, 0.963781, 0.125731,
		44.802624, 32.303204, 32.873966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271557, 31.564796, 32.660694>,  <44.967262, 31.628555, 32.785954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271557, 31.564796, 32.660694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370129, 31.951664, 32.635860>,  <44.429272, 32.183784, 32.620960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370129, 31.951664, 32.635860>,  <44.271557, 31.564796, 32.660694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370129, 31.951664, 32.635860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408222, 0.045487, -0.911749,
		-0.878991, 0.250030, 0.406029,
		0.246433, 0.967169, -0.062085,
		44.444057, 32.241814, 32.617233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683884, 31.875250, 32.343071>,  <44.271557, 31.564796, 32.660694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683884, 31.875250, 32.343071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970776, 32.149357, 32.292496>,  <44.142910, 32.313820, 32.262150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970776, 32.149357, 32.292496>,  <43.683884, 31.875250, 32.343071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970776, 32.149357, 32.292496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316477, 0.158677, -0.935235,
		-0.620825, 0.710793, 0.330680,
		0.717230, 0.685270, -0.126439,
		44.185944, 32.354939, 32.254562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345898, 32.577118, 32.358124>,  <43.683884, 31.875250, 32.343071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345898, 32.577118, 32.358124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690132, 32.602921, 32.156040>,  <43.896671, 32.618404, 32.034790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690132, 32.602921, 32.156040>,  <43.345898, 32.577118, 32.358124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690132, 32.602921, 32.156040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509200, 0.129413, -0.850863,
		0.010491, 0.989490, 0.144220,
		0.860584, 0.064510, -0.505206,
		43.948307, 32.622272, 32.004478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237644, 33.184082, 32.042946>,  <43.345898, 32.577118, 32.358124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237644, 33.184082, 32.042946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522003, 33.018284, 31.815678>,  <43.692619, 32.918804, 31.679316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522003, 33.018284, 31.815678>,  <43.237644, 33.184082, 32.042946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522003, 33.018284, 31.815678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443940, 0.362114, -0.819628,
		0.545475, 0.834906, 0.073415,
		0.710897, -0.414495, -0.568172,
		43.735271, 32.893936, 31.645226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489445, 33.651184, 31.609972>,  <43.237644, 33.184082, 32.042946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489445, 33.651184, 31.609972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.578770, 33.299694, 31.441225>,  <43.632362, 33.088799, 31.339977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.578770, 33.299694, 31.441225>,  <43.489445, 33.651184, 31.609972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578770, 33.299694, 31.441225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373886, 0.322475, -0.869608,
		0.900190, 0.351924, -0.256532,
		0.223311, -0.878726, -0.421868,
		43.645763, 33.036076, 31.314665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571625, 33.866760, 30.985764>,  <43.489445, 33.651184, 31.609972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571625, 33.866760, 30.985764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557102, 33.471138, 30.928549>,  <43.548389, 33.233765, 30.894220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557102, 33.471138, 30.928549>,  <43.571625, 33.866760, 30.985764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557102, 33.471138, 30.928549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355635, 0.146546, -0.923064,
		0.933920, 0.017359, -0.357061,
		-0.036302, -0.989051, -0.143036,
		43.546211, 33.174423, 30.885637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976044, 33.700901, 30.455696>,  <43.571625, 33.866760, 30.985764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976044, 33.700901, 30.455696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723503, 33.390869, 30.445608>,  <43.571980, 33.204849, 30.439556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723503, 33.390869, 30.445608>,  <43.976044, 33.700901, 30.455696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723503, 33.390869, 30.445608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322008, 0.291602, -0.900710,
		0.705480, -0.560548, -0.433687,
		-0.631355, -0.775084, -0.025219,
		43.534096, 33.158344, 30.438042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918343, 33.500965, 29.751358>,  <43.976044, 33.700901, 30.455696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918343, 33.500965, 29.751358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597034, 33.301945, 29.882318>,  <43.404247, 33.182533, 29.960896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597034, 33.301945, 29.882318>,  <43.918343, 33.500965, 29.751358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597034, 33.301945, 29.882318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445845, 0.137816, -0.884437,
		0.394934, -0.856415, -0.332536,
		-0.803274, -0.497554, 0.327400,
		43.356052, 33.152679, 29.980539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587322, 33.050884, 29.144045>,  <43.918343, 33.500965, 29.751358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587322, 33.050884, 29.144045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326416, 33.144302, 29.432491>,  <43.169872, 33.200352, 29.605558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326416, 33.144302, 29.432491>,  <43.587322, 33.050884, 29.144045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326416, 33.144302, 29.432491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732804, 0.048916, -0.678680,
		-0.193773, -0.971116, 0.139233,
		-0.652266, 0.233541, 0.721116,
		43.130737, 33.214363, 29.648827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930061, 32.677998, 28.914131>,  <43.587322, 33.050884, 29.144045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930061, 32.677998, 28.914131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830948, 32.965046, 29.174475>,  <42.771481, 33.137276, 29.330681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830948, 32.965046, 29.174475>,  <42.930061, 32.677998, 28.914131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830948, 32.965046, 29.174475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790417, 0.238733, -0.564134,
		-0.560218, -0.654233, 0.508069,
		-0.247782, 0.717625, 0.650860,
		42.756615, 33.180332, 29.369732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214294, 32.548622, 28.878075>,  <42.930061, 32.677998, 28.914131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214294, 32.548622, 28.878075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265579, 32.910046, 29.041611>,  <42.296349, 33.126900, 29.139732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265579, 32.910046, 29.041611>,  <42.214294, 32.548622, 28.878075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265579, 32.910046, 29.041611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771799, 0.349789, -0.531013,
		-0.622807, -0.247459, 0.742210,
		0.128212, 0.903555, 0.408839,
		42.304043, 33.181110, 29.164263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464085, 32.856270, 29.049755>,  <42.214294, 32.548622, 28.878075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464085, 32.856270, 29.049755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720547, 33.161339, 29.015699>,  <41.874424, 33.344379, 28.995266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720547, 33.161339, 29.015699>,  <41.464085, 32.856270, 29.049755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720547, 33.161339, 29.015699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699896, 0.535632, -0.472487,
		-0.314752, 0.362524, 0.877216,
		0.641153, 0.762676, -0.085138,
		41.912891, 33.390141, 28.990158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.102692, 39.088512, 40.873707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721596, 38.993519, 40.949482>,  <38.492939, 38.936523, 40.994949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721596, 38.993519, 40.949482>,  <39.102692, 39.088512, 40.873707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721596, 38.993519, 40.949482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030340, -0.694868, -0.718497,
		0.302266, -0.678793, 0.669235,
		-0.952741, -0.237482, 0.189440,
		38.435772, 38.922276, 41.006313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122967, 38.375259, 40.937557>,  <39.102692, 39.088512, 40.873707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122967, 38.375259, 40.937557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741688, 38.463799, 40.855171>,  <38.512920, 38.516922, 40.805740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741688, 38.463799, 40.855171>,  <39.122967, 38.375259, 40.937557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741688, 38.463799, 40.855171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027019, -0.616124, -0.787186,
		-0.301142, -0.755908, 0.581306,
		-0.953196, 0.221349, -0.205965,
		38.455730, 38.530205, 40.793381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787155, 37.720051, 40.851131>,  <39.122967, 38.375259, 40.937557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787155, 37.720051, 40.851131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552116, 37.993458, 40.677906>,  <38.411095, 38.157501, 40.573971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552116, 37.993458, 40.677906>,  <38.787155, 37.720051, 40.851131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552116, 37.993458, 40.677906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100236, -0.592565, -0.799262,
		-0.802924, -0.426232, 0.416700,
		-0.587593, 0.683515, -0.433061,
		38.375839, 38.198513, 40.547989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224556, 37.361977, 40.647739>,  <38.787155, 37.720051, 40.851131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224556, 37.361977, 40.647739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275505, 37.692280, 40.427956>,  <38.306076, 37.890461, 40.296085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275505, 37.692280, 40.427956>,  <38.224556, 37.361977, 40.647739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275505, 37.692280, 40.427956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157478, -0.530108, -0.833179,
		-0.979273, 0.192654, 0.062516,
		0.127375, 0.825754, -0.549459,
		38.313717, 37.940006, 40.263119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813301, 37.265697, 40.070545>,  <38.224556, 37.361977, 40.647739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813301, 37.265697, 40.070545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038425, 37.569195, 39.939362>,  <38.173500, 37.751293, 39.860649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038425, 37.569195, 39.939362>,  <37.813301, 37.265697, 40.070545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038425, 37.569195, 39.939362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190072, -0.267339, -0.944670,
		-0.804436, 0.594006, -0.006246,
		0.562810, 0.758740, -0.327961,
		38.207268, 37.796818, 39.840973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353207, 37.594967, 39.600746>,  <37.813301, 37.265697, 40.070545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353207, 37.594967, 39.600746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730476, 37.666813, 39.488922>,  <37.956841, 37.709923, 39.421829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730476, 37.666813, 39.488922>,  <37.353207, 37.594967, 39.600746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730476, 37.666813, 39.488922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151593, -0.516072, -0.843024,
		-0.295694, 0.837500, -0.459519,
		0.943178, 0.179617, -0.279558,
		38.013432, 37.720699, 39.405056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336044, 37.683846, 38.850754>,  <37.353207, 37.594967, 39.600746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336044, 37.683846, 38.850754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710117, 37.589512, 38.956451>,  <37.934559, 37.532913, 39.019871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710117, 37.589512, 38.956451>,  <37.336044, 37.683846, 38.850754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710117, 37.589512, 38.956451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083338, -0.578603, -0.811341,
		0.344234, 0.780769, -0.521442,
		0.935178, -0.235835, 0.264243,
		37.990669, 37.518761, 39.035725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681835, 37.573700, 38.140182>,  <37.336044, 37.683846, 38.850754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681835, 37.573700, 38.140182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987232, 37.450989, 38.367508>,  <38.170471, 37.377361, 38.503902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987232, 37.450989, 38.367508>,  <37.681835, 37.573700, 38.140182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987232, 37.450989, 38.367508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195193, -0.729211, -0.655859,
		0.615618, 0.611671, -0.496863,
		0.763488, -0.306774, 0.568309,
		38.216278, 37.358955, 38.538002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254875, 37.574596, 37.731808>,  <37.681835, 37.573700, 38.140182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254875, 37.574596, 37.731808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266991, 37.298115, 38.020618>,  <38.274261, 37.132225, 38.193905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266991, 37.298115, 38.020618>,  <38.254875, 37.574596, 37.731808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266991, 37.298115, 38.020618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260476, -0.691942, -0.673326,
		0.965005, 0.208465, 0.159083,
		0.030289, -0.691200, 0.722028,
		38.276077, 37.090755, 38.237228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873730, 37.292500, 37.666779>,  <38.254875, 37.574596, 37.731808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873730, 37.292500, 37.666779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680389, 37.021992, 37.889141>,  <38.564384, 36.859688, 38.022560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680389, 37.021992, 37.889141>,  <38.873730, 37.292500, 37.666779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680389, 37.021992, 37.889141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252445, -0.715708, -0.651178,
		0.838240, -0.174410, 0.516657,
		-0.483348, -0.676271, 0.555906,
		38.535385, 36.819111, 38.055912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314739, 36.729561, 37.551769>,  <38.873730, 37.292500, 37.666779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314739, 36.729561, 37.551769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977428, 36.584751, 37.710678>,  <38.775043, 36.497864, 37.806023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977428, 36.584751, 37.710678>,  <39.314739, 36.729561, 37.551769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977428, 36.584751, 37.710678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103331, -0.834540, -0.541171,
		0.527456, -0.415306, 0.741155,
		-0.843275, -0.362028, 0.397269,
		38.724445, 36.476143, 37.829857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514965, 36.104931, 37.945618>,  <39.314739, 36.729561, 37.551769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514965, 36.104931, 37.945618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130997, 36.116043, 37.834061>,  <38.900616, 36.122711, 37.767128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130997, 36.116043, 37.834061>,  <39.514965, 36.104931, 37.945618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130997, 36.116043, 37.834061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146948, -0.797450, -0.585218,
		-0.238660, -0.602746, 0.761406,
		-0.959921, 0.027782, -0.278891,
		38.843021, 36.124378, 37.750393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227482, 35.330185, 38.021275>,  <39.514965, 36.104931, 37.945618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227482, 35.330185, 38.021275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055580, 35.562645, 37.744846>,  <38.952438, 35.702122, 37.578991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055580, 35.562645, 37.744846>,  <39.227482, 35.330185, 38.021275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055580, 35.562645, 37.744846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113086, -0.793966, -0.597353,
		-0.895835, -0.178566, 0.406932,
		-0.429757, 0.581148, -0.691069,
		38.926651, 35.736988, 37.537525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238800, 34.874493, 37.351799>,  <39.227482, 35.330185, 38.021275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238800, 34.874493, 37.351799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514065, 34.586285, 37.317646>,  <39.679222, 34.413361, 37.297153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514065, 34.586285, 37.317646>,  <39.238800, 34.874493, 37.351799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514065, 34.586285, 37.317646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144691, -0.251595, 0.956956,
		-0.710986, -0.646184, -0.277390,
		0.688159, -0.720518, -0.085383,
		39.720512, 34.370129, 37.292030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879799, 34.330578, 37.581604>,  <39.238800, 34.874493, 37.351799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879799, 34.330578, 37.581604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270809, 34.288284, 37.654564>,  <39.505413, 34.262909, 37.698341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270809, 34.288284, 37.654564>,  <38.879799, 34.330578, 37.581604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270809, 34.288284, 37.654564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198439, -0.169179, 0.965402,
		-0.071219, -0.979897, -0.186358,
		0.977522, -0.105736, 0.182401,
		39.564064, 34.256561, 37.709286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909286, 33.639961, 37.923336>,  <38.879799, 34.330578, 37.581604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909286, 33.639961, 37.923336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249828, 33.832233, 38.007378>,  <39.454155, 33.947598, 38.057804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249828, 33.832233, 38.007378>,  <38.909286, 33.639961, 37.923336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249828, 33.832233, 38.007378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086173, -0.266935, 0.959854,
		0.517465, -0.835282, -0.185834,
		0.851354, 0.480677, 0.210108,
		39.505234, 33.976437, 38.070412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377319, 33.164349, 38.254673>,  <38.909286, 33.639961, 37.923336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377319, 33.164349, 38.254673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479935, 33.531410, 38.376064>,  <39.541504, 33.751648, 38.448898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479935, 33.531410, 38.376064>,  <39.377319, 33.164349, 38.254673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479935, 33.531410, 38.376064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302740, -0.221898, 0.926882,
		0.917898, -0.329657, 0.220885,
		0.256539, 0.917653, 0.303480,
		39.556896, 33.806705, 38.467110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638378, 33.053177, 38.999943>,  <39.377319, 33.164349, 38.254673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638378, 33.053177, 38.999943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594822, 33.450470, 38.983795>,  <39.568687, 33.688847, 38.974106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594822, 33.450470, 38.983795>,  <39.638378, 33.053177, 38.999943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594822, 33.450470, 38.983795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253908, 0.011475, 0.967161,
		0.961080, 0.115564, 0.250940,
		-0.108890, 0.993234, -0.040371,
		39.562157, 33.748440, 38.971684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080544, 33.357018, 39.535065>,  <39.638378, 33.053177, 38.999943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080544, 33.357018, 39.535065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788494, 33.612514, 39.437962>,  <39.613266, 33.765812, 39.379700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788494, 33.612514, 39.437962>,  <40.080544, 33.357018, 39.535065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788494, 33.612514, 39.437962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120088, 0.229788, 0.965803,
		0.672683, 0.734306, -0.091068,
		-0.730121, 0.638743, -0.242756,
		39.569458, 33.804138, 39.365135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199471, 33.864197, 39.876652>,  <40.080544, 33.357018, 39.535065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199471, 33.864197, 39.876652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812969, 33.941364, 39.808380>,  <39.581066, 33.987663, 39.767418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812969, 33.941364, 39.808380>,  <40.199471, 33.864197, 39.876652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812969, 33.941364, 39.808380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096812, 0.342045, 0.934683,
		0.238699, 0.919667, -0.311826,
		-0.966256, 0.192920, -0.170680,
		39.523094, 33.999241, 39.757175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103848, 34.485073, 40.218922>,  <40.199471, 33.864197, 39.876652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103848, 34.485073, 40.218922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732384, 34.348392, 40.161190>,  <39.509506, 34.266384, 40.126549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732384, 34.348392, 40.161190>,  <40.103848, 34.485073, 40.218922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732384, 34.348392, 40.161190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267944, 0.348883, 0.898046,
		-0.256505, 0.872653, -0.415550,
		-0.928661, -0.341698, -0.144332,
		39.453785, 34.245884, 40.117889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585930, 35.020996, 40.282341>,  <40.103848, 34.485073, 40.218922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585930, 35.020996, 40.282341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351509, 34.703987, 40.349800>,  <39.210857, 34.513783, 40.390278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351509, 34.703987, 40.349800>,  <39.585930, 35.020996, 40.282341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351509, 34.703987, 40.349800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077527, 0.262032, 0.961940,
		-0.806555, 0.550673, -0.215007,
		-0.586053, -0.792527, 0.168651,
		39.175694, 34.466228, 40.400394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052109, 35.294449, 40.672066>,  <39.585930, 35.020996, 40.282341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052109, 35.294449, 40.672066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049675, 34.902641, 40.752575>,  <39.048214, 34.667557, 40.800880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049675, 34.902641, 40.752575>,  <39.052109, 35.294449, 40.672066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049675, 34.902641, 40.752575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127122, 0.200400, 0.971432,
		-0.991868, -0.019671, -0.125738,
		-0.006088, -0.979517, 0.201271,
		39.047848, 34.608788, 40.812958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380318, 35.158596, 41.044044>,  <39.052109, 35.294449, 40.672066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380318, 35.158596, 41.044044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634911, 34.870220, 41.153694>,  <38.787666, 34.697197, 41.219486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634911, 34.870220, 41.153694>,  <38.380318, 35.158596, 41.044044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634911, 34.870220, 41.153694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342289, 0.054477, 0.938014,
		-0.691181, -0.690857, -0.212095,
		0.636479, -0.720936, 0.274126,
		38.825855, 34.653938, 41.235931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073147, 34.792274, 41.544479>,  <38.380318, 35.158596, 41.044044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073147, 34.792274, 41.544479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436993, 34.653847, 41.636425>,  <38.655300, 34.570789, 41.691593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436993, 34.653847, 41.636425>,  <38.073147, 34.792274, 41.544479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436993, 34.653847, 41.636425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225118, 0.054437, 0.972809,
		-0.349172, -0.936628, -0.028390,
		0.909616, -0.346069, 0.229860,
		38.709877, 34.550026, 41.705383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970428, 34.409897, 42.115215>,  <38.073147, 34.792274, 41.544479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970428, 34.409897, 42.115215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370121, 34.414417, 42.130260>,  <38.609936, 34.417130, 42.139290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370121, 34.414417, 42.130260>,  <37.970428, 34.409897, 42.115215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370121, 34.414417, 42.130260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039150, 0.209679, 0.976986,
		0.003152, -0.977705, 0.209959,
		0.999229, 0.011299, 0.037616,
		38.669891, 34.417809, 42.141544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266518, 33.868130, 42.553288>,  <37.970428, 34.409897, 42.115215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266518, 33.868130, 42.553288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514935, 34.180828, 42.530689>,  <38.663982, 34.368446, 42.517132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514935, 34.180828, 42.530689>,  <38.266518, 33.868130, 42.553288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514935, 34.180828, 42.530689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058809, 0.118352, 0.991229,
		0.781571, -0.612268, 0.119474,
		0.621038, 0.781742, -0.056493,
		38.701244, 34.415352, 42.513741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694225, 33.775925, 43.138302>,  <38.266518, 33.868130, 42.553288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694225, 33.775925, 43.138302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770947, 34.157433, 43.045761>,  <38.816978, 34.386337, 42.990234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770947, 34.157433, 43.045761>,  <38.694225, 33.775925, 43.138302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770947, 34.157433, 43.045761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239430, 0.274084, 0.931424,
		0.951780, -0.123257, 0.280932,
		0.191804, 0.953774, -0.231357,
		38.828487, 34.443565, 42.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748207, 33.098282, 43.333302>,  <38.694225, 33.775925, 43.138302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748207, 33.098282, 43.333302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478291, 32.899181, 43.551254>,  <38.316341, 32.779720, 43.682026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478291, 32.899181, 43.551254>,  <38.748207, 33.098282, 43.333302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478291, 32.899181, 43.551254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422583, -0.344702, -0.838215,
		0.605043, -0.795882, 0.022264,
		-0.674794, -0.497747, 0.544886,
		38.275852, 32.749859, 43.714722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671829, 32.461639, 42.978268>,  <38.748207, 33.098282, 43.333302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671829, 32.461639, 42.978268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346249, 32.494804, 43.208260>,  <38.150902, 32.514706, 43.346256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346249, 32.494804, 43.208260>,  <38.671829, 32.461639, 42.978268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346249, 32.494804, 43.208260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563918, -0.350547, -0.747739,
		0.139560, -0.932868, 0.332086,
		-0.813953, 0.082915, 0.574983,
		38.102062, 32.519680, 43.380756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328091, 31.784481, 42.896099>,  <38.671829, 32.461639, 42.978268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328091, 31.784481, 42.896099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053875, 32.043823, 43.028568>,  <37.889347, 32.199429, 43.108051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053875, 32.043823, 43.028568>,  <38.328091, 31.784481, 42.896099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053875, 32.043823, 43.028568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640193, -0.320229, -0.698288,
		-0.346693, -0.690711, 0.634604,
		-0.685534, 0.648361, 0.331167,
		37.848213, 32.238331, 43.127922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709679, 31.391966, 42.911423>,  <38.328091, 31.784481, 42.896099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709679, 31.391966, 42.911423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562267, 31.762959, 42.936611>,  <37.473820, 31.985554, 42.951725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562267, 31.762959, 42.936611>,  <37.709679, 31.391966, 42.911423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562267, 31.762959, 42.936611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684666, -0.224979, -0.693266,
		-0.628824, -0.298600, 0.717926,
		-0.368527, 0.927482, 0.062969,
		37.451710, 32.041203, 42.955502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896114, 31.404230, 42.948895>,  <37.709679, 31.391966, 42.911423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896114, 31.404230, 42.948895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010925, 31.756187, 42.797421>,  <37.079811, 31.967361, 42.706535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010925, 31.756187, 42.797421>,  <36.896114, 31.404230, 42.948895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010925, 31.756187, 42.797421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575460, -0.157654, -0.802490,
		-0.765807, 0.448256, 0.461092,
		0.287028, 0.879893, -0.378686,
		37.097034, 32.020157, 42.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368530, 31.557785, 42.477585>,  <36.896114, 31.404230, 42.948895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368530, 31.557785, 42.477585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648930, 31.825768, 42.379807>,  <36.817169, 31.986557, 42.321140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648930, 31.825768, 42.379807>,  <36.368530, 31.557785, 42.477585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648930, 31.825768, 42.379807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298012, -0.036220, -0.953875,
		-0.647909, 0.741516, 0.174265,
		0.701001, 0.669957, -0.244448,
		36.859230, 32.026756, 42.306473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967987, 32.029114, 42.213848>,  <36.368530, 31.557785, 42.477585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967987, 32.029114, 42.213848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344463, 32.079597, 42.088482>,  <36.570351, 32.109886, 42.013260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344463, 32.079597, 42.088482>,  <35.967987, 32.029114, 42.213848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344463, 32.079597, 42.088482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324262, 0.076743, -0.942849,
		-0.094944, 0.989031, 0.113155,
		0.941191, 0.126209, -0.313419,
		36.626820, 32.117462, 41.994457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991196, 32.683014, 41.786205>,  <35.967987, 32.029114, 42.213848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991196, 32.683014, 41.786205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314716, 32.459999, 41.711380>,  <36.508827, 32.326191, 41.666485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314716, 32.459999, 41.711380>,  <35.991196, 32.683014, 41.786205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314716, 32.459999, 41.711380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218868, 0.009860, -0.975705,
		0.545837, 0.830093, -0.114053,
		0.808801, -0.557538, -0.187063,
		36.557358, 32.292736, 41.655262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328213, 32.971027, 41.251663>,  <35.991196, 32.683014, 41.786205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328213, 32.971027, 41.251663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472210, 32.597897, 41.257790>,  <36.558609, 32.374016, 41.261467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472210, 32.597897, 41.257790>,  <36.328213, 32.971027, 41.251663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472210, 32.597897, 41.257790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030060, -0.004813, -0.999537,
		0.932473, 0.360282, 0.026308,
		0.359988, -0.932831, 0.015318,
		36.580208, 32.318047, 41.262386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870678, 32.958324, 40.753849>,  <36.328213, 32.971027, 41.251663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870678, 32.958324, 40.753849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767220, 32.576302, 40.811779>,  <36.705143, 32.347088, 40.846539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767220, 32.576302, 40.811779>,  <36.870678, 32.958324, 40.753849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767220, 32.576302, 40.811779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039936, -0.139227, -0.989455,
		0.965146, -0.261702, -0.002131,
		-0.258646, -0.955054, 0.144826,
		36.689625, 32.289787, 40.855228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180267, 32.579632, 40.225964>,  <36.870678, 32.958324, 40.753849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180267, 32.579632, 40.225964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897106, 32.318974, 40.334942>,  <36.727207, 32.162579, 40.400330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897106, 32.318974, 40.334942>,  <37.180267, 32.579632, 40.225964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897106, 32.318974, 40.334942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027369, -0.410750, -0.911337,
		0.705776, -0.637685, 0.308607,
		-0.707906, -0.651646, 0.272445,
		36.684734, 32.123478, 40.416676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444557, 31.900192, 40.057213>,  <37.180267, 32.579632, 40.225964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444557, 31.900192, 40.057213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046581, 31.866131, 40.078545>,  <36.807796, 31.845694, 40.091343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046581, 31.866131, 40.078545>,  <37.444557, 31.900192, 40.057213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046581, 31.866131, 40.078545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023734, -0.316577, -0.948270,
		0.097633, -0.944737, 0.312954,
		-0.994939, -0.085154, 0.053331,
		36.748100, 31.840584, 40.094543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.094246, 33.587841, 47.373474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717503, 33.684471, 47.280060>,  <38.491455, 33.742447, 47.224010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717503, 33.684471, 47.280060>,  <39.094246, 33.587841, 47.373474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717503, 33.684471, 47.280060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079877, -0.514139, -0.853979,
		-0.326368, -0.822985, 0.464952,
		-0.941862, 0.241573, -0.233536,
		38.434944, 33.756943, 47.209999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854855, 32.985584, 47.125923>,  <39.094246, 33.587841, 47.373474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854855, 32.985584, 47.125923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540676, 33.210667, 47.022823>,  <38.352169, 33.345715, 46.960964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540676, 33.210667, 47.022823>,  <38.854855, 32.985584, 47.125923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540676, 33.210667, 47.022823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084416, -0.509950, -0.856052,
		-0.613146, -0.650625, 0.448040,
		-0.785446, 0.562706, -0.257751,
		38.305042, 33.379478, 46.945499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241554, 32.502369, 46.931389>,  <38.854855, 32.985584, 47.125923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241554, 32.502369, 46.931389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184532, 32.850700, 46.743202>,  <38.150318, 33.059700, 46.630291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184532, 32.850700, 46.743202>,  <38.241554, 32.502369, 46.931389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184532, 32.850700, 46.743202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025427, -0.471943, -0.881262,
		-0.989461, -0.137589, 0.045135,
		-0.142553, 0.870827, -0.470468,
		38.141766, 33.111950, 46.602062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907211, 32.278992, 46.329655>,  <38.241554, 32.502369, 46.931389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907211, 32.278992, 46.329655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009636, 32.658962, 46.258015>,  <38.071091, 32.886944, 46.215031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009636, 32.658962, 46.258015>,  <37.907211, 32.278992, 46.329655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009636, 32.658962, 46.258015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078429, -0.164254, -0.983295,
		-0.963474, 0.265828, 0.032443,
		0.256059, 0.949924, -0.179103,
		38.086452, 32.943939, 46.204285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527054, 32.470661, 45.777885>,  <37.907211, 32.278992, 46.329655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527054, 32.470661, 45.777885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830292, 32.731121, 45.792286>,  <38.012234, 32.887398, 45.800926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830292, 32.731121, 45.792286>,  <37.527054, 32.470661, 45.777885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830292, 32.731121, 45.792286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225302, -0.209701, -0.951454,
		-0.611990, 0.729403, -0.305679,
		0.758094, 0.651151, 0.036000,
		38.057720, 32.926468, 45.803085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277874, 32.975559, 45.281044>,  <37.527054, 32.470661, 45.777885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277874, 32.975559, 45.281044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669266, 33.050030, 45.316643>,  <37.904102, 33.094711, 45.338001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669266, 33.050030, 45.316643>,  <37.277874, 32.975559, 45.281044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669266, 33.050030, 45.316643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133184, -0.240371, -0.961501,
		-0.157613, 0.952660, -0.259993,
		0.978478, 0.186172, 0.088994,
		37.962811, 33.105881, 45.343342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430550, 33.511200, 44.820007>,  <37.277874, 32.975559, 45.281044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430550, 33.511200, 44.820007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765118, 33.301594, 44.884270>,  <37.965858, 33.175831, 44.922829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765118, 33.301594, 44.884270>,  <37.430550, 33.511200, 44.820007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765118, 33.301594, 44.884270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169552, -0.031360, -0.985022,
		0.521209, 0.851129, 0.062619,
		0.836417, -0.524020, 0.160656,
		38.016041, 33.144386, 44.932465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671165, 33.640404, 44.236057>,  <37.430550, 33.511200, 44.820007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671165, 33.640404, 44.236057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.931030, 33.376415, 44.386986>,  <38.086948, 33.218021, 44.477543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.931030, 33.376415, 44.386986>,  <37.671165, 33.640404, 44.236057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931030, 33.376415, 44.386986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251288, -0.282008, -0.925919,
		0.717492, 0.696350, -0.017366,
		0.649661, -0.659976, 0.377323,
		38.125927, 33.178421, 44.500183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336910, 33.616352, 43.878429>,  <37.671165, 33.640404, 44.236057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336910, 33.616352, 43.878429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299118, 33.251064, 44.036972>,  <38.276443, 33.031891, 44.132095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299118, 33.251064, 44.036972>,  <38.336910, 33.616352, 43.878429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299118, 33.251064, 44.036972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177839, -0.376248, -0.909291,
		0.979513, -0.156398, -0.126858,
		-0.094482, -0.913224, 0.396354,
		38.270775, 32.977097, 44.155880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942810, 34.004444, 43.758640>,  <38.336910, 33.616352, 43.878429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942810, 34.004444, 43.758640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865147, 34.343990, 43.561974>,  <38.818550, 34.547718, 43.443974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865147, 34.343990, 43.561974>,  <38.942810, 34.004444, 43.758640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865147, 34.343990, 43.561974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229391, 0.448019, 0.864094,
		0.953773, 0.280553, 0.107736,
		-0.194157, 0.848863, -0.491665,
		38.806900, 34.598648, 43.414474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355881, 34.575459, 44.142330>,  <38.942810, 34.004444, 43.758640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355881, 34.575459, 44.142330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049149, 34.727261, 43.935272>,  <38.865108, 34.818340, 43.811039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049149, 34.727261, 43.935272>,  <39.355881, 34.575459, 44.142330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049149, 34.727261, 43.935272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206788, 0.617410, 0.758975,
		0.607630, 0.689046, -0.394971,
		-0.766828, 0.379501, -0.517643,
		38.819099, 34.841110, 43.779980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485424, 35.236118, 44.214272>,  <39.355881, 34.575459, 44.142330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485424, 35.236118, 44.214272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.098930, 35.191902, 44.121170>,  <38.867035, 35.165375, 44.065308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.098930, 35.191902, 44.121170>,  <39.485424, 35.236118, 44.214272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098930, 35.191902, 44.121170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250258, 0.617668, 0.745559,
		0.061352, 0.778632, -0.624474,
		-0.966233, -0.110539, -0.232754,
		38.809059, 35.158741, 44.051342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141254, 35.864338, 44.064816>,  <39.485424, 35.236118, 44.214272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141254, 35.864338, 44.064816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817558, 35.651253, 44.163883>,  <38.623341, 35.523399, 44.223324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817558, 35.651253, 44.163883>,  <39.141254, 35.864338, 44.064816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817558, 35.651253, 44.163883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236988, 0.681779, 0.692108,
		-0.537552, 0.501389, -0.677973,
		-0.809243, -0.532716, 0.247668,
		38.574787, 35.491440, 44.238182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574226, 36.311928, 44.059952>,  <39.141254, 35.864338, 44.064816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574226, 36.311928, 44.059952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464783, 36.001427, 44.287132>,  <38.399117, 35.815125, 44.423439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464783, 36.001427, 44.287132>,  <38.574226, 36.311928, 44.059952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464783, 36.001427, 44.287132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345014, 0.630394, 0.695391,
		-0.897832, -0.005683, -0.440302,
		-0.273612, -0.776255, 0.567948,
		38.382698, 35.768551, 44.457516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011948, 36.598354, 44.423832>,  <38.574226, 36.311928, 44.059952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011948, 36.598354, 44.423832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137169, 36.269054, 44.613258>,  <38.212299, 36.071476, 44.726913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137169, 36.269054, 44.613258>,  <38.011948, 36.598354, 44.423832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137169, 36.269054, 44.613258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218925, 0.422652, 0.879453,
		-0.924160, -0.378988, -0.047919,
		0.313049, -0.823246, 0.473568,
		38.231083, 36.022079, 44.755329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622162, 36.564480, 45.051998>,  <38.011948, 36.598354, 44.423832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622162, 36.564480, 45.051998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926048, 36.328796, 45.162033>,  <38.108379, 36.187386, 45.228054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926048, 36.328796, 45.162033>,  <37.622162, 36.564480, 45.051998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926048, 36.328796, 45.162033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062971, 0.354389, 0.932975,
		-0.647200, -0.726117, 0.232132,
		0.759715, -0.589204, 0.275085,
		38.153961, 36.152035, 45.244560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434708, 36.299225, 45.658863>,  <37.622162, 36.564480, 45.051998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434708, 36.299225, 45.658863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831596, 36.255642, 45.634796>,  <38.069729, 36.229492, 45.620354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831596, 36.255642, 45.634796>,  <37.434708, 36.299225, 45.658863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831596, 36.255642, 45.634796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094055, 0.339739, 0.935805,
		-0.081521, -0.934187, 0.347345,
		0.992223, -0.108958, -0.060169,
		38.129265, 36.222954, 45.616745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698689, 36.029594, 46.334515>,  <37.434708, 36.299225, 45.658863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698689, 36.029594, 46.334515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.036770, 36.185085, 46.187805>,  <38.239620, 36.278381, 46.099781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.036770, 36.185085, 46.187805>,  <37.698689, 36.029594, 46.334515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036770, 36.185085, 46.187805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242295, 0.332986, 0.911270,
		0.476366, -0.859076, 0.187254,
		0.845204, 0.388728, -0.366772,
		38.290333, 36.301704, 46.077774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139896, 36.026871, 46.769749>,  <37.698689, 36.029594, 46.334515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139896, 36.026871, 46.769749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352707, 36.290024, 46.556526>,  <38.480392, 36.447914, 46.428593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352707, 36.290024, 46.556526>,  <38.139896, 36.026871, 46.769749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352707, 36.290024, 46.556526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347442, 0.404489, 0.845974,
		0.772164, -0.635283, -0.013377,
		0.532022, 0.657879, -0.533056,
		38.512314, 36.487389, 46.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807526, 36.190224, 47.207626>,  <38.139896, 36.026871, 46.769749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807526, 36.190224, 47.207626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758610, 36.478058, 46.934208>,  <38.729259, 36.650761, 46.770157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758610, 36.478058, 46.934208>,  <38.807526, 36.190224, 47.207626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758610, 36.478058, 46.934208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308899, 0.682104, 0.662809,
		0.943201, -0.130095, -0.305693,
		-0.122286, 0.719590, -0.683547,
		38.721924, 36.693935, 46.729145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308414, 36.558758, 47.327190>,  <38.807526, 36.190224, 47.207626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308414, 36.558758, 47.327190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078785, 36.832001, 47.146614>,  <38.941006, 36.995949, 47.038269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078785, 36.832001, 47.146614>,  <39.308414, 36.558758, 47.327190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078785, 36.832001, 47.146614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271860, 0.679082, 0.681865,
		0.772354, 0.268713, -0.575554,
		-0.574075, 0.683111, -0.451439,
		38.906563, 37.036934, 47.011181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737858, 37.178154, 47.243713>,  <39.308414, 36.558758, 47.327190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737858, 37.178154, 47.243713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361256, 37.306313, 47.201935>,  <39.135292, 37.383209, 47.176868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361256, 37.306313, 47.201935>,  <39.737858, 37.178154, 47.243713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361256, 37.306313, 47.201935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192841, 0.766426, 0.612702,
		0.276360, 0.556721, -0.783381,
		-0.941508, 0.320395, -0.104451,
		39.078804, 37.402431, 47.170601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859646, 37.910423, 47.213837>,  <39.737858, 37.178154, 47.243713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859646, 37.910423, 47.213837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.481411, 37.846649, 47.327290>,  <39.254471, 37.808384, 47.395363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.481411, 37.846649, 47.327290>,  <39.859646, 37.910423, 47.213837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481411, 37.846649, 47.327290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116616, 0.647741, 0.752883,
		-0.303760, 0.744991, -0.593901,
		-0.945585, -0.159437, 0.283635,
		39.197735, 37.798817, 47.412380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.134239, 39.186405, 46.766872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.472973, 38.985821, 46.837761>,  <34.676212, 38.865471, 46.880295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.472973, 38.985821, 46.837761>,  <34.134239, 39.186405, 46.766872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472973, 38.985821, 46.837761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034674, -0.280444, -0.959244,
		0.530727, 0.818464, -0.220102,
		0.846833, -0.501465, 0.177219,
		34.727024, 38.835381, 46.890926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412025, 39.291584, 46.190910>,  <34.134239, 39.186405, 46.766872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412025, 39.291584, 46.190910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582184, 38.975250, 46.366917>,  <34.684280, 38.785450, 46.472523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582184, 38.975250, 46.366917>,  <34.412025, 39.291584, 46.190910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582184, 38.975250, 46.366917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055991, -0.462276, -0.884966,
		0.903272, 0.401101, -0.152372,
		0.425399, -0.790834, 0.440019,
		34.709805, 38.737999, 46.498924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052803, 39.205505, 45.867512>,  <34.412025, 39.291584, 46.190910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052803, 39.205505, 45.867512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964825, 38.845921, 46.019035>,  <34.912037, 38.630169, 46.109951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964825, 38.845921, 46.019035>,  <35.052803, 39.205505, 45.867512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964825, 38.845921, 46.019035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128323, -0.411606, -0.902283,
		0.967034, -0.149847, 0.205890,
		-0.219950, -0.898959, 0.378808,
		34.898838, 38.576233, 46.132679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567799, 38.836609, 45.565388>,  <35.052803, 39.205505, 45.867512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567799, 38.836609, 45.565388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309174, 38.554008, 45.680500>,  <35.153999, 38.384449, 45.749569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309174, 38.554008, 45.680500>,  <35.567799, 38.836609, 45.565388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309174, 38.554008, 45.680500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237131, -0.544680, -0.804421,
		0.725074, -0.451863, 0.519700,
		-0.646558, -0.706501, 0.287783,
		35.115208, 38.342060, 45.766834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902538, 38.109268, 45.533798>,  <35.567799, 38.836609, 45.565388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902538, 38.109268, 45.533798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504795, 38.076847, 45.506409>,  <35.266151, 38.057392, 45.489975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504795, 38.076847, 45.506409>,  <35.902538, 38.109268, 45.533798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504795, 38.076847, 45.506409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102739, -0.574124, -0.812297,
		0.026527, -0.814746, 0.579210,
		-0.994355, -0.081055, -0.068477,
		35.206490, 38.052532, 45.485867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714970, 37.385235, 45.348423>,  <35.902538, 38.109268, 45.533798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714970, 37.385235, 45.348423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370327, 37.579197, 45.288422>,  <35.163540, 37.695572, 45.252422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370327, 37.579197, 45.288422>,  <35.714970, 37.385235, 45.348423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370327, 37.579197, 45.288422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108609, -0.464810, -0.878724,
		-0.495819, -0.740824, 0.453149,
		-0.861607, 0.484904, -0.150001,
		35.111843, 37.724667, 45.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339390, 36.843090, 45.106571>,  <35.714970, 37.385235, 45.348423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339390, 36.843090, 45.106571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.143818, 37.176510, 45.003696>,  <35.026474, 37.376560, 44.941971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.143818, 37.176510, 45.003696>,  <35.339390, 36.843090, 45.106571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143818, 37.176510, 45.003696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228138, -0.406752, -0.884593,
		-0.841963, -0.373830, 0.389037,
		-0.488929, 0.833549, -0.257186,
		34.997139, 37.426575, 44.926540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720650, 36.619614, 44.882446>,  <35.339390, 36.843090, 45.106571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720650, 36.619614, 44.882446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720173, 36.977024, 44.702847>,  <34.719887, 37.191471, 44.595085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720173, 36.977024, 44.702847>,  <34.720650, 36.619614, 44.882446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720173, 36.977024, 44.702847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284824, -0.430709, -0.856367,
		-0.958579, 0.126863, 0.255014,
		-0.001196, 0.893530, -0.449002,
		34.719814, 37.245083, 44.568146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013565, 36.784367, 44.565605>,  <34.720650, 36.619614, 44.882446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013565, 36.784367, 44.565605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274548, 37.015862, 44.369907>,  <34.431137, 37.154758, 44.252487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274548, 37.015862, 44.369907>,  <34.013565, 36.784367, 44.565605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274548, 37.015862, 44.369907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424510, -0.255685, -0.868572,
		-0.627768, 0.774396, 0.078856,
		0.652456, 0.578737, -0.489249,
		34.470284, 37.189484, 44.223133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712467, 36.858597, 43.834190>,  <34.013565, 36.784367, 44.565605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712467, 36.858597, 43.834190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054813, 37.043705, 43.741814>,  <34.260220, 37.154770, 43.686386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054813, 37.043705, 43.741814>,  <33.712467, 36.858597, 43.834190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054813, 37.043705, 43.741814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210028, -0.097071, -0.972865,
		-0.472632, 0.881147, 0.014116,
		0.855866, 0.462771, -0.230945,
		34.311573, 37.182537, 43.672531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627197, 37.414845, 43.454380>,  <33.712467, 36.858597, 43.834190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627197, 37.414845, 43.454380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.992485, 37.296906, 43.341885>,  <34.211658, 37.226143, 43.274387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.992485, 37.296906, 43.341885>,  <33.627197, 37.414845, 43.454380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992485, 37.296906, 43.341885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286570, 0.025927, -0.957709,
		0.289669, 0.955193, -0.060817,
		0.913219, -0.294847, -0.281239,
		34.266449, 37.208450, 43.257511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804779, 37.862076, 42.881851>,  <33.627197, 37.414845, 43.454380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804779, 37.862076, 42.881851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062874, 37.558151, 42.849949>,  <34.217731, 37.375797, 42.830807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062874, 37.558151, 42.849949>,  <33.804779, 37.862076, 42.881851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062874, 37.558151, 42.849949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123333, -0.000571, -0.992365,
		0.753966, 0.650142, -0.094078,
		0.645232, -0.759812, -0.079754,
		34.256443, 37.330208, 42.826023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039669, 37.958588, 42.146465>,  <33.804779, 37.862076, 42.881851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039669, 37.958588, 42.146465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162045, 37.596806, 42.265369>,  <34.235470, 37.379738, 42.336712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162045, 37.596806, 42.265369>,  <34.039669, 37.958588, 42.146465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162045, 37.596806, 42.265369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163734, -0.357561, -0.919424,
		0.937867, 0.232614, -0.257481,
		0.305937, -0.904456, 0.297258,
		34.253826, 37.325470, 42.354546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517368, 37.707413, 41.572216>,  <34.039669, 37.958588, 42.146465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517368, 37.707413, 41.572216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347038, 37.395378, 41.755581>,  <34.244843, 37.208157, 41.865601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347038, 37.395378, 41.755581>,  <34.517368, 37.707413, 41.572216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347038, 37.395378, 41.755581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239120, -0.391608, -0.888518,
		0.872638, -0.487967, -0.019778,
		-0.425822, -0.780084, 0.458415,
		34.219292, 37.161354, 41.893105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332718, 37.619480, 41.544189>,  <34.517368, 37.707413, 41.572216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332718, 37.619480, 41.544189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383480, 37.962917, 41.345509>,  <35.413937, 38.168980, 41.226299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383480, 37.962917, 41.345509>,  <35.332718, 37.619480, 41.544189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383480, 37.962917, 41.345509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013071, 0.499259, 0.866354,
		0.991829, -0.116438, 0.052137,
		0.126907, 0.858593, -0.496702,
		35.421551, 38.220497, 41.196499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800175, 37.961037, 41.874268>,  <35.332718, 37.619480, 41.544189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800175, 37.961037, 41.874268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659111, 38.277733, 41.674755>,  <35.574474, 38.467751, 41.555046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659111, 38.277733, 41.674755>,  <35.800175, 37.961037, 41.874268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659111, 38.277733, 41.674755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026325, 0.541211, 0.840474,
		0.935383, 0.283267, -0.211704,
		-0.352655, 0.791739, -0.498783,
		35.553314, 38.515255, 41.525120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027233, 38.597900, 42.242802>,  <35.800175, 37.961037, 41.874268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027233, 38.597900, 42.242802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738651, 38.768818, 42.024837>,  <35.565502, 38.871368, 41.894058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738651, 38.768818, 42.024837>,  <36.027233, 38.597900, 42.242802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738651, 38.768818, 42.024837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097655, 0.716271, 0.690956,
		0.685546, 0.551703, -0.475026,
		-0.721450, 0.427293, -0.544913,
		35.522217, 38.897007, 41.861362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178509, 39.287971, 42.162537>,  <36.027233, 38.597900, 42.242802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178509, 39.287971, 42.162537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784210, 39.259769, 42.101448>,  <35.547630, 39.242847, 42.064796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784210, 39.259769, 42.101448>,  <36.178509, 39.287971, 42.162537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784210, 39.259769, 42.101448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151503, 0.766604, 0.623992,
		0.073085, 0.638238, -0.766362,
		-0.985751, -0.070502, -0.152723,
		35.488483, 39.238621, 42.055630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946960, 40.035728, 42.271362>,  <36.178509, 39.287971, 42.162537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946960, 40.035728, 42.271362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613144, 39.816151, 42.290123>,  <35.412853, 39.684406, 42.301380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613144, 39.816151, 42.290123>,  <35.946960, 40.035728, 42.271362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613144, 39.816151, 42.290123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384321, 0.641035, 0.664358,
		-0.394756, 0.536412, -0.745942,
		-0.834545, -0.548940, 0.046898,
		35.362782, 39.651470, 42.304192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329998, 40.451523, 42.170269>,  <35.946960, 40.035728, 42.271362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329998, 40.451523, 42.170269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242508, 40.133934, 42.397167>,  <35.190014, 39.943382, 42.533306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242508, 40.133934, 42.397167>,  <35.329998, 40.451523, 42.170269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242508, 40.133934, 42.397167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179784, 0.604158, 0.776319,
		-0.959081, 0.067819, -0.274889,
		-0.218726, -0.793973, 0.567244,
		35.176891, 39.895741, 42.567341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780945, 40.719196, 42.472546>,  <35.329998, 40.451523, 42.170269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780945, 40.719196, 42.472546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900524, 40.418602, 42.707798>,  <34.972271, 40.238247, 42.848949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900524, 40.418602, 42.707798>,  <34.780945, 40.719196, 42.472546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900524, 40.418602, 42.707798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142448, 0.574270, 0.806177,
		-0.943576, -0.324787, 0.064633,
		0.298953, -0.751483, 0.588133,
		34.990211, 40.193157, 42.884239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256760, 40.792965, 42.985184>,  <34.780945, 40.719196, 42.472546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256760, 40.792965, 42.985184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543301, 40.554855, 43.130783>,  <34.715225, 40.411991, 43.218143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543301, 40.554855, 43.130783>,  <34.256760, 40.792965, 42.985184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543301, 40.554855, 43.130783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027555, 0.497140, 0.867232,
		-0.697198, -0.631271, 0.339723,
		0.716349, -0.595272, 0.364000,
		34.758205, 40.376274, 43.239983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044247, 40.638451, 43.635323>,  <34.256760, 40.792965, 42.985184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044247, 40.638451, 43.635323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440693, 40.585548, 43.629631>,  <34.678558, 40.553806, 43.626217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440693, 40.585548, 43.629631>,  <34.044247, 40.638451, 43.635323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440693, 40.585548, 43.629631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072413, 0.446742, 0.891727,
		-0.111582, -0.884833, 0.452349,
		0.991114, -0.132256, -0.014225,
		34.738026, 40.545872, 43.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138474, 40.266068, 44.236649>,  <34.044247, 40.638451, 43.635323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138474, 40.266068, 44.236649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479656, 40.447567, 44.133434>,  <34.684364, 40.556465, 44.071507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479656, 40.447567, 44.133434>,  <34.138474, 40.266068, 44.236649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479656, 40.447567, 44.133434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031985, 0.538843, 0.841799,
		0.520992, -0.709770, 0.474125,
		0.852962, 0.453736, -0.258031,
		34.735542, 40.583691, 44.056023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738605, 40.060585, 44.672928>,  <34.138474, 40.266068, 44.236649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738605, 40.060585, 44.672928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808784, 40.428436, 44.532352>,  <34.850891, 40.649147, 44.448006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808784, 40.428436, 44.532352>,  <34.738605, 40.060585, 44.672928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808784, 40.428436, 44.532352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063039, 0.345751, 0.936206,
		0.982469, -0.186406, 0.002687,
		0.175443, 0.919625, -0.351440,
		34.861416, 40.704323, 44.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186863, 40.362316, 45.262058>,  <34.738605, 40.060585, 44.672928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186863, 40.362316, 45.262058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094913, 40.676556, 45.032280>,  <35.039745, 40.865101, 44.894413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094913, 40.676556, 45.032280>,  <35.186863, 40.362316, 45.262058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094913, 40.676556, 45.032280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015702, 0.593168, 0.804926,
		0.973094, 0.176011, -0.148689,
		-0.229873, 0.785603, -0.574444,
		35.025951, 40.912235, 44.859947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693848, 40.773098, 45.371227>,  <35.186863, 40.362316, 45.262058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693848, 40.773098, 45.371227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397972, 41.011055, 45.245388>,  <35.220448, 41.153828, 45.169884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397972, 41.011055, 45.245388>,  <35.693848, 40.773098, 45.371227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397972, 41.011055, 45.245388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006345, 0.461299, 0.887222,
		0.672923, 0.658261, -0.337442,
		-0.739685, 0.594891, -0.314595,
		35.176067, 41.189522, 45.151009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903450, 41.442688, 45.365376>,  <35.693848, 40.773098, 45.371227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903450, 41.442688, 45.365376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508129, 41.443539, 45.426361>,  <35.270935, 41.444050, 45.462952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508129, 41.443539, 45.426361>,  <35.903450, 41.442688, 45.365376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508129, 41.443539, 45.426361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134897, 0.478340, 0.867752,
		-0.071089, 0.878172, -0.473033,
		-0.988306, 0.002123, 0.152468,
		35.211636, 41.444176, 45.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567421, 41.904457, 45.472836>,  <35.903450, 41.442688, 45.365376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567421, 41.904457, 45.472836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907932, 41.769848, 45.633877>,  <37.112240, 41.689083, 45.730499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907932, 41.769848, 45.633877>,  <36.567421, 41.904457, 45.472836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907932, 41.769848, 45.633877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191064, -0.515795, -0.835135,
		0.488699, 0.787851, -0.374786,
		0.851274, -0.336521, 0.402599,
		37.163315, 41.668892, 45.754658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192547, 41.968666, 44.886562>,  <36.567421, 41.904457, 45.472836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192547, 41.968666, 44.886562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280998, 41.687988, 45.157478>,  <37.334068, 41.519581, 45.320030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280998, 41.687988, 45.157478>,  <37.192547, 41.968666, 44.886562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280998, 41.687988, 45.157478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193522, -0.649105, -0.735671,
		0.955852, 0.293747, -0.007739,
		0.221125, -0.701695, 0.677295,
		37.347336, 41.477478, 45.360668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863049, 41.825771, 44.619328>,  <37.192547, 41.968666, 44.886562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863049, 41.825771, 44.619328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.715805, 41.532032, 44.847443>,  <37.627460, 41.355789, 44.984310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.715805, 41.532032, 44.847443>,  <37.863049, 41.825771, 44.619328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715805, 41.532032, 44.847443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238106, -0.667355, -0.705651,
		0.898780, -0.123964, 0.420509,
		-0.368104, -0.734351, 0.570288,
		37.605373, 41.311726, 45.018528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429070, 41.238708, 44.637978>,  <37.863049, 41.825771, 44.619328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429070, 41.238708, 44.637978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091724, 41.060104, 44.757557>,  <37.889317, 40.952942, 44.829304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091724, 41.060104, 44.757557>,  <38.429070, 41.238708, 44.637978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091724, 41.060104, 44.757557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079928, -0.654392, -0.751920,
		0.531363, -0.610249, 0.587579,
		-0.843365, -0.446506, 0.298944,
		37.838715, 40.926151, 44.847240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627445, 40.575115, 44.758530>,  <38.429070, 41.238708, 44.637978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627445, 40.575115, 44.758530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237026, 40.577431, 44.671532>,  <38.002777, 40.578819, 44.619335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237026, 40.577431, 44.671532>,  <38.627445, 40.575115, 44.758530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237026, 40.577431, 44.671532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167805, -0.616262, -0.769456,
		-0.138482, -0.787520, 0.600529,
		-0.976045, 0.005784, -0.217492,
		37.944214, 40.579166, 44.606285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607529, 40.011070, 44.569431>,  <38.627445, 40.575115, 44.758530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607529, 40.011070, 44.569431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.254295, 40.146309, 44.439289>,  <38.042355, 40.227451, 44.361202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.254295, 40.146309, 44.439289>,  <38.607529, 40.011070, 44.569431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254295, 40.146309, 44.439289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033484, -0.646228, -0.762409,
		-0.468021, -0.684165, 0.559352,
		-0.883083, 0.338094, -0.325357,
		37.989372, 40.247738, 44.341682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140015, 39.367897, 44.334625>,  <38.607529, 40.011070, 44.569431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140015, 39.367897, 44.334625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966465, 39.676285, 44.148136>,  <37.862335, 39.861317, 44.036243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966465, 39.676285, 44.148136>,  <38.140015, 39.367897, 44.334625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966465, 39.676285, 44.148136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112430, -0.467089, -0.877034,
		-0.893930, -0.432941, 0.115979,
		-0.433876, 0.770967, -0.466220,
		37.836304, 39.907574, 44.008270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578201, 39.106663, 43.968071>,  <38.140015, 39.367897, 44.334625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578201, 39.106663, 43.968071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.678345, 39.457176, 43.803413>,  <37.738430, 39.667484, 43.704620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.678345, 39.457176, 43.803413>,  <37.578201, 39.106663, 43.968071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678345, 39.457176, 43.803413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105711, -0.397897, -0.911320,
		-0.962364, 0.271676, -0.006986,
		0.250363, 0.876282, -0.411640,
		37.753452, 39.720062, 43.679920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099644, 39.281925, 43.394897>,  <37.578201, 39.106663, 43.968071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099644, 39.281925, 43.394897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407349, 39.522530, 43.308708>,  <37.591972, 39.666893, 43.256996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407349, 39.522530, 43.308708>,  <37.099644, 39.281925, 43.394897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407349, 39.522530, 43.308708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095865, -0.224762, -0.969686,
		-0.631705, 0.766596, -0.115236,
		0.769258, 0.601509, -0.215473,
		37.638126, 39.702984, 43.244064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907661, 39.520496, 42.803093>,  <37.099644, 39.281925, 43.394897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907661, 39.520496, 42.803093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304802, 39.567753, 42.796253>,  <37.543087, 39.596107, 42.792149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304802, 39.567753, 42.796253>,  <36.907661, 39.520496, 42.803093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304802, 39.567753, 42.796253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019859, -0.304741, -0.952228,
		-0.117708, 0.945080, -0.304908,
		0.992850, 0.118140, -0.017102,
		37.602657, 39.603195, 42.791122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017132, 39.803928, 42.181526>,  <36.907661, 39.520496, 42.803093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017132, 39.803928, 42.181526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390324, 39.704525, 42.285671>,  <37.614239, 39.644882, 42.348160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390324, 39.704525, 42.285671>,  <37.017132, 39.803928, 42.181526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390324, 39.704525, 42.285671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208120, -0.217713, -0.953565,
		0.293658, 0.943844, -0.151402,
		0.932980, -0.248512, 0.260366,
		37.670219, 39.629971, 42.363781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534580, 40.156223, 41.758606>,  <37.017132, 39.803928, 42.181526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534580, 40.156223, 41.758606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.731804, 39.837299, 41.897854>,  <37.850140, 39.645947, 41.981403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.731804, 39.837299, 41.897854>,  <37.534580, 40.156223, 41.758606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731804, 39.837299, 41.897854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254524, -0.250439, -0.934076,
		0.831931, 0.549161, 0.079453,
		0.493060, -0.797310, 0.348123,
		37.879723, 39.598106, 42.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048428, 40.164410, 41.237316>,  <37.534580, 40.156223, 41.758606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048428, 40.164410, 41.237316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.060677, 39.808090, 41.418667>,  <38.068027, 39.594299, 41.527477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.060677, 39.808090, 41.418667>,  <38.048428, 40.164410, 41.237316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060677, 39.808090, 41.418667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196841, -0.439330, -0.876495,
		0.979957, 0.116082, 0.161891,
		0.030622, -0.890794, 0.453374,
		38.069862, 39.540852, 41.554680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750889, 39.751686, 41.091167>,  <38.048428, 40.164410, 41.237316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750889, 39.751686, 41.091167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476875, 39.473873, 41.179119>,  <38.312466, 39.307186, 41.231892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476875, 39.473873, 41.179119>,  <38.750889, 39.751686, 41.091167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476875, 39.473873, 41.179119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264983, -0.518703, -0.812853,
		0.678606, -0.498570, 0.539371,
		-0.685038, -0.694532, 0.219883,
		38.271362, 39.265514, 41.245083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.374588, 40.467819, 33.779087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583998, 40.384678, 33.448578>,  <28.709644, 40.334793, 33.250275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583998, 40.384678, 33.448578>,  <28.374588, 40.467819, 33.779087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583998, 40.384678, 33.448578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403986, -0.914397, -0.025942,
		-0.750146, 0.347383, -0.562679,
		0.523524, -0.207854, -0.826269,
		28.741055, 40.322323, 33.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910961, 40.107872, 33.245506>,  <28.374588, 40.467819, 33.779087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910961, 40.107872, 33.245506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285631, 40.011757, 33.143604>,  <28.510433, 39.954086, 33.082462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285631, 40.011757, 33.143604>,  <27.910961, 40.107872, 33.245506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285631, 40.011757, 33.143604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272974, -0.956670, -0.101327,
		-0.219365, 0.164451, -0.961684,
		0.936677, -0.240287, -0.254751,
		28.566635, 39.939671, 33.067181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842224, 39.640610, 32.745640>,  <27.910961, 40.107872, 33.245506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842224, 39.640610, 32.745640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212624, 39.574379, 32.881351>,  <28.434864, 39.534641, 32.962780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212624, 39.574379, 32.881351>,  <27.842224, 39.640610, 32.745640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212624, 39.574379, 32.881351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210013, -0.972726, 0.098483,
		0.313719, -0.162448, -0.935516,
		0.926000, -0.165574, 0.339279,
		28.490423, 39.524708, 32.983135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017344, 39.104626, 32.334179>,  <27.842224, 39.640610, 32.745640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017344, 39.104626, 32.334179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266893, 39.082706, 32.646019>,  <28.416624, 39.069557, 32.833122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266893, 39.082706, 32.646019>,  <28.017344, 39.104626, 32.334179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266893, 39.082706, 32.646019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220935, -0.969214, 0.108680,
		0.749645, -0.240044, -0.616775,
		0.623875, -0.054795, 0.779601,
		28.454056, 39.066269, 32.879898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428684, 38.589806, 32.124378>,  <28.017344, 39.104626, 32.334179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428684, 38.589806, 32.124378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478048, 38.615364, 32.520496>,  <28.507666, 38.630699, 32.758167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478048, 38.615364, 32.520496>,  <28.428684, 38.589806, 32.124378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478048, 38.615364, 32.520496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204076, -0.974961, 0.088340,
		0.971145, -0.212998, -0.107279,
		0.123409, 0.063898, 0.990296,
		28.515072, 38.634533, 32.817585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835917, 37.972267, 32.293327>,  <28.428684, 38.589806, 32.124378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835917, 37.972267, 32.293327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655346, 38.093712, 32.628956>,  <28.547005, 38.166580, 32.830334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655346, 38.093712, 32.628956>,  <28.835917, 37.972267, 32.293327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655346, 38.093712, 32.628956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209825, -0.950084, 0.230896,
		0.867288, -0.071825, 0.492597,
		-0.451425, 0.303613, 0.839068,
		28.519918, 38.184795, 32.880676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074974, 37.444748, 32.844658>,  <28.835917, 37.972267, 32.293327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074974, 37.444748, 32.844658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743547, 37.611835, 32.993782>,  <28.544691, 37.712086, 33.083256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743547, 37.611835, 32.993782>,  <29.074974, 37.444748, 32.844658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743547, 37.611835, 32.993782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256707, -0.875184, 0.410066,
		0.497571, 0.244063, 0.832380,
		-0.828568, 0.417715, 0.372813,
		28.494978, 37.737148, 33.105625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982538, 37.084656, 33.438854>,  <29.074974, 37.444748, 32.844658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982538, 37.084656, 33.438854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630016, 37.263393, 33.377357>,  <28.418503, 37.370636, 33.340458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630016, 37.263393, 33.377357>,  <28.982538, 37.084656, 33.438854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630016, 37.263393, 33.377357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468916, -0.867225, 0.167448,
		-0.058510, 0.219666, 0.973819,
		-0.881303, 0.446842, -0.153746,
		28.365625, 37.397446, 33.331234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660530, 36.967041, 34.035854>,  <28.982538, 37.084656, 33.438854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660530, 36.967041, 34.035854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383072, 37.058041, 33.762474>,  <28.216597, 37.112640, 33.598446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383072, 37.058041, 33.762474>,  <28.660530, 36.967041, 34.035854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383072, 37.058041, 33.762474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569555, -0.754089, 0.327043,
		-0.440980, 0.616114, 0.652641,
		-0.693645, 0.227496, -0.683449,
		28.174978, 37.126289, 33.557438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008116, 36.992912, 34.425312>,  <28.660530, 36.967041, 34.035854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008116, 36.992912, 34.425312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910776, 36.938648, 34.041149>,  <27.852373, 36.906090, 33.810654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910776, 36.938648, 34.041149>,  <28.008116, 36.992912, 34.425312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910776, 36.938648, 34.041149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621787, -0.738128, 0.261815,
		-0.744421, 0.660880, 0.095267,
		-0.243348, -0.135665, -0.960405,
		27.837772, 36.897949, 33.753029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220263, 37.021580, 34.366169>,  <28.008116, 36.992912, 34.425312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220263, 37.021580, 34.366169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346586, 36.838917, 34.033489>,  <27.422380, 36.729317, 33.833881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346586, 36.838917, 34.033489>,  <27.220263, 37.021580, 34.366169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346586, 36.838917, 34.033489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768227, -0.637514, 0.058332,
		-0.556860, 0.620514, -0.552150,
		0.315808, -0.456660, -0.831701,
		27.441328, 36.701920, 33.783978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622839, 36.844761, 33.882233>,  <27.220263, 37.021580, 34.366169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622839, 36.844761, 33.882233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934223, 36.599213, 33.829834>,  <27.121054, 36.451885, 33.798397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934223, 36.599213, 33.829834>,  <26.622839, 36.844761, 33.882233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934223, 36.599213, 33.829834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543559, -0.763645, 0.348410,
		-0.313911, -0.200022, -0.928144,
		0.778462, -0.613871, -0.130993,
		27.167763, 36.415051, 33.790535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310268, 36.271679, 33.664337>,  <26.622839, 36.844761, 33.882233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310268, 36.271679, 33.664337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672071, 36.140244, 33.773075>,  <26.889153, 36.061382, 33.838318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672071, 36.140244, 33.773075>,  <26.310268, 36.271679, 33.664337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672071, 36.140244, 33.773075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380703, -0.909401, 0.167494,
		0.192182, -0.254992, -0.947652,
		0.904506, -0.328584, 0.271846,
		26.943424, 36.041668, 33.854630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306988, 35.626251, 33.372307>,  <26.310268, 36.271679, 33.664337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306988, 35.626251, 33.372307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589252, 35.615089, 33.655506>,  <26.758612, 35.608395, 33.825428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589252, 35.615089, 33.655506>,  <26.306988, 35.626251, 33.372307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589252, 35.615089, 33.655506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332243, -0.895593, 0.295851,
		0.625827, -0.443998, -0.641254,
		0.705660, -0.027901, 0.708002,
		26.800951, 35.606720, 33.867905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479290, 34.872845, 33.390938>,  <26.306988, 35.626251, 33.372307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479290, 34.872845, 33.390938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640779, 35.008617, 33.730770>,  <26.737673, 35.090080, 33.934669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640779, 35.008617, 33.730770>,  <26.479290, 34.872845, 33.390938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640779, 35.008617, 33.730770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149898, -0.891538, 0.427424,
		0.902517, -0.299912, -0.309057,
		0.403725, 0.339430, 0.849584,
		26.761896, 35.110447, 33.985645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809147, 34.229649, 33.682053>,  <26.479290, 34.872845, 33.390938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809147, 34.229649, 33.682053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.757957, 34.501389, 33.971081>,  <26.727243, 34.664433, 34.144497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.757957, 34.501389, 33.971081>,  <26.809147, 34.229649, 33.682053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757957, 34.501389, 33.971081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420657, -0.696962, 0.580768,
		0.898148, -0.229631, 0.374966,
		-0.127975, 0.679348, 0.722571,
		26.719564, 34.705193, 34.187851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825291, 33.830265, 34.345894>,  <26.809147, 34.229649, 33.682053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825291, 33.830265, 34.345894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650135, 34.178932, 34.433941>,  <26.545042, 34.388130, 34.486771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650135, 34.178932, 34.433941>,  <26.825291, 33.830265, 34.345894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650135, 34.178932, 34.433941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425642, -0.416672, 0.803252,
		0.791885, 0.258043, 0.553473,
		-0.437891, 0.871664, 0.220122,
		26.518768, 34.440430, 34.499977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970795, 33.903442, 35.097393>,  <26.825291, 33.830265, 34.345894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970795, 33.903442, 35.097393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664209, 34.144943, 35.009743>,  <26.480257, 34.289845, 34.957153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664209, 34.144943, 35.009743>,  <26.970795, 33.903442, 35.097393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664209, 34.144943, 35.009743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491504, -0.331713, 0.805227,
		0.413469, 0.724880, 0.550992,
		-0.766465, 0.603751, -0.219128,
		26.434271, 34.326069, 34.944004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678040, 33.765751, 35.655006>,  <26.970795, 33.903442, 35.097393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678040, 33.765751, 35.655006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.426296, 34.025497, 35.484253>,  <26.275249, 34.181347, 35.381802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.426296, 34.025497, 35.484253>,  <26.678040, 33.765751, 35.655006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426296, 34.025497, 35.484253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654396, -0.146580, 0.741808,
		0.419133, 0.746216, 0.517194,
		-0.629359, 0.649366, -0.426884,
		26.237488, 34.220306, 35.356186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150694, 33.640629, 36.359596>,  <26.678040, 33.765751, 35.655006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150694, 33.640629, 36.359596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549505, 33.665672, 36.377548>,  <27.788792, 33.680698, 36.388317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549505, 33.665672, 36.377548>,  <27.150694, 33.640629, 36.359596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549505, 33.665672, 36.377548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070375, 0.977235, 0.200145,
		-0.031325, -0.202709, 0.978738,
		0.997029, 0.062609, 0.044878,
		27.848614, 33.684456, 36.391010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288895, 34.131325, 36.899139>,  <27.150694, 33.640629, 36.359596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288895, 34.131325, 36.899139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625021, 34.091217, 36.686043>,  <27.826696, 34.067154, 36.558186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625021, 34.091217, 36.686043>,  <27.288895, 34.131325, 36.899139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625021, 34.091217, 36.686043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190138, 0.974828, 0.116436,
		0.507660, -0.199138, 0.838228,
		0.840315, -0.100269, -0.532745,
		27.877115, 34.061138, 36.526218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762272, 34.566830, 37.218941>,  <27.288895, 34.131325, 36.899139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762272, 34.566830, 37.218941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910000, 34.538124, 36.848331>,  <27.998636, 34.520901, 36.625965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910000, 34.538124, 36.848331>,  <27.762272, 34.566830, 37.218941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910000, 34.538124, 36.848331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337705, 0.939217, 0.061862,
		0.865770, -0.335740, 0.371107,
		0.369320, -0.071767, -0.926527,
		28.020796, 34.516594, 36.570374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487110, 34.828785, 37.193310>,  <27.762272, 34.566830, 37.218941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487110, 34.828785, 37.193310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365194, 34.841694, 36.812561>,  <28.292044, 34.849442, 36.584110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365194, 34.841694, 36.812561>,  <28.487110, 34.828785, 37.193310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365194, 34.841694, 36.812561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253737, 0.966057, -0.048492,
		0.917998, -0.256305, -0.302636,
		-0.304792, 0.032274, -0.951872,
		28.273756, 34.851376, 36.527000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048445, 35.112133, 36.868664>,  <28.487110, 34.828785, 37.193310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048445, 35.112133, 36.868664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725286, 35.168537, 36.639782>,  <28.531391, 35.202377, 36.502453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725286, 35.168537, 36.639782>,  <29.048445, 35.112133, 36.868664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725286, 35.168537, 36.639782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238180, 0.966246, -0.098174,
		0.539050, -0.215603, -0.814212,
		-0.807896, 0.141008, -0.572207,
		28.482918, 35.210838, 36.468121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301832, 35.493046, 36.310574>,  <29.048445, 35.112133, 36.868664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301832, 35.493046, 36.310574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908348, 35.544853, 36.360435>,  <28.672258, 35.575939, 36.390354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908348, 35.544853, 36.360435>,  <29.301832, 35.493046, 36.310574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908348, 35.544853, 36.360435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120734, 0.989797, -0.075671,
		-0.133184, -0.059388, -0.989311,
		-0.983710, 0.129522, 0.124655,
		28.613235, 35.583710, 36.397831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199301, 35.998978, 35.995892>,  <29.301832, 35.493046, 36.310574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199301, 35.998978, 35.995892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858137, 35.998970, 36.204716>,  <28.653439, 35.998966, 36.330009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858137, 35.998970, 36.204716>,  <29.199301, 35.998978, 35.995892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858137, 35.998970, 36.204716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, 0.999718, -0.020263,
		-0.521913, -0.023766, -0.852667,
		-0.852908, -0.000014, 0.522061,
		28.602264, 35.998966, 36.361336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696140, 36.398941, 35.599586>,  <29.199301, 35.998978, 35.995892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696140, 36.398941, 35.599586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601772, 36.413021, 35.988041>,  <28.545151, 36.421471, 36.221115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601772, 36.413021, 35.988041>,  <28.696140, 36.398941, 35.599586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601772, 36.413021, 35.988041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138487, 0.990362, -0.002256,
		-0.961854, 0.133958, -0.238521,
		-0.235920, 0.035202, 0.971135,
		28.530996, 36.423580, 36.279381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185875, 36.932259, 35.661480>,  <28.696140, 36.398941, 35.599586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185875, 36.932259, 35.661480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337212, 36.906719, 36.030865>,  <28.428013, 36.891396, 36.252495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337212, 36.906719, 36.030865>,  <28.185875, 36.932259, 35.661480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337212, 36.906719, 36.030865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102997, 0.988520, 0.110540,
		-0.919919, -0.136936, 0.367422,
		0.378341, -0.063844, 0.923462,
		28.450714, 36.887566, 36.307903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791227, 37.295223, 36.000141>,  <28.185875, 36.932259, 35.661480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791227, 37.295223, 36.000141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108543, 37.274479, 36.242794>,  <28.298933, 37.262032, 36.388386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108543, 37.274479, 36.242794>,  <27.791227, 37.295223, 36.000141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108543, 37.274479, 36.242794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207974, 0.913349, 0.350057,
		-0.572220, -0.403861, 0.713765,
		0.793291, -0.051865, 0.606630,
		28.346531, 37.258919, 36.424782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574997, 37.769581, 36.533546>,  <27.791227, 37.295223, 36.000141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574997, 37.769581, 36.533546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969786, 37.705620, 36.540691>,  <28.206659, 37.667244, 36.544979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969786, 37.705620, 36.540691>,  <27.574997, 37.769581, 36.533546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969786, 37.705620, 36.540691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158789, 0.985930, 0.052235,
		-0.025961, -0.048718, 0.998475,
		0.986971, -0.159903, 0.017860,
		28.265877, 37.657650, 36.546051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859074, 38.331959, 36.915237>,  <27.574997, 37.769581, 36.533546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859074, 38.331959, 36.915237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193987, 38.211155, 36.732922>,  <28.394936, 38.138672, 36.623531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193987, 38.211155, 36.732922>,  <27.859074, 38.331959, 36.915237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193987, 38.211155, 36.732922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271679, 0.953217, -0.132544,
		0.474496, -0.012851, 0.880164,
		0.837284, -0.302014, -0.455789,
		28.445171, 38.120552, 36.596184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334690, 38.699409, 37.165451>,  <27.859074, 38.331959, 36.915237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334690, 38.699409, 37.165451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.534170, 38.570007, 36.843796>,  <28.653858, 38.492367, 36.650803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.534170, 38.570007, 36.843796>,  <28.334690, 38.699409, 37.165451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534170, 38.570007, 36.843796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537597, 0.843182, -0.005815,
		0.679919, -0.429403, 0.594410,
		0.498699, -0.323507, -0.804141,
		28.683781, 38.472954, 36.602554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037846, 38.793022, 37.252151>,  <28.334690, 38.699409, 37.165451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037846, 38.793022, 37.252151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934860, 38.838928, 36.868370>,  <28.873070, 38.866470, 36.638103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934860, 38.838928, 36.868370>,  <29.037846, 38.793022, 37.252151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934860, 38.838928, 36.868370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441211, 0.897335, -0.011065,
		0.859678, -0.426168, -0.281664,
		-0.257463, 0.114761, -0.959449,
		28.857622, 38.873356, 36.580536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622927, 39.117371, 36.952705>,  <29.037846, 38.793022, 37.252151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622927, 39.117371, 36.952705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.373819, 39.156021, 36.642139>,  <29.224356, 39.179211, 36.455799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.373819, 39.156021, 36.642139>,  <29.622927, 39.117371, 36.952705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373819, 39.156021, 36.642139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288400, 0.950819, -0.112997,
		0.727314, -0.294290, -0.620007,
		-0.622768, 0.096626, -0.776417,
		29.186989, 39.185009, 36.409214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948856, 39.498428, 36.456409>,  <29.622927, 39.117371, 36.952705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948856, 39.498428, 36.456409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566166, 39.538361, 36.347076>,  <29.336552, 39.562321, 36.281479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566166, 39.538361, 36.347076>,  <29.948856, 39.498428, 36.456409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566166, 39.538361, 36.347076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175567, 0.947114, -0.268610,
		0.232060, -0.304974, -0.923656,
		-0.956726, 0.099830, -0.273330,
		29.279148, 39.568310, 36.265076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012854, 39.942028, 35.992317>,  <29.948856, 39.498428, 36.456409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012854, 39.942028, 35.992317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616840, 39.998241, 35.995972>,  <29.379232, 40.031967, 35.998165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616840, 39.998241, 35.995972>,  <30.012854, 39.942028, 35.992317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616840, 39.998241, 35.995972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139996, 0.989159, -0.044330,
		-0.015268, -0.042609, -0.998975,
		-0.990034, 0.140529, 0.009137,
		29.319830, 40.040401, 35.998714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836782, 40.398399, 35.385483>,  <30.012854, 39.942028, 35.992317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836782, 40.398399, 35.385483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514025, 40.435299, 35.618862>,  <29.320370, 40.457439, 35.758888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514025, 40.435299, 35.618862>,  <29.836782, 40.398399, 35.385483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514025, 40.435299, 35.618862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049850, 0.973573, -0.222869,
		-0.588588, -0.208916, -0.780972,
		-0.806894, 0.092247, 0.583448,
		29.271955, 40.462975, 35.793896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233131, 40.825611, 34.958912>,  <29.836782, 40.398399, 35.385483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233131, 40.825611, 34.958912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167522, 40.862225, 35.351791>,  <29.128157, 40.884193, 35.587521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167522, 40.862225, 35.351791>,  <29.233131, 40.825611, 34.958912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167522, 40.862225, 35.351791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028971, 0.994809, -0.097546,
		-0.986031, -0.044455, -0.160520,
		-0.164023, 0.091532, 0.982201,
		29.118315, 40.889683, 35.646450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793114, 41.459805, 35.079021>,  <29.233131, 40.825611, 34.958912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793114, 41.459805, 35.079021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985519, 41.383503, 35.421307>,  <29.100964, 41.337723, 35.626678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985519, 41.383503, 35.421307>,  <28.793114, 41.459805, 35.079021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985519, 41.383503, 35.421307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283929, 0.957335, 0.053802,
		-0.829462, 0.217081, 0.514654,
		0.481017, -0.190752, 0.855708,
		29.129824, 41.326279, 35.678020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538937, 41.880722, 35.640984>,  <28.793114, 41.459805, 35.079021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538937, 41.880722, 35.640984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905396, 41.770439, 35.757366>,  <29.125271, 41.704269, 35.827194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905396, 41.770439, 35.757366>,  <28.538937, 41.880722, 35.640984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905396, 41.770439, 35.757366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265627, 0.961198, 0.074437,
		-0.300190, 0.009091, 0.953836,
		0.916148, -0.275710, 0.290957,
		29.180241, 41.687725, 35.844654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720360, 42.409416, 36.178371>,  <28.538937, 41.880722, 35.640984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720360, 42.409416, 36.178371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061792, 42.240826, 36.055897>,  <29.266653, 42.139671, 35.982410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061792, 42.240826, 36.055897>,  <28.720360, 42.409416, 36.178371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061792, 42.240826, 36.055897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477513, 0.867973, 0.136401,
		0.208271, -0.262637, 0.942149,
		0.853584, -0.421480, -0.306186,
		29.317867, 42.114380, 35.964043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187347, 42.553345, 36.689316>,  <28.720360, 42.409416, 36.178371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187347, 42.553345, 36.689316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.434782, 42.482929, 36.383018>,  <29.583242, 42.440678, 36.199242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.434782, 42.482929, 36.383018>,  <29.187347, 42.553345, 36.689316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434782, 42.482929, 36.383018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480086, 0.856177, 0.190993,
		0.621989, -0.485768, 0.614133,
		0.618585, -0.176041, -0.765743,
		29.620358, 42.430119, 36.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.732746, 38.614971, 47.212292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.439095, 38.432407, 47.413387>,  <39.262905, 38.322868, 47.534042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.439095, 38.432407, 47.413387>,  <39.732746, 38.614971, 47.212292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439095, 38.432407, 47.413387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035629, 0.713482, 0.699768,
		-0.678076, 0.531631, -0.507525,
		-0.734128, -0.456413, 0.502736,
		39.218857, 38.295483, 47.564209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223389, 39.173283, 47.344631>,  <39.732746, 38.614971, 47.212292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223389, 39.173283, 47.344631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205963, 38.874481, 47.609989>,  <39.195507, 38.695202, 47.769203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205963, 38.874481, 47.609989>,  <39.223389, 39.173283, 47.344631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205963, 38.874481, 47.609989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109990, 0.656400, 0.746352,
		-0.992977, 0.105481, 0.053567,
		-0.043565, -0.747003, 0.663392,
		39.192894, 38.650379, 47.809006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755245, 39.384109, 47.854794>,  <39.223389, 39.173283, 47.344631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755245, 39.384109, 47.854794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916557, 39.082760, 48.062557>,  <39.013344, 38.901951, 48.187218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916557, 39.082760, 48.062557>,  <38.755245, 39.384109, 47.854794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916557, 39.082760, 48.062557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083869, 0.595658, 0.798848,
		-0.911225, -0.278597, 0.303401,
		0.403280, -0.753376, 0.519413,
		39.037540, 38.856747, 48.218380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348366, 39.323204, 48.355171>,  <38.755245, 39.384109, 47.854794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348366, 39.323204, 48.355171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697464, 39.182434, 48.490501>,  <38.906921, 39.097973, 48.571697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697464, 39.182434, 48.490501>,  <38.348366, 39.323204, 48.355171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697464, 39.182434, 48.490501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041852, 0.744425, 0.666393,
		-0.486378, -0.567432, 0.664423,
		0.872746, -0.351926, 0.338324,
		38.959290, 39.076855, 48.591999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335720, 39.203445, 49.143333>,  <38.348366, 39.323204, 48.355171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335720, 39.203445, 49.143333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727779, 39.219456, 49.065659>,  <38.963017, 39.229061, 49.019054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727779, 39.219456, 49.065659>,  <38.335720, 39.203445, 49.143333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727779, 39.219456, 49.065659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153392, 0.467485, 0.870591,
		0.125631, -0.883094, 0.452064,
		0.980146, 0.040030, -0.194190,
		39.021824, 39.231464, 49.007401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639034, 39.067459, 49.832436>,  <38.335720, 39.203445, 49.143333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639034, 39.067459, 49.832436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949596, 39.226810, 49.637096>,  <39.135933, 39.322422, 49.519894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949596, 39.226810, 49.637096>,  <38.639034, 39.067459, 49.832436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949596, 39.226810, 49.637096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107945, 0.679363, 0.725820,
		0.620919, -0.616246, 0.484459,
		0.776406, 0.398380, -0.488350,
		39.182518, 39.346325, 49.490589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340431, 39.124115, 50.300358>,  <38.639034, 39.067459, 49.832436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340431, 39.124115, 50.300358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.356712, 39.394169, 50.005730>,  <39.366482, 39.556202, 49.828953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.356712, 39.394169, 50.005730>,  <39.340431, 39.124115, 50.300358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356712, 39.394169, 50.005730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126539, 0.727766, 0.674050,
		0.991126, -0.120641, -0.055808,
		0.040703, 0.675131, -0.736574,
		39.368923, 39.596706, 49.784756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795460, 39.599148, 50.462845>,  <39.340431, 39.124115, 50.300358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795460, 39.599148, 50.462845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566868, 39.816895, 50.217216>,  <39.429714, 39.947540, 50.069839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566868, 39.816895, 50.217216>,  <39.795460, 39.599148, 50.462845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566868, 39.816895, 50.217216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071611, 0.778528, 0.623511,
		0.817485, 0.312350, -0.483896,
		-0.571480, 0.544364, -0.614067,
		39.395424, 39.980206, 50.032997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227554, 40.256008, 50.280350>,  <39.795460, 39.599148, 50.462845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227554, 40.256008, 50.280350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.830242, 40.273643, 50.237556>,  <39.591854, 40.284225, 50.211880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.830242, 40.273643, 50.237556>,  <40.227554, 40.256008, 50.280350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830242, 40.273643, 50.237556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023539, 0.828252, 0.559861,
		0.113287, 0.558619, -0.821652,
		-0.993284, 0.044084, -0.106979,
		39.532257, 40.286869, 50.205463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025757, 40.819256, 50.787228>,  <40.227554, 40.256008, 50.280350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025757, 40.819256, 50.787228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663212, 40.767357, 50.626389>,  <39.445686, 40.736217, 50.529884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663212, 40.767357, 50.626389>,  <40.025757, 40.819256, 50.787228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663212, 40.767357, 50.626389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334344, 0.802095, 0.494831,
		0.258317, 0.582932, -0.770365,
		-0.906359, -0.129744, -0.402095,
		39.391304, 40.728436, 50.505760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809017, 41.449715, 50.599056>,  <40.025757, 40.819256, 50.787228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809017, 41.449715, 50.599056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.470753, 41.238655, 50.631138>,  <39.267792, 41.112019, 50.650387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.470753, 41.238655, 50.631138>,  <39.809017, 41.449715, 50.599056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470753, 41.238655, 50.631138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350480, 0.662364, 0.662146,
		-0.402509, 0.531843, -0.745070,
		-0.845665, -0.527652, 0.080207,
		39.217052, 41.080360, 50.655201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303082, 41.969418, 50.699131>,  <39.809017, 41.449715, 50.599056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303082, 41.969418, 50.699131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134350, 41.629696, 50.826092>,  <39.033112, 41.425861, 50.902267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134350, 41.629696, 50.826092>,  <39.303082, 41.969418, 50.699131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134350, 41.629696, 50.826092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386964, 0.485226, 0.784101,
		-0.819953, 0.207931, -0.533331,
		-0.421825, -0.849305, 0.317401,
		39.007801, 41.374905, 50.921310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649845, 42.161476, 50.851433>,  <39.303082, 41.969418, 50.699131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649845, 42.161476, 50.851433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746811, 41.821529, 51.038609>,  <38.804989, 41.617561, 51.150913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746811, 41.821529, 51.038609>,  <38.649845, 42.161476, 50.851433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746811, 41.821529, 51.038609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400250, 0.351758, 0.846207,
		-0.883762, -0.392426, -0.254887,
		0.242415, -0.849864, 0.467939,
		38.819534, 41.566570, 51.178989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363438, 42.518532, 51.432899>,  <38.649845, 42.161476, 50.851433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363438, 42.518532, 51.432899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037857, 42.745827, 51.481216>,  <37.842510, 42.882206, 51.510208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037857, 42.745827, 51.481216>,  <38.363438, 42.518532, 51.432899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037857, 42.745827, 51.481216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305049, -0.241100, -0.921312,
		-0.494403, -0.786748, 0.369584,
		-0.813947, 0.568241, 0.120796,
		37.793674, 42.916298, 51.517456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781746, 42.087971, 51.293434>,  <38.363438, 42.518532, 51.432899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781746, 42.087971, 51.293434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.731491, 42.478764, 51.224480>,  <37.701340, 42.713242, 51.183105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.731491, 42.478764, 51.224480>,  <37.781746, 42.087971, 51.293434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731491, 42.478764, 51.224480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263349, -0.200371, -0.943663,
		-0.956485, -0.073159, 0.282461,
		-0.125634, 0.976985, -0.172385,
		37.693802, 42.771858, 51.172764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229145, 42.090244, 50.947071>,  <37.781746, 42.087971, 51.293434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229145, 42.090244, 50.947071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402328, 42.432613, 50.833973>,  <37.506237, 42.638035, 50.766113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402328, 42.432613, 50.833973>,  <37.229145, 42.090244, 50.947071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402328, 42.432613, 50.833973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097238, -0.267489, -0.958642,
		-0.896155, 0.442544, -0.032583,
		0.432957, 0.855923, -0.282743,
		37.532215, 42.689392, 50.749149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761677, 42.441055, 50.520283>,  <37.229145, 42.090244, 50.947071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761677, 42.441055, 50.520283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125263, 42.573074, 50.418427>,  <37.343414, 42.652287, 50.357311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125263, 42.573074, 50.418427>,  <36.761677, 42.441055, 50.520283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125263, 42.573074, 50.418427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215640, -0.150500, -0.964805,
		-0.356755, 0.931890, -0.065629,
		0.908969, 0.330047, -0.254644,
		37.397953, 42.672089, 50.342033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481857, 42.823490, 50.009159>,  <36.761677, 42.441055, 50.520283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481857, 42.823490, 50.009159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876999, 42.768005, 49.981125>,  <37.114082, 42.734715, 49.964306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876999, 42.768005, 49.981125>,  <36.481857, 42.823490, 50.009159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876999, 42.768005, 49.981125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065612, 0.036551, -0.997176,
		0.140883, 0.989658, 0.027005,
		0.987850, -0.138714, -0.070083,
		37.173355, 42.726391, 49.960098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718643, 43.226334, 49.532742>,  <36.481857, 42.823490, 50.009159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718643, 43.226334, 49.532742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009346, 42.951614, 49.537197>,  <37.183769, 42.786781, 49.539871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009346, 42.951614, 49.537197>,  <36.718643, 43.226334, 49.532742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009346, 42.951614, 49.537197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004790, -0.011150, -0.999926,
		0.686876, 0.726759, -0.004813,
		0.726759, -0.686802, 0.011140,
		37.227375, 42.745575, 49.540539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225014, 43.426006, 49.106281>,  <36.718643, 43.226334, 49.532742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225014, 43.426006, 49.106281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292698, 43.033295, 49.140854>,  <37.333309, 42.797668, 49.161598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292698, 43.033295, 49.140854>,  <37.225014, 43.426006, 49.106281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292698, 43.033295, 49.140854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138259, -0.063186, -0.988379,
		0.975834, 0.179196, 0.125048,
		0.169212, -0.981782, 0.086434,
		37.343460, 42.738762, 49.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798824, 43.211201, 48.767475>,  <37.225014, 43.426006, 49.106281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798824, 43.211201, 48.767475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646893, 42.843697, 48.810593>,  <37.555733, 42.623196, 48.836464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646893, 42.843697, 48.810593>,  <37.798824, 43.211201, 48.767475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646893, 42.843697, 48.810593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289478, -0.228728, -0.929455,
		0.878598, -0.321825, 0.352836,
		-0.379826, -0.918756, 0.107798,
		37.532944, 42.568069, 48.842934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345943, 42.868332, 48.460205>,  <37.798824, 43.211201, 48.767475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345943, 42.868332, 48.460205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025448, 42.629101, 48.453026>,  <37.833153, 42.485561, 48.448719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025448, 42.629101, 48.453026>,  <38.345943, 42.868332, 48.460205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025448, 42.629101, 48.453026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314395, -0.395284, -0.863080,
		0.509094, -0.697175, 0.504749,
		-0.801236, -0.598079, -0.017951,
		37.785076, 42.449677, 48.447639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581104, 42.103329, 48.276337>,  <38.345943, 42.868332, 48.460205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581104, 42.103329, 48.276337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187099, 42.116901, 48.208691>,  <37.950695, 42.125046, 48.168102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187099, 42.116901, 48.208691>,  <38.581104, 42.103329, 48.276337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187099, 42.116901, 48.208691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137091, -0.440980, -0.886985,
		-0.104671, -0.896875, 0.429720,
		-0.985013, 0.033931, -0.169112,
		37.891594, 42.127079, 48.157955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414803, 41.531502, 47.704807>,  <38.581104, 42.103329, 48.276337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414803, 41.531502, 47.704807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061466, 41.716755, 47.733711>,  <37.849464, 41.827908, 47.751053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061466, 41.716755, 47.733711>,  <38.414803, 41.531502, 47.704807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061466, 41.716755, 47.733711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272296, -0.381534, -0.883338,
		-0.381534, -0.799962, 0.463133,
		0.883338, -0.463133, -0.072258,
		37.796463, 41.855694, 47.755390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781136, 41.043419, 47.475052>,  <38.414803, 41.531502, 47.704807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781136, 41.043419, 47.475052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669846, 41.425209, 47.432018>,  <37.603073, 41.654282, 47.406200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669846, 41.425209, 47.432018>,  <37.781136, 41.043419, 47.475052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669846, 41.425209, 47.432018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331975, -0.200656, -0.921700,
		-0.901323, -0.220726, 0.372688,
		-0.278225, 0.954472, -0.107581,
		37.586376, 41.711552, 47.399742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096550, 41.072197, 47.248436>,  <37.781136, 41.043419, 47.475052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096550, 41.072197, 47.248436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214455, 41.435966, 47.131088>,  <37.285198, 41.654228, 47.060680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214455, 41.435966, 47.131088>,  <37.096550, 41.072197, 47.248436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214455, 41.435966, 47.131088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380752, -0.169812, -0.908951,
		-0.876439, 0.379624, 0.296211,
		0.294759, 0.909423, -0.293373,
		37.302883, 41.708794, 47.043076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535038, 41.317841, 46.809856>,  <37.096550, 41.072197, 47.248436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535038, 41.317841, 46.809856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861752, 41.533707, 46.728260>,  <37.057781, 41.663227, 46.679302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861752, 41.533707, 46.728260>,  <36.535038, 41.317841, 46.809856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861752, 41.533707, 46.728260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094465, -0.223711, -0.970067,
		-0.569151, 0.811610, -0.131745,
		0.816788, 0.539669, -0.203994,
		37.106789, 41.695606, 46.667061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359394, 41.751465, 46.163895>,  <36.535038, 41.317841, 46.809856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359394, 41.751465, 46.163895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759388, 41.749943, 46.165401>,  <36.999386, 41.749031, 46.166306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759388, 41.749943, 46.165401>,  <36.359394, 41.751465, 46.163895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759388, 41.749943, 46.165401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001744, -0.434694, -0.900577,
		0.005063, 0.900570, -0.434681,
		0.999986, -0.003801, 0.003771,
		37.059383, 41.748802, 46.166534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672924, 42.095730, 45.765438>,  <36.359394, 41.751465, 46.163895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672924, 42.095730, 45.765438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315483, 41.918335, 45.793152>,  <35.101017, 41.811897, 45.809780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315483, 41.918335, 45.793152>,  <35.672924, 42.095730, 45.765438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315483, 41.918335, 45.793152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179386, 0.494330, 0.850564,
		-0.411458, 0.747637, -0.521288,
		-0.893601, -0.443483, 0.069281,
		35.047401, 41.785290, 45.813934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179527, 42.627548, 45.990856>,  <35.672924, 42.095730, 45.765438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179527, 42.627548, 45.990856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004719, 42.280338, 46.085133>,  <34.899834, 42.072014, 46.141697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004719, 42.280338, 46.085133>,  <35.179527, 42.627548, 45.990856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004719, 42.280338, 46.085133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087916, 0.302004, 0.949244,
		-0.895146, 0.394115, -0.208294,
		-0.437017, -0.868025, 0.235689,
		34.873615, 42.019932, 46.155838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515587, 42.725368, 46.467976>,  <35.179527, 42.627548, 45.990856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515587, 42.725368, 46.467976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642406, 42.349426, 46.518810>,  <34.718498, 42.123859, 46.549309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642406, 42.349426, 46.518810>,  <34.515587, 42.725368, 46.467976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642406, 42.349426, 46.518810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033096, 0.122951, 0.991861,
		-0.947831, -0.318676, 0.007876,
		0.317050, -0.939856, 0.127084,
		34.737522, 42.067471, 46.556934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089691, 42.524815, 46.927311>,  <34.515587, 42.725368, 46.467976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089691, 42.524815, 46.927311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384014, 42.254650, 46.946892>,  <34.560608, 42.092552, 46.958641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384014, 42.254650, 46.946892>,  <34.089691, 42.524815, 46.927311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384014, 42.254650, 46.946892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025437, 0.044672, 0.998678,
		-0.676709, -0.736084, 0.015690,
		0.735811, -0.675415, 0.048953,
		34.604759, 42.052025, 46.961578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948025, 42.090088, 47.644035>,  <34.089691, 42.524815, 46.927311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948025, 42.090088, 47.644035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333153, 42.077301, 47.536739>,  <34.564228, 42.069630, 47.472363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333153, 42.077301, 47.536739>,  <33.948025, 42.090088, 47.644035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333153, 42.077301, 47.536739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269035, 0.023771, 0.962837,
		-0.024408, -0.999206, 0.031489,
		0.962821, -0.031973, -0.268242,
		34.621998, 42.067711, 47.456268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296764, 41.534874, 48.132126>,  <33.948025, 42.090088, 47.644035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296764, 41.534874, 48.132126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580254, 41.768631, 47.974041>,  <34.750347, 41.908886, 47.879192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580254, 41.768631, 47.974041>,  <34.296764, 41.534874, 48.132126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580254, 41.768631, 47.974041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362613, 0.178778, 0.914631,
		0.605160, -0.791531, -0.085204,
		0.708726, 0.584395, -0.395209,
		34.792873, 41.943951, 47.855476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859955, 41.319386, 48.536076>,  <34.296764, 41.534874, 48.132126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859955, 41.319386, 48.536076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962711, 41.673374, 48.380722>,  <35.024364, 41.885765, 48.287510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962711, 41.673374, 48.380722>,  <34.859955, 41.319386, 48.536076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962711, 41.673374, 48.380722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189061, 0.348087, 0.918200,
		0.947768, -0.309304, -0.077893,
		0.256890, 0.884967, -0.388383,
		35.039780, 41.938866, 48.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263130, 40.649220, 48.871437>,  <34.859955, 41.319386, 48.536076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263130, 40.649220, 48.871437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957279, 40.445541, 49.029461>,  <34.773769, 40.323334, 49.124275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957279, 40.445541, 49.029461>,  <35.263130, 40.649220, 48.871437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957279, 40.445541, 49.029461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081407, -0.684393, -0.724554,
		0.639313, -0.521851, 0.564756,
		-0.764625, -0.509192, 0.395059,
		34.727890, 40.292782, 49.147980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446354, 40.045837, 48.879581>,  <35.263130, 40.649220, 48.871437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446354, 40.045837, 48.879581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051441, 39.988373, 48.906811>,  <34.814495, 39.953892, 48.923149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051441, 39.988373, 48.906811>,  <35.446354, 40.045837, 48.879581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051441, 39.988373, 48.906811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070974, -0.781462, -0.619903,
		0.142254, -0.607188, 0.781720,
		-0.987282, -0.143665, 0.068072,
		34.755257, 39.945274, 48.927231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269272, 39.381424, 49.162819>,  <35.446354, 40.045837, 48.879581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269272, 39.381424, 49.162819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957050, 39.507774, 48.947056>,  <34.769718, 39.583584, 48.817600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957050, 39.507774, 48.947056>,  <35.269272, 39.381424, 49.162819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957050, 39.507774, 48.947056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135171, -0.757211, -0.639031,
		-0.610299, -0.571709, 0.548346,
		-0.780553, 0.315879, -0.539404,
		34.722885, 39.602539, 48.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819851, 38.835911, 49.032978>,  <35.269272, 39.381424, 49.162819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819851, 38.835911, 49.032978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712315, 39.093964, 48.746891>,  <34.647793, 39.248795, 48.575237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712315, 39.093964, 48.746891>,  <34.819851, 38.835911, 49.032978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712315, 39.093964, 48.746891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254159, -0.668721, -0.698724,
		-0.929048, -0.369622, 0.015812,
		-0.268837, 0.645130, -0.715216,
		34.631664, 39.287502, 48.532326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516548, 38.475494, 48.426643>,  <34.819851, 38.835911, 49.032978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516548, 38.475494, 48.426643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619999, 38.809841, 48.232967>,  <34.682068, 39.010448, 48.116760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619999, 38.809841, 48.232967>,  <34.516548, 38.475494, 48.426643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619999, 38.809841, 48.232967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092118, -0.520299, -0.849001,
		-0.961575, 0.174971, -0.211561,
		0.258626, 0.835867, -0.484189,
		34.697586, 39.060600, 48.087711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144588, 38.341217, 47.810913>,  <34.516548, 38.475494, 48.426643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144588, 38.341217, 47.810913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393799, 38.646370, 47.741810>,  <34.543327, 38.829460, 47.700348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393799, 38.646370, 47.741810>,  <34.144588, 38.341217, 47.810913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393799, 38.646370, 47.741810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086230, -0.286499, -0.954192,
		-0.777431, 0.579593, -0.244280,
		0.623029, 0.762883, -0.172755,
		34.580708, 38.875237, 47.689983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932175, 38.663189, 47.246582>,  <34.144588, 38.341217, 47.810913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932175, 38.663189, 47.246582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323486, 38.740948, 47.275391>,  <34.558273, 38.787605, 47.292675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323486, 38.740948, 47.275391>,  <33.932175, 38.663189, 47.246582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323486, 38.740948, 47.275391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104820, -0.164075, -0.980863,
		-0.178861, 0.967103, -0.180887,
		0.978275, 0.194399, 0.072025,
		34.616970, 38.799267, 47.296997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.168961, 38.608875, 51.718258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510895, 38.782551, 51.604603>,  <37.716057, 38.886757, 51.536407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510895, 38.782551, 51.604603>,  <37.168961, 38.608875, 51.718258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510895, 38.782551, 51.604603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346719, -0.885345, -0.309760,
		-0.386056, 0.166277, -0.907366,
		0.854837, 0.434185, -0.284141,
		37.767345, 38.912807, 51.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303394, 38.312469, 51.013489>,  <37.168961, 38.608875, 51.718258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303394, 38.312469, 51.013489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657829, 38.451595, 51.136044>,  <37.870491, 38.535072, 51.209576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657829, 38.451595, 51.136044>,  <37.303394, 38.312469, 51.013489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657829, 38.451595, 51.136044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460940, -0.730823, -0.503420,
		0.048818, 0.587301, -0.807895,
		0.886087, 0.347816, 0.306388,
		37.923656, 38.555939, 51.227959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683521, 38.415024, 50.385662>,  <37.303394, 38.312469, 51.013489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683521, 38.415024, 50.385662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940735, 38.383141, 50.690334>,  <38.095062, 38.364010, 50.873138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940735, 38.383141, 50.690334>,  <37.683521, 38.415024, 50.385662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940735, 38.383141, 50.690334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615927, -0.537235, -0.576205,
		0.455128, 0.839658, -0.296367,
		0.643034, -0.079707, 0.761678,
		38.133644, 38.359230, 50.918839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262741, 38.340378, 50.014473>,  <37.683521, 38.415024, 50.385662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262741, 38.340378, 50.014473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.361309, 38.220661, 50.383190>,  <38.420448, 38.148830, 50.604420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.361309, 38.220661, 50.383190>,  <38.262741, 38.340378, 50.014473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361309, 38.220661, 50.383190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307172, -0.877969, -0.367173,
		0.919197, 0.373627, -0.124415,
		0.246418, -0.299288, 0.921794,
		38.435234, 38.130875, 50.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945026, 38.267147, 50.087143>,  <38.262741, 38.340378, 50.014473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945026, 38.267147, 50.087143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.761818, 38.018299, 50.341129>,  <38.651894, 37.868988, 50.493519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.761818, 38.018299, 50.341129>,  <38.945026, 38.267147, 50.087143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761818, 38.018299, 50.341129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381615, -0.782732, -0.491630,
		0.802859, 0.017133, 0.595922,
		-0.458024, -0.622123, 0.634962,
		38.624409, 37.831661, 50.531616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357895, 37.670078, 50.123436>,  <38.945026, 38.267147, 50.087143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357895, 37.670078, 50.123436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.995098, 37.552326, 50.243900>,  <38.777420, 37.481674, 50.316177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.995098, 37.552326, 50.243900>,  <39.357895, 37.670078, 50.123436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995098, 37.552326, 50.243900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028662, -0.756600, -0.653249,
		0.420162, -0.583863, 0.694671,
		-0.906996, -0.294381, 0.301160,
		38.723000, 37.464012, 50.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315559, 37.071976, 49.974823>,  <39.357895, 37.670078, 50.123436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315559, 37.071976, 49.974823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.924572, 37.078777, 50.058990>,  <38.689980, 37.082859, 50.109489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.924572, 37.078777, 50.058990>,  <39.315559, 37.071976, 49.974823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924572, 37.078777, 50.058990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150291, -0.755997, -0.637088,
		0.148243, -0.654355, 0.741514,
		-0.977464, 0.016999, 0.210415,
		38.631332, 37.083878, 50.122116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195461, 36.350380, 49.961956>,  <39.315559, 37.071976, 49.974823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195461, 36.350380, 49.961956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.839630, 36.530060, 49.928772>,  <38.626133, 36.637867, 49.908863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.839630, 36.530060, 49.928772>,  <39.195461, 36.350380, 49.961956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839630, 36.530060, 49.928772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318089, -0.739502, -0.593260,
		-0.327839, -0.501359, 0.800725,
		-0.889574, 0.449195, -0.082960,
		38.572758, 36.664818, 49.903885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710812, 35.877132, 50.272888>,  <39.195461, 36.350380, 49.961956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710812, 35.877132, 50.272888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.509724, 36.120674, 50.027428>,  <38.389072, 36.266800, 49.880150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.509724, 36.120674, 50.027428>,  <38.710812, 35.877132, 50.272888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509724, 36.120674, 50.027428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345865, -0.792245, -0.502717,
		-0.792245, -0.040485, 0.608858,
		0.502717, -0.608858, 0.613651,
		38.358910, 36.303333, 49.843334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179565, 35.460350, 50.143829>,  <38.710812, 35.877132, 50.272888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179565, 35.460350, 50.143829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171257, 35.728397, 49.847046>,  <38.166271, 35.889225, 49.668976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171257, 35.728397, 49.847046>,  <38.179565, 35.460350, 50.143829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171257, 35.728397, 49.847046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321901, -0.707087, -0.629610,
		-0.946546, 0.225764, 0.230396,
		-0.020767, 0.670119, -0.741963,
		38.165028, 35.929432, 49.624458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614605, 35.353477, 49.761513>,  <38.179565, 35.460350, 50.143829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614605, 35.353477, 49.761513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.795673, 35.569691, 49.477848>,  <37.904316, 35.699421, 49.307648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.795673, 35.569691, 49.477848>,  <37.614605, 35.353477, 49.761513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795673, 35.569691, 49.477848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246628, -0.688386, -0.682129,
		-0.856891, 0.483680, -0.178303,
		0.452674, 0.540535, -0.709160,
		37.931477, 35.731850, 49.265099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099350, 35.457508, 49.165371>,  <37.614605, 35.353477, 49.761513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099350, 35.457508, 49.165371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456776, 35.525074, 48.998989>,  <37.671230, 35.565613, 48.899162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456776, 35.525074, 48.998989>,  <37.099350, 35.457508, 49.165371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456776, 35.525074, 48.998989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192270, -0.693259, -0.694568,
		-0.405687, 0.700613, -0.586992,
		0.893561, 0.168916, -0.415953,
		37.724842, 35.575748, 48.874203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804020, 35.965660, 48.653145>,  <37.099350, 35.457508, 49.165371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804020, 35.965660, 48.653145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.432446, 35.880905, 48.774597>,  <36.209503, 35.830051, 48.847469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.432446, 35.880905, 48.774597>,  <36.804020, 35.965660, 48.653145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432446, 35.880905, 48.774597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057036, 0.728386, 0.682789,
		-0.365833, 0.651582, -0.664536,
		-0.928931, -0.211884, 0.303631,
		36.153767, 35.817341, 48.865685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551769, 36.621014, 48.740822>,  <36.804020, 35.965660, 48.653145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551769, 36.621014, 48.740822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.304066, 36.397701, 48.961670>,  <36.155441, 36.263714, 49.094181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.304066, 36.397701, 48.961670>,  <36.551769, 36.621014, 48.740822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304066, 36.397701, 48.961670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140672, 0.612916, 0.777525,
		-0.772480, 0.559160, -0.301022,
		-0.619262, -0.558277, 0.552124,
		36.118286, 36.230217, 49.127308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086727, 37.125263, 49.119621>,  <36.551769, 36.621014, 48.740822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086727, 37.125263, 49.119621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.105797, 36.769043, 49.300575>,  <36.117237, 36.555313, 49.409149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.105797, 36.769043, 49.300575>,  <36.086727, 37.125263, 49.119621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105797, 36.769043, 49.300575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049748, 0.454458, 0.889378,
		-0.997623, -0.019894, 0.065968,
		0.047673, -0.890546, 0.452388,
		36.120098, 36.501881, 49.436291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592636, 37.202782, 49.585613>,  <36.086727, 37.125263, 49.119621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592636, 37.202782, 49.585613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794796, 36.883301, 49.716240>,  <35.916092, 36.691612, 49.794617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794796, 36.883301, 49.716240>,  <35.592636, 37.202782, 49.585613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794796, 36.883301, 49.716240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213257, 0.251106, 0.944175,
		-0.836116, -0.546832, -0.043418,
		0.505403, -0.798699, 0.326569,
		35.946419, 36.643692, 49.814209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097717, 36.869526, 49.924957>,  <35.592636, 37.202782, 49.585613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097717, 36.869526, 49.924957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455029, 36.741703, 50.051407>,  <35.669415, 36.665009, 50.127277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455029, 36.741703, 50.051407>,  <35.097717, 36.869526, 49.924957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455029, 36.741703, 50.051407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205188, 0.335847, 0.919296,
		-0.399934, -0.886054, 0.234437,
		0.893281, -0.319554, 0.316124,
		35.723015, 36.645836, 50.146244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927277, 36.406918, 50.446342>,  <35.097717, 36.869526, 49.924957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927277, 36.406918, 50.446342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.293713, 36.554440, 50.509293>,  <35.513573, 36.642952, 50.547062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.293713, 36.554440, 50.509293>,  <34.927277, 36.406918, 50.446342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293713, 36.554440, 50.509293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340436, 0.508000, 0.791227,
		0.211862, -0.778408, 0.590927,
		0.916088, 0.368804, 0.157372,
		35.568539, 36.665081, 50.556503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066391, 36.246086, 51.127609>,  <34.927277, 36.406918, 50.446342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066391, 36.246086, 51.127609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320938, 36.542217, 51.040936>,  <35.473667, 36.719894, 50.988930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320938, 36.542217, 51.040936>,  <35.066391, 36.246086, 51.127609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320938, 36.542217, 51.040936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313792, 0.505056, 0.804023,
		0.704679, -0.443659, 0.553710,
		0.636366, 0.740328, -0.216686,
		35.511848, 36.764317, 50.975929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274094, 36.363636, 51.757019>,  <35.066391, 36.246086, 51.127609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274094, 36.363636, 51.757019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.407421, 36.673004, 51.541344>,  <35.487415, 36.858624, 51.411938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.407421, 36.673004, 51.541344>,  <35.274094, 36.363636, 51.757019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407421, 36.673004, 51.541344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200877, 0.617021, 0.760877,
		0.921167, -0.145301, 0.361024,
		0.333316, 0.773416, -0.539192,
		35.507416, 36.905029, 51.379585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698162, 36.693802, 52.222515>,  <35.274094, 36.363636, 51.757019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698162, 36.693802, 52.222515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.625664, 36.976402, 51.948872>,  <35.582165, 37.145962, 51.784687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.625664, 36.976402, 51.948872>,  <35.698162, 36.693802, 52.222515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625664, 36.976402, 51.948872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053439, 0.687524, 0.724193,
		0.981984, 0.167817, -0.086858,
		-0.181248, 0.706504, -0.684106,
		35.571289, 37.188354, 51.743641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224384, 37.233929, 52.411278>,  <35.698162, 36.693802, 52.222515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224384, 37.233929, 52.411278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.921112, 37.382130, 52.196659>,  <35.739147, 37.471050, 52.067886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.921112, 37.382130, 52.196659>,  <36.224384, 37.233929, 52.411278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921112, 37.382130, 52.196659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157198, 0.694743, 0.701870,
		0.632808, 0.616491, -0.468501,
		-0.758184, 0.370501, -0.536550,
		35.693657, 37.493279, 52.035694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401661, 37.957523, 52.285664>,  <36.224384, 37.233929, 52.411278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401661, 37.957523, 52.285664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.006844, 37.927967, 52.228703>,  <35.769951, 37.910233, 52.194527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.006844, 37.927967, 52.228703>,  <36.401661, 37.957523, 52.285664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006844, 37.927967, 52.228703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144157, 0.798025, 0.585128,
		0.070402, 0.598077, -0.798341,
		-0.987047, -0.073892, -0.142400,
		35.710728, 37.905800, 52.185982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235405, 38.562721, 52.121834>,  <36.401661, 37.957523, 52.285664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235405, 38.562721, 52.121834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.903225, 38.396576, 52.270336>,  <35.703918, 38.296890, 52.359436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.903225, 38.396576, 52.270336>,  <36.235405, 38.562721, 52.121834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903225, 38.396576, 52.270336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154444, 0.811940, 0.562939,
		-0.535261, 0.410152, -0.738424,
		-0.830447, -0.415365, 0.371255,
		35.654091, 38.271965, 52.381714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739136, 39.164055, 52.109413>,  <36.235405, 38.562721, 52.121834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739136, 39.164055, 52.109413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611568, 38.873753, 52.353241>,  <35.535027, 38.699570, 52.499538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611568, 38.873753, 52.353241>,  <35.739136, 39.164055, 52.109413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611568, 38.873753, 52.353241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335027, 0.687953, 0.643799,
		-0.886593, 0.001099, -0.462549,
		-0.318919, -0.725754, 0.609566,
		35.515892, 38.656025, 52.536110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240635, 39.465366, 52.353577>,  <35.739136, 39.164055, 52.109413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240635, 39.465366, 52.353577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.319866, 39.185959, 52.628628>,  <35.367405, 39.018314, 52.793659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.319866, 39.185959, 52.628628>,  <35.240635, 39.465366, 52.353577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319866, 39.185959, 52.628628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225880, 0.650116, 0.725484,
		-0.953804, -0.299027, -0.029005,
		0.198083, -0.698521, 0.687628,
		35.379292, 38.976402, 52.834915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911781, 40.123749, 52.281849>,  <35.240635, 39.465366, 52.353577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911781, 40.123749, 52.281849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.961048, 40.493851, 52.138329>,  <34.990608, 40.715912, 52.052216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.961048, 40.493851, 52.138329>,  <34.911781, 40.123749, 52.281849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961048, 40.493851, 52.138329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450582, -0.269999, -0.850927,
		-0.884198, 0.266474, 0.383647,
		0.123165, 0.925252, -0.358801,
		34.997997, 40.771427, 52.030689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288593, 40.233986, 51.935875>,  <34.911781, 40.123749, 52.281849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288593, 40.233986, 51.935875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523354, 40.530918, 51.806576>,  <34.664211, 40.709080, 51.728996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523354, 40.530918, 51.806576>,  <34.288593, 40.233986, 51.935875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523354, 40.530918, 51.806576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310947, -0.161968, -0.936524,
		-0.747569, 0.650160, 0.135767,
		0.586901, 0.742333, -0.323248,
		34.699425, 40.753616, 51.709602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833607, 40.559761, 51.403706>,  <34.288593, 40.233986, 51.935875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833607, 40.559761, 51.403706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.216274, 40.631695, 51.312107>,  <34.445877, 40.674854, 51.257149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.216274, 40.631695, 51.312107>,  <33.833607, 40.559761, 51.403706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216274, 40.631695, 51.312107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192660, -0.198719, -0.960933,
		-0.218314, 0.963416, -0.155462,
		0.956672, 0.179834, -0.228995,
		34.503277, 40.685646, 51.243408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807976, 41.100723, 50.937115>,  <33.833607, 40.559761, 51.403706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807976, 41.100723, 50.937115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.155293, 40.909874, 50.882828>,  <34.363682, 40.795364, 50.850258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.155293, 40.909874, 50.882828>,  <33.807976, 41.100723, 50.937115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155293, 40.909874, 50.882828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153482, 0.001757, -0.988150,
		0.471707, 0.878835, -0.071704,
		0.868295, -0.477123, -0.135714,
		34.415779, 40.766739, 50.842113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957169, 41.305092, 50.139725>,  <33.807976, 41.100723, 50.937115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957169, 41.305092, 50.139725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218662, 41.026756, 50.258678>,  <34.375561, 40.859756, 50.330051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218662, 41.026756, 50.258678>,  <33.957169, 41.305092, 50.139725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218662, 41.026756, 50.258678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187334, -0.231937, -0.954521,
		0.733166, 0.679717, -0.021272,
		0.653738, -0.695837, 0.297383,
		34.414783, 40.818005, 50.347893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482277, 41.466263, 49.714695>,  <33.957169, 41.305092, 50.139725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482277, 41.466263, 49.714695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.503265, 41.082150, 49.824306>,  <34.515858, 40.851681, 49.890076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.503265, 41.082150, 49.824306>,  <34.482277, 41.466263, 49.714695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503265, 41.082150, 49.824306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233402, -0.255018, -0.938344,
		0.970963, 0.113198, 0.210751,
		0.052473, -0.960287, 0.274033,
		34.519009, 40.794064, 49.906517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921696, 41.197262, 49.249294>,  <34.482277, 41.466263, 49.714695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921696, 41.197262, 49.249294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739620, 40.864258, 49.375614>,  <34.630375, 40.664455, 49.451405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739620, 40.864258, 49.375614>,  <34.921696, 41.197262, 49.249294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739620, 40.864258, 49.375614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147647, -0.420337, -0.895275,
		0.878067, -0.360894, 0.314250,
		-0.455190, -0.832510, 0.315799,
		34.603062, 40.614506, 49.470352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550194, 41.455162, 48.896141>,  <34.921696, 41.197262, 49.249294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550194, 41.455162, 48.896141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.442848, 41.801212, 48.726654>,  <35.378441, 42.008842, 48.624962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.442848, 41.801212, 48.726654>,  <35.550194, 41.455162, 48.896141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442848, 41.801212, 48.726654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202723, 0.480724, 0.853116,
		0.941745, 0.143049, -0.304391,
		-0.268366, 0.865125, -0.423720,
		35.362339, 42.060749, 48.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038509, 42.058887, 49.176571>,  <35.550194, 41.455162, 48.896141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038509, 42.058887, 49.176571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686081, 42.197418, 49.047714>,  <35.474625, 42.280537, 48.970398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686081, 42.197418, 49.047714>,  <36.038509, 42.058887, 49.176571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686081, 42.197418, 49.047714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197187, 0.350120, 0.915715,
		0.429928, 0.870328, -0.240187,
		-0.881067, 0.346330, -0.322144,
		35.421761, 42.301315, 48.951073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160202, 42.704823, 49.358814>,  <36.038509, 42.058887, 49.176571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160202, 42.704823, 49.358814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.765232, 42.651711, 49.324474>,  <35.528252, 42.619843, 49.303871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.765232, 42.651711, 49.324474>,  <36.160202, 42.704823, 49.358814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765232, 42.651711, 49.324474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154098, 0.686459, 0.710654,
		-0.035426, 0.714944, -0.698284,
		-0.987420, -0.132780, -0.085853,
		35.469006, 42.611877, 49.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791424, 43.377113, 49.190533>,  <36.160202, 42.704823, 49.358814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791424, 43.377113, 49.190533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511208, 43.135082, 49.341862>,  <35.343079, 42.989864, 49.432659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511208, 43.135082, 49.341862>,  <35.791424, 43.377113, 49.190533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511208, 43.135082, 49.341862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090146, 0.600936, 0.794197,
		-0.707894, 0.522265, -0.475526,
		-0.700542, -0.605074, 0.378319,
		35.301044, 42.953560, 49.455357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417088, 43.828579, 49.463993>,  <35.791424, 43.377113, 49.190533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417088, 43.828579, 49.463993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.261013, 43.496792, 49.623863>,  <35.167366, 43.297722, 49.719784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.261013, 43.496792, 49.623863>,  <35.417088, 43.828579, 49.463993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261013, 43.496792, 49.623863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118651, 0.475762, 0.871535,
		-0.913058, 0.292641, -0.284054,
		-0.390189, -0.829465, 0.399676,
		35.143955, 43.247952, 49.743767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780556, 43.978397, 49.819584>,  <35.417088, 43.828579, 49.463993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780556, 43.978397, 49.819584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938992, 43.649883, 49.983829>,  <35.034054, 43.452774, 50.082375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938992, 43.649883, 49.983829>,  <34.780556, 43.978397, 49.819584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938992, 43.649883, 49.983829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008950, 0.450619, 0.892671,
		-0.918168, -0.349904, 0.185836,
		0.396091, -0.821285, 0.410613,
		35.057819, 43.403500, 50.107014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354271, 43.885937, 50.337791>,  <34.780556, 43.978397, 49.819584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354271, 43.885937, 50.337791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.695732, 43.699070, 50.429909>,  <34.900608, 43.586948, 50.485180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.695732, 43.699070, 50.429909>,  <34.354271, 43.885937, 50.337791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695732, 43.699070, 50.429909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041090, 0.501180, 0.864367,
		-0.519223, -0.728405, 0.447028,
		0.853651, -0.467167, 0.230294,
		34.951828, 43.558918, 50.498997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272987, 43.772282, 51.066181>,  <34.354271, 43.885937, 50.337791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272987, 43.772282, 51.066181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659248, 43.703995, 50.987823>,  <34.891003, 43.663021, 50.940807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659248, 43.703995, 50.987823>,  <34.272987, 43.772282, 51.066181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659248, 43.703995, 50.987823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245934, 0.357095, 0.901110,
		-0.083884, -0.918334, 0.386815,
		0.965650, -0.170719, -0.195895,
		34.948944, 43.652779, 50.929054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574406, 43.485577, 51.660202>,  <34.272987, 43.772282, 51.066181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574406, 43.485577, 51.660202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.842758, 43.697517, 51.452675>,  <35.003769, 43.824684, 51.328159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.842758, 43.697517, 51.452675>,  <34.574406, 43.485577, 51.660202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842758, 43.697517, 51.452675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286417, 0.460197, 0.840347,
		0.684022, -0.712371, 0.156977,
		0.670879, 0.529855, -0.518820,
		35.044022, 43.856476, 51.297028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.937107, 34.906082, 38.084286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306015, 34.975845, 37.946304>,  <36.527359, 35.017704, 37.863514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306015, 34.975845, 37.946304>,  <35.937107, 34.906082, 38.084286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306015, 34.975845, 37.946304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013718, 0.877093, 0.480125,
		0.386293, -0.447539, 0.806528,
		0.922274, 0.174405, -0.344954,
		36.582699, 35.028168, 37.842819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314671, 34.802956, 38.685001>,  <35.937107, 34.906082, 38.084286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314671, 34.802956, 38.685001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430275, 35.059937, 38.401108>,  <36.499638, 35.214127, 38.230770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430275, 35.059937, 38.401108>,  <36.314671, 34.802956, 38.685001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430275, 35.059937, 38.401108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147347, 0.762393, 0.630115,
		0.945919, -0.077530, 0.315001,
		0.289008, 0.642452, -0.709739,
		36.516979, 35.252674, 38.188187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638428, 35.301720, 39.074890>,  <36.314671, 34.802956, 38.685001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638428, 35.301720, 39.074890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553677, 35.468616, 38.721390>,  <36.502827, 35.568752, 38.509289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553677, 35.468616, 38.721390>,  <36.638428, 35.301720, 39.074890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553677, 35.468616, 38.721390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103212, 0.889673, 0.444779,
		0.971830, 0.185455, -0.145442,
		-0.211882, 0.417238, -0.883752,
		36.490112, 35.593788, 38.456264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204422, 35.823463, 39.083023>,  <36.638428, 35.301720, 39.074890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204422, 35.823463, 39.083023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886242, 35.879169, 38.847107>,  <36.695332, 35.912594, 38.705555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886242, 35.879169, 38.847107>,  <37.204422, 35.823463, 39.083023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886242, 35.879169, 38.847107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120995, 0.917144, 0.379745,
		0.593812, 0.373432, -0.712696,
		-0.795455, 0.139265, -0.589794,
		36.647606, 35.920948, 38.670170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235340, 36.438789, 38.918152>,  <37.204422, 35.823463, 39.083023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235340, 36.438789, 38.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852116, 36.370880, 38.825817>,  <36.622181, 36.330135, 38.770416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852116, 36.370880, 38.825817>,  <37.235340, 36.438789, 38.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852116, 36.370880, 38.825817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251611, 0.883917, 0.394185,
		0.137120, 0.435736, -0.889568,
		-0.958065, -0.169775, -0.230839,
		36.564697, 36.319946, 38.756565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054749, 36.983803, 38.554417>,  <37.235340, 36.438789, 38.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054749, 36.983803, 38.554417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719597, 36.832298, 38.711643>,  <36.518505, 36.741398, 38.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719597, 36.832298, 38.711643>,  <37.054749, 36.983803, 38.554417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719597, 36.832298, 38.711643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207566, 0.887077, 0.412325,
		-0.504852, 0.263891, -0.821880,
		-0.837879, -0.378757, 0.393068,
		36.468235, 36.718670, 38.829563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461582, 37.575241, 38.525200>,  <37.054749, 36.983803, 38.554417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461582, 37.575241, 38.525200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305920, 37.316502, 38.787540>,  <36.212521, 37.161259, 38.944946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305920, 37.316502, 38.787540>,  <36.461582, 37.575241, 38.525200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305920, 37.316502, 38.787540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238901, 0.758489, 0.606318,
		-0.889654, 0.079268, -0.449703,
		-0.389157, -0.646847, 0.655855,
		36.189171, 37.122448, 38.984299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909386, 37.953728, 38.730427>,  <36.461582, 37.575241, 38.525200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909386, 37.953728, 38.730427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957378, 37.653900, 38.990810>,  <35.986176, 37.474003, 39.147041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957378, 37.653900, 38.990810>,  <35.909386, 37.953728, 38.730427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957378, 37.653900, 38.990810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540838, 0.500505, 0.676009,
		-0.832525, -0.433177, -0.345341,
		0.119986, -0.749568, 0.650962,
		35.993374, 37.429031, 39.186100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238194, 37.868198, 39.073406>,  <35.909386, 37.953728, 38.730427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238194, 37.868198, 39.073406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480995, 37.704639, 39.345978>,  <35.626675, 37.606503, 39.509521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480995, 37.704639, 39.345978>,  <35.238194, 37.868198, 39.073406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480995, 37.704639, 39.345978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534718, 0.424187, 0.730850,
		-0.587899, -0.808001, 0.038837,
		0.607002, -0.408900, 0.681432,
		35.663097, 37.581970, 39.550407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793388, 37.725639, 39.659340>,  <35.238194, 37.868198, 39.073406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793388, 37.725639, 39.659340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167568, 37.758007, 39.796970>,  <35.392075, 37.777428, 39.879551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167568, 37.758007, 39.796970>,  <34.793388, 37.725639, 39.659340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167568, 37.758007, 39.796970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347980, 0.381684, 0.856287,
		-0.062041, -0.920744, 0.385203,
		0.935447, 0.080918, 0.344081,
		35.448204, 37.782284, 39.900196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596531, 37.851929, 40.288387>,  <34.793388, 37.725639, 39.659340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596531, 37.851929, 40.288387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991821, 37.898998, 40.327522>,  <35.228996, 37.927238, 40.351002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991821, 37.898998, 40.327522>,  <34.596531, 37.851929, 40.288387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991821, 37.898998, 40.327522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138547, 0.416497, 0.898518,
		0.064984, -0.901490, 0.427894,
		0.988222, 0.117672, 0.097833,
		35.288288, 37.934299, 40.356873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840336, 37.551910, 40.944340>,  <34.596531, 37.851929, 40.288387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840336, 37.551910, 40.944340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122417, 37.824127, 40.864792>,  <35.291668, 37.987457, 40.817062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122417, 37.824127, 40.864792>,  <34.840336, 37.551910, 40.944340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122417, 37.824127, 40.864792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044823, 0.322719, 0.945433,
		0.707584, -0.657812, 0.258087,
		0.705206, 0.680541, -0.198866,
		35.333981, 38.028290, 40.805134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963612, 36.815914, 41.206520>,  <34.840336, 37.551910, 40.944340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963612, 36.815914, 41.206520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 36.705074, 41.402069>,  <34.434219, 36.638569, 41.519398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 36.705074, 41.402069>,  <34.963612, 36.815914, 41.206520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632740, 36.705074, 41.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402386, -0.315188, -0.859501,
		0.392255, -0.907673, 0.149215,
		-0.827177, -0.277101, 0.488869,
		34.384586, 36.621944, 41.548729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854172, 36.119049, 40.990822>,  <34.963612, 36.815914, 41.206520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854172, 36.119049, 40.990822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508766, 36.253380, 41.141323>,  <34.301521, 36.333977, 41.231625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508766, 36.253380, 41.141323>,  <34.854172, 36.119049, 40.990822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508766, 36.253380, 41.141323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500786, -0.482715, -0.718471,
		-0.059660, -0.808830, 0.585008,
		-0.863513, 0.335828, 0.376252,
		34.249714, 36.354130, 41.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426273, 35.535435, 41.024139>,  <34.854172, 36.119049, 40.990822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426273, 35.535435, 41.024139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168388, 35.841202, 41.025143>,  <34.013657, 36.024662, 41.025745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168388, 35.841202, 41.025143>,  <34.426273, 35.535435, 41.024139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168388, 35.841202, 41.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519043, -0.435351, -0.735571,
		-0.561196, -0.475531, 0.677443,
		-0.644712, 0.764421, 0.002504,
		33.974976, 36.070526, 41.025894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750538, 35.243561, 41.051899>,  <34.426273, 35.535435, 41.024139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750538, 35.243561, 41.051899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670654, 35.611618, 40.917168>,  <33.622723, 35.832451, 40.836330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670654, 35.611618, 40.917168>,  <33.750538, 35.243561, 41.051899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670654, 35.611618, 40.917168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595697, -0.386946, -0.703859,
		-0.777985, 0.060078, 0.625404,
		-0.199711, 0.920143, -0.336826,
		33.610741, 35.887661, 40.816120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098858, 35.323418, 41.154320>,  <33.750538, 35.243561, 41.051899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098858, 35.323418, 41.154320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222935, 35.578938, 40.872692>,  <33.297379, 35.732250, 40.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222935, 35.578938, 40.872692>,  <33.098858, 35.323418, 41.154320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222935, 35.578938, 40.872692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671371, -0.377154, -0.637978,
		-0.673085, 0.670585, 0.311885,
		0.310190, 0.638804, -0.704068,
		33.315990, 35.770580, 40.661472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521603, 35.719700, 40.872730>,  <33.098858, 35.323418, 41.154320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521603, 35.719700, 40.872730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789143, 35.768581, 40.579418>,  <32.949669, 35.797909, 40.403431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789143, 35.768581, 40.579418>,  <32.521603, 35.719700, 40.872730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789143, 35.768581, 40.579418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649237, -0.384461, -0.656263,
		-0.362114, 0.915017, -0.177810,
		0.668853, 0.122201, -0.733282,
		32.989799, 35.805241, 40.359432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093140, 36.005428, 40.438671>,  <32.521603, 35.719700, 40.872730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093140, 36.005428, 40.438671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401134, 35.863583, 40.226494>,  <32.585930, 35.778477, 40.099186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401134, 35.863583, 40.226494>,  <32.093140, 36.005428, 40.438671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401134, 35.863583, 40.226494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631518, -0.304804, -0.712937,
		0.091138, 0.883936, -0.458641,
		0.769986, -0.354616, -0.530442,
		32.632130, 35.757198, 40.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939932, 36.164131, 39.722725>,  <32.093140, 36.005428, 40.438671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939932, 36.164131, 39.722725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197926, 35.858459, 39.724792>,  <32.352722, 35.675056, 39.726032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197926, 35.858459, 39.724792>,  <31.939932, 36.164131, 39.722725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197926, 35.858459, 39.724792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581379, -0.495069, -0.645681,
		0.495974, 0.413450, -0.763589,
		0.644986, -0.764177, 0.005171,
		32.391422, 35.629208, 39.726345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059574, 35.919514, 38.944321>,  <31.939932, 36.164131, 39.722725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059574, 35.919514, 38.944321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173447, 35.618973, 39.182457>,  <32.241768, 35.438648, 39.325336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173447, 35.618973, 39.182457>,  <32.059574, 35.919514, 38.944321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173447, 35.618973, 39.182457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493618, -0.647264, -0.580853,
		0.821766, -0.128513, -0.555144,
		0.284677, -0.751355, 0.595336,
		32.258850, 35.393566, 39.361057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281979, 35.456741, 38.447010>,  <32.059574, 35.919514, 38.944321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281979, 35.456741, 38.447010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241848, 35.256226, 38.790787>,  <32.217770, 35.135918, 38.997055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241848, 35.256226, 38.790787>,  <32.281979, 35.456741, 38.447010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241848, 35.256226, 38.790787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303621, -0.807177, -0.506241,
		0.947496, -0.311735, -0.071220,
		-0.100326, -0.501285, 0.859446,
		32.211750, 35.105839, 39.048622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512348, 34.774067, 38.282902>,  <32.281979, 35.456741, 38.447010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512348, 34.774067, 38.282902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308571, 34.737549, 38.625160>,  <32.186306, 34.715637, 38.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308571, 34.737549, 38.625160>,  <32.512348, 34.774067, 38.282902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308571, 34.737549, 38.625160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462892, -0.809158, -0.361931,
		0.725397, -0.580456, 0.369960,
		-0.509441, -0.091292, 0.855649,
		32.155739, 34.710163, 38.881855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536640, 34.121296, 38.470306>,  <32.512348, 34.774067, 38.282902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536640, 34.121296, 38.470306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216427, 34.262863, 38.663754>,  <32.024300, 34.347805, 38.779823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216427, 34.262863, 38.663754>,  <32.536640, 34.121296, 38.470306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216427, 34.262863, 38.663754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567211, -0.707943, -0.420818,
		0.193438, -0.611193, 0.767480,
		-0.800533, 0.353920, 0.483619,
		31.976267, 34.369038, 38.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199856, 33.630211, 38.668182>,  <32.536640, 34.121296, 38.470306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199856, 33.630211, 38.668182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923712, 33.918091, 38.638706>,  <31.758024, 34.090820, 38.621021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923712, 33.918091, 38.638706>,  <32.199856, 33.630211, 38.668182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923712, 33.918091, 38.638706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625908, -0.645245, -0.438063,
		-0.362824, -0.256297, 0.895919,
		-0.690361, 0.719702, -0.073692,
		31.716604, 34.134003, 38.616600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518227, 33.165218, 38.306850>,  <32.199856, 33.630211, 38.668182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518227, 33.165218, 38.306850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766235, 33.044907, 38.016994>,  <32.915043, 32.972721, 37.843082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766235, 33.044907, 38.016994>,  <32.518227, 33.165218, 38.306850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766235, 33.044907, 38.016994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660823, 0.698084, 0.275665,
		0.422943, -0.649777, 0.631592,
		0.620025, -0.300780, -0.724638,
		32.952244, 32.954674, 37.799603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189072, 33.029129, 38.517460>,  <32.518227, 33.165218, 38.306850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189072, 33.029129, 38.517460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298153, 33.089169, 38.137333>,  <33.363602, 33.125191, 37.909256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298153, 33.089169, 38.137333>,  <33.189072, 33.029129, 38.517460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298153, 33.089169, 38.137333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752001, 0.582857, 0.307851,
		0.600107, -0.798591, 0.046071,
		0.272700, 0.150098, -0.950319,
		33.379963, 33.134197, 37.852238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463753, 32.557076, 39.070320>,  <33.189072, 33.029129, 38.517460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463753, 32.557076, 39.070320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569805, 32.198498, 39.212353>,  <33.633438, 31.983351, 39.297573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569805, 32.198498, 39.212353>,  <33.463753, 32.557076, 39.070320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569805, 32.198498, 39.212353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066032, 0.350517, 0.934226,
		-0.961948, -0.271143, 0.033740,
		0.265135, -0.896448, 0.355083,
		33.649345, 31.929564, 39.318878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035572, 32.333893, 39.634342>,  <33.463753, 32.557076, 39.070320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035572, 32.333893, 39.634342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385155, 32.144794, 39.679440>,  <33.594902, 32.031334, 39.706497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385155, 32.144794, 39.679440>,  <33.035572, 32.333893, 39.634342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385155, 32.144794, 39.679440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061238, 0.123014, 0.990514,
		-0.482135, -0.872568, 0.078558,
		0.873954, -0.472750, 0.112744,
		33.647343, 32.002968, 39.713264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937447, 31.902483, 40.251221>,  <33.035572, 32.333893, 39.634342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937447, 31.902483, 40.251221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331749, 31.951012, 40.204617>,  <33.568329, 31.980129, 40.176655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331749, 31.951012, 40.204617>,  <32.937447, 31.902483, 40.251221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331749, 31.951012, 40.204617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102955, 0.112548, 0.988298,
		0.133029, -0.986210, 0.098453,
		0.985751, 0.121336, -0.116507,
		33.627476, 31.987408, 40.169666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261459, 31.503483, 40.808403>,  <32.937447, 31.902483, 40.251221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261459, 31.503483, 40.808403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513432, 31.786982, 40.681366>,  <33.664616, 31.957081, 40.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513432, 31.786982, 40.681366>,  <33.261459, 31.503483, 40.808403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513432, 31.786982, 40.681366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256215, 0.196394, 0.946458,
		0.733172, -0.677576, -0.057876,
		0.629931, 0.708746, -0.317596,
		33.702412, 31.999605, 40.586086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852489, 31.327314, 41.206829>,  <33.261459, 31.503483, 40.808403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852489, 31.327314, 41.206829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917427, 31.701715, 41.081905>,  <33.956390, 31.926357, 41.006950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917427, 31.701715, 41.081905>,  <33.852489, 31.327314, 41.206829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917427, 31.701715, 41.081905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163134, 0.286695, 0.944030,
		0.973155, -0.204209, -0.106150,
		0.162347, 0.936005, -0.312312,
		33.966129, 31.982517, 40.988213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318199, 31.636002, 41.665829>,  <33.852489, 31.327314, 41.206829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318199, 31.636002, 41.665829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171989, 31.977108, 41.516602>,  <34.084263, 32.181770, 41.427067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171989, 31.977108, 41.516602>,  <34.318199, 31.636002, 41.665829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171989, 31.977108, 41.516602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187652, 0.460088, 0.867817,
		0.911690, 0.247202, -0.328197,
		-0.365525, 0.852766, -0.373069,
		34.062332, 32.232937, 41.404682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836231, 32.095207, 41.779957>,  <34.318199, 31.636002, 41.665829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836231, 32.095207, 41.779957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497063, 32.301315, 41.730110>,  <34.293564, 32.424980, 41.700203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497063, 32.301315, 41.730110>,  <34.836231, 32.095207, 41.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497063, 32.301315, 41.730110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146998, 0.454376, 0.878598,
		0.509340, 0.726661, -0.461017,
		-0.847918, 0.515274, -0.124614,
		34.242687, 32.455898, 41.692726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054890, 32.765076, 41.956394>,  <34.836231, 32.095207, 41.779957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054890, 32.765076, 41.956394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655689, 32.753044, 41.978611>,  <34.416168, 32.745827, 41.991940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655689, 32.753044, 41.978611>,  <35.054890, 32.765076, 41.956394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655689, 32.753044, 41.978611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041924, 0.342323, 0.938647,
		-0.047244, 0.939101, -0.340378,
		-0.998003, -0.030076, 0.055543,
		34.356289, 32.744022, 41.995274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830242, 33.477150, 42.142078>,  <35.054890, 32.765076, 41.956394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830242, 33.477150, 42.142078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537056, 33.230976, 42.258015>,  <34.361145, 33.083271, 42.327576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537056, 33.230976, 42.258015>,  <34.830242, 33.477150, 42.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537056, 33.230976, 42.258015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193457, 0.219896, 0.956149,
		-0.652177, 0.756895, -0.042117,
		-0.732966, -0.615431, 0.289838,
		34.317165, 33.046349, 42.344967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279476, 33.847023, 42.623283>,  <34.830242, 33.477150, 42.142078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279476, 33.847023, 42.623283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241642, 33.456127, 42.699238>,  <34.218941, 33.221588, 42.744812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241642, 33.456127, 42.699238>,  <34.279476, 33.847023, 42.623283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241642, 33.456127, 42.699238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202821, 0.167826, 0.964727,
		-0.974637, 0.129758, 0.182332,
		-0.094581, -0.977240, 0.189887,
		34.213268, 33.162956, 42.756203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093117, 33.846035, 43.373634>,  <34.279476, 33.847023, 42.623283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093117, 33.846035, 43.373634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198647, 33.463673, 43.322041>,  <34.261967, 33.234253, 43.291084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198647, 33.463673, 43.322041>,  <34.093117, 33.846035, 43.373634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198647, 33.463673, 43.322041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187105, -0.080462, 0.979039,
		-0.946249, -0.282429, 0.157627,
		0.263826, -0.955908, -0.128981,
		34.277794, 33.176899, 43.283344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649212, 33.417698, 43.867363>,  <34.093117, 33.846035, 43.373634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649212, 33.417698, 43.867363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989922, 33.236328, 43.762379>,  <34.194347, 33.127506, 43.699387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989922, 33.236328, 43.762379>,  <33.649212, 33.417698, 43.867363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989922, 33.236328, 43.762379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170629, -0.233561, 0.957254,
		-0.495347, -0.860146, -0.121573,
		0.851773, -0.453429, -0.262459,
		34.245453, 33.100300, 43.683640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645985, 32.860142, 44.235336>,  <33.649212, 33.417698, 43.867363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645985, 32.860142, 44.235336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028854, 32.896412, 44.125355>,  <34.258575, 32.918175, 44.059368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028854, 32.896412, 44.125355>,  <33.645985, 32.860142, 44.235336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028854, 32.896412, 44.125355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286254, -0.154230, 0.945659,
		0.043343, -0.983866, -0.173582,
		0.957172, 0.090676, -0.274951,
		34.316006, 32.923615, 44.042870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059849, 32.411644, 44.593361>,  <33.645985, 32.860142, 44.235336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059849, 32.411644, 44.593361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354076, 32.657497, 44.479404>,  <34.530613, 32.805008, 44.411030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354076, 32.657497, 44.479404>,  <34.059849, 32.411644, 44.593361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354076, 32.657497, 44.479404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401863, -0.057326, 0.913903,
		0.545384, -0.786727, -0.289166,
		0.735569, 0.614634, -0.284892,
		34.574749, 32.841888, 44.393936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603004, 32.225925, 45.015442>,  <34.059849, 32.411644, 44.593361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603004, 32.225925, 45.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705299, 32.589230, 44.882980>,  <34.766674, 32.807213, 44.803505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705299, 32.589230, 44.882980>,  <34.603004, 32.225925, 45.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705299, 32.589230, 44.882980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317900, 0.244484, 0.916061,
		0.912984, -0.339540, -0.226213,
		0.255734, 0.908262, -0.331150,
		34.782021, 32.861710, 44.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307232, 32.360088, 45.384380>,  <34.603004, 32.225925, 45.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307232, 32.360088, 45.384380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190765, 32.721970, 45.259972>,  <35.120888, 32.939098, 45.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190765, 32.721970, 45.259972>,  <35.307232, 32.360088, 45.384380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190765, 32.721970, 45.259972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352293, 0.403654, 0.844366,
		0.889446, 0.136278, -0.436250,
		-0.291162, 0.904705, -0.311019,
		35.103416, 32.993382, 45.166664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794582, 32.801247, 45.618210>,  <35.307232, 32.360088, 45.384380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794582, 32.801247, 45.618210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497311, 33.056465, 45.537628>,  <35.318947, 33.209595, 45.489277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497311, 33.056465, 45.537628>,  <35.794582, 32.801247, 45.618210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497311, 33.056465, 45.537628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207328, 0.505868, 0.837325,
		0.636161, 0.580514, -0.508235,
		-0.743179, 0.638045, -0.201456,
		35.274357, 33.247879, 45.477192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055790, 33.550983, 45.700073>,  <35.794582, 32.801247, 45.618210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055790, 33.550983, 45.700073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658371, 33.587830, 45.726555>,  <35.419922, 33.609936, 45.742443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658371, 33.587830, 45.726555>,  <36.055790, 33.550983, 45.700073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658371, 33.587830, 45.726555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110178, 0.644836, 0.756338,
		0.026980, 0.758750, -0.650822,
		-0.993546, 0.092113, 0.066200,
		35.360306, 33.615463, 45.746414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851151, 34.370300, 45.593197>,  <36.055790, 33.550983, 45.700073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851151, 34.370300, 45.593197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565826, 34.175167, 45.794476>,  <35.394630, 34.058086, 45.915245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565826, 34.175167, 45.794476>,  <35.851151, 34.370300, 45.593197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565826, 34.175167, 45.794476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120286, 0.622119, 0.773628,
		-0.690449, 0.612364, -0.385085,
		-0.713310, -0.487830, 0.503200,
		35.351833, 34.028816, 45.945435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409557, 34.886597, 45.812595>,  <35.851151, 34.370300, 45.593197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409557, 34.886597, 45.812595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320232, 34.566868, 46.035744>,  <35.266636, 34.375031, 46.169632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320232, 34.566868, 46.035744>,  <35.409557, 34.886597, 45.812595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320232, 34.566868, 46.035744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037135, 0.564929, 0.824303,
		-0.974039, 0.204793, -0.096472,
		-0.223311, -0.799321, 0.557868,
		35.253239, 34.327072, 46.203106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831924, 35.050179, 46.179417>,  <35.409557, 34.886597, 45.812595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831924, 35.050179, 46.179417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043961, 34.772499, 46.374184>,  <35.171181, 34.605892, 46.491043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043961, 34.772499, 46.374184>,  <34.831924, 35.050179, 46.179417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043961, 34.772499, 46.374184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101746, 0.518017, 0.849297,
		-0.841815, -0.499747, 0.203964,
		0.530090, -0.694199, 0.486922,
		35.202988, 34.564240, 46.520260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519871, 34.985439, 46.849361>,  <34.831924, 35.050179, 46.179417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519871, 34.985439, 46.849361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872288, 34.804966, 46.906212>,  <35.083736, 34.696682, 46.940323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872288, 34.804966, 46.906212>,  <34.519871, 34.985439, 46.849361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872288, 34.804966, 46.906212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134169, 0.526463, 0.839545,
		-0.453610, -0.720606, 0.524371,
		0.881043, -0.451180, 0.142126,
		35.136600, 34.669613, 46.948849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568932, 34.953773, 47.545387>,  <34.519871, 34.985439, 46.849361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568932, 34.953773, 47.545387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947109, 34.873810, 47.442493>,  <35.174015, 34.825832, 47.380756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947109, 34.873810, 47.442493>,  <34.568932, 34.953773, 47.545387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947109, 34.873810, 47.442493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311722, 0.325701, 0.892608,
		-0.094656, -0.924098, 0.370248,
		0.945447, -0.199905, -0.257232,
		35.230743, 34.813839, 47.365322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866440, 34.535042, 48.119686>,  <34.568932, 34.953773, 47.545387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866440, 34.535042, 48.119686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163757, 34.696480, 47.906284>,  <35.342148, 34.793343, 47.778244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163757, 34.696480, 47.906284>,  <34.866440, 34.535042, 48.119686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163757, 34.696480, 47.906284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464790, 0.262005, 0.845768,
		0.481128, -0.876621, 0.007161,
		0.743294, 0.403594, -0.533503,
		35.386745, 34.817558, 47.746235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526226, 34.262901, 48.357368>,  <34.866440, 34.535042, 48.119686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526226, 34.262901, 48.357368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600109, 34.626659, 48.208302>,  <35.644440, 34.844913, 48.118862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600109, 34.626659, 48.208302>,  <35.526226, 34.262901, 48.357368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600109, 34.626659, 48.208302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505219, 0.237393, 0.829698,
		0.842993, -0.341529, -0.415596,
		0.184706, 0.909397, -0.372667,
		35.655521, 34.899479, 48.096500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204571, 34.433632, 48.532612>,  <35.526226, 34.262901, 48.357368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204571, 34.433632, 48.532612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032917, 34.785065, 48.448765>,  <35.929924, 34.995926, 48.398457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032917, 34.785065, 48.448765>,  <36.204571, 34.433632, 48.532612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032917, 34.785065, 48.448765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457627, 0.411562, 0.788159,
		0.778732, 0.242299, -0.578677,
		-0.429132, 0.878583, -0.209614,
		35.904179, 35.048641, 48.385880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683132, 35.070980, 48.689110>,  <36.204571, 34.433632, 48.532612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683132, 35.070980, 48.689110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344547, 35.283573, 48.676296>,  <36.141396, 35.411129, 48.668606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344547, 35.283573, 48.676296>,  <36.683132, 35.070980, 48.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344547, 35.283573, 48.676296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372755, 0.634481, 0.677117,
		0.380205, 0.561212, -0.735177,
		-0.846462, 0.531484, -0.032038,
		36.090611, 35.443020, 48.666683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116673, 35.493023, 48.188141>,  <36.683132, 35.070980, 48.689110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116673, 35.493023, 48.188141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484161, 35.401829, 48.317120>,  <37.704655, 35.347115, 48.394508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484161, 35.401829, 48.317120>,  <37.116673, 35.493023, 48.188141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484161, 35.401829, 48.317120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111862, -0.632841, -0.766159,
		0.378729, 0.739957, -0.555902,
		0.918723, -0.227982, 0.322448,
		37.759777, 35.333435, 48.413853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407093, 35.358730, 47.579391>,  <37.116673, 35.493023, 48.188141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407093, 35.358730, 47.579391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653446, 35.194893, 47.848591>,  <37.801258, 35.096592, 48.010113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653446, 35.194893, 47.848591>,  <37.407093, 35.358730, 47.579391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653446, 35.194893, 47.848591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220743, -0.730305, -0.646473,
		0.756285, 0.546709, -0.359365,
		0.615878, -0.409591, 0.673000,
		37.838211, 35.072014, 48.050491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060402, 35.286018, 47.282444>,  <37.407093, 35.358730, 47.579391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060402, 35.286018, 47.282444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062962, 35.018284, 47.579617>,  <38.064499, 34.857643, 47.757919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062962, 35.018284, 47.579617>,  <38.060402, 35.286018, 47.282444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062962, 35.018284, 47.579617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362565, -0.690840, -0.625530,
		0.931937, 0.273364, 0.238257,
		0.006400, -0.669337, 0.742931,
		38.064880, 34.817482, 47.802494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647373, 34.948399, 47.119431>,  <38.060402, 35.286018, 47.282444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647373, 34.948399, 47.119431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424225, 34.712933, 47.353439>,  <38.290337, 34.571651, 47.493847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424225, 34.712933, 47.353439>,  <38.647373, 34.948399, 47.119431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424225, 34.712933, 47.353439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080416, -0.739934, -0.667856,
		0.826024, -0.325531, 0.460124,
		-0.557869, -0.588666, 0.585025,
		38.256863, 34.536331, 47.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009552, 34.310291, 47.163971>,  <38.647373, 34.948399, 47.119431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009552, 34.310291, 47.163971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628704, 34.220352, 47.246822>,  <38.400196, 34.166389, 47.296535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628704, 34.220352, 47.246822>,  <39.009552, 34.310291, 47.163971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628704, 34.220352, 47.246822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049895, -0.782739, -0.620347,
		0.301617, -0.580312, 0.756482,
		-0.952123, -0.224852, 0.207132,
		38.343067, 34.152897, 47.308964>
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
