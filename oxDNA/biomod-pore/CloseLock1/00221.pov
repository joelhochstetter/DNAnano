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
	<24.119268, 35.537525, 34.860996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213253, 35.213963, 35.076576>,  <24.269644, 35.019825, 35.205925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213253, 35.213963, 35.076576>,  <24.119268, 35.537525, 34.860996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213253, 35.213963, 35.076576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802868, -0.151033, -0.576707,
		0.547900, 0.568211, 0.613956,
		0.234963, -0.808904, 0.538950,
		24.283741, 34.971291, 35.238262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883648, 35.674500, 35.194992>,  <24.119268, 35.537525, 34.860996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883648, 35.674500, 35.194992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757410, 35.309780, 35.089909>,  <24.681667, 35.090946, 35.026859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757410, 35.309780, 35.089909>,  <24.883648, 35.674500, 35.194992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757410, 35.309780, 35.089909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760331, -0.077354, -0.644913,
		0.567712, -0.403277, 0.717684,
		-0.315594, -0.911803, -0.262709,
		24.662731, 35.036240, 35.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.486740, 35.157867, 35.278122>,  <24.883648, 35.674500, 35.194992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.486740, 35.157867, 35.278122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213987, 35.040913, 35.009930>,  <25.050337, 34.970741, 34.849014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213987, 35.040913, 35.009930>,  <25.486740, 35.157867, 35.278122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213987, 35.040913, 35.009930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726727, -0.166660, -0.666402,
		0.083106, -0.941665, 0.326129,
		-0.681880, -0.292389, -0.670483,
		25.009422, 34.953197, 34.808784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837141, 34.948238, 34.765312>,  <25.486740, 35.157867, 35.278122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837141, 34.948238, 34.765312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491592, 34.838142, 34.596565>,  <25.284264, 34.772087, 34.495316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491592, 34.838142, 34.596565>,  <25.837141, 34.948238, 34.765312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491592, 34.838142, 34.596565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487033, -0.242645, -0.839001,
		0.128559, -0.930252, 0.343663,
		-0.863870, -0.275236, -0.421870,
		25.232431, 34.755573, 34.470005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085495, 34.440239, 34.299965>,  <25.837141, 34.948238, 34.765312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085495, 34.440239, 34.299965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726742, 34.537022, 34.151878>,  <25.511490, 34.595093, 34.063026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726742, 34.537022, 34.151878>,  <26.085495, 34.440239, 34.299965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726742, 34.537022, 34.151878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328866, -0.194854, -0.924056,
		-0.295724, -0.950519, 0.095188,
		-0.896880, 0.241962, -0.370217,
		25.457678, 34.609612, 34.040813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763924, 33.811989, 34.004921>,  <26.085495, 34.440239, 34.299965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763924, 33.811989, 34.004921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687227, 34.182663, 33.875622>,  <25.641209, 34.405067, 33.798042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687227, 34.182663, 33.875622>,  <25.763924, 33.811989, 34.004921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687227, 34.182663, 33.875622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333923, -0.248115, -0.909360,
		-0.922892, -0.282304, -0.261867,
		-0.191743, 0.926684, -0.323251,
		25.629704, 34.460667, 33.778648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278532, 33.859974, 33.448025>,  <25.763924, 33.811989, 34.004921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278532, 33.859974, 33.448025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557558, 34.145264, 33.420582>,  <25.724974, 34.316437, 33.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557558, 34.145264, 33.420582>,  <25.278532, 33.859974, 33.448025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557558, 34.145264, 33.420582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454825, -0.514746, -0.726754,
		-0.553657, 0.475754, -0.683463,
		0.697566, 0.713228, -0.068608,
		25.766829, 34.359234, 33.399998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359594, 34.189991, 32.769001>,  <25.278532, 33.859974, 33.448025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.359594, 34.189991, 32.769001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713758, 34.184624, 32.954849>,  <25.926256, 34.181404, 33.066357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713758, 34.184624, 32.954849>,  <25.359594, 34.189991, 32.769001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713758, 34.184624, 32.954849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421092, -0.400083, -0.814012,
		0.196808, 0.916381, -0.348587,
		0.885408, -0.013416, 0.464620,
		25.979382, 34.180599, 33.094234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918230, 34.282143, 32.294266>,  <25.359594, 34.189991, 32.769001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918230, 34.282143, 32.294266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117224, 34.116226, 32.599018>,  <26.236620, 34.016678, 32.781868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117224, 34.116226, 32.599018>,  <25.918230, 34.282143, 32.294266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117224, 34.116226, 32.599018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629992, -0.431008, -0.646020,
		0.596338, 0.801363, 0.046893,
		0.497485, -0.414789, 0.761878,
		26.266470, 33.991791, 32.827583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536112, 34.247978, 32.007862>,  <25.918230, 34.282143, 32.294266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536112, 34.247978, 32.007862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588413, 33.996574, 32.314556>,  <26.619795, 33.845734, 32.498573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588413, 33.996574, 32.314556>,  <26.536112, 34.247978, 32.007862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588413, 33.996574, 32.314556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700991, -0.488285, -0.519796,
		0.701081, 0.605440, 0.376732,
		0.130753, -0.628505, 0.766736,
		26.627640, 33.808022, 32.544579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259903, 34.168369, 32.170601>,  <26.536112, 34.247978, 32.007862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259903, 34.168369, 32.170601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082516, 33.828964, 32.286091>,  <26.976084, 33.625320, 32.355385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082516, 33.828964, 32.286091>,  <27.259903, 34.168369, 32.170601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082516, 33.828964, 32.286091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736195, -0.528580, -0.422634,
		0.511226, 0.025134, 0.859079,
		-0.443470, -0.848511, 0.288728,
		26.949474, 33.574409, 32.372707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773634, 33.691341, 32.173470>,  <27.259903, 34.168369, 32.170601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773634, 33.691341, 32.173470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460165, 33.443390, 32.189529>,  <27.272083, 33.294621, 32.199165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460165, 33.443390, 32.189529>,  <27.773634, 33.691341, 32.173470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460165, 33.443390, 32.189529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491878, -0.658727, -0.569328,
		0.379363, -0.426416, 0.821129,
		-0.783671, -0.619878, 0.040153,
		27.225063, 33.257427, 32.201576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050650, 33.018810, 32.128941>,  <27.773634, 33.691341, 32.173470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050650, 33.018810, 32.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666801, 32.916813, 32.081436>,  <27.436493, 32.855614, 32.052933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666801, 32.916813, 32.081436>,  <28.050650, 33.018810, 32.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666801, 32.916813, 32.081436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273872, -0.943282, -0.187652,
		-0.064179, -0.212601, 0.975029,
		-0.959623, -0.254990, -0.118764,
		27.378914, 32.840317, 32.045807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862741, 32.327362, 32.562447>,  <28.050650, 33.018810, 32.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862741, 32.327362, 32.562447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596319, 32.370438, 32.267212>,  <27.436466, 32.396282, 32.090069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596319, 32.370438, 32.267212>,  <27.862741, 32.327362, 32.562447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596319, 32.370438, 32.267212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239620, -0.906184, -0.348444,
		-0.706367, -0.408943, 0.577763,
		-0.666054, 0.107686, -0.738090,
		27.396503, 32.402744, 32.045784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500586, 31.639038, 32.459103>,  <27.862741, 32.327362, 32.562447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500586, 31.639038, 32.459103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398481, 31.781471, 32.099537>,  <27.337219, 31.866932, 31.883799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398481, 31.781471, 32.099537>,  <27.500586, 31.639038, 32.459103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398481, 31.781471, 32.099537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239349, -0.877504, -0.415571,
		-0.936779, -0.321232, 0.138764,
		-0.255260, 0.356085, -0.898913,
		27.321903, 31.888296, 31.829863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990816, 31.088173, 32.072002>,  <27.500586, 31.639038, 32.459103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990816, 31.088173, 32.072002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145254, 31.320551, 31.785385>,  <27.237917, 31.459978, 31.613415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145254, 31.320551, 31.785385>,  <26.990816, 31.088173, 32.072002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145254, 31.320551, 31.785385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316981, -0.813027, -0.488374,
		-0.866288, -0.038573, -0.498053,
		0.386093, 0.580946, -0.716543,
		27.261082, 31.494835, 31.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910631, 30.757839, 31.375837>,  <26.990816, 31.088173, 32.072002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910631, 30.757839, 31.375837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205456, 31.020094, 31.310251>,  <27.382351, 31.177446, 31.270901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205456, 31.020094, 31.310251>,  <26.910631, 30.757839, 31.375837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205456, 31.020094, 31.310251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466520, -0.669126, -0.578472,
		-0.488979, 0.349877, -0.799053,
		0.737061, 0.655634, -0.163964,
		27.426575, 31.216784, 31.261063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992071, 30.669353, 30.695890>,  <26.910631, 30.757839, 31.375837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992071, 30.669353, 30.695890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325081, 30.862438, 30.804626>,  <27.524887, 30.978289, 30.869867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325081, 30.862438, 30.804626>,  <26.992071, 30.669353, 30.695890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325081, 30.862438, 30.804626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508593, -0.471421, -0.720483,
		-0.219633, 0.738074, -0.637971,
		0.832523, 0.482710, 0.271840,
		27.574839, 31.007252, 30.886179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263540, 31.105747, 30.083242>,  <26.992071, 30.669353, 30.695890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263540, 31.105747, 30.083242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542288, 30.990452, 30.345934>,  <27.709536, 30.921274, 30.503550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542288, 30.990452, 30.345934>,  <27.263540, 31.105747, 30.083242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542288, 30.990452, 30.345934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547082, -0.378476, -0.746631,
		0.463765, 0.879587, -0.106056,
		0.696867, -0.288240, 0.656730,
		27.751348, 30.903980, 30.542953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874821, 31.217829, 29.698854>,  <27.263540, 31.105747, 30.083242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874821, 31.217829, 29.698854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008070, 30.986067, 29.996395>,  <28.088020, 30.847010, 30.174919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008070, 30.986067, 29.996395>,  <27.874821, 31.217829, 29.698854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008070, 30.986067, 29.996395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499838, -0.560421, -0.660371,
		0.799493, 0.591793, 0.102919,
		0.333125, -0.579405, 0.743853,
		28.108007, 30.812244, 30.219551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567314, 31.231070, 29.580917>,  <27.874821, 31.217829, 29.698854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567314, 31.231070, 29.580917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471989, 30.918087, 29.811037>,  <28.414793, 30.730297, 29.949108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471989, 30.918087, 29.811037>,  <28.567314, 31.231070, 29.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471989, 30.918087, 29.811037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650523, -0.568452, -0.503669,
		0.721128, 0.254212, 0.644477,
		-0.238315, -0.782457, 0.575297,
		28.400494, 30.683350, 29.983625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151014, 30.995644, 29.850384>,  <28.567314, 31.231070, 29.580917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151014, 30.995644, 29.850384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903296, 30.682159, 29.869421>,  <28.754663, 30.494068, 29.880844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903296, 30.682159, 29.869421>,  <29.151014, 30.995644, 29.850384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903296, 30.682159, 29.869421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654633, -0.548865, -0.519811,
		0.433505, -0.290761, 0.852955,
		-0.619298, -0.783713, 0.047593,
		28.717506, 30.447046, 29.883699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683546, 30.372505, 29.857086>,  <29.151014, 30.995644, 29.850384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683546, 30.372505, 29.857086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316673, 30.238213, 29.771236>,  <29.096550, 30.157637, 29.719727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316673, 30.238213, 29.771236>,  <29.683546, 30.372505, 29.857086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316673, 30.238213, 29.771236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388339, -0.632424, -0.670248,
		0.089291, -0.698085, 0.710425,
		-0.917180, -0.335733, -0.214624,
		29.041519, 30.137493, 29.706850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773659, 29.687145, 30.122061>,  <29.683546, 30.372505, 29.857086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773659, 29.687145, 30.122061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482679, 29.740107, 29.852755>,  <29.308092, 29.771883, 29.691172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482679, 29.740107, 29.852755>,  <29.773659, 29.687145, 30.122061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482679, 29.740107, 29.852755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387446, -0.730551, -0.562299,
		-0.566305, -0.669898, 0.480140,
		-0.727451, 0.132404, -0.673265,
		29.264444, 29.779827, 29.650776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761894, 29.053900, 29.885735>,  <29.773659, 29.687145, 30.122061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761894, 29.053900, 29.885735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587067, 29.263714, 29.593479>,  <29.482170, 29.389603, 29.418125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587067, 29.263714, 29.593479>,  <29.761894, 29.053900, 29.885735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587067, 29.263714, 29.593479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444439, -0.580284, -0.682455,
		-0.781950, -0.623004, 0.020498,
		-0.437067, 0.524535, -0.730640,
		29.455946, 29.421074, 29.374287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528530, 28.664989, 29.374912>,  <29.761894, 29.053900, 29.885735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528530, 28.664989, 29.374912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551998, 29.000151, 29.157850>,  <29.566078, 29.201248, 29.027613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551998, 29.000151, 29.157850>,  <29.528530, 28.664989, 29.374912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551998, 29.000151, 29.157850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510931, -0.492203, -0.704760,
		-0.857618, -0.235912, -0.456987,
		0.058669, 0.837903, -0.542656,
		29.569599, 29.251522, 28.995054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247667, 28.727999, 28.614307>,  <29.528530, 28.664989, 29.374912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247667, 28.727999, 28.614307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591694, 28.924997, 28.667580>,  <29.798109, 29.043196, 28.699543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591694, 28.924997, 28.667580>,  <29.247667, 28.727999, 28.614307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591694, 28.924997, 28.667580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394102, -0.475558, -0.786466,
		-0.323995, 0.728899, -0.603104,
		0.860065, 0.492495, 0.133182,
		29.849712, 29.072746, 28.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461472, 29.373413, 28.123665>,  <29.247667, 28.727999, 28.614307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461472, 29.373413, 28.123665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735571, 29.116322, 28.260679>,  <29.900030, 28.962067, 28.342888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735571, 29.116322, 28.260679>,  <29.461472, 29.373413, 28.123665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735571, 29.116322, 28.260679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182539, -0.303740, -0.935105,
		0.705062, 0.703307, -0.090814,
		0.685250, -0.642730, 0.342536,
		29.941147, 28.923502, 28.363440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093788, 29.418755, 27.829782>,  <29.461472, 29.373413, 28.123665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093788, 29.418755, 27.829782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074099, 29.036352, 27.945454>,  <30.062284, 28.806910, 28.014856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074099, 29.036352, 27.945454>,  <30.093788, 29.418755, 27.829782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074099, 29.036352, 27.945454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312676, -0.289727, -0.904595,
		0.948584, 0.045892, 0.313182,
		-0.049224, -0.956008, 0.289180,
		30.059332, 28.749550, 28.032207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758953, 29.194136, 27.805475>,  <30.093788, 29.418755, 27.829782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758953, 29.194136, 27.805475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463324, 28.932915, 27.739395>,  <30.285946, 28.776182, 27.699747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463324, 28.932915, 27.739395>,  <30.758953, 29.194136, 27.805475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463324, 28.932915, 27.739395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406574, -0.236923, -0.882363,
		0.537090, -0.719298, 0.440618,
		-0.739075, -0.653053, -0.165199,
		30.241602, 28.737000, 27.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187750, 29.221889, 27.220148>,  <30.758953, 29.194136, 27.805475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187750, 29.221889, 27.220148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493340, 29.167738, 27.472502>,  <31.676693, 29.135246, 27.623913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493340, 29.167738, 27.472502>,  <31.187750, 29.221889, 27.220148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493340, 29.167738, 27.472502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498300, -0.497373, -0.710152,
		0.409925, 0.856908, -0.312522,
		0.763976, -0.135379, 0.630883,
		31.722532, 29.127125, 27.661766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885939, 29.301474, 26.910315>,  <31.187750, 29.221889, 27.220148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885939, 29.301474, 26.910315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951416, 29.069725, 27.229696>,  <31.990702, 28.930676, 27.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951416, 29.069725, 27.229696>,  <31.885939, 29.301474, 26.910315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951416, 29.069725, 27.229696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540393, -0.624477, -0.563918,
		0.825336, 0.523790, 0.210865,
		0.163694, -0.579372, 0.798456,
		32.000523, 28.895914, 27.469233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883972, 29.627605, 27.638229>,  <31.885939, 29.301474, 26.910315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883972, 29.627605, 27.638229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085819, 29.622789, 27.983534>,  <32.206928, 29.619900, 28.190716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085819, 29.622789, 27.983534>,  <31.883972, 29.627605, 27.638229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085819, 29.622789, 27.983534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327969, 0.927619, -0.178775,
		-0.798622, 0.373335, 0.472042,
		0.504618, -0.012042, 0.863259,
		32.237206, 29.619177, 28.242512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738853, 30.310036, 27.948372>,  <31.883972, 29.627605, 27.638229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738853, 30.310036, 27.948372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099949, 30.156214, 28.025505>,  <32.316605, 30.063921, 28.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099949, 30.156214, 28.025505>,  <31.738853, 30.310036, 27.948372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099949, 30.156214, 28.025505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429514, 0.830870, -0.353797,
		-0.024165, 0.402210, 0.915228,
		0.902737, -0.384554, 0.192833,
		32.370770, 30.040848, 28.083355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066395, 30.828609, 28.349819>,  <31.738853, 30.310036, 27.948372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066395, 30.828609, 28.349819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288631, 30.581856, 28.126831>,  <32.421974, 30.433804, 27.993038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288631, 30.581856, 28.126831>,  <32.066395, 30.828609, 28.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288631, 30.581856, 28.126831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417870, 0.786815, -0.454210,
		0.718821, 0.019405, 0.694925,
		0.555591, -0.616884, -0.557470,
		32.455307, 30.396791, 27.959591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842077, 30.843214, 29.096102>,  <32.066395, 30.828609, 28.349819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842077, 30.843214, 29.096102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185654, 30.919500, 28.906008>,  <32.391800, 30.965273, 28.791952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185654, 30.919500, 28.906008>,  <31.842077, 30.843214, 29.096102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185654, 30.919500, 28.906008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043215, 0.897748, 0.438384,
		0.510249, -0.397083, 0.762870,
		0.858940, 0.190717, -0.475235,
		32.443336, 30.976715, 28.763437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363400, 30.902067, 29.516945>,  <31.842077, 30.843214, 29.096102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363400, 30.902067, 29.516945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434349, 31.141239, 29.204275>,  <32.476917, 31.284742, 29.016674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434349, 31.141239, 29.204275>,  <32.363400, 30.902067, 29.516945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434349, 31.141239, 29.204275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050454, 0.787700, 0.613989,
		0.982849, -0.148345, 0.109550,
		0.177374, 0.597932, -0.781675,
		32.487560, 31.320620, 28.969772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022892, 31.390520, 29.663939>,  <32.363400, 30.902067, 29.516945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022892, 31.390520, 29.663939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723530, 31.526653, 29.436234>,  <32.543911, 31.608334, 29.299610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723530, 31.526653, 29.436234>,  <33.022892, 31.390520, 29.663939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723530, 31.526653, 29.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187398, 0.714824, 0.673727,
		0.636213, 0.610902, -0.471203,
		-0.748408, 0.340331, -0.569262,
		32.499008, 31.628754, 29.265455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037640, 32.160366, 29.667477>,  <33.022892, 31.390520, 29.663939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037640, 32.160366, 29.667477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671207, 32.074963, 29.531704>,  <32.451347, 32.023720, 29.450241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671207, 32.074963, 29.531704>,  <33.037640, 32.160366, 29.667477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671207, 32.074963, 29.531704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383068, 0.716230, 0.583330,
		0.118567, 0.664402, -0.737910,
		-0.916079, -0.213506, -0.339432,
		32.396385, 32.010910, 29.429874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831738, 32.802711, 29.498997>,  <33.037640, 32.160366, 29.667477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831738, 32.802711, 29.498997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509087, 32.570030, 29.540901>,  <32.315495, 32.430424, 29.566044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509087, 32.570030, 29.540901>,  <32.831738, 32.802711, 29.498997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509087, 32.570030, 29.540901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420746, 0.689594, 0.589434,
		-0.415116, 0.431377, -0.800995,
		-0.806630, -0.581699, 0.104761,
		32.267097, 32.395519, 29.572329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270752, 33.227657, 29.443022>,  <32.831738, 32.802711, 29.498997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270752, 33.227657, 29.443022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138874, 32.907581, 29.643421>,  <32.059750, 32.715534, 29.763660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138874, 32.907581, 29.643421>,  <32.270752, 33.227657, 29.443022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138874, 32.907581, 29.643421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576165, 0.590924, 0.564662,
		-0.747889, -0.102495, -0.655863,
		-0.329690, -0.800190, 0.501000,
		32.039967, 32.667526, 29.793720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568844, 33.238865, 29.221964>,  <32.270752, 33.227657, 29.443022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568844, 33.238865, 29.221964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646873, 33.048996, 29.565273>,  <31.693691, 32.935074, 29.771259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646873, 33.048996, 29.565273>,  <31.568844, 33.238865, 29.221964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646873, 33.048996, 29.565273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733940, 0.509834, 0.448777,
		-0.650598, -0.717467, -0.248923,
		0.195074, -0.474669, 0.858275,
		31.705395, 32.906597, 29.822756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954012, 33.293530, 29.647535>,  <31.568844, 33.238865, 29.221964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954012, 33.293530, 29.647535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198885, 33.122784, 29.913773>,  <31.345810, 33.020336, 30.073515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198885, 33.122784, 29.913773>,  <30.954012, 33.293530, 29.647535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198885, 33.122784, 29.913773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629139, 0.246937, 0.737025,
		-0.478973, -0.869945, -0.117389,
		0.612184, -0.426869, 0.665593,
		31.382540, 32.994724, 30.113451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456024, 32.781372, 30.027615>,  <30.954012, 33.293530, 29.647535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456024, 32.781372, 30.027615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775221, 32.920418, 30.224541>,  <30.966740, 33.003845, 30.342697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775221, 32.920418, 30.224541>,  <30.456024, 32.781372, 30.027615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775221, 32.920418, 30.224541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600805, 0.394680, 0.695170,
		0.047343, -0.850526, 0.523799,
		0.797993, 0.347612, 0.492314,
		31.014618, 33.024700, 30.372234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317657, 32.642754, 30.625858>,  <30.456024, 32.781372, 30.027615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317657, 32.642754, 30.625858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595333, 32.926117, 30.676870>,  <30.761938, 33.096134, 30.707478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595333, 32.926117, 30.676870>,  <30.317657, 32.642754, 30.625858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595333, 32.926117, 30.676870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391783, 0.223236, 0.892565,
		0.603826, -0.669574, 0.432509,
		0.694190, 0.708404, 0.127532,
		30.803591, 33.138638, 30.715130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478666, 32.663704, 31.306173>,  <30.317657, 32.642754, 30.625858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478666, 32.663704, 31.306173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629166, 33.013317, 31.183210>,  <30.719465, 33.223087, 31.109432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629166, 33.013317, 31.183210>,  <30.478666, 32.663704, 31.306173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629166, 33.013317, 31.183210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266163, 0.419764, 0.867730,
		0.887466, -0.244659, 0.390571,
		0.376246, 0.874036, -0.307407,
		30.742039, 33.275528, 31.090988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890594, 32.966915, 31.866615>,  <30.478666, 32.663704, 31.306173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890594, 32.966915, 31.866615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785686, 33.275425, 31.634634>,  <30.722742, 33.460533, 31.495445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785686, 33.275425, 31.634634>,  <30.890594, 32.966915, 31.866615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785686, 33.275425, 31.634634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517884, 0.394613, 0.758996,
		0.814254, 0.499412, 0.295936,
		-0.262272, 0.771276, -0.579953,
		30.707005, 33.506809, 31.460648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041842, 33.723713, 32.276524>,  <30.890594, 32.966915, 31.866615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041842, 33.723713, 32.276524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760540, 33.782677, 31.998329>,  <30.591759, 33.818054, 31.831411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760540, 33.782677, 31.998329>,  <31.041842, 33.723713, 32.276524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760540, 33.782677, 31.998329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593439, 0.416979, 0.688446,
		0.391490, 0.896882, -0.205761,
		-0.703253, 0.147413, -0.695489,
		30.549564, 33.826900, 31.789682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865076, 34.379597, 32.391224>,  <31.041842, 33.723713, 32.276524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865076, 34.379597, 32.391224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562263, 34.217121, 32.186516>,  <30.380577, 34.119637, 32.063690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562263, 34.217121, 32.186516>,  <30.865076, 34.379597, 32.391224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562263, 34.217121, 32.186516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637498, 0.287540, 0.714785,
		-0.143185, 0.867369, -0.476623,
		-0.757030, -0.406193, -0.511774,
		30.335154, 34.095264, 32.032982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336559, 34.865643, 32.422684>,  <30.865076, 34.379597, 32.391224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336559, 34.865643, 32.422684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141397, 34.536156, 32.307137>,  <30.024300, 34.338463, 32.237808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141397, 34.536156, 32.307137>,  <30.336559, 34.865643, 32.422684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141397, 34.536156, 32.307137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749408, 0.225589, 0.622492,
		-0.447589, 0.520199, -0.727363,
		-0.487905, -0.823713, -0.288870,
		29.995026, 34.289043, 32.220474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590557, 35.152317, 32.244099>,  <30.336559, 34.865643, 32.422684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590557, 35.152317, 32.244099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595293, 34.759521, 32.319519>,  <29.598135, 34.523842, 32.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595293, 34.759521, 32.319519>,  <29.590557, 35.152317, 32.244099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595293, 34.759521, 32.319519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781582, 0.108524, 0.614290,
		-0.623690, -0.154639, -0.766223,
		0.011840, -0.981993, 0.188548,
		29.598845, 34.464924, 32.376083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906204, 34.967491, 32.110657>,  <29.590557, 35.152317, 32.244099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906204, 34.967491, 32.110657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048244, 34.657112, 32.319202>,  <29.133469, 34.470886, 32.444328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048244, 34.657112, 32.319202>,  <28.906204, 34.967491, 32.110657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048244, 34.657112, 32.319202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747249, 0.099507, 0.657052,
		-0.561715, -0.622904, -0.544488,
		0.355100, -0.775944, 0.521359,
		29.154774, 34.424328, 32.475609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378908, 34.915417, 32.463581>,  <28.906204, 34.967491, 32.110657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378908, 34.915417, 32.463581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658352, 34.723221, 32.675648>,  <28.826017, 34.607903, 32.802887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658352, 34.723221, 32.675648>,  <28.378908, 34.915417, 32.463581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658352, 34.723221, 32.675648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588841, 0.034836, 0.807498,
		-0.406463, -0.876309, -0.258595,
		0.698609, -0.480489, 0.530166,
		28.867935, 34.579075, 32.834698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017828, 34.363506, 32.670254>,  <28.378908, 34.915417, 32.463581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017828, 34.363506, 32.670254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314941, 34.441956, 32.926319>,  <28.493210, 34.489025, 33.079960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314941, 34.441956, 32.926319>,  <28.017828, 34.363506, 32.670254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314941, 34.441956, 32.926319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661922, 0.071365, 0.746167,
		0.100662, -0.977977, 0.182833,
		0.742782, 0.196132, 0.640161,
		28.537777, 34.500793, 33.118366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946575, 34.079407, 33.375126>,  <28.017828, 34.363506, 32.670254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946575, 34.079407, 33.375126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225264, 34.356056, 33.451271>,  <28.392477, 34.522045, 33.496960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225264, 34.356056, 33.451271>,  <27.946575, 34.079407, 33.375126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225264, 34.356056, 33.451271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529449, 0.316739, 0.786995,
		0.484008, -0.649104, 0.586857,
		0.696721, 0.691622, 0.190363,
		28.434280, 34.563541, 33.508381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195013, 33.958359, 34.057281>,  <27.946575, 34.079407, 33.375126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195013, 33.958359, 34.057281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312450, 34.337337, 34.006458>,  <28.382912, 34.564724, 33.975964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312450, 34.337337, 34.006458>,  <28.195013, 33.958359, 34.057281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312450, 34.337337, 34.006458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529303, 0.271797, 0.803719,
		0.796016, -0.168715, 0.581286,
		0.293591, 0.947450, -0.127053,
		28.400528, 34.621574, 33.968342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353605, 34.272846, 34.821449>,  <28.195013, 33.958359, 34.057281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353605, 34.272846, 34.821449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289835, 34.562531, 34.553093>,  <28.251574, 34.736343, 34.392078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289835, 34.562531, 34.553093>,  <28.353605, 34.272846, 34.821449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289835, 34.562531, 34.553093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604927, 0.465389, 0.646125,
		0.780159, 0.508849, 0.363902,
		-0.159424, 0.724214, -0.670894,
		28.242008, 34.779797, 34.351826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489212, 34.887890, 35.215618>,  <28.353605, 34.272846, 34.821449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489212, 34.887890, 35.215618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255753, 34.963150, 34.899654>,  <28.115677, 35.008305, 34.710075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255753, 34.963150, 34.899654>,  <28.489212, 34.887890, 35.215618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255753, 34.963150, 34.899654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653943, 0.467768, 0.594602,
		0.481366, 0.863594, -0.149975,
		-0.583648, 0.188146, -0.789909,
		28.080658, 35.019592, 34.662682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490393, 35.608479, 35.183884>,  <28.489212, 34.887890, 35.215618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490393, 35.608479, 35.183884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179132, 35.423462, 35.013927>,  <27.992376, 35.312450, 34.911953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179132, 35.423462, 35.013927>,  <28.490393, 35.608479, 35.183884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179132, 35.423462, 35.013927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628026, 0.581732, 0.516887,
		0.008091, 0.669060, -0.743164,
		-0.778151, -0.462544, -0.424894,
		27.945686, 35.284698, 34.886459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516846, 36.123302, 35.810226>,  <28.490393, 35.608479, 35.183884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516846, 36.123302, 35.810226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824589, 36.363174, 35.722160>,  <29.009233, 36.507099, 35.669323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824589, 36.363174, 35.722160>,  <28.516846, 36.123302, 35.810226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824589, 36.363174, 35.722160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261429, 0.018896, 0.965038,
		0.582878, -0.800014, -0.142237,
		0.769356, 0.599684, -0.220161,
		29.055395, 36.543079, 35.656113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216866, 35.942894, 36.117142>,  <28.516846, 36.123302, 35.810226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216866, 35.942894, 36.117142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237331, 36.336483, 36.048805>,  <29.249611, 36.572636, 36.007805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237331, 36.336483, 36.048805>,  <29.216866, 35.942894, 36.117142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237331, 36.336483, 36.048805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276164, 0.150457, 0.949261,
		0.959748, -0.095747, -0.264039,
		0.051163, 0.983969, -0.170843,
		29.252680, 36.631672, 35.997551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868641, 36.096455, 36.304752>,  <29.216866, 35.942894, 36.117142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868641, 36.096455, 36.304752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633030, 36.419182, 36.323021>,  <29.491663, 36.612820, 36.333984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633030, 36.419182, 36.323021>,  <29.868641, 36.096455, 36.304752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633030, 36.419182, 36.323021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228208, 0.111853, 0.967166,
		0.775223, 0.580109, -0.250007,
		-0.589026, 0.806823, 0.045675,
		29.456322, 36.661228, 36.336723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236853, 36.777149, 36.565109>,  <29.868641, 36.096455, 36.304752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236853, 36.777149, 36.565109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859518, 36.725262, 36.687279>,  <29.633118, 36.694130, 36.760582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859518, 36.725262, 36.687279>,  <30.236853, 36.777149, 36.565109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859518, 36.725262, 36.687279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271340, 0.228295, 0.935016,
		-0.191016, 0.964912, -0.180162,
		-0.943338, -0.129718, 0.305427,
		29.576517, 36.686348, 36.778908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937948, 37.402481, 36.808575>,  <30.236853, 36.777149, 36.565109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937948, 37.402481, 36.808575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792599, 37.072433, 36.981609>,  <29.705389, 36.874405, 37.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792599, 37.072433, 36.981609>,  <29.937948, 37.402481, 36.808575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792599, 37.072433, 36.981609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099308, 0.427377, 0.898602,
		-0.926335, 0.369488, -0.073357,
		-0.363374, -0.825122, 0.432588,
		29.683586, 36.824898, 37.111385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435989, 37.595867, 37.353775>,  <29.937948, 37.402481, 36.808575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435989, 37.595867, 37.353775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588408, 37.241405, 37.459251>,  <29.679859, 37.028728, 37.522537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588408, 37.241405, 37.459251>,  <29.435989, 37.595867, 37.353775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588408, 37.241405, 37.459251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230032, 0.367109, 0.901285,
		-0.895483, -0.282773, 0.343729,
		0.381045, -0.886155, 0.263693,
		29.702721, 36.975559, 37.538361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202513, 37.457005, 38.033386>,  <29.435989, 37.595867, 37.353775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202513, 37.457005, 38.033386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515139, 37.209324, 38.003067>,  <29.702715, 37.060715, 37.984875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515139, 37.209324, 38.003067>,  <29.202513, 37.457005, 38.033386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515139, 37.209324, 38.003067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284019, 0.245014, 0.926985,
		-0.555420, -0.746027, 0.367359,
		0.781564, -0.619203, -0.075800,
		29.749607, 37.023563, 37.980328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172337, 36.996979, 38.663677>,  <29.202513, 37.457005, 38.033386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172337, 36.996979, 38.663677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548326, 36.967587, 38.530384>,  <29.773920, 36.949951, 38.450409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548326, 36.967587, 38.530384>,  <29.172337, 36.996979, 38.663677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548326, 36.967587, 38.530384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321629, -0.135481, 0.937123,
		-0.114002, -0.988051, -0.103717,
		0.939977, -0.073476, -0.333231,
		29.830320, 36.945541, 38.430416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439577, 36.367104, 38.878651>,  <29.172337, 36.996979, 38.663677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439577, 36.367104, 38.878651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719719, 36.646809, 38.821335>,  <29.887804, 36.814632, 38.786945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719719, 36.646809, 38.821335>,  <29.439577, 36.367104, 38.878651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719719, 36.646809, 38.821335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314959, -0.122601, 0.941154,
		0.640548, -0.704272, -0.306104,
		0.700357, 0.699264, -0.143285,
		29.929827, 36.856586, 38.778351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083942, 36.024563, 39.172981>,  <29.439577, 36.367104, 38.878651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083942, 36.024563, 39.172981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152777, 36.418015, 39.151623>,  <30.194077, 36.654087, 39.138805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152777, 36.418015, 39.151623>,  <30.083942, 36.024563, 39.172981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152777, 36.418015, 39.151623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381916, -0.016651, 0.924047,
		0.908035, -0.179410, -0.378531,
		0.172086, 0.983634, -0.053400,
		30.204403, 36.713104, 39.135601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568396, 36.117241, 39.585423>,  <30.083942, 36.024563, 39.172981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568396, 36.117241, 39.585423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473095, 36.501125, 39.525833>,  <30.415915, 36.731457, 39.490078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473095, 36.501125, 39.525833>,  <30.568396, 36.117241, 39.585423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473095, 36.501125, 39.525833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363640, 0.230384, 0.902601,
		0.900556, 0.160873, -0.403879,
		-0.238252, 0.959710, -0.148974,
		30.401619, 36.789040, 39.481140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158937, 36.595844, 39.649837>,  <30.568396, 36.117241, 39.585423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158937, 36.595844, 39.649837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829327, 36.806911, 39.732346>,  <30.631559, 36.933552, 39.781853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829327, 36.806911, 39.732346>,  <31.158937, 36.595844, 39.649837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829327, 36.806911, 39.732346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316186, 0.126204, 0.940265,
		0.470111, 0.840026, -0.270835,
		-0.824028, 0.527664, 0.206275,
		30.582119, 36.965210, 39.794228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360998, 37.006920, 40.188683>,  <31.158937, 36.595844, 39.649837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360998, 37.006920, 40.188683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961206, 37.018639, 40.194050>,  <30.721331, 37.025669, 40.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961206, 37.018639, 40.194050>,  <31.360998, 37.006920, 40.188683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961206, 37.018639, 40.194050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018018, 0.162873, 0.986482,
		0.026712, 0.986212, -0.163316,
		-0.999481, 0.029294, 0.013419,
		30.661362, 37.027428, 40.198074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212101, 37.472267, 40.679035>,  <31.360998, 37.006920, 40.188683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212101, 37.472267, 40.679035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852266, 37.303547, 40.633743>,  <30.636364, 37.202312, 40.606567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852266, 37.303547, 40.633743>,  <31.212101, 37.472267, 40.679035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852266, 37.303547, 40.633743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202968, 0.174224, 0.963561,
		-0.386709, 0.889790, -0.242343,
		-0.899589, -0.421805, -0.113225,
		30.582390, 37.177006, 40.599777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717163, 37.890388, 41.026920>,  <31.212101, 37.472267, 40.679035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717163, 37.890388, 41.026920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551371, 37.527706, 40.995697>,  <30.451895, 37.310097, 40.976963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551371, 37.527706, 40.995697>,  <30.717163, 37.890388, 41.026920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551371, 37.527706, 40.995697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198960, 0.006587, 0.979986,
		-0.888042, 0.421716, -0.183128,
		-0.414482, -0.906704, -0.078055,
		30.427027, 37.255695, 40.972282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106428, 37.875549, 41.463745>,  <30.717163, 37.890388, 41.026920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106428, 37.875549, 41.463745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166283, 37.483070, 41.414978>,  <30.202194, 37.247585, 41.385715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166283, 37.483070, 41.414978>,  <30.106428, 37.875549, 41.463745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166283, 37.483070, 41.414978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393621, -0.172232, 0.902994,
		-0.907013, -0.087128, -0.411991,
		0.149634, -0.981196, -0.121922,
		30.211172, 37.188713, 41.378403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571020, 37.479912, 41.831257>,  <30.106428, 37.875549, 41.463745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571020, 37.479912, 41.831257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853670, 37.200596, 41.785526>,  <30.023260, 37.033005, 41.758087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853670, 37.200596, 41.785526>,  <29.571020, 37.479912, 41.831257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853670, 37.200596, 41.785526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270258, -0.415663, 0.868438,
		-0.653946, -0.582760, -0.482436,
		0.706622, -0.698294, -0.114326,
		30.065657, 36.991108, 41.751228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225824, 36.833458, 42.039738>,  <29.571020, 37.479912, 41.831257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225824, 36.833458, 42.039738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615767, 36.744324, 42.040543>,  <29.849731, 36.690842, 42.041023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615767, 36.744324, 42.040543>,  <29.225824, 36.833458, 42.039738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615767, 36.744324, 42.040543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099296, -0.426286, 0.899122,
		-0.199501, -0.876712, -0.437693,
		0.974854, -0.222837, 0.002009,
		29.908222, 36.677471, 42.041145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355452, 36.093693, 42.068405>,  <29.225824, 36.833458, 42.039738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355452, 36.093693, 42.068405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671251, 36.282433, 42.225403>,  <29.860731, 36.395676, 42.319603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671251, 36.282433, 42.225403>,  <29.355452, 36.093693, 42.068405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671251, 36.282433, 42.225403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049392, -0.588583, 0.806926,
		0.611763, -0.656453, -0.441380,
		0.789498, 0.471847, 0.392497,
		29.908100, 36.423988, 42.343151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593327, 35.640976, 42.550152>,  <29.355452, 36.093693, 42.068405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593327, 35.640976, 42.550152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822666, 35.954918, 42.644196>,  <29.960270, 36.143284, 42.700623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822666, 35.954918, 42.644196>,  <29.593327, 35.640976, 42.550152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822666, 35.954918, 42.644196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018001, -0.274822, 0.961327,
		0.819115, -0.555406, -0.143440,
		0.573347, 0.784855, 0.235109,
		29.994671, 36.190372, 42.714729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234886, 35.417042, 42.932041>,  <29.593327, 35.640976, 42.550152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234886, 35.417042, 42.932041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168991, 35.796127, 43.041363>,  <30.129454, 36.023579, 43.106956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168991, 35.796127, 43.041363>,  <30.234886, 35.417042, 42.932041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168991, 35.796127, 43.041363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101321, -0.259366, 0.960450,
		0.981119, 0.185916, -0.053295,
		-0.164740, 0.947716, 0.273306,
		30.119570, 36.080441, 43.123356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621510, 35.573101, 43.558102>,  <30.234886, 35.417042, 42.932041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621510, 35.573101, 43.558102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323036, 35.839092, 43.545383>,  <30.143951, 35.998688, 43.537754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323036, 35.839092, 43.545383>,  <30.621510, 35.573101, 43.558102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323036, 35.839092, 43.545383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278654, -0.268599, 0.922067,
		0.604616, 0.696891, 0.385723,
		-0.746185, 0.664979, -0.031792,
		30.099180, 36.038586, 43.535847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680021, 35.807888, 44.183475>,  <30.621510, 35.573101, 43.558102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680021, 35.807888, 44.183475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334818, 35.980881, 44.079033>,  <30.127697, 36.084679, 44.016369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334818, 35.980881, 44.079033>,  <30.680021, 35.807888, 44.183475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334818, 35.980881, 44.079033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279383, 0.022038, 0.959927,
		0.420909, 0.901371, 0.101810,
		-0.863007, 0.432486, -0.261104,
		30.075916, 36.110626, 44.000702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560974, 36.500916, 44.460384>,  <30.680021, 35.807888, 44.183475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560974, 36.500916, 44.460384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189783, 36.368656, 44.391640>,  <29.967070, 36.289303, 44.350391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189783, 36.368656, 44.391640>,  <30.560974, 36.500916, 44.460384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189783, 36.368656, 44.391640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234821, 0.160758, 0.958653,
		-0.289346, 0.929963, -0.226822,
		-0.927975, -0.330645, -0.171860,
		29.911390, 36.269463, 44.340080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231207, 36.872486, 44.946178>,  <30.560974, 36.500916, 44.460384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231207, 36.872486, 44.946178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962057, 36.605118, 44.819397>,  <29.800568, 36.444698, 44.743328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962057, 36.605118, 44.819397>,  <30.231207, 36.872486, 44.946178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962057, 36.605118, 44.819397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468817, 0.053882, 0.881650,
		-0.572235, 0.741830, -0.349623,
		-0.672872, -0.668420, -0.316949,
		29.760195, 36.404591, 44.724312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584454, 37.107952, 45.086842>,  <30.231207, 36.872486, 44.946178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584454, 37.107952, 45.086842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527014, 36.713078, 45.058990>,  <29.492550, 36.476154, 45.042278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527014, 36.713078, 45.058990>,  <29.584454, 37.107952, 45.086842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527014, 36.713078, 45.058990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361339, -0.013197, 0.932341,
		-0.921311, 0.159043, -0.354813,
		-0.143600, -0.987183, -0.069627,
		29.483934, 36.416924, 45.038101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777962, 36.907383, 45.271320>,  <29.584454, 37.107952, 45.086842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777962, 36.907383, 45.271320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021149, 36.593739, 45.321186>,  <29.167061, 36.405552, 45.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021149, 36.593739, 45.321186>,  <28.777962, 36.907383, 45.271320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021149, 36.593739, 45.321186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301599, -0.082837, 0.949829,
		-0.734449, -0.615062, -0.286851,
		0.607965, -0.784115, 0.124662,
		29.203539, 36.358505, 45.358585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447527, 36.499981, 45.677803>,  <28.777962, 36.907383, 45.271320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447527, 36.499981, 45.677803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813856, 36.344185, 45.716923>,  <29.033653, 36.250710, 45.740395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813856, 36.344185, 45.716923>,  <28.447527, 36.499981, 45.677803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813856, 36.344185, 45.716923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232497, -0.315692, 0.919937,
		-0.327428, -0.865240, -0.379673,
		0.915825, -0.389485, 0.097799,
		29.088604, 36.227337, 45.746262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334799, 35.874039, 46.061428>,  <28.447527, 36.499981, 45.677803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334799, 35.874039, 46.061428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728617, 35.912270, 46.120136>,  <28.964907, 35.935207, 46.155361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728617, 35.912270, 46.120136>,  <28.334799, 35.874039, 46.061428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728617, 35.912270, 46.120136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128868, -0.172199, 0.976596,
		0.118611, -0.980415, -0.157221,
		0.984543, 0.095574, 0.146768,
		29.023979, 35.940941, 46.164165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512686, 35.283302, 46.427803>,  <28.334799, 35.874039, 46.061428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512686, 35.283302, 46.427803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771511, 35.579624, 46.499935>,  <28.926807, 35.757416, 46.543217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771511, 35.579624, 46.499935>,  <28.512686, 35.283302, 46.427803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771511, 35.579624, 46.499935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040810, -0.269837, 0.962041,
		0.761342, -0.615143, -0.204834,
		0.647065, 0.740801, 0.180334,
		28.965631, 35.801865, 46.554035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030029, 35.010479, 46.855068>,  <28.512686, 35.283302, 46.427803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030029, 35.010479, 46.855068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038193, 35.407631, 46.902023>,  <29.043091, 35.645920, 46.930195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038193, 35.407631, 46.902023>,  <29.030029, 35.010479, 46.855068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038193, 35.407631, 46.902023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021041, -0.117813, 0.992813,
		0.999570, -0.017792, -0.023295,
		0.020409, 0.992876, 0.117388,
		29.044315, 35.705494, 46.937241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658167, 35.203514, 47.278400>,  <29.030029, 35.010479, 46.855068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658167, 35.203514, 47.278400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452990, 35.545792, 47.305740>,  <29.329884, 35.751160, 47.322144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452990, 35.545792, 47.305740>,  <29.658167, 35.203514, 47.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452990, 35.545792, 47.305740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304653, 0.107030, 0.946431,
		0.802542, 0.506289, -0.315591,
		-0.512945, 0.855696, 0.068347,
		29.299107, 35.802502, 47.326244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035339, 35.704609, 47.731453>,  <29.658167, 35.203514, 47.278400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035339, 35.704609, 47.731453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656130, 35.831669, 47.738937>,  <29.428604, 35.907906, 47.743427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656130, 35.831669, 47.738937>,  <30.035339, 35.704609, 47.731453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656130, 35.831669, 47.738937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050884, 0.093292, 0.994338,
		0.314103, 0.943608, -0.104606,
		-0.948024, 0.317648, 0.018711,
		29.371723, 35.926964, 47.744553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008469, 36.237305, 48.230587>,  <30.035339, 35.704609, 47.731453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008469, 36.237305, 48.230587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623787, 36.137810, 48.184540>,  <29.392977, 36.078114, 48.156910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623787, 36.137810, 48.184540>,  <30.008469, 36.237305, 48.230587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623787, 36.137810, 48.184540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087578, -0.119136, 0.989008,
		-0.259715, 0.961217, 0.092790,
		-0.961706, -0.248733, -0.115122,
		29.335276, 36.063190, 48.150002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671391, 36.459759, 48.750622>,  <30.008469, 36.237305, 48.230587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671391, 36.459759, 48.750622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364864, 36.229240, 48.637028>,  <29.180948, 36.090931, 48.568871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364864, 36.229240, 48.637028>,  <29.671391, 36.459759, 48.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364864, 36.229240, 48.637028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243784, -0.148133, 0.958450,
		-0.594415, 0.803706, -0.026975,
		-0.766316, -0.576293, -0.283983,
		29.134970, 36.056351, 48.551834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998142, 36.685467, 49.180321>,  <29.671391, 36.459759, 48.750622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998142, 36.685467, 49.180321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980972, 36.310329, 49.042564>,  <28.970671, 36.085247, 48.959911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980972, 36.310329, 49.042564>,  <28.998142, 36.685467, 49.180321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980972, 36.310329, 49.042564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279721, -0.319641, 0.905310,
		-0.959121, 0.135192, -0.248615,
		-0.042923, -0.937845, -0.344391,
		28.968096, 36.028976, 48.939247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305380, 36.405941, 49.375877>,  <28.998142, 36.685467, 49.180321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305380, 36.405941, 49.375877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538742, 36.091579, 49.293911>,  <28.678759, 35.902962, 49.244732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538742, 36.091579, 49.293911>,  <28.305380, 36.405941, 49.375877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538742, 36.091579, 49.293911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279164, -0.430972, 0.858097,
		-0.762696, -0.443414, -0.470828,
		0.583405, -0.785906, -0.204916,
		28.713764, 35.855808, 49.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946114, 35.837269, 49.547733>,  <28.305380, 36.405941, 49.375877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946114, 35.837269, 49.547733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309343, 35.669758, 49.549892>,  <28.527281, 35.569252, 49.551186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309343, 35.669758, 49.549892>,  <27.946114, 35.837269, 49.547733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309343, 35.669758, 49.549892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251088, -0.534059, 0.807301,
		-0.335195, -0.734445, -0.590115,
		0.908074, -0.418774, 0.005396,
		28.581766, 35.544125, 49.551510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933083, 35.165482, 49.822563>,  <27.946114, 35.837269, 49.547733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933083, 35.165482, 49.822563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321629, 35.242741, 49.877903>,  <28.554756, 35.289097, 49.911106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321629, 35.242741, 49.877903>,  <27.933083, 35.165482, 49.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321629, 35.242741, 49.877903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064610, -0.345632, 0.936143,
		0.228629, -0.918278, -0.323257,
		0.971367, 0.193144, 0.138352,
		28.613039, 35.300682, 49.919407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306364, 34.536034, 50.002853>,  <27.933083, 35.165482, 49.822563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306364, 34.536034, 50.002853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529991, 34.844994, 50.123409>,  <28.664167, 35.030369, 50.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529991, 34.844994, 50.123409>,  <28.306364, 34.536034, 50.002853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529991, 34.844994, 50.123409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019291, -0.351294, 0.936067,
		0.828897, -0.529140, -0.181498,
		0.559069, 0.772401, 0.301394,
		28.697712, 35.076714, 50.213829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724350, 34.300140, 50.527203>,  <28.306364, 34.536034, 50.002853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724350, 34.300140, 50.527203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791908, 34.688244, 50.596569>,  <28.832443, 34.921104, 50.638187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791908, 34.688244, 50.596569>,  <28.724350, 34.300140, 50.527203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791908, 34.688244, 50.596569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233320, -0.210302, 0.949387,
		0.957620, -0.119887, -0.261900,
		0.168897, 0.970258, 0.173417,
		28.842577, 34.979321, 50.648594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137722, 34.310352, 51.223366>,  <28.724350, 34.300140, 50.527203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137722, 34.310352, 51.223366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045111, 34.697102, 51.180374>,  <28.989544, 34.929150, 51.154579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045111, 34.697102, 51.180374>,  <29.137722, 34.310352, 51.223366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045111, 34.697102, 51.180374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072241, 0.127259, 0.989235,
		0.970142, 0.221272, -0.099312,
		-0.231528, 0.966873, -0.107474,
		28.975653, 34.987164, 51.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575754, 34.650196, 51.664257>,  <29.137722, 34.310352, 51.223366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575754, 34.650196, 51.664257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245525, 34.875217, 51.646523>,  <29.047388, 35.010231, 51.635883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245525, 34.875217, 51.646523>,  <29.575754, 34.650196, 51.664257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245525, 34.875217, 51.646523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022830, 0.045200, 0.998717,
		0.563833, 0.825526, -0.024472,
		-0.825573, 0.562551, -0.044332,
		28.997854, 35.043983, 51.633224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659470, 35.130642, 52.113850>,  <29.575754, 34.650196, 51.664257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659470, 35.130642, 52.113850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265144, 35.130669, 52.046715>,  <29.028549, 35.130684, 52.006435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265144, 35.130669, 52.046715>,  <29.659470, 35.130642, 52.113850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265144, 35.130669, 52.046715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166119, 0.142225, 0.975795,
		0.023934, 0.989834, -0.140196,
		-0.985815, 0.000066, -0.167834,
		28.969400, 35.130688, 51.996365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307177, 35.780239, 52.306530>,  <29.659470, 35.130642, 52.113850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307177, 35.780239, 52.306530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034870, 35.490349, 52.349117>,  <28.871487, 35.316414, 52.374668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034870, 35.490349, 52.349117>,  <29.307177, 35.780239, 52.306530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034870, 35.490349, 52.349117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033442, 0.175944, 0.983832,
		-0.731736, 0.666200, -0.144013,
		-0.680767, -0.724722, 0.106466,
		28.830641, 35.272934, 52.381058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821217, 36.147408, 52.711044>,  <29.307177, 35.780239, 52.306530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821217, 36.147408, 52.711044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747648, 35.754658, 52.729397>,  <28.703508, 35.519009, 52.740406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747648, 35.754658, 52.729397>,  <28.821217, 36.147408, 52.711044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747648, 35.754658, 52.729397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056639, 0.057182, 0.996756,
		-0.981308, 0.180724, -0.066129,
		-0.183919, -0.981870, 0.045877,
		28.692472, 35.460098, 52.743160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118187, 36.074188, 53.060230>,  <28.821217, 36.147408, 52.711044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118187, 36.074188, 53.060230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361347, 35.759727, 53.104809>,  <28.507242, 35.571049, 53.131554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361347, 35.759727, 53.104809>,  <28.118187, 36.074188, 53.060230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361347, 35.759727, 53.104809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246949, -0.053800, 0.967534,
		-0.754635, -0.615684, -0.226844,
		0.607900, -0.786154, 0.111443,
		28.543716, 35.523880, 53.138241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817488, 35.768089, 53.593868>,  <28.118187, 36.074188, 53.060230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817488, 35.768089, 53.593868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180885, 35.601006, 53.598885>,  <28.398924, 35.500755, 53.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180885, 35.601006, 53.598885>,  <27.817488, 35.768089, 53.593868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180885, 35.601006, 53.598885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003320, 0.022792, 0.999735,
		-0.417886, -0.908294, 0.019319,
		0.908493, -0.417711, 0.012540,
		28.453434, 35.475693, 53.602646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847750, 34.985756, 53.948254>,  <27.817488, 35.768089, 53.593868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847750, 34.985756, 53.948254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173410, 35.217834, 53.957378>,  <28.368807, 35.357082, 53.962852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173410, 35.217834, 53.957378>,  <27.847750, 34.985756, 53.948254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173410, 35.217834, 53.957378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020625, -0.010371, 0.999733,
		0.580283, -0.814407, 0.003523,
		0.814153, 0.580201, 0.022816,
		28.417656, 35.391895, 53.964222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409473, 34.712017, 54.325378>,  <27.847750, 34.985756, 53.948254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409473, 34.712017, 54.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411329, 35.111794, 54.338600>,  <28.412443, 35.351658, 54.346535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411329, 35.111794, 54.338600>,  <28.409473, 34.712017, 54.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411329, 35.111794, 54.338600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083412, -0.033330, 0.995958,
		0.996504, -0.001864, -0.083520,
		0.004640, 0.999443, 0.033058,
		28.412722, 35.411625, 54.348518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416502, 34.182281, 54.811592>,  <28.409473, 34.712017, 54.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416502, 34.182281, 54.811592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721703, 33.937389, 54.894535>,  <28.904823, 33.790455, 54.944302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721703, 33.937389, 54.894535>,  <28.416502, 34.182281, 54.811592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721703, 33.937389, 54.894535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303992, -0.622965, -0.720766,
		0.570453, 0.486912, -0.661439,
		0.763002, -0.612235, 0.207355,
		28.950603, 33.753719, 54.956741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884624, 33.938564, 54.184757>,  <28.416502, 34.182281, 54.811592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884624, 33.938564, 54.184757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928173, 33.660172, 54.468662>,  <28.954302, 33.493137, 54.639004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928173, 33.660172, 54.468662>,  <28.884624, 33.938564, 54.184757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928173, 33.660172, 54.468662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090822, -0.717984, -0.690109,
		0.989898, 0.010672, -0.141379,
		0.108873, -0.695978, 0.709762,
		28.960835, 33.451378, 54.681591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530752, 33.591938, 54.085407>,  <28.884624, 33.938564, 54.184757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530752, 33.591938, 54.085407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235828, 33.360260, 54.224499>,  <29.058874, 33.221252, 54.307953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235828, 33.360260, 54.224499>,  <29.530752, 33.591938, 54.085407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235828, 33.360260, 54.224499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061672, -0.570284, -0.819129,
		0.672735, -0.582506, 0.456195,
		-0.737309, -0.579192, 0.347726,
		29.014635, 33.186504, 54.328815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667961, 32.829880, 54.137608>,  <29.530752, 33.591938, 54.085407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667961, 32.829880, 54.137608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292934, 32.924320, 54.035454>,  <29.067919, 32.980984, 53.974163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292934, 32.924320, 54.035454>,  <29.667961, 32.829880, 54.137608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292934, 32.924320, 54.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140999, -0.413208, -0.899654,
		-0.317936, -0.879497, 0.354121,
		-0.937569, 0.236102, -0.255382,
		29.011663, 32.995152, 53.958839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269939, 32.271225, 54.087826>,  <29.667961, 32.829880, 54.137608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269939, 32.271225, 54.087826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217302, 32.590260, 53.852356>,  <29.185720, 32.781681, 53.711075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217302, 32.590260, 53.852356>,  <29.269939, 32.271225, 54.087826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217302, 32.590260, 53.852356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266398, -0.543544, -0.795985,
		-0.954838, -0.261568, -0.140949,
		-0.131592, 0.797585, -0.588678,
		29.177824, 32.829536, 53.675751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615860, 31.955509, 53.966492>,  <29.269939, 32.271225, 54.087826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615860, 31.955509, 53.966492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752829, 31.579702, 53.963448>,  <28.835009, 31.354219, 53.961620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752829, 31.579702, 53.963448>,  <28.615860, 31.955509, 53.966492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752829, 31.579702, 53.963448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352486, -0.135965, 0.925887,
		-0.870920, -0.314361, -0.377724,
		0.342420, -0.939516, -0.007607,
		28.855555, 31.297848, 53.961166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436878, 31.590668, 53.310730>,  <28.615860, 31.955509, 53.966492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436878, 31.590668, 53.310730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431993, 31.987223, 53.258568>,  <28.429062, 32.225155, 53.227272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431993, 31.987223, 53.258568>,  <28.436878, 31.590668, 53.310730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431993, 31.987223, 53.258568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250777, -0.123210, -0.960172,
		-0.967968, -0.044430, -0.247112,
		-0.012214, 0.991386, -0.130405,
		28.428329, 32.284637, 53.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078911, 31.742054, 52.726650>,  <28.436878, 31.590668, 53.310730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078911, 31.742054, 52.726650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305719, 32.067234, 52.779716>,  <28.441805, 32.262341, 52.811558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305719, 32.067234, 52.779716>,  <28.078911, 31.742054, 52.726650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305719, 32.067234, 52.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359855, -0.099607, -0.927676,
		-0.740941, 0.573751, -0.349023,
		0.567020, 0.812951, 0.132664,
		28.475826, 32.311119, 52.819515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828114, 32.198925, 52.189796>,  <28.078911, 31.742054, 52.726650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828114, 32.198925, 52.189796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205116, 32.278419, 52.297264>,  <28.431318, 32.326115, 52.361744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205116, 32.278419, 52.297264>,  <27.828114, 32.198925, 52.189796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205116, 32.278419, 52.297264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285823, -0.062797, -0.956223,
		-0.173165, 0.978039, -0.115990,
		0.942507, 0.198737, 0.268672,
		28.487867, 32.338039, 52.377865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015270, 32.800484, 51.688091>,  <27.828114, 32.198925, 52.189796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015270, 32.800484, 51.688091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343708, 32.610252, 51.814346>,  <28.540771, 32.496113, 51.890099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343708, 32.610252, 51.814346>,  <28.015270, 32.800484, 51.688091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343708, 32.610252, 51.814346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376488, 0.035605, -0.925737,
		0.429023, 0.878952, 0.208284,
		0.821095, -0.475579, 0.315640,
		28.590036, 32.467579, 51.909039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434099, 33.156132, 51.340092>,  <28.015270, 32.800484, 51.688091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434099, 33.156132, 51.340092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642504, 32.831779, 51.446690>,  <28.767548, 32.637169, 51.510647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642504, 32.831779, 51.446690>,  <28.434099, 33.156132, 51.340092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642504, 32.831779, 51.446690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471055, 0.012796, -0.882011,
		0.711796, 0.585071, 0.388636,
		0.521012, -0.810881, 0.266492,
		28.798807, 32.588516, 51.526638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179243, 33.311855, 51.180645>,  <28.434099, 33.156132, 51.340092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179243, 33.311855, 51.180645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173204, 32.911999, 51.189537>,  <29.169580, 32.672085, 51.194870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173204, 32.911999, 51.189537>,  <29.179243, 33.311855, 51.180645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173204, 32.911999, 51.189537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543735, -0.026861, -0.838827,
		0.839121, -0.000578, 0.543945,
		-0.015096, -0.999639, 0.022226,
		29.168676, 32.612106, 51.196205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029699, 33.028267, 51.194042>,  <29.179243, 33.311855, 51.180645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029699, 33.028267, 51.194042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762882, 32.763599, 51.057079>,  <29.602793, 32.604797, 50.974903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762882, 32.763599, 51.057079>,  <30.029699, 33.028267, 51.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762882, 32.763599, 51.057079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518249, -0.081921, -0.851297,
		0.535230, -0.745304, 0.397556,
		-0.667043, -0.661673, -0.342407,
		29.562769, 32.565098, 50.954357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442533, 32.549618, 51.000374>,  <30.029699, 33.028267, 51.194042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442533, 32.549618, 51.000374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089766, 32.499729, 50.818535>,  <29.878105, 32.469795, 50.709431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089766, 32.499729, 50.818535>,  <30.442533, 32.549618, 51.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089766, 32.499729, 50.818535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466803, -0.096762, -0.879052,
		0.065653, -0.987462, 0.143559,
		-0.881921, -0.124726, -0.454597,
		29.825190, 32.462311, 50.682156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663551, 32.181183, 50.391209>,  <30.442533, 32.549618, 51.000374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663551, 32.181183, 50.391209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298241, 32.307476, 50.288265>,  <30.079054, 32.383251, 50.226498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298241, 32.307476, 50.288265>,  <30.663551, 32.181183, 50.391209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298241, 32.307476, 50.288265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234051, -0.110349, -0.965941,
		-0.333382, -0.942408, 0.026881,
		-0.913278, 0.315736, -0.257361,
		30.024258, 32.402195, 50.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445826, 31.671663, 49.764790>,  <30.663551, 32.181183, 50.391209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445826, 31.671663, 49.764790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228779, 32.007263, 49.748531>,  <30.098551, 32.208622, 49.738777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228779, 32.007263, 49.748531>,  <30.445826, 31.671663, 49.764790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228779, 32.007263, 49.748531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199683, 0.081842, -0.976436,
		-0.815902, -0.537944, -0.211943,
		-0.542614, 0.838998, -0.040643,
		30.065994, 32.258961, 49.736340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975136, 31.588785, 49.188320>,  <30.445826, 31.671663, 49.764790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975136, 31.588785, 49.188320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037851, 31.978188, 49.254902>,  <30.075480, 32.211830, 49.294849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037851, 31.978188, 49.254902>,  <29.975136, 31.588785, 49.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037851, 31.978188, 49.254902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030970, 0.163608, -0.986039,
		-0.987147, 0.159754, -0.004497,
		0.156788, 0.973505, 0.166452,
		30.084888, 32.270241, 49.304836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464668, 31.908920, 48.891857>,  <29.975136, 31.588785, 49.188320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464668, 31.908920, 48.891857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709709, 32.223633, 48.922043>,  <29.856733, 32.412460, 48.940155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709709, 32.223633, 48.922043>,  <29.464668, 31.908920, 48.891857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709709, 32.223633, 48.922043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132826, 0.196600, -0.971445,
		-0.779152, 0.585084, 0.224942,
		0.612600, 0.786782, 0.075467,
		29.893490, 32.459667, 48.944683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193966, 32.406078, 48.421574>,  <29.464668, 31.908920, 48.891857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193966, 32.406078, 48.421574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575817, 32.510902, 48.478161>,  <29.804928, 32.573795, 48.512112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575817, 32.510902, 48.478161>,  <29.193966, 32.406078, 48.421574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575817, 32.510902, 48.478161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025144, 0.402407, -0.915115,
		-0.296738, 0.877152, 0.377560,
		0.954628, 0.262056, 0.141465,
		29.862206, 32.589520, 48.520599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289331, 33.037567, 48.077484>,  <29.193966, 32.406078, 48.421574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289331, 33.037567, 48.077484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668575, 32.928364, 48.142666>,  <29.896122, 32.862843, 48.181774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668575, 32.928364, 48.142666>,  <29.289331, 33.037567, 48.077484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668575, 32.928364, 48.142666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292419, 0.547564, -0.784005,
		0.124816, 0.790973, 0.598985,
		0.948110, -0.273012, 0.162951,
		29.953009, 32.846458, 48.191551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641745, 33.550610, 47.722736>,  <29.289331, 33.037567, 48.077484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641745, 33.550610, 47.722736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920479, 33.268349, 47.774071>,  <30.087719, 33.098991, 47.804871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920479, 33.268349, 47.774071>,  <29.641745, 33.550610, 47.722736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920479, 33.268349, 47.774071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417290, 0.253354, -0.872743,
		0.583342, 0.661712, 0.471009,
		0.696837, -0.705655, 0.128334,
		30.129530, 33.056652, 47.812572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289848, 33.782238, 47.626434>,  <29.641745, 33.550610, 47.722736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289848, 33.782238, 47.626434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250755, 33.395607, 47.531628>,  <30.227299, 33.163628, 47.474743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250755, 33.395607, 47.531628>,  <30.289848, 33.782238, 47.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250755, 33.395607, 47.531628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372060, 0.185402, -0.909504,
		0.923049, -0.177074, 0.341505,
		-0.097734, -0.966577, -0.237017,
		30.221436, 33.105633, 47.460522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780214, 33.792515, 47.101452>,  <30.289848, 33.782238, 47.626434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780214, 33.792515, 47.101452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568521, 33.458660, 47.040394>,  <30.441505, 33.258347, 47.003757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568521, 33.458660, 47.040394>,  <30.780214, 33.792515, 47.101452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568521, 33.458660, 47.040394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280627, -0.002406, -0.959814,
		0.800725, -0.550802, 0.235494,
		-0.529234, -0.834633, -0.152644,
		30.409752, 33.208271, 46.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072800, 33.509697, 46.470501>,  <30.780214, 33.792515, 47.101452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072800, 33.509697, 46.470501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737457, 33.294640, 46.506500>,  <30.536251, 33.165607, 46.528099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737457, 33.294640, 46.506500>,  <31.072800, 33.509697, 46.470501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737457, 33.294640, 46.506500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052322, -0.084970, -0.995009,
		0.542604, -0.838882, 0.043105,
		-0.838357, -0.537640, 0.089998,
		30.485950, 33.133347, 46.533501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254082, 32.884048, 46.144241>,  <31.072800, 33.509697, 46.470501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254082, 32.884048, 46.144241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854261, 32.895962, 46.143127>,  <30.614368, 32.903111, 46.142460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854261, 32.895962, 46.143127>,  <31.254082, 32.884048, 46.144241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854261, 32.895962, 46.143127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001634, -0.038657, -0.999251,
		-0.029846, -0.998809, 0.038591,
		-0.999553, 0.029760, -0.002786,
		30.554396, 32.904896, 46.142292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086384, 32.493019, 45.642311>,  <31.254082, 32.884048, 46.144241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086384, 32.493019, 45.642311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754589, 32.709343, 45.698128>,  <30.555511, 32.839138, 45.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754589, 32.709343, 45.698128>,  <31.086384, 32.493019, 45.642311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754589, 32.709343, 45.698128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088721, 0.119081, -0.988913,
		-0.551435, -0.832670, -0.050795,
		-0.829487, 0.540814, 0.139541,
		30.505743, 32.871586, 45.739990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525290, 32.250290, 45.056595>,  <31.086384, 32.493019, 45.642311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525290, 32.250290, 45.056595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404278, 32.615234, 45.166920>,  <30.331671, 32.834202, 45.233116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404278, 32.615234, 45.166920>,  <30.525290, 32.250290, 45.056595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404278, 32.615234, 45.166920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180790, 0.229193, -0.956444,
		-0.935837, -0.339216, 0.095608,
		-0.302529, 0.912361, 0.275814,
		30.313519, 32.888943, 45.249664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910620, 32.293636, 44.738838>,  <30.525290, 32.250290, 45.056595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910620, 32.293636, 44.738838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027514, 32.668591, 44.814644>,  <30.097651, 32.893562, 44.860126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027514, 32.668591, 44.814644>,  <29.910620, 32.293636, 44.738838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027514, 32.668591, 44.814644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394812, 0.298741, -0.868836,
		-0.871046, 0.179082, 0.457392,
		0.292235, 0.937381, 0.189514,
		30.115185, 32.949806, 44.871498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364304, 32.707722, 44.573078>,  <29.910620, 32.293636, 44.738838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364304, 32.707722, 44.573078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661846, 32.974457, 44.590954>,  <29.840372, 33.134499, 44.601677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661846, 32.974457, 44.590954>,  <29.364304, 32.707722, 44.573078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661846, 32.974457, 44.590954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339121, 0.434213, -0.834540,
		-0.575910, 0.605625, 0.549133,
		0.743858, 0.666842, 0.044687,
		29.885004, 33.174511, 44.604359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073887, 33.409443, 44.552128>,  <29.364304, 32.707722, 44.573078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073887, 33.409443, 44.552128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455498, 33.447552, 44.438457>,  <29.684465, 33.470417, 44.370255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455498, 33.447552, 44.438457>,  <29.073887, 33.409443, 44.552128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455498, 33.447552, 44.438457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296797, 0.432314, -0.851479,
		0.041733, 0.896677, 0.440715,
		0.954028, 0.095268, -0.284172,
		29.741707, 33.476131, 44.353207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179829, 34.088402, 44.215691>,  <29.073887, 33.409443, 44.552128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179829, 34.088402, 44.215691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456724, 33.831684, 44.083687>,  <29.622862, 33.677654, 44.004482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456724, 33.831684, 44.083687>,  <29.179829, 34.088402, 44.215691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456724, 33.831684, 44.083687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129355, 0.339537, -0.931656,
		0.709980, 0.687617, 0.152022,
		0.692239, -0.641792, -0.330011,
		29.664396, 33.639145, 43.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617661, 34.442009, 43.685768>,  <29.179829, 34.088402, 44.215691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617661, 34.442009, 43.685768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730701, 34.066601, 43.606453>,  <29.798525, 33.841354, 43.558865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730701, 34.066601, 43.606453>,  <29.617661, 34.442009, 43.685768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730701, 34.066601, 43.606453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015787, 0.202131, -0.979231,
		0.959108, 0.279862, 0.042306,
		0.282601, -0.938520, -0.198284,
		29.815481, 33.785046, 43.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058256, 34.522743, 43.067726>,  <29.617661, 34.442009, 43.685768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058256, 34.522743, 43.067726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952383, 34.137318, 43.083191>,  <29.888859, 33.906063, 43.092472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952383, 34.137318, 43.083191>,  <30.058256, 34.522743, 43.067726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952383, 34.137318, 43.083191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045551, -0.027559, -0.998582,
		0.963259, -0.266068, -0.036597,
		-0.264682, -0.963560, 0.038666,
		29.872978, 33.848251, 43.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477398, 34.154530, 42.561165>,  <30.058256, 34.522743, 43.067726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477398, 34.154530, 42.561165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149864, 33.935726, 42.630783>,  <29.953344, 33.804443, 42.672554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149864, 33.935726, 42.630783>,  <30.477398, 34.154530, 42.561165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149864, 33.935726, 42.630783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137761, -0.107076, -0.984661,
		0.557257, -0.830249, 0.012321,
		-0.818833, -0.547012, 0.174045,
		29.904215, 33.771622, 42.682995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473274, 33.664707, 42.048740>,  <30.477398, 34.154530, 42.561165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473274, 33.664707, 42.048740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090012, 33.639252, 42.160374>,  <29.860054, 33.623978, 42.227352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090012, 33.639252, 42.160374>,  <30.473274, 33.664707, 42.048740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090012, 33.639252, 42.160374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241352, -0.344588, -0.907198,
		0.153906, -0.936594, 0.314808,
		-0.958156, -0.063644, 0.279083,
		29.802565, 33.620159, 42.244099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316027, 32.952782, 41.841995>,  <30.473274, 33.664707, 42.048740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316027, 32.952782, 41.841995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997871, 33.189278, 41.895351>,  <29.806978, 33.331173, 41.927364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997871, 33.189278, 41.895351>,  <30.316027, 32.952782, 41.841995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997871, 33.189278, 41.895351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302309, -0.196239, -0.932791,
		-0.525324, -0.782259, 0.334822,
		-0.795389, 0.591237, 0.133395,
		29.759254, 33.366650, 41.935371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780107, 32.573715, 41.531113>,  <30.316027, 32.952782, 41.841995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780107, 32.573715, 41.531113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683165, 32.961689, 41.539932>,  <29.625000, 33.194473, 41.545223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683165, 32.961689, 41.539932>,  <29.780107, 32.573715, 41.531113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683165, 32.961689, 41.539932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, -0.051677, -0.954514,
		-0.924679, -0.237807, 0.297348,
		-0.242356, 0.969937, 0.022048,
		29.610458, 33.252670, 41.546547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187681, 32.652325, 41.019135>,  <29.780107, 32.573715, 41.531113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187681, 32.652325, 41.019135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308741, 33.030998, 41.063316>,  <29.381376, 33.258202, 41.089825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308741, 33.030998, 41.063316>,  <29.187681, 32.652325, 41.019135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308741, 33.030998, 41.063316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340925, 0.215748, -0.914999,
		-0.890041, 0.239269, 0.388043,
		0.302651, 0.946680, 0.110452,
		29.399536, 33.315002, 41.096451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592251, 33.130966, 40.685993>,  <29.187681, 32.652325, 41.019135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592251, 33.130966, 40.685993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912903, 33.365147, 40.734390>,  <29.105295, 33.505653, 40.763428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912903, 33.365147, 40.734390>,  <28.592251, 33.130966, 40.685993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912903, 33.365147, 40.734390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236548, 0.496499, -0.835185,
		-0.549029, 0.640890, 0.536496,
		0.801631, 0.585448, 0.120991,
		29.153393, 33.540779, 40.770687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308386, 33.757755, 40.533684>,  <28.592251, 33.130966, 40.685993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308386, 33.757755, 40.533684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705475, 33.784332, 40.493507>,  <28.943727, 33.800278, 40.469402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705475, 33.784332, 40.493507>,  <28.308386, 33.757755, 40.533684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705475, 33.784332, 40.493507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117154, 0.339659, -0.933224,
		-0.027892, 0.938199, 0.344972,
		0.992722, 0.066444, -0.100440,
		29.003292, 33.804264, 40.463375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410751, 34.375477, 40.251656>,  <28.308386, 33.757755, 40.533684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410751, 34.375477, 40.251656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758762, 34.193298, 40.176159>,  <28.967569, 34.083992, 40.130863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758762, 34.193298, 40.176159>,  <28.410751, 34.375477, 40.251656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758762, 34.193298, 40.176159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000279, 0.382376, -0.924007,
		0.493004, 0.803964, 0.332550,
		0.870027, -0.455446, -0.188737,
		29.019770, 34.056664, 40.119537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730177, 34.869049, 40.019878>,  <28.410751, 34.375477, 40.251656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730177, 34.869049, 40.019878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943726, 34.566666, 39.868351>,  <29.071856, 34.385235, 39.777435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943726, 34.566666, 39.868351>,  <28.730177, 34.869049, 40.019878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943726, 34.566666, 39.868351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044171, 0.472327, -0.880316,
		0.844410, 0.453245, 0.285555,
		0.533874, -0.755961, -0.378817,
		29.103888, 34.339878, 39.754707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088488, 35.218548, 39.578983>,  <28.730177, 34.869049, 40.019878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088488, 35.218548, 39.578983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104282, 34.839230, 39.453018>,  <29.113758, 34.611637, 39.377438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104282, 34.839230, 39.453018>,  <29.088488, 35.218548, 39.578983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104282, 34.839230, 39.453018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023511, 0.314189, -0.949069,
		0.998944, 0.044879, -0.009889,
		0.039486, -0.948299, -0.314912,
		29.116129, 34.554741, 39.358543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463242, 35.307426, 38.912296>,  <29.088488, 35.218548, 39.578983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463242, 35.307426, 38.912296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310934, 34.940273, 38.867580>,  <29.219549, 34.719982, 38.840752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310934, 34.940273, 38.867580>,  <29.463242, 35.307426, 38.912296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310934, 34.940273, 38.867580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103838, 0.077690, -0.991556,
		0.918821, -0.389162, 0.065730,
		-0.380769, -0.917888, -0.111793,
		29.196703, 34.664906, 38.834042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864563, 35.042461, 38.416695>,  <29.463242, 35.307426, 38.912296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864563, 35.042461, 38.416695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529400, 34.824169, 38.420483>,  <29.328302, 34.693195, 38.422756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529400, 34.824169, 38.420483>,  <29.864563, 35.042461, 38.416695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529400, 34.824169, 38.420483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008887, -0.030982, -0.999480,
		0.545741, -0.837387, 0.030810,
		-0.837907, -0.545732, 0.009467,
		29.278028, 34.660450, 38.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258499, 34.880020, 39.016628>,  <29.864563, 35.042461, 38.416695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258499, 34.880020, 39.016628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469852, 34.953476, 38.685066>,  <30.596664, 34.997547, 38.486130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469852, 34.953476, 38.685066>,  <30.258499, 34.880020, 39.016628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469852, 34.953476, 38.685066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702747, -0.642442, 0.305638,
		-0.476399, -0.744006, -0.468507,
		0.528385, 0.183636, -0.828907,
		30.628368, 35.008568, 38.436394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401588, 34.304485, 38.762062>,  <30.258499, 34.880020, 39.016628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401588, 34.304485, 38.762062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715176, 34.523418, 38.644882>,  <30.903328, 34.654778, 38.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715176, 34.523418, 38.644882>,  <30.401588, 34.304485, 38.762062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715176, 34.523418, 38.644882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618893, -0.652072, 0.437919,
		0.048661, -0.524621, -0.849944,
		0.783967, 0.547334, -0.292953,
		30.950365, 34.687618, 38.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966293, 33.783112, 38.562527>,  <30.401588, 34.304485, 38.762062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966293, 33.783112, 38.562527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150368, 34.126797, 38.651947>,  <31.260813, 34.333008, 38.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150368, 34.126797, 38.651947>,  <30.966293, 33.783112, 38.562527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150368, 34.126797, 38.651947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630309, -0.493512, 0.599296,
		0.625251, -0.134881, -0.768679,
		0.460186, 0.859216, 0.223553,
		31.288424, 34.384563, 38.719013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605169, 33.625145, 38.544712>,  <30.966293, 33.783112, 38.562527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605169, 33.625145, 38.544712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596174, 33.958687, 38.765320>,  <31.590778, 34.158813, 38.897686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596174, 33.958687, 38.765320>,  <31.605169, 33.625145, 38.544712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596174, 33.958687, 38.765320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703988, -0.378493, 0.600953,
		0.709856, 0.401779, -0.578514,
		-0.022486, 0.833856, 0.551523,
		31.589428, 34.208843, 38.930779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264103, 33.720566, 38.820122>,  <31.605169, 33.625145, 38.544712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264103, 33.720566, 38.820122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078381, 33.967796, 39.073860>,  <31.966948, 34.116135, 39.226105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078381, 33.967796, 39.073860>,  <32.264103, 33.720566, 38.820122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078381, 33.967796, 39.073860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421725, -0.475536, 0.772019,
		0.778824, 0.625975, -0.039864,
		-0.464307, 0.618078, 0.634348,
		31.939089, 34.153221, 39.264164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778152, 33.836620, 39.418793>,  <32.264103, 33.720566, 38.820122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778152, 33.836620, 39.418793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421215, 33.969856, 39.540630>,  <32.207054, 34.049797, 39.613735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421215, 33.969856, 39.540630>,  <32.778152, 33.836620, 39.418793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421215, 33.969856, 39.540630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111813, -0.490676, 0.864138,
		0.437289, 0.805165, 0.400608,
		-0.892343, 0.333085, 0.304596,
		32.153511, 34.069782, 39.632008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869278, 34.199135, 40.031635>,  <32.778152, 33.836620, 39.418793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869278, 34.199135, 40.031635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495663, 34.056591, 40.021984>,  <32.271492, 33.971066, 40.016193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495663, 34.056591, 40.021984>,  <32.869278, 34.199135, 40.031635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495663, 34.056591, 40.021984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204912, -0.589965, 0.780995,
		-0.292550, 0.724534, 0.624072,
		-0.934037, -0.356359, -0.024129,
		32.215450, 33.949684, 40.014744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594440, 34.267067, 40.607452>,  <32.869278, 34.199135, 40.031635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594440, 34.267067, 40.607452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359085, 33.973782, 40.471096>,  <32.217873, 33.797810, 40.389282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359085, 33.973782, 40.471096>,  <32.594440, 34.267067, 40.607452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359085, 33.973782, 40.471096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034075, -0.443703, 0.895526,
		-0.807863, 0.515298, 0.286053,
		-0.588385, -0.733209, -0.340892,
		32.182571, 33.753819, 40.368828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230087, 34.186771, 41.180428>,  <32.594440, 34.267067, 40.607452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230087, 34.186771, 41.180428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157253, 33.852360, 40.973389>,  <32.113552, 33.651714, 40.849167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157253, 33.852360, 40.973389>,  <32.230087, 34.186771, 41.180428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157253, 33.852360, 40.973389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043282, -0.519074, 0.853633,
		-0.982330, 0.177834, 0.058329,
		-0.182083, -0.836025, -0.517599,
		32.102627, 33.601551, 40.818108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842051, 33.853828, 41.646847>,  <32.230087, 34.186771, 41.180428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842051, 33.853828, 41.646847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950121, 33.555824, 41.402889>,  <32.014965, 33.377022, 41.256516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950121, 33.555824, 41.402889>,  <31.842051, 33.853828, 41.646847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950121, 33.555824, 41.402889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002130, -0.633909, 0.773405,
		-0.962808, -0.207657, -0.172854,
		0.270176, -0.745009, -0.609890,
		32.031174, 33.332321, 41.219921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469662, 33.326794, 41.879822>,  <31.842051, 33.853828, 41.646847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469662, 33.326794, 41.879822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788380, 33.174229, 41.692360>,  <31.979610, 33.082687, 41.579884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788380, 33.174229, 41.692360>,  <31.469662, 33.326794, 41.879822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788380, 33.174229, 41.692360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099244, -0.682464, 0.724150,
		-0.596045, -0.623510, -0.505931,
		0.796795, -0.381415, -0.468659,
		32.027416, 33.059803, 41.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384281, 32.566452, 41.758873>,  <31.469662, 33.326794, 41.879822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384281, 32.566452, 41.758873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779814, 32.614670, 41.723820>,  <32.017132, 32.643600, 41.702789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779814, 32.614670, 41.723820>,  <31.384281, 32.566452, 41.758873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779814, 32.614670, 41.723820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145557, -0.654953, 0.741518,
		0.031991, -0.745993, -0.665185,
		0.988833, 0.120544, -0.087632,
		32.076462, 32.650833, 41.697529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609716, 31.900446, 41.773254>,  <31.384281, 32.566452, 41.758873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609716, 31.900446, 41.773254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923824, 32.121166, 41.885590>,  <32.112289, 32.253597, 41.952991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923824, 32.121166, 41.885590>,  <31.609716, 31.900446, 41.773254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923824, 32.121166, 41.885590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059118, -0.518337, 0.853131,
		0.616328, -0.653333, -0.439654,
		0.785268, 0.551800, 0.280841,
		32.159405, 32.286705, 41.969841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036663, 31.399147, 41.983356>,  <31.609716, 31.900446, 41.773254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036663, 31.399147, 41.983356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175941, 31.742092, 42.134983>,  <32.259510, 31.947859, 42.225960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175941, 31.742092, 42.134983>,  <32.036663, 31.399147, 41.983356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175941, 31.742092, 42.134983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013638, -0.399693, 0.916548,
		0.937322, -0.324309, -0.127479,
		0.348197, 0.857362, 0.379064,
		32.280399, 31.999300, 42.248703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402657, 31.152452, 42.505825>,  <32.036663, 31.399147, 41.983356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402657, 31.152452, 42.505825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357399, 31.542294, 42.583126>,  <32.330246, 31.776199, 42.629505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357399, 31.542294, 42.583126>,  <32.402657, 31.152452, 42.505825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357399, 31.542294, 42.583126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106921, -0.181430, 0.977574,
		0.987809, 0.131265, -0.083679,
		-0.113140, 0.974604, 0.193253,
		32.323456, 31.834675, 42.641102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917614, 31.308060, 43.056309>,  <32.402657, 31.152452, 42.505825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917614, 31.308060, 43.056309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615677, 31.568848, 43.085018>,  <32.434517, 31.725321, 43.102245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615677, 31.568848, 43.085018>,  <32.917614, 31.308060, 43.056309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615677, 31.568848, 43.085018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014208, -0.125655, 0.991972,
		0.655754, 0.747761, 0.104112,
		-0.754841, 0.651969, 0.071774,
		32.389225, 31.764439, 43.106552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054840, 31.673767, 43.629810>,  <32.917614, 31.308060, 43.056309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054840, 31.673767, 43.629810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661396, 31.718884, 43.573528>,  <32.425331, 31.745953, 43.539761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661396, 31.718884, 43.573528>,  <33.054840, 31.673767, 43.629810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661396, 31.718884, 43.573528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163029, -0.222732, 0.961151,
		0.077070, 0.968333, 0.237469,
		-0.983607, 0.112790, -0.140700,
		32.366314, 31.752720, 43.531319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917084, 32.120399, 44.169472>,  <33.054840, 31.673767, 43.629810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917084, 32.120399, 44.169472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588200, 31.929211, 44.045853>,  <32.390869, 31.814499, 43.971680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588200, 31.929211, 44.045853>,  <32.917084, 32.120399, 44.169472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588200, 31.929211, 44.045853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235935, -0.207921, 0.949265,
		-0.517975, 0.853415, 0.058186,
		-0.822214, -0.477967, -0.309048,
		32.341534, 31.785820, 43.953136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318336, 32.365322, 44.656982>,  <32.917084, 32.120399, 44.169472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318336, 32.365322, 44.656982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225281, 32.020672, 44.476551>,  <32.169449, 31.813881, 44.368290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225281, 32.020672, 44.476551>,  <32.318336, 32.365322, 44.656982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225281, 32.020672, 44.476551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194570, -0.413199, 0.889612,
		-0.952903, 0.294722, -0.071523,
		-0.232635, -0.861629, -0.451083,
		32.155491, 31.762182, 44.341225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680103, 32.234173, 44.936989>,  <32.318336, 32.365322, 44.656982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680103, 32.234173, 44.936989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798109, 31.873154, 44.811527>,  <31.868912, 31.656542, 44.736252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798109, 31.873154, 44.811527>,  <31.680103, 32.234173, 44.936989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798109, 31.873154, 44.811527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173168, -0.373331, 0.911393,
		-0.939670, -0.214558, -0.266430,
		0.295013, -0.902546, -0.313654,
		31.886614, 31.602390, 44.717430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134882, 31.776827, 45.183540>,  <31.680103, 32.234173, 44.936989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134882, 31.776827, 45.183540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471479, 31.568556, 45.125877>,  <31.673439, 31.443594, 45.091278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471479, 31.568556, 45.125877>,  <31.134882, 31.776827, 45.183540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471479, 31.568556, 45.125877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030600, -0.220466, 0.974914,
		-0.539397, -0.824797, -0.169589,
		0.841495, -0.520676, -0.144157,
		31.723928, 31.412354, 45.082630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043829, 31.170317, 45.627647>,  <31.134882, 31.776827, 45.183540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043829, 31.170317, 45.627647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438063, 31.167818, 45.560020>,  <31.674603, 31.166319, 45.519444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438063, 31.167818, 45.560020>,  <31.043829, 31.170317, 45.627647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438063, 31.167818, 45.560020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168514, -0.052240, 0.984314,
		-0.014981, -0.998615, -0.050434,
		0.985585, -0.006248, -0.169064,
		31.733738, 31.165945, 45.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284901, 30.709866, 46.091297>,  <31.043829, 31.170317, 45.627647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284901, 30.709866, 46.091297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616100, 30.918961, 46.010139>,  <31.814819, 31.044416, 45.961445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616100, 30.918961, 46.010139>,  <31.284901, 30.709866, 46.091297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616100, 30.918961, 46.010139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293149, -0.095099, 0.951325,
		0.477998, -0.847173, -0.231982,
		0.827999, 0.522736, -0.202891,
		31.864500, 31.075781, 45.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823170, 30.578590, 46.598854>,  <31.284901, 30.709866, 46.091297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823170, 30.578590, 46.598854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977324, 30.910662, 46.437714>,  <32.069817, 31.109903, 46.341030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977324, 30.910662, 46.437714>,  <31.823170, 30.578590, 46.598854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977324, 30.910662, 46.437714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387479, 0.250621, 0.887157,
		0.837460, -0.497991, -0.225091,
		0.385384, 0.830177, -0.402847,
		32.092937, 31.159716, 46.316860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436192, 30.583981, 46.873093>,  <31.823170, 30.578590, 46.598854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436192, 30.583981, 46.873093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457333, 30.962046, 46.744175>,  <32.470016, 31.188885, 46.666824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457333, 30.962046, 46.744175>,  <32.436192, 30.583981, 46.873093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457333, 30.962046, 46.744175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155640, 0.311006, 0.937577,
		0.986399, -0.099716, -0.130667,
		0.052853, 0.945162, -0.322296,
		32.473190, 31.245594, 46.647488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997368, 30.848261, 47.183563>,  <32.436192, 30.583981, 46.873093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997368, 30.848261, 47.183563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769485, 31.162106, 47.085735>,  <32.632755, 31.350412, 47.027039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769485, 31.162106, 47.085735>,  <32.997368, 30.848261, 47.183563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769485, 31.162106, 47.085735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193046, 0.417019, 0.888160,
		0.798851, 0.458781, -0.389046,
		-0.569710, 0.784612, -0.244571,
		32.598572, 31.397490, 47.012363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339386, 31.377073, 47.406284>,  <32.997368, 30.848261, 47.183563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339386, 31.377073, 47.406284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968964, 31.527300, 47.391476>,  <32.746712, 31.617435, 47.382591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968964, 31.527300, 47.391476>,  <33.339386, 31.377073, 47.406284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968964, 31.527300, 47.391476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154950, 0.467833, 0.870128,
		0.344110, 0.800051, -0.491433,
		-0.926055, 0.375568, -0.037018,
		32.691147, 31.639971, 47.380371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397919, 32.010567, 47.590302>,  <33.339386, 31.377073, 47.406284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397919, 32.010567, 47.590302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007950, 31.961740, 47.664726>,  <32.773968, 31.932444, 47.709381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007950, 31.961740, 47.664726>,  <33.397919, 32.010567, 47.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007950, 31.961740, 47.664726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060553, 0.659050, 0.749657,
		-0.214133, 0.742127, -0.635133,
		-0.974926, -0.122068, 0.186063,
		32.715473, 31.925119, 47.720547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084629, 32.590950, 47.698685>,  <33.397919, 32.010567, 47.590302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084629, 32.590950, 47.698685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881874, 32.308521, 47.896481>,  <32.760220, 32.139065, 48.015160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881874, 32.308521, 47.896481>,  <33.084629, 32.590950, 47.698685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881874, 32.308521, 47.896481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075664, 0.607879, 0.790417,
		-0.858684, 0.363238, -0.361551,
		-0.506889, -0.706075, 0.494492,
		32.729809, 32.096699, 48.044827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651299, 33.002674, 48.078114>,  <33.084629, 32.590950, 47.698685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651299, 33.002674, 48.078114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601475, 32.647560, 48.255344>,  <32.571579, 32.434490, 48.361683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601475, 32.647560, 48.255344>,  <32.651299, 33.002674, 48.078114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601475, 32.647560, 48.255344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219514, 0.460146, 0.860278,
		-0.967625, 0.009894, -0.252198,
		-0.124559, -0.887788, 0.443077,
		32.564106, 32.381226, 48.388268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045479, 33.129700, 48.613487>,  <32.651299, 33.002674, 48.078114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045479, 33.129700, 48.613487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227013, 32.794567, 48.734863>,  <32.335934, 32.593487, 48.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227013, 32.794567, 48.734863>,  <32.045479, 33.129700, 48.613487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227013, 32.794567, 48.734863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141362, 0.268519, 0.952846,
		-0.879800, -0.475331, 0.003426,
		0.453837, -0.837830, 0.303437,
		32.363163, 32.543217, 48.825893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679409, 32.954269, 49.278557>,  <32.045479, 33.129700, 48.613487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679409, 32.954269, 49.278557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015072, 32.741356, 49.323246>,  <32.216469, 32.613605, 49.350060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015072, 32.741356, 49.323246>,  <31.679409, 32.954269, 49.278557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015072, 32.741356, 49.323246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110769, 0.033848, 0.993270,
		-0.532487, -0.845887, -0.030558,
		0.839159, -0.532288, 0.111722,
		32.266819, 32.581669, 49.356762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534533, 32.440933, 49.732544>,  <31.679409, 32.954269, 49.278557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534533, 32.440933, 49.732544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932772, 32.478191, 49.736767>,  <32.171715, 32.500546, 49.739300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932772, 32.478191, 49.736767>,  <31.534533, 32.440933, 49.732544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932772, 32.478191, 49.736767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023495, 0.138873, 0.990031,
		0.090747, -0.985920, 0.140450,
		0.995597, 0.093142, 0.010562,
		32.231449, 32.506134, 49.739937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740845, 31.885897, 50.206081>,  <31.534533, 32.440933, 49.732544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740845, 31.885897, 50.206081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010620, 32.181229, 50.206486>,  <32.172485, 32.358429, 50.206730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010620, 32.181229, 50.206486>,  <31.740845, 31.885897, 50.206081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010620, 32.181229, 50.206486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054119, 0.048068, 0.997377,
		0.736345, -0.672724, 0.072377,
		0.674439, 0.738330, 0.001013,
		32.212952, 32.402729, 50.206791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193909, 31.736624, 50.876022>,  <31.740845, 31.885897, 50.206081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193909, 31.736624, 50.876022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294949, 32.102692, 50.750381>,  <32.355572, 32.322330, 50.674999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294949, 32.102692, 50.750381>,  <32.193909, 31.736624, 50.876022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294949, 32.102692, 50.750381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277396, 0.242503, 0.929648,
		0.926954, -0.321961, -0.192607,
		0.252603, 0.915169, -0.314099,
		32.370728, 32.377243, 50.656151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914070, 31.893559, 51.197853>,  <32.193909, 31.736624, 50.876022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914070, 31.893559, 51.197853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734383, 32.234440, 51.090557>,  <32.626572, 32.438969, 51.026180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734383, 32.234440, 51.090557>,  <32.914070, 31.893559, 51.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734383, 32.234440, 51.090557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260882, 0.412277, 0.872908,
		0.854485, 0.322145, -0.407526,
		-0.449217, 0.852203, -0.268243,
		32.599617, 32.490101, 51.010086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354923, 32.336765, 51.543274>,  <32.914070, 31.893559, 51.197853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354923, 32.336765, 51.543274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023926, 32.545036, 51.459225>,  <32.825329, 32.669998, 51.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023926, 32.545036, 51.459225>,  <33.354923, 32.336765, 51.543274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023926, 32.545036, 51.459225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066228, 0.462127, 0.884337,
		0.557558, 0.717866, -0.416890,
		-0.827492, 0.520679, -0.210120,
		32.775677, 32.701241, 51.396187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552067, 32.947369, 51.721081>,  <33.354923, 32.336765, 51.543274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552067, 32.947369, 51.721081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153030, 32.919655, 51.720009>,  <32.913609, 32.903027, 51.719364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153030, 32.919655, 51.720009>,  <33.552067, 32.947369, 51.721081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153030, 32.919655, 51.720009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020819, 0.262433, 0.964726,
		-0.066139, 0.962460, -0.263244,
		-0.997593, -0.069286, -0.002681,
		32.853752, 32.898869, 51.719204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324799, 33.649414, 51.928844>,  <33.552067, 32.947369, 51.721081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324799, 33.649414, 51.928844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032246, 33.387241, 52.004196>,  <32.856712, 33.229939, 52.049408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032246, 33.387241, 52.004196>,  <33.324799, 33.649414, 51.928844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032246, 33.387241, 52.004196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174962, 0.447326, 0.877091,
		-0.659143, 0.608528, -0.441841,
		-0.731381, -0.655434, 0.188383,
		32.812832, 33.190613, 52.060711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734924, 34.266769, 52.203411>,  <33.324799, 33.649414, 51.928844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734924, 34.266769, 52.203411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917927, 34.620235, 52.163757>,  <34.027729, 34.832314, 52.139965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917927, 34.620235, 52.163757>,  <33.734924, 34.266769, 52.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917927, 34.620235, 52.163757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590649, 0.218664, -0.776737,
		-0.664698, 0.413913, 0.621975,
		0.457504, 0.883664, -0.099132,
		34.055180, 34.885334, 52.134018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280560, 34.877129, 52.220230>,  <33.734924, 34.266769, 52.203411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280560, 34.877129, 52.220230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596169, 34.972935, 51.993927>,  <33.785534, 35.030418, 51.858147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596169, 34.972935, 51.993927>,  <33.280560, 34.877129, 52.220230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596169, 34.972935, 51.993927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599265, 0.097101, -0.794640,
		-0.135396, 0.966024, 0.220151,
		0.789018, 0.239520, -0.565757,
		33.832874, 35.044792, 51.824200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986885, 35.043591, 51.626198>,  <33.280560, 34.877129, 52.220230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986885, 35.043591, 51.626198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367268, 35.095661, 51.513962>,  <33.595497, 35.126904, 51.446621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367268, 35.095661, 51.513962>,  <32.986885, 35.043591, 51.626198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367268, 35.095661, 51.513962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295591, 0.115259, -0.948336,
		-0.091110, 0.984769, 0.148085,
		0.950960, 0.130175, -0.280587,
		33.652557, 35.134712, 51.429787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085075, 35.692398, 51.258560>,  <32.986885, 35.043591, 51.626198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085075, 35.692398, 51.258560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375286, 35.450302, 51.127533>,  <33.549412, 35.305046, 51.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375286, 35.450302, 51.127533>,  <33.085075, 35.692398, 51.258560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375286, 35.450302, 51.127533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177743, 0.295033, -0.938809,
		0.664849, 0.739350, 0.106476,
		0.725522, -0.605241, -0.327567,
		33.592941, 35.268730, 51.029263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460960, 36.106552, 50.715969>,  <33.085075, 35.692398, 51.258560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460960, 36.106552, 50.715969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551964, 35.723145, 50.647289>,  <33.606564, 35.493099, 50.606083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551964, 35.723145, 50.647289>,  <33.460960, 36.106552, 50.715969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551964, 35.723145, 50.647289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046460, 0.186804, -0.981298,
		0.972668, 0.215274, 0.087032,
		0.227506, -0.958520, -0.171696,
		33.620216, 35.435589, 50.595779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126709, 36.015701, 50.233189>,  <33.460960, 36.106552, 50.715969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126709, 36.015701, 50.233189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932869, 35.666637, 50.209110>,  <33.816563, 35.457199, 50.194664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932869, 35.666637, 50.209110>,  <34.126709, 36.015701, 50.233189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932869, 35.666637, 50.209110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080232, 0.112870, -0.990365,
		0.871047, -0.475104, -0.124712,
		-0.484602, -0.872661, -0.060196,
		33.787487, 35.404839, 50.191051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412785, 35.686459, 49.742260>,  <34.126709, 36.015701, 50.233189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412785, 35.686459, 49.742260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062313, 35.493778, 49.748936>,  <33.852032, 35.378170, 49.752941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062313, 35.493778, 49.748936>,  <34.412785, 35.686459, 49.742260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062313, 35.493778, 49.748936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015202, -0.006991, -0.999860,
		0.481754, -0.876305, -0.001197,
		-0.876174, -0.481705, 0.016689,
		33.799461, 35.349266, 49.753944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442963, 35.196613, 49.207310>,  <34.412785, 35.686459, 49.742260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442963, 35.196613, 49.207310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057354, 35.170895, 49.310478>,  <33.825989, 35.155464, 49.372379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057354, 35.170895, 49.310478>,  <34.442963, 35.196613, 49.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057354, 35.170895, 49.310478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245050, -0.160972, -0.956054,
		0.102990, -0.984862, 0.139425,
		-0.964025, -0.064298, 0.257919,
		33.768147, 35.151604, 49.387856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156311, 34.624458, 48.777905>,  <34.442963, 35.196613, 49.207310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156311, 34.624458, 48.777905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857826, 34.871120, 48.878227>,  <33.678734, 35.019115, 48.938419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857826, 34.871120, 48.878227>,  <34.156311, 34.624458, 48.777905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857826, 34.871120, 48.878227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085951, 0.284355, -0.954859,
		-0.660135, -0.734085, -0.159187,
		-0.746213, 0.616653, 0.250808,
		33.633961, 35.056118, 48.953468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534817, 34.319477, 48.451279>,  <34.156311, 34.624458, 48.777905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534817, 34.319477, 48.451279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433777, 34.695358, 48.543491>,  <33.373154, 34.920887, 48.598820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433777, 34.695358, 48.543491>,  <33.534817, 34.319477, 48.451279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433777, 34.695358, 48.543491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465662, 0.090781, -0.880294,
		-0.848147, -0.329709, 0.414655,
		-0.252598, 0.939708, 0.230529,
		33.357998, 34.977272, 48.612652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959656, 34.376534, 48.135048>,  <33.534817, 34.319477, 48.451279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959656, 34.376534, 48.135048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054958, 34.759941, 48.197624>,  <33.112141, 34.989986, 48.235168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054958, 34.759941, 48.197624>,  <32.959656, 34.376534, 48.135048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054958, 34.759941, 48.197624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277865, 0.221618, -0.934707,
		-0.930605, 0.179230, 0.319141,
		0.238255, 0.958521, 0.156437,
		33.126434, 35.047497, 48.244556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410557, 34.670414, 47.962807>,  <32.959656, 34.376534, 48.135048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410557, 34.670414, 47.962807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708305, 34.935585, 47.930706>,  <32.886955, 35.094688, 47.911446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708305, 34.935585, 47.930706>,  <32.410557, 34.670414, 47.962807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708305, 34.935585, 47.930706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308166, 0.234405, -0.922002,
		-0.592407, 0.711044, 0.378775,
		0.744371, 0.662926, -0.080256,
		32.931618, 35.134464, 47.906628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124271, 35.320683, 47.641956>,  <32.410557, 34.670414, 47.962807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124271, 35.320683, 47.641956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517712, 35.322048, 47.569817>,  <32.753777, 35.322868, 47.526535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517712, 35.322048, 47.569817>,  <32.124271, 35.320683, 47.641956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517712, 35.322048, 47.569817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179527, 0.115547, -0.976944,
		0.017501, 0.993296, 0.114265,
		0.983597, 0.003416, -0.180345,
		32.812790, 35.323074, 47.515713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254650, 35.920586, 47.202858>,  <32.124271, 35.320683, 47.641956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254650, 35.920586, 47.202858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549179, 35.656673, 47.142838>,  <32.725895, 35.498325, 47.106823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549179, 35.656673, 47.142838>,  <32.254650, 35.920586, 47.202858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549179, 35.656673, 47.142838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088948, 0.125458, -0.988104,
		0.670758, 0.740910, 0.033691,
		0.736323, -0.659782, -0.150054,
		32.770077, 35.458740, 47.097820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680775, 36.272850, 46.753288>,  <32.254650, 35.920586, 47.202858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680775, 36.272850, 46.753288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807335, 35.893715, 46.737793>,  <32.883270, 35.666233, 46.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807335, 35.893715, 46.737793>,  <32.680775, 36.272850, 46.753288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807335, 35.893715, 46.737793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239632, 0.119373, -0.963497,
		0.917861, 0.295566, 0.264901,
		0.316399, -0.947835, -0.038741,
		32.902256, 35.609364, 46.726170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338142, 36.271713, 46.416061>,  <32.680775, 36.272850, 46.753288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338142, 36.271713, 46.416061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217793, 35.893383, 46.367241>,  <33.145584, 35.666386, 46.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217793, 35.893383, 46.367241>,  <33.338142, 36.271713, 46.416061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217793, 35.893383, 46.367241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285503, 0.032782, -0.957817,
		0.909926, -0.323027, 0.260172,
		-0.300872, -0.945822, -0.122054,
		33.127529, 35.609638, 46.330624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861519, 35.938587, 46.083935>,  <33.338142, 36.271713, 46.416061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861519, 35.938587, 46.083935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543304, 35.712196, 45.997410>,  <33.352375, 35.576363, 45.945496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543304, 35.712196, 45.997410>,  <33.861519, 35.938587, 46.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543304, 35.712196, 45.997410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308972, -0.071843, -0.948354,
		0.521205, -0.821286, 0.232025,
		-0.795539, -0.565975, -0.216309,
		33.304642, 35.542404, 45.932518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096386, 35.326664, 45.755161>,  <33.861519, 35.938587, 46.083935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096386, 35.326664, 45.755161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709702, 35.342354, 45.654022>,  <33.477692, 35.351768, 45.593338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709702, 35.342354, 45.654022>,  <34.096386, 35.326664, 45.755161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709702, 35.342354, 45.654022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245720, -0.133291, -0.960133,
		-0.071355, -0.990301, 0.119218,
		-0.966711, 0.039216, -0.252848,
		33.419689, 35.354118, 45.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073830, 34.742207, 45.293701>,  <34.096386, 35.326664, 45.755161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073830, 34.742207, 45.293701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753052, 34.967361, 45.213657>,  <33.560585, 35.102455, 45.165630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753052, 34.967361, 45.213657>,  <34.073830, 34.742207, 45.293701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753052, 34.967361, 45.213657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018994, -0.310769, -0.950296,
		-0.597101, -0.765882, 0.238527,
		-0.801942, 0.562892, -0.200107,
		33.512470, 35.136230, 45.153625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597103, 34.302620, 44.910233>,  <34.073830, 34.742207, 45.293701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597103, 34.302620, 44.910233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501659, 34.677502, 44.808479>,  <33.444393, 34.902431, 44.747425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501659, 34.677502, 44.808479>,  <33.597103, 34.302620, 44.910233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501659, 34.677502, 44.808479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111298, -0.286620, -0.951557,
		-0.964716, -0.198740, 0.172700,
		-0.238612, 0.937204, -0.254388,
		33.430077, 34.958664, 44.732162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931316, 34.263283, 44.656754>,  <33.597103, 34.302620, 44.910233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931316, 34.263283, 44.656754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079887, 34.609177, 44.521534>,  <33.169029, 34.816711, 44.440403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079887, 34.609177, 44.521534>,  <32.931316, 34.263283, 44.656754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079887, 34.609177, 44.521534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243651, -0.260552, -0.934209,
		-0.895922, 0.429357, 0.113917,
		0.371428, 0.864735, -0.338047,
		33.191315, 34.868595, 44.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457691, 34.487709, 44.121258>,  <32.931316, 34.263283, 44.656754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457691, 34.487709, 44.121258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760441, 34.740448, 44.054424>,  <32.942089, 34.892090, 44.014324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760441, 34.740448, 44.054424>,  <32.457691, 34.487709, 44.121258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760441, 34.740448, 44.054424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210435, -0.006429, -0.977587,
		-0.618759, 0.775067, 0.128097,
		0.756871, 0.631847, -0.167080,
		32.987503, 34.930000, 44.004299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245602, 34.713512, 43.416565>,  <32.457691, 34.487709, 44.121258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245602, 34.713512, 43.416565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634499, 34.784599, 43.477448>,  <32.867836, 34.827251, 43.513977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634499, 34.784599, 43.477448>,  <32.245602, 34.713512, 43.416565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634499, 34.784599, 43.477448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190680, -0.224758, -0.955576,
		-0.135616, 0.958070, -0.252407,
		0.972239, 0.177721, 0.152204,
		32.926170, 34.837917, 43.523109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443394, 35.073788, 42.819077>,  <32.245602, 34.713512, 43.416565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443394, 35.073788, 42.819077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781509, 34.943611, 42.988583>,  <32.984379, 34.865505, 43.090286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781509, 34.943611, 42.988583>,  <32.443394, 35.073788, 42.819077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781509, 34.943611, 42.988583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348573, -0.265219, -0.898974,
		0.404956, 0.907604, -0.110745,
		0.845285, -0.325442, 0.423769,
		33.035095, 34.845978, 43.115715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954079, 35.326912, 42.404007>,  <32.443394, 35.073788, 42.819077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954079, 35.326912, 42.404007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131706, 35.025913, 42.598553>,  <33.238285, 34.845314, 42.715282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131706, 35.025913, 42.598553>,  <32.954079, 35.326912, 42.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131706, 35.025913, 42.598553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472773, -0.264320, -0.840607,
		0.761108, 0.603233, 0.238380,
		0.444074, -0.752492, 0.486368,
		33.264927, 34.800167, 42.744465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626987, 35.447742, 42.394562>,  <32.954079, 35.326912, 42.404007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626987, 35.447742, 42.394562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627327, 35.053894, 42.464432>,  <33.627529, 34.817585, 42.506355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627327, 35.053894, 42.464432>,  <33.626987, 35.447742, 42.394562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627327, 35.053894, 42.464432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691438, -0.125618, -0.711430,
		0.722435, 0.121381, 0.680701,
		0.000846, -0.984625, 0.174678,
		33.627579, 34.758507, 42.516834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311176, 35.191235, 42.458511>,  <33.626987, 35.447742, 42.394562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311176, 35.191235, 42.458511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091385, 34.880566, 42.335323>,  <33.959511, 34.694164, 42.261410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091385, 34.880566, 42.335323>,  <34.311176, 35.191235, 42.458511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091385, 34.880566, 42.335323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587269, -0.096839, -0.803578,
		0.594297, -0.622411, 0.509329,
		-0.549478, -0.776677, -0.307971,
		33.926540, 34.647564, 42.242931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770588, 34.614933, 42.357525>,  <34.311176, 35.191235, 42.458511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770588, 34.614933, 42.357525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458229, 34.509483, 42.131001>,  <34.270813, 34.446213, 41.995087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458229, 34.509483, 42.131001>,  <34.770588, 34.614933, 42.357525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458229, 34.509483, 42.131001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619629, -0.212025, -0.755715,
		0.079152, -0.941035, 0.328918,
		-0.780894, -0.263624, -0.566311,
		34.223961, 34.430397, 41.961109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942463, 33.963306, 42.027897>,  <34.770588, 34.614933, 42.357525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942463, 33.963306, 42.027897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670322, 34.136559, 41.791416>,  <34.507038, 34.240509, 41.649529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670322, 34.136559, 41.791416>,  <34.942463, 33.963306, 42.027897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670322, 34.136559, 41.791416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563620, -0.206415, -0.799829,
		-0.468460, -0.877380, -0.103684,
		-0.680351, 0.433126, -0.591206,
		34.466217, 34.266495, 41.614056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989658, 33.505589, 41.480156>,  <34.942463, 33.963306, 42.027897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989658, 33.505589, 41.480156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805367, 33.833870, 41.344994>,  <34.694790, 34.030838, 41.263897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805367, 33.833870, 41.344994>,  <34.989658, 33.505589, 41.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805367, 33.833870, 41.344994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587098, -0.003707, -0.809507,
		-0.665615, -0.571347, -0.480123,
		-0.460730, 0.820700, -0.337905,
		34.667149, 34.080078, 41.243622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835400, 33.377533, 40.740604>,  <34.989658, 33.505589, 41.480156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835400, 33.377533, 40.740604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847088, 33.772575, 40.802277>,  <34.854099, 34.009602, 40.839279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847088, 33.772575, 40.802277>,  <34.835400, 33.377533, 40.740604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847088, 33.772575, 40.802277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589938, 0.107480, -0.800263,
		-0.806919, 0.114340, -0.579489,
		0.029218, 0.987610, 0.154181,
		34.855854, 34.068859, 40.848530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782001, 33.707382, 39.979729>,  <34.835400, 33.377533, 40.740604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782001, 33.707382, 39.979729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939697, 33.993832, 40.210117>,  <35.034313, 34.165703, 40.348351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939697, 33.993832, 40.210117>,  <34.782001, 33.707382, 39.979729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939697, 33.993832, 40.210117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765863, 0.090408, -0.636616,
		-0.507969, 0.692093, -0.512811,
		0.394235, 0.716124, 0.575973,
		35.057968, 34.208668, 40.382908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015049, 34.299885, 39.516716>,  <34.782001, 33.707382, 39.979729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015049, 34.299885, 39.516716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208107, 34.375935, 39.858688>,  <35.323940, 34.421566, 40.063873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208107, 34.375935, 39.858688>,  <35.015049, 34.299885, 39.516716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208107, 34.375935, 39.858688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833891, 0.198646, -0.514942,
		-0.267734, 0.961452, -0.062672,
		0.482643, 0.190129, 0.854931,
		35.352901, 34.432972, 40.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329815, 34.993530, 39.463272>,  <35.015049, 34.299885, 39.516716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329815, 34.993530, 39.463272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547276, 34.795341, 39.734257>,  <35.677750, 34.676430, 39.896847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547276, 34.795341, 39.734257>,  <35.329815, 34.993530, 39.463272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547276, 34.795341, 39.734257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839128, 0.337800, -0.426327,
		-0.017613, 0.800249, 0.599409,
		0.543648, -0.495472, 0.677462,
		35.710369, 34.646702, 39.937496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980167, 35.210926, 39.337261>,  <35.329815, 34.993530, 39.463272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980167, 35.210926, 39.337261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077370, 34.936184, 39.611248>,  <36.135693, 34.771339, 39.775639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077370, 34.936184, 39.611248>,  <35.980167, 35.210926, 39.337261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077370, 34.936184, 39.611248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961760, 0.078621, -0.262367,
		0.126357, 0.722526, 0.679698,
		0.243006, -0.686858, 0.684963,
		36.150272, 34.730125, 39.816738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575401, 35.481876, 39.820202>,  <35.980167, 35.210926, 39.337261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575401, 35.481876, 39.820202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584572, 35.082897, 39.793133>,  <36.590073, 34.843510, 39.776894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584572, 35.082897, 39.793133>,  <36.575401, 35.481876, 39.820202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584572, 35.082897, 39.793133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983213, 0.034748, -0.179120,
		0.181014, -0.062429, 0.981497,
		0.022923, -0.997444, -0.067671,
		36.591450, 34.783665, 39.772831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045467, 35.255695, 40.350414>,  <36.575401, 35.481876, 39.820202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045467, 35.255695, 40.350414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009155, 34.991879, 40.051949>,  <36.987370, 34.833588, 39.872868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009155, 34.991879, 40.051949>,  <37.045467, 35.255695, 40.350414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009155, 34.991879, 40.051949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988899, 0.028807, -0.145771,
		0.117637, -0.751114, 0.649607,
		-0.090778, -0.659544, -0.746165,
		36.981922, 34.794014, 39.828098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620361, 34.877918, 40.445381>,  <37.045467, 35.255695, 40.350414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620361, 34.877918, 40.445381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519608, 34.787914, 40.068886>,  <37.459156, 34.733913, 39.842987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519608, 34.787914, 40.068886>,  <37.620361, 34.877918, 40.445381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519608, 34.787914, 40.068886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953921, 0.106155, -0.280652,
		0.163066, -0.968557, 0.187902,
		-0.251881, -0.225009, -0.941237,
		37.444042, 34.720413, 39.786514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072727, 34.286812, 40.227493>,  <37.620361, 34.877918, 40.445381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072727, 34.286812, 40.227493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960629, 34.500328, 39.908363>,  <37.893368, 34.628437, 39.716885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960629, 34.500328, 39.908363>,  <38.072727, 34.286812, 40.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960629, 34.500328, 39.908363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942662, -0.003891, -0.333728,
		-0.181246, -0.845605, -0.502097,
		-0.280248, 0.533795, -0.797825,
		37.876553, 34.660465, 39.669018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527317, 34.056305, 39.751610>,  <38.072727, 34.286812, 40.227493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527317, 34.056305, 39.751610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371326, 34.385738, 39.586868>,  <38.277733, 34.583397, 39.488022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371326, 34.385738, 39.586868>,  <38.527317, 34.056305, 39.751610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371326, 34.385738, 39.586868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876823, 0.195528, -0.439261,
		-0.281240, -0.532425, -0.798391,
		-0.389981, 0.823585, -0.411853,
		38.254333, 34.632812, 39.463314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710262, 34.130600, 39.028721>,  <38.527317, 34.056305, 39.751610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710262, 34.130600, 39.028721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636124, 34.482273, 39.204300>,  <38.591640, 34.693279, 39.309647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636124, 34.482273, 39.204300>,  <38.710262, 34.130600, 39.028721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636124, 34.482273, 39.204300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745911, 0.416678, -0.519612,
		-0.639736, 0.231106, -0.733027,
		-0.185351, 0.879187, 0.438948,
		38.580517, 34.746029, 39.335983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788120, 34.625702, 38.455692>,  <38.710262, 34.130600, 39.028721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788120, 34.625702, 38.455692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843571, 34.804420, 38.809223>,  <38.876842, 34.911652, 39.021343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843571, 34.804420, 38.809223>,  <38.788120, 34.625702, 38.455692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843571, 34.804420, 38.809223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742523, 0.543648, -0.391289,
		-0.655318, 0.710507, -0.256393,
		0.138626, 0.446796, 0.883830,
		38.885159, 34.938457, 39.074371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742519, 35.310360, 38.342075>,  <38.788120, 34.625702, 38.455692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742519, 35.310360, 38.342075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980110, 35.220749, 38.651138>,  <39.122665, 35.166981, 38.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980110, 35.220749, 38.651138>,  <38.742519, 35.310360, 38.342075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980110, 35.220749, 38.651138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788891, 0.350372, -0.504867,
		-0.157613, 0.909423, 0.384848,
		0.593977, -0.224029, 0.772659,
		39.158302, 35.153542, 38.882935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307014, 35.812637, 38.397934>,  <38.742519, 35.310360, 38.342075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307014, 35.812637, 38.397934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437290, 35.497627, 38.607212>,  <39.515457, 35.308620, 38.732780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437290, 35.497627, 38.607212>,  <39.307014, 35.812637, 38.397934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437290, 35.497627, 38.607212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939310, 0.206420, -0.274020,
		0.107799, 0.580689, 0.806957,
		0.325693, -0.787522, 0.523196,
		39.535000, 35.261372, 38.764172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843102, 36.060051, 37.949039>,  <39.307014, 35.812637, 38.397934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843102, 36.060051, 37.949039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128822, 36.334179, 37.892319>,  <40.300255, 36.498657, 37.858284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128822, 36.334179, 37.892319>,  <39.843102, 36.060051, 37.949039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128822, 36.334179, 37.892319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573768, -0.689491, -0.442032,
		-0.400708, 0.234381, -0.885720,
		0.714299, 0.685324, -0.141804,
		40.343113, 36.539776, 37.849777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470745, 35.731312, 37.749378>,  <39.843102, 36.060051, 37.949039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470745, 35.731312, 37.749378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688557, 36.055279, 37.662182>,  <40.819244, 36.249660, 37.609863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688557, 36.055279, 37.662182>,  <40.470745, 35.731312, 37.749378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688557, 36.055279, 37.662182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741608, -0.586329, -0.325937,
		-0.391795, 0.015821, -0.919916,
		0.544530, 0.809919, -0.217988,
		40.851917, 36.298256, 37.596786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560703, 35.627434, 37.068703>,  <40.470745, 35.731312, 37.749378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560703, 35.627434, 37.068703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856106, 35.858196, 37.208294>,  <41.033348, 35.996655, 37.292049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856106, 35.858196, 37.208294>,  <40.560703, 35.627434, 37.068703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856106, 35.858196, 37.208294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659589, -0.510818, -0.551368,
		-0.139824, 0.637371, -0.757765,
		0.738506, 0.576908, 0.348979,
		41.077656, 36.031269, 37.312988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010910, 35.485451, 36.403580>,  <40.560703, 35.627434, 37.068703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010910, 35.485451, 36.403580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380398, 35.541348, 36.260910>,  <41.602089, 35.574886, 36.175308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380398, 35.541348, 36.260910>,  <41.010910, 35.485451, 36.403580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380398, 35.541348, 36.260910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280446, 0.387576, 0.878143,
		0.260949, -0.911185, 0.318822,
		0.923718, 0.139738, -0.356676,
		41.657513, 35.583267, 36.153908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369518, 35.132904, 36.774757>,  <41.010910, 35.485451, 36.403580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369518, 35.132904, 36.774757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593395, 35.430267, 36.628288>,  <41.727722, 35.608685, 36.540405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593395, 35.430267, 36.628288>,  <41.369518, 35.132904, 36.774757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593395, 35.430267, 36.628288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401234, 0.143519, 0.904662,
		0.725087, -0.653257, -0.217954,
		0.559696, 0.743409, -0.366173,
		41.761303, 35.653290, 36.518436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989830, 34.966648, 37.176533>,  <41.369518, 35.132904, 36.774757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989830, 34.966648, 37.176533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993286, 35.345421, 37.048012>,  <41.995361, 35.572685, 36.970898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993286, 35.345421, 37.048012>,  <41.989830, 34.966648, 37.176533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993286, 35.345421, 37.048012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520018, 0.270193, 0.810294,
		0.854112, -0.174089, -0.490088,
		0.008645, 0.946936, -0.321305,
		41.995880, 35.629501, 36.951622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701881, 35.099682, 37.199642>,  <41.989830, 34.966648, 37.176533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701881, 35.099682, 37.199642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499668, 35.444679, 37.208920>,  <42.378338, 35.651676, 37.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499668, 35.444679, 37.208920>,  <42.701881, 35.099682, 37.199642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499668, 35.444679, 37.208920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447888, 0.239353, 0.861456,
		0.737448, 0.445888, -0.507302,
		-0.505537, 0.862493, 0.023198,
		42.348007, 35.703426, 37.215878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165531, 35.607300, 37.220894>,  <42.701881, 35.099682, 37.199642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165531, 35.607300, 37.220894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840034, 35.804192, 37.344532>,  <42.644737, 35.922325, 37.418713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840034, 35.804192, 37.344532>,  <43.165531, 35.607300, 37.220894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840034, 35.804192, 37.344532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488649, 0.291420, 0.822373,
		0.314721, 0.820234, -0.477668,
		-0.813740, 0.492230, 0.309091,
		42.595913, 35.951862, 37.437260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444065, 36.185997, 37.614647>,  <43.165531, 35.607300, 37.220894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444065, 36.185997, 37.614647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071026, 36.143459, 37.752609>,  <42.847202, 36.117935, 37.835388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071026, 36.143459, 37.752609>,  <43.444065, 36.185997, 37.614647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071026, 36.143459, 37.752609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286559, 0.362820, 0.886705,
		-0.219438, 0.925771, -0.307888,
		-0.932593, -0.106349, 0.344905,
		42.791248, 36.111553, 37.856079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276810, 36.919704, 37.946655>,  <43.444065, 36.185997, 37.614647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276810, 36.919704, 37.946655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062279, 36.626099, 38.113304>,  <42.933559, 36.449936, 38.213291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062279, 36.626099, 38.113304>,  <43.276810, 36.919704, 37.946655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062279, 36.626099, 38.113304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319079, 0.280650, 0.905220,
		-0.781370, 0.618431, 0.083688,
		-0.536329, -0.734015, 0.416620,
		42.901379, 36.405895, 38.238289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066826, 37.168613, 38.677971>,  <43.276810, 36.919704, 37.946655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066826, 37.168613, 38.677971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994133, 36.775726, 38.696838>,  <42.950520, 36.539993, 38.708160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994133, 36.775726, 38.696838>,  <43.066826, 37.168613, 38.677971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994133, 36.775726, 38.696838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320931, -0.013902, 0.947001,
		-0.929504, 0.187235, 0.317751,
		-0.181729, -0.982217, 0.047168,
		42.939613, 36.481060, 38.710987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861595, 37.103626, 39.340279>,  <43.066826, 37.168613, 38.677971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861595, 37.103626, 39.340279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970047, 36.731792, 39.240383>,  <43.035118, 36.508694, 39.180447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970047, 36.731792, 39.240383>,  <42.861595, 37.103626, 39.340279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970047, 36.731792, 39.240383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301632, -0.164338, 0.939155,
		-0.914061, -0.329960, 0.235835,
		0.271127, -0.929580, -0.249742,
		43.051384, 36.452919, 39.165459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463112, 36.634583, 39.756092>,  <42.861595, 37.103626, 39.340279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463112, 36.634583, 39.756092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788940, 36.443382, 39.624641>,  <42.984436, 36.328663, 39.545769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788940, 36.443382, 39.624641>,  <42.463112, 36.634583, 39.756092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788940, 36.443382, 39.624641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207234, -0.289344, 0.934523,
		-0.541789, -0.829335, -0.136632,
		0.814567, -0.477999, -0.328630,
		43.033310, 36.299984, 39.526051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416759, 35.998917, 39.990612>,  <42.463112, 36.634583, 39.756092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416759, 35.998917, 39.990612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810181, 36.018532, 39.921089>,  <43.046234, 36.030300, 39.879375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810181, 36.018532, 39.921089>,  <42.416759, 35.998917, 39.990612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810181, 36.018532, 39.921089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170471, -0.569805, 0.803904,
		-0.059614, -0.820315, -0.568796,
		0.983557, 0.049040, -0.173809,
		43.105247, 36.033245, 39.868946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691463, 35.467899, 40.404167>,  <42.416759, 35.998917, 39.990612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691463, 35.467899, 40.404167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030960, 35.640179, 40.281445>,  <43.234657, 35.743546, 40.207809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030960, 35.640179, 40.281445>,  <42.691463, 35.467899, 40.404167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030960, 35.640179, 40.281445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477320, -0.374260, 0.795044,
		0.227598, -0.821235, -0.523232,
		0.848743, 0.430700, -0.306811,
		43.285583, 35.769390, 40.189400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114609, 34.918674, 40.483192>,  <42.691463, 35.467899, 40.404167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114609, 34.918674, 40.483192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315212, 35.264549, 40.494537>,  <43.435574, 35.472073, 40.501347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315212, 35.264549, 40.494537>,  <43.114609, 34.918674, 40.483192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315212, 35.264549, 40.494537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503874, -0.318579, 0.802881,
		0.703279, -0.388359, -0.595464,
		0.501508, 0.864688, 0.028366,
		43.465664, 35.523956, 40.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853642, 34.838326, 40.449192>,  <43.114609, 34.918674, 40.483192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853642, 34.838326, 40.449192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834049, 35.202511, 40.613464>,  <43.822292, 35.421021, 40.712029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834049, 35.202511, 40.613464>,  <43.853642, 34.838326, 40.449192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834049, 35.202511, 40.613464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586568, -0.306580, 0.749631,
		0.808417, 0.277612, -0.519031,
		-0.048982, 0.910462, 0.410683,
		43.819355, 35.475651, 40.736668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494736, 35.041599, 40.696724>,  <43.853642, 34.838326, 40.449192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494736, 35.041599, 40.696724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262558, 35.277370, 40.921459>,  <44.123253, 35.418835, 41.056301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262558, 35.277370, 40.921459>,  <44.494736, 35.041599, 40.696724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262558, 35.277370, 40.921459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570904, -0.197424, 0.796927,
		0.580652, 0.783325, -0.221914,
		-0.580441, 0.589429, 0.561838,
		44.088425, 35.454201, 41.090012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944706, 35.265118, 41.119690>,  <44.494736, 35.041599, 40.696724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944706, 35.265118, 41.119690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625599, 35.385490, 41.328693>,  <44.434135, 35.457714, 41.454094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625599, 35.385490, 41.328693>,  <44.944706, 35.265118, 41.119690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625599, 35.385490, 41.328693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502643, -0.146740, 0.851949,
		0.333053, 0.942288, -0.034198,
		-0.797763, 0.300933, 0.522507,
		44.386269, 35.475769, 41.485447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238174, 35.693909, 41.586544>,  <44.944706, 35.265118, 41.119690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238174, 35.693909, 41.586544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883759, 35.581280, 41.733864>,  <44.671108, 35.513702, 41.822258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883759, 35.581280, 41.733864>,  <45.238174, 35.693909, 41.586544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883759, 35.581280, 41.733864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415553, -0.130149, 0.900209,
		-0.205538, 0.950673, 0.232325,
		-0.886042, -0.281571, 0.368304,
		44.617947, 35.496807, 41.844357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228458, 36.054958, 42.183411>,  <45.238174, 35.693909, 41.586544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228458, 36.054958, 42.183411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968498, 35.752975, 42.218433>,  <44.812523, 35.571785, 42.239449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968498, 35.752975, 42.218433>,  <45.228458, 36.054958, 42.183411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968498, 35.752975, 42.218433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450260, -0.289649, 0.844612,
		-0.612282, 0.588342, 0.528171,
		-0.649905, -0.754955, 0.087560,
		44.773525, 35.526489, 42.244701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047050, 36.083782, 42.894684>,  <45.228458, 36.054958, 42.183411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047050, 36.083782, 42.894684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969597, 35.726738, 42.731834>,  <44.923126, 35.512512, 42.634125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969597, 35.726738, 42.731834>,  <45.047050, 36.083782, 42.894684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969597, 35.726738, 42.731834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533107, -0.444099, 0.720120,
		-0.823591, -0.077604, 0.561849,
		-0.193632, -0.892610, -0.407128,
		44.911507, 35.458954, 42.609695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733906, 35.717091, 43.400677>,  <45.047050, 36.083782, 42.894684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733906, 35.717091, 43.400677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913445, 35.459679, 43.152676>,  <45.021168, 35.305229, 43.003876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913445, 35.459679, 43.152676>,  <44.733906, 35.717091, 43.400677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913445, 35.459679, 43.152676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302560, -0.543400, 0.783054,
		-0.840831, -0.539058, -0.049194,
		0.448843, -0.643532, -0.620005,
		45.048100, 35.266621, 42.966675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624249, 35.086510, 43.591892>,  <44.733906, 35.717091, 43.400677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624249, 35.086510, 43.591892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974445, 35.049633, 43.402149>,  <45.184563, 35.027508, 43.288303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974445, 35.049633, 43.402149>,  <44.624249, 35.086510, 43.591892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974445, 35.049633, 43.402149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384761, -0.460912, 0.799699,
		-0.292365, -0.882644, -0.368052,
		0.875489, -0.092192, -0.474361,
		45.237091, 35.021976, 43.259842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709805, 34.378704, 43.474617>,  <44.624249, 35.086510, 43.591892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709805, 34.378704, 43.474617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060867, 34.566463, 43.513371>,  <45.271503, 34.679119, 43.536621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060867, 34.566463, 43.513371>,  <44.709805, 34.378704, 43.474617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060867, 34.566463, 43.513371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110230, -0.394405, 0.912302,
		0.466442, -0.790008, -0.397894,
		0.877657, 0.469396, 0.096885,
		45.324165, 34.707283, 43.542435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246365, 33.977497, 43.900826>,  <44.709805, 34.378704, 43.474617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246365, 33.977497, 43.900826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350864, 34.360737, 43.947807>,  <45.413563, 34.590679, 43.975998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350864, 34.360737, 43.947807>,  <45.246365, 33.977497, 43.900826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350864, 34.360737, 43.947807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299353, -0.196099, 0.933773,
		0.917680, -0.208785, -0.338041,
		0.261248, 0.958099, 0.117456,
		45.429237, 34.648167, 43.983044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939892, 34.067352, 44.243839>,  <45.246365, 33.977497, 43.900826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939892, 34.067352, 44.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712986, 34.377327, 44.355320>,  <45.576843, 34.563313, 44.422207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712986, 34.377327, 44.355320>,  <45.939892, 34.067352, 44.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712986, 34.377327, 44.355320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302886, -0.118380, 0.945646,
		0.765812, 0.620850, -0.167565,
		-0.567268, 0.774940, 0.278703,
		45.542805, 34.609810, 44.438931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425529, 33.645390, 43.916271>,  <45.939892, 34.067352, 44.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425529, 33.645390, 43.916271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553200, 33.357113, 44.162437>,  <46.629803, 33.184147, 44.310135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553200, 33.357113, 44.162437>,  <46.425529, 33.645390, 43.916271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553200, 33.357113, 44.162437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839378, 0.086491, 0.536622,
		-0.439965, -0.687843, -0.577324,
		0.319179, -0.720688, 0.615414,
		46.648952, 33.140907, 44.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823151, 33.223354, 44.030987>,  <46.425529, 33.645390, 43.916271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823151, 33.223354, 44.030987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080677, 33.200871, 44.336231>,  <46.235191, 33.187378, 44.519379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080677, 33.200871, 44.336231>,  <45.823151, 33.223354, 44.030987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080677, 33.200871, 44.336231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764173, 0.004001, 0.644999,
		-0.039312, -0.998411, -0.040382,
		0.643813, -0.056215, 0.763115,
		46.273823, 33.184006, 44.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698921, 32.515705, 44.348068>,  <45.823151, 33.223354, 44.030987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698921, 32.515705, 44.348068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806232, 32.826317, 44.576111>,  <45.870621, 33.012684, 44.712936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806232, 32.826317, 44.576111>,  <45.698921, 32.515705, 44.348068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806232, 32.826317, 44.576111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788795, -0.162656, 0.592744,
		0.553017, -0.608719, 0.568888,
		0.268282, 0.776533, 0.570106,
		45.886719, 33.059277, 44.747143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997868, 32.831314, 44.298916>,  <45.698921, 32.515705, 44.348068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997868, 32.831314, 44.298916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672283, 32.970116, 44.112560>,  <44.476933, 33.053398, 44.000748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672283, 32.970116, 44.112560>,  <44.997868, 32.831314, 44.298916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672283, 32.970116, 44.112560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498264, 0.004726, -0.867012,
		-0.298654, -0.937852, -0.176746,
		-0.813965, 0.347003, -0.465887,
		44.428093, 33.074215, 43.972794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848133, 32.221519, 43.673843>,  <44.997868, 32.831314, 44.298916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848133, 32.221519, 43.673843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122433, 32.029861, 43.454689>,  <45.287010, 31.914867, 43.323196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122433, 32.029861, 43.454689>,  <44.848133, 32.221519, 43.673843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122433, 32.029861, 43.454689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234027, 0.567627, -0.789324,
		0.689192, 0.669494, 0.277115,
		0.685745, -0.479143, -0.547883,
		45.328156, 31.886118, 43.290325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246994, 32.702606, 43.185802>,  <44.848133, 32.221519, 43.673843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246994, 32.702606, 43.185802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279793, 32.333115, 43.036133>,  <45.299473, 32.111420, 42.946331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279793, 32.333115, 43.036133>,  <45.246994, 32.702606, 43.185802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279793, 32.333115, 43.036133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151332, 0.359542, -0.920776,
		0.985076, 0.132129, -0.110307,
		0.082002, -0.923727, -0.374172,
		45.304394, 32.055996, 42.923882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818485, 32.684711, 42.631226>,  <45.246994, 32.702606, 43.185802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818485, 32.684711, 42.631226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544769, 32.399857, 42.568470>,  <45.380539, 32.228943, 42.530819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544769, 32.399857, 42.568470>,  <45.818485, 32.684711, 42.631226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544769, 32.399857, 42.568470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016320, 0.230046, -0.973043,
		0.729032, -0.663279, -0.169039,
		-0.684285, -0.712138, -0.156886,
		45.339485, 32.186214, 42.521404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949959, 32.147270, 42.022465>,  <45.818485, 32.684711, 42.631226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949959, 32.147270, 42.022465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566914, 32.239136, 42.092003>,  <45.337086, 32.294254, 42.133728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566914, 32.239136, 42.092003>,  <45.949959, 32.147270, 42.022465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566914, 32.239136, 42.092003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137266, 0.166751, -0.976398,
		-0.253235, -0.958878, -0.128158,
		-0.957617, 0.229667, 0.173848,
		45.279629, 32.308037, 42.144157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529366, 31.733215, 41.512424>,  <45.949959, 32.147270, 42.022465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529366, 31.733215, 41.512424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296413, 32.028191, 41.649258>,  <45.156643, 32.205177, 41.731358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296413, 32.028191, 41.649258>,  <45.529366, 31.733215, 41.512424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296413, 32.028191, 41.649258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220582, 0.261670, -0.939613,
		-0.782421, -0.622665, 0.010275,
		-0.582375, 0.737439, 0.342085,
		45.121700, 32.249424, 41.751884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004097, 31.681177, 41.097813>,  <45.529366, 31.733215, 41.512424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004097, 31.681177, 41.097813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926544, 32.048706, 41.235317>,  <44.880013, 32.269222, 41.317822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926544, 32.048706, 41.235317>,  <45.004097, 31.681177, 41.097813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926544, 32.048706, 41.235317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391865, 0.248709, -0.885768,
		-0.899363, -0.306440, 0.311836,
		-0.193879, 0.918825, 0.343762,
		44.868382, 32.324352, 41.338448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277023, 31.778378, 41.000206>,  <45.004097, 31.681177, 41.097813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277023, 31.778378, 41.000206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427063, 32.148331, 41.025181>,  <44.517086, 32.370300, 41.040165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427063, 32.148331, 41.025181>,  <44.277023, 31.778378, 41.000206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427063, 32.148331, 41.025181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347447, 0.202713, -0.915526,
		-0.859409, 0.321717, 0.397384,
		0.375095, 0.924881, 0.062434,
		44.539593, 32.425797, 41.043911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714504, 32.249004, 40.758373>,  <44.277023, 31.778378, 41.000206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714504, 32.249004, 40.758373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070847, 32.426041, 40.717400>,  <44.284653, 32.532265, 40.692814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070847, 32.426041, 40.717400>,  <43.714504, 32.249004, 40.758373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070847, 32.426041, 40.717400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177913, 0.132419, -0.975096,
		-0.418008, 0.886891, 0.196709,
		0.890851, 0.442595, -0.102438,
		44.338100, 32.558819, 40.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558144, 32.895027, 40.413151>,  <43.714504, 32.249004, 40.758373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558144, 32.895027, 40.413151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945751, 32.817852, 40.351463>,  <44.178314, 32.771545, 40.314453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945751, 32.817852, 40.351463>,  <43.558144, 32.895027, 40.413151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945751, 32.817852, 40.351463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088135, 0.313169, -0.945599,
		0.230737, 0.929892, 0.286461,
		0.969016, -0.192938, -0.154216,
		44.236458, 32.759972, 40.305199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839165, 33.489147, 40.181492>,  <43.558144, 32.895027, 40.413151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839165, 33.489147, 40.181492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081921, 33.195503, 40.059658>,  <44.227573, 33.019318, 39.986557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081921, 33.195503, 40.059658>,  <43.839165, 33.489147, 40.181492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081921, 33.195503, 40.059658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139628, 0.278795, -0.950146,
		0.782427, 0.619161, 0.066695,
		0.606888, -0.734107, -0.304589,
		44.263988, 32.975269, 39.968281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338871, 33.740334, 39.901394>,  <43.839165, 33.489147, 40.181492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338871, 33.740334, 39.901394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368736, 33.372990, 39.745941>,  <44.386654, 33.152584, 39.652672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368736, 33.372990, 39.745941>,  <44.338871, 33.740334, 39.901394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368736, 33.372990, 39.745941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078605, 0.393925, -0.915775,
		0.994106, 0.037826, 0.101599,
		0.074663, -0.918364, -0.388630,
		44.391136, 33.097481, 39.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826077, 33.871277, 39.356239>,  <44.338871, 33.740334, 39.901394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826077, 33.871277, 39.356239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662376, 33.521957, 39.250511>,  <44.564156, 33.312366, 39.187077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662376, 33.521957, 39.250511>,  <44.826077, 33.871277, 39.356239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662376, 33.521957, 39.250511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070101, 0.258737, -0.963401,
		0.909727, -0.412797, -0.044668,
		-0.409246, -0.873301, -0.264317,
		44.539604, 33.259968, 39.171215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258095, 33.698204, 38.819817>,  <44.826077, 33.871277, 39.356239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258095, 33.698204, 38.819817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912525, 33.498871, 38.790703>,  <44.705185, 33.379269, 38.773235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912525, 33.498871, 38.790703>,  <45.258095, 33.698204, 38.819817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912525, 33.498871, 38.790703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030173, 0.195469, -0.980245,
		0.502720, -0.844660, -0.183907,
		-0.863922, -0.498338, -0.072780,
		44.653347, 33.349369, 38.768867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333248, 33.513519, 38.141701>,  <45.258095, 33.698204, 38.819817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333248, 33.513519, 38.141701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947620, 33.425449, 38.201160>,  <44.716244, 33.372608, 38.236835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947620, 33.425449, 38.201160>,  <45.333248, 33.513519, 38.141701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947620, 33.425449, 38.201160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216912, 0.329374, -0.918946,
		0.153372, -0.918169, -0.365298,
		-0.964067, -0.220179, 0.148645,
		44.658401, 33.359394, 38.245754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061699, 33.103565, 37.447529>,  <45.333248, 33.513519, 38.141701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061699, 33.103565, 37.447529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754002, 33.252361, 37.655334>,  <44.569386, 33.341637, 37.780018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754002, 33.252361, 37.655334>,  <45.061699, 33.103565, 37.447529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754002, 33.252361, 37.655334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433350, 0.293763, -0.852004,
		-0.469549, -0.880527, -0.064774,
		-0.769241, 0.371987, 0.519513,
		44.523228, 33.363956, 37.811188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403290, 32.814415, 37.240623>,  <45.061699, 33.103565, 37.447529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403290, 32.814415, 37.240623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354965, 33.177120, 37.402206>,  <44.325970, 33.394745, 37.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354965, 33.177120, 37.402206>,  <44.403290, 32.814415, 37.240623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354965, 33.177120, 37.402206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142036, 0.386963, -0.911090,
		-0.982462, -0.167445, 0.082044,
		-0.120809, 0.906765, 0.403959,
		44.318722, 33.449150, 37.523396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975674, 33.195095, 36.740498>,  <44.403290, 32.814415, 37.240623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975674, 33.195095, 36.740498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113087, 33.475307, 36.990692>,  <44.195534, 33.643436, 37.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113087, 33.475307, 36.990692>,  <43.975674, 33.195095, 36.740498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113087, 33.475307, 36.990692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098036, 0.635632, -0.765742,
		-0.934008, 0.324381, 0.149686,
		0.343537, 0.700534, 0.625487,
		44.216148, 33.685467, 37.178337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533245, 33.670483, 36.725662>,  <43.975674, 33.195095, 36.740498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533245, 33.670483, 36.725662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861469, 33.859020, 36.854980>,  <44.058403, 33.972145, 36.932571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861469, 33.859020, 36.854980>,  <43.533245, 33.670483, 36.725662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861469, 33.859020, 36.854980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014019, 0.548859, -0.835797,
		-0.571393, 0.690351, 0.443762,
		0.820556, 0.471348, 0.323292,
		44.107635, 34.000423, 36.951969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369785, 34.351765, 36.575451>,  <43.533245, 33.670483, 36.725662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369785, 34.351765, 36.575451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767853, 34.332928, 36.609901>,  <44.006695, 34.321625, 36.630573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767853, 34.332928, 36.609901>,  <43.369785, 34.351765, 36.575451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767853, 34.332928, 36.609901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095961, 0.651514, -0.752543,
		-0.020676, 0.757174, 0.652886,
		0.995170, -0.047092, 0.086130,
		44.066402, 34.318802, 36.635742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654232, 35.025784, 36.612675>,  <43.369785, 34.351765, 36.575451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654232, 35.025784, 36.612675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971645, 34.812252, 36.495834>,  <44.162094, 34.684132, 36.425728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971645, 34.812252, 36.495834>,  <43.654232, 35.025784, 36.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971645, 34.812252, 36.495834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149254, 0.636101, -0.757033,
		0.589936, 0.557135, 0.584445,
		0.793536, -0.533832, -0.292104,
		44.209705, 34.652103, 36.408203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258884, 35.542057, 36.675091>,  <43.654232, 35.025784, 36.612675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258884, 35.542057, 36.675091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352169, 35.249008, 36.419319>,  <44.408138, 35.073177, 36.265854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352169, 35.249008, 36.419319>,  <44.258884, 35.542057, 36.675091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352169, 35.249008, 36.419319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188413, 0.679144, -0.709410,
		0.953999, 0.044964, 0.296419,
		0.233209, -0.732626, -0.639431,
		44.422131, 35.029221, 36.227489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833080, 35.791309, 36.233379>,  <44.258884, 35.542057, 36.675091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833080, 35.791309, 36.233379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691433, 35.481586, 36.023598>,  <44.606445, 35.295753, 35.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691433, 35.481586, 36.023598>,  <44.833080, 35.791309, 36.233379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691433, 35.481586, 36.023598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142816, 0.509444, -0.848570,
		0.924232, -0.375394, -0.069820,
		-0.354117, -0.774304, -0.524456,
		44.585197, 35.249294, 35.866261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296841, 35.726063, 35.663338>,  <44.833080, 35.791309, 36.233379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296841, 35.726063, 35.663338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956181, 35.536983, 35.572784>,  <44.751785, 35.423538, 35.518452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956181, 35.536983, 35.572784>,  <45.296841, 35.726063, 35.663338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956181, 35.536983, 35.572784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039401, 0.488457, -0.871698,
		0.522627, -0.733462, -0.434620,
		-0.851651, -0.472697, -0.226382,
		44.700684, 35.395176, 35.504871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480186, 35.572586, 35.070900>,  <45.296841, 35.726063, 35.663338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480186, 35.572586, 35.070900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080696, 35.577579, 35.090458>,  <44.841003, 35.580574, 35.102192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080696, 35.577579, 35.090458>,  <45.480186, 35.572586, 35.070900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080696, 35.577579, 35.090458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034007, 0.549374, -0.834884,
		-0.037279, -0.835483, -0.548250,
		-0.998726, 0.012480, 0.048892,
		44.781078, 35.581322, 35.105125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161884, 35.319889, 35.327320>,  <45.480186, 35.572586, 35.070900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161884, 35.319889, 35.327320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353634, 35.322262, 35.678356>,  <46.468685, 35.323685, 35.888977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353634, 35.322262, 35.678356>,  <46.161884, 35.319889, 35.327320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353634, 35.322262, 35.678356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112021, -0.991384, 0.067890,
		0.870430, -0.130853, -0.474583,
		0.479378, 0.005930, 0.877589,
		46.497448, 35.324039, 35.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939465, 35.048759, 35.342651>,  <46.161884, 35.319889, 35.327320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939465, 35.048759, 35.342651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691982, 34.990818, 35.651512>,  <46.543491, 34.956055, 35.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691982, 34.990818, 35.651512>,  <46.939465, 35.048759, 35.342651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691982, 34.990818, 35.651512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012214, -0.980962, -0.193814,
		0.785526, -0.129346, 0.605160,
		-0.618708, -0.144855, 0.772151,
		46.506371, 34.947361, 35.883156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184765, 34.499382, 35.649857>,  <46.939465, 35.048759, 35.342651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184765, 34.499382, 35.649857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787617, 34.489441, 35.696503>,  <46.549328, 34.483475, 35.724491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787617, 34.489441, 35.696503>,  <47.184765, 34.499382, 35.649857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787617, 34.489441, 35.696503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027489, -0.999400, 0.021062,
		0.116022, 0.024117, 0.992954,
		-0.992866, -0.024851, 0.116616,
		46.489758, 34.481987, 35.731487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619183, 34.752678, 35.048409>,  <47.184765, 34.499382, 35.649857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619183, 34.752678, 35.048409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718498, 35.125366, 35.154423>,  <47.778088, 35.348980, 35.218029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718498, 35.125366, 35.154423>,  <47.619183, 34.752678, 35.048409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718498, 35.125366, 35.154423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645692, 0.044770, -0.762285,
		-0.722106, 0.360394, -0.590491,
		0.248286, 0.931725, 0.265032,
		47.792984, 35.404884, 35.233932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.757805, 37.785931, 46.323273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.365219, 37.715607, 46.353764>,  <32.129665, 37.673412, 46.372059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.365219, 37.715607, 46.353764>,  <32.757805, 37.785931, 46.323273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365219, 37.715607, 46.353764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051297, -0.142203, -0.988507,
		0.184630, -0.974099, 0.130549,
		-0.981468, -0.175811, 0.076223,
		32.070778, 37.662865, 46.376629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606770, 37.170036, 45.961624>,  <32.757805, 37.785931, 46.323273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606770, 37.170036, 45.961624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.243565, 37.336571, 45.980282>,  <32.025642, 37.436489, 45.991478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.243565, 37.336571, 45.980282>,  <32.606770, 37.170036, 45.961624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243565, 37.336571, 45.980282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108208, -0.125505, -0.986174,
		-0.404722, -0.900508, 0.159011,
		-0.908015, 0.416333, 0.046647,
		31.971161, 37.461472, 45.994274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294601, 36.761780, 45.473289>,  <32.606770, 37.170036, 45.961624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294601, 36.761780, 45.473289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.055195, 37.078625, 45.521164>,  <31.911551, 37.268734, 45.549889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.055195, 37.078625, 45.521164>,  <32.294601, 36.761780, 45.473289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055195, 37.078625, 45.521164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033124, 0.124808, -0.991628,
		-0.800423, -0.597473, -0.048462,
		-0.598519, 0.792116, 0.119690,
		31.875639, 37.316261, 45.557072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695385, 36.626949, 45.000893>,  <32.294601, 36.761780, 45.473289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695385, 36.626949, 45.000893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.674747, 37.020657, 45.068478>,  <31.662365, 37.256882, 45.109028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.674747, 37.020657, 45.068478>,  <31.695385, 36.626949, 45.000893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674747, 37.020657, 45.068478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016557, 0.168324, -0.985593,
		-0.998531, -0.053649, 0.007612,
		-0.051595, 0.984271, 0.168965,
		31.659269, 37.315937, 45.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203323, 36.818794, 44.590824>,  <31.695385, 36.626949, 45.000893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203323, 36.818794, 44.590824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.439926, 37.135841, 44.649986>,  <31.581888, 37.326069, 44.685486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.439926, 37.135841, 44.649986>,  <31.203323, 36.818794, 44.590824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439926, 37.135841, 44.649986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000337, 0.183199, -0.983076,
		-0.806300, 0.581545, 0.108096,
		0.591506, 0.792618, 0.147909,
		31.617378, 37.373627, 44.694359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953047, 37.416904, 44.216980>,  <31.203323, 36.818794, 44.590824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953047, 37.416904, 44.216980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.347767, 37.460758, 44.264652>,  <31.584599, 37.487072, 44.293255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.347767, 37.460758, 44.264652>,  <30.953047, 37.416904, 44.216980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347767, 37.460758, 44.264652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098977, 0.174140, -0.979734,
		-0.128168, 0.978598, 0.160991,
		0.986801, 0.109636, 0.119178,
		31.643806, 37.493649, 44.300407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055906, 37.928638, 43.703228>,  <30.953047, 37.416904, 44.216980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055906, 37.928638, 43.703228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.424915, 37.826183, 43.818707>,  <31.646320, 37.764709, 43.887993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.424915, 37.826183, 43.818707>,  <31.055906, 37.928638, 43.703228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424915, 37.826183, 43.818707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337610, 0.173101, -0.925233,
		0.187016, 0.951014, 0.246165,
		0.922521, -0.256141, 0.288699,
		31.701672, 37.749340, 43.905315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440699, 38.407887, 43.320805>,  <31.055906, 37.928638, 43.703228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440699, 38.407887, 43.320805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703938, 38.127193, 43.429966>,  <31.861881, 37.958778, 43.495464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703938, 38.127193, 43.429966>,  <31.440699, 38.407887, 43.320805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703938, 38.127193, 43.429966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423801, 0.045647, -0.904604,
		0.622335, 0.710974, 0.327436,
		0.658097, -0.701735, 0.272904,
		31.901367, 37.916672, 43.511837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115875, 38.673431, 43.216904>,  <31.440699, 38.407887, 43.320805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115875, 38.673431, 43.216904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.154797, 38.275364, 43.211720>,  <32.178150, 38.036522, 43.208611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.154797, 38.275364, 43.211720>,  <32.115875, 38.673431, 43.216904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154797, 38.275364, 43.211720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244574, 0.036533, -0.968942,
		0.964736, 0.091116, 0.246948,
		0.097308, -0.995170, -0.012960,
		32.183990, 37.976814, 43.207832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717209, 38.493683, 42.916496>,  <32.115875, 38.673431, 43.216904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717209, 38.493683, 42.916496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.532978, 38.138771, 42.906689>,  <32.422440, 37.925823, 42.900803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.532978, 38.138771, 42.906689>,  <32.717209, 38.493683, 42.916496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532978, 38.138771, 42.906689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294726, -0.126815, -0.947130,
		0.837262, -0.443450, 0.319913,
		-0.460575, -0.887282, -0.024519,
		32.394806, 37.872585, 42.899334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204212, 38.084354, 42.694920>,  <32.717209, 38.493683, 42.916496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204212, 38.084354, 42.694920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.843960, 37.927895, 42.619164>,  <32.627808, 37.834019, 42.573711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.843960, 37.927895, 42.619164>,  <33.204212, 38.084354, 42.694920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843960, 37.927895, 42.619164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287568, -0.209648, -0.934533,
		0.325840, -0.896129, 0.301298,
		-0.900629, -0.391152, -0.189386,
		32.573772, 37.810551, 42.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350605, 37.352989, 42.415649>,  <33.204212, 38.084354, 42.694920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350605, 37.352989, 42.415649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987797, 37.478592, 42.303421>,  <32.770111, 37.553955, 42.236084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987797, 37.478592, 42.303421>,  <33.350605, 37.352989, 42.415649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987797, 37.478592, 42.303421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184819, -0.301828, -0.935276,
		-0.378369, -0.900166, 0.215728,
		-0.907016, 0.314009, -0.280570,
		32.715691, 37.572792, 42.219250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926998, 36.798767, 42.200993>,  <33.350605, 37.352989, 42.415649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926998, 36.798767, 42.200993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774120, 37.115913, 42.011131>,  <32.682396, 37.306202, 41.897217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774120, 37.115913, 42.011131>,  <32.926998, 36.798767, 42.200993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774120, 37.115913, 42.011131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159920, -0.449146, -0.879030,
		-0.910141, -0.411862, 0.044864,
		-0.382190, 0.792867, -0.474651,
		32.659462, 37.353775, 41.868736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684711, 36.472065, 41.678024>,  <32.926998, 36.798767, 42.200993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684711, 36.472065, 41.678024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.723743, 36.862686, 41.601269>,  <32.747162, 37.097057, 41.555214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.723743, 36.862686, 41.601269>,  <32.684711, 36.472065, 41.678024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723743, 36.862686, 41.601269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429563, -0.215252, -0.877008,
		-0.897749, 0.003153, -0.440496,
		0.097583, 0.976553, -0.191888,
		32.753017, 37.155651, 41.543701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490875, 36.573517, 40.955967>,  <32.684711, 36.472065, 41.678024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490875, 36.573517, 40.955967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.711422, 36.895363, 41.044132>,  <32.843750, 37.088470, 41.097031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.711422, 36.895363, 41.044132>,  <32.490875, 36.573517, 40.955967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711422, 36.895363, 41.044132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444457, -0.059720, -0.893807,
		-0.706009, 0.590784, -0.390545,
		0.551371, 0.804617, 0.220415,
		32.876835, 37.136749, 41.110256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584080, 36.827408, 40.349316>,  <32.490875, 36.573517, 40.955967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584080, 36.827408, 40.349316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.870102, 37.015202, 40.556499>,  <33.041714, 37.127876, 40.680809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.870102, 37.015202, 40.556499>,  <32.584080, 36.827408, 40.349316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870102, 37.015202, 40.556499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529053, 0.120889, -0.839934,
		-0.456952, 0.874625, -0.161941,
		0.715051, 0.469485, 0.517963,
		33.084618, 37.156048, 40.711887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793015, 37.312843, 39.919956>,  <32.584080, 36.827408, 40.349316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793015, 37.312843, 39.919956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.084888, 37.300285, 40.193180>,  <33.260014, 37.292751, 40.357117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.084888, 37.300285, 40.193180>,  <32.793015, 37.312843, 39.919956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084888, 37.300285, 40.193180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675269, 0.190240, -0.712616,
		-0.107572, 0.981235, 0.160017,
		0.729685, -0.031397, 0.683062,
		33.303795, 37.290867, 40.398098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210266, 37.889385, 39.785728>,  <32.793015, 37.312843, 39.919956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210266, 37.889385, 39.785728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455292, 37.647644, 39.989502>,  <33.602306, 37.502598, 40.111767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455292, 37.647644, 39.989502>,  <33.210266, 37.889385, 39.785728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455292, 37.647644, 39.989502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697126, 0.109311, -0.708566,
		0.372536, 0.789183, 0.488269,
		0.612562, -0.604351, 0.509438,
		33.639061, 37.466339, 40.142334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890152, 38.285591, 39.795170>,  <33.210266, 37.889385, 39.785728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890152, 38.285591, 39.795170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977386, 37.900272, 39.857780>,  <34.029728, 37.669083, 39.895348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977386, 37.900272, 39.857780>,  <33.890152, 38.285591, 39.795170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977386, 37.900272, 39.857780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660542, 0.027626, -0.750280,
		0.718417, 0.267019, 0.642322,
		0.218084, -0.963295, 0.156530,
		34.042812, 37.611282, 39.904739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539757, 38.244911, 39.683636>,  <33.890152, 38.285591, 39.795170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539757, 38.244911, 39.683636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.446819, 37.859257, 39.632324>,  <34.391056, 37.627865, 39.601536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.446819, 37.859257, 39.632324>,  <34.539757, 38.244911, 39.683636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446819, 37.859257, 39.632324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651034, -0.056173, -0.756967,
		0.722615, -0.259390, 0.640738,
		-0.232341, -0.964138, -0.128281,
		34.377117, 37.570015, 39.593842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207287, 37.903362, 39.689152>,  <34.539757, 38.244911, 39.683636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207287, 37.903362, 39.689152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.944229, 37.665207, 39.504532>,  <34.786396, 37.522316, 39.393761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.944229, 37.665207, 39.504532>,  <35.207287, 37.903362, 39.689152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944229, 37.665207, 39.504532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612797, -0.066443, -0.787442,
		0.438165, -0.800688, 0.408546,
		-0.657641, -0.595386, -0.461545,
		34.746937, 37.486591, 39.366070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585079, 37.365887, 39.502129>,  <35.207287, 37.903362, 39.689152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585079, 37.365887, 39.502129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254803, 37.365658, 39.276482>,  <35.056637, 37.365520, 39.141094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254803, 37.365658, 39.276482>,  <35.585079, 37.365887, 39.502129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254803, 37.365658, 39.276482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563832, -0.032541, -0.825248,
		-0.017875, -0.999471, 0.027198,
		-0.825696, -0.000584, -0.564115,
		35.007095, 37.365486, 39.107246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230907, 37.319969, 39.238255>,  <35.585079, 37.365887, 39.502129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230907, 37.319969, 39.238255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626049, 37.290112, 39.292759>,  <36.863136, 37.272198, 39.325462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.626049, 37.290112, 39.292759>,  <36.230907, 37.319969, 39.238255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626049, 37.290112, 39.292759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114147, 0.246297, 0.962449,
		-0.105401, -0.966316, 0.234786,
		0.987857, -0.074643, 0.136262,
		36.922405, 37.267719, 39.333637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412384, 36.748661, 39.769566>,  <36.230907, 37.319969, 39.238255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412384, 36.748661, 39.769566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694141, 37.032188, 39.754578>,  <36.863197, 37.202305, 39.745586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694141, 37.032188, 39.754578>,  <36.412384, 36.748661, 39.769566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694141, 37.032188, 39.754578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131824, 0.182508, 0.974327,
		0.697458, -0.681373, 0.221997,
		0.704397, 0.708817, -0.037470,
		36.905460, 37.244835, 39.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884483, 36.592934, 40.244747>,  <36.412384, 36.748661, 39.769566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884483, 36.592934, 40.244747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909405, 36.988083, 40.187855>,  <36.924358, 37.225170, 40.153721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909405, 36.988083, 40.187855>,  <36.884483, 36.592934, 40.244747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909405, 36.988083, 40.187855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024386, 0.143969, 0.989282,
		0.997759, -0.058164, 0.033059,
		0.062300, 0.987871, -0.142228,
		36.928093, 37.284443, 40.145187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156242, 36.817738, 40.923027>,  <36.884483, 36.592934, 40.244747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156242, 36.817738, 40.923027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058853, 37.159084, 40.738640>,  <37.000420, 37.363892, 40.628010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058853, 37.159084, 40.738640>,  <37.156242, 36.817738, 40.923027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058853, 37.159084, 40.738640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004499, 0.476256, 0.879295,
		0.969896, 0.212015, -0.119797,
		-0.243478, 0.853364, -0.460965,
		36.985809, 37.415092, 40.600349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474186, 37.387310, 41.311012>,  <37.156242, 36.817738, 40.923027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474186, 37.387310, 41.311012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.177464, 37.543209, 41.092724>,  <36.999428, 37.636749, 40.961750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.177464, 37.543209, 41.092724>,  <37.474186, 37.387310, 41.311012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177464, 37.543209, 41.092724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088275, 0.749942, 0.655587,
		0.664774, 0.534495, -0.521910,
		-0.741811, 0.389745, -0.545725,
		36.954922, 37.660133, 40.929005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576633, 38.110085, 41.375580>,  <37.474186, 37.387310, 41.311012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576633, 38.110085, 41.375580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195572, 38.045624, 41.272438>,  <36.966934, 38.006947, 41.210552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195572, 38.045624, 41.272438>,  <37.576633, 38.110085, 41.375580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195572, 38.045624, 41.272438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301904, 0.602283, 0.738992,
		0.036208, 0.781847, -0.622418,
		-0.952650, -0.161153, -0.257850,
		36.909779, 37.997276, 41.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267994, 38.794376, 41.367863>,  <37.576633, 38.110085, 41.375580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267994, 38.794376, 41.367863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976364, 38.522430, 41.399441>,  <36.801388, 38.359261, 41.418388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976364, 38.522430, 41.399441>,  <37.267994, 38.794376, 41.367863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976364, 38.522430, 41.399441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362609, 0.481500, 0.797917,
		-0.580489, 0.553115, -0.597575,
		-0.729073, -0.679868, 0.078941,
		36.757641, 38.318470, 41.423122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677399, 39.242924, 41.515110>,  <37.267994, 38.794376, 41.367863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677399, 39.242924, 41.515110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586365, 38.868549, 41.622616>,  <36.531742, 38.643925, 41.687119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586365, 38.868549, 41.622616>,  <36.677399, 39.242924, 41.515110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586365, 38.868549, 41.622616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469222, 0.347260, 0.811937,
		-0.853249, 0.058676, -0.518192,
		-0.227588, -0.935932, 0.268767,
		36.518089, 38.587769, 41.703247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091164, 39.269508, 41.715866>,  <36.677399, 39.242924, 41.515110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091164, 39.269508, 41.715866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189030, 38.921349, 41.886768>,  <36.247749, 38.712452, 41.989307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189030, 38.921349, 41.886768>,  <36.091164, 39.269508, 41.715866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189030, 38.921349, 41.886768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415372, 0.304076, 0.857324,
		-0.876131, -0.387225, -0.287142,
		0.244665, -0.870399, 0.427253,
		36.262428, 38.660229, 42.014946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415268, 39.093201, 41.974014>,  <36.091164, 39.269508, 41.715866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415268, 39.093201, 41.974014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707504, 38.889061, 42.155464>,  <35.882847, 38.766575, 42.264336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707504, 38.889061, 42.155464>,  <35.415268, 39.093201, 41.974014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707504, 38.889061, 42.155464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519735, 0.015226, 0.854192,
		-0.442845, -0.859831, -0.254123,
		0.730591, -0.510351, 0.453627,
		35.926682, 38.735954, 42.291553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076286, 38.471062, 42.247597>,  <35.415268, 39.093201, 41.974014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076286, 38.471062, 42.247597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406590, 38.556431, 42.456432>,  <35.604771, 38.607655, 42.581734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406590, 38.556431, 42.456432>,  <35.076286, 38.471062, 42.247597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406590, 38.556431, 42.456432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556147, 0.153872, 0.816715,
		0.093967, -0.964767, 0.245753,
		0.825755, 0.213419, 0.522093,
		35.654316, 38.620461, 42.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973835, 38.036732, 42.744892>,  <35.076286, 38.471062, 42.247597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973835, 38.036732, 42.744892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225338, 38.322651, 42.867355>,  <35.376240, 38.494202, 42.940834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225338, 38.322651, 42.867355>,  <34.973835, 38.036732, 42.744892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225338, 38.322651, 42.867355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474626, 0.040908, 0.879236,
		0.615949, -0.698136, 0.364982,
		0.628758, 0.714795, 0.306156,
		35.413967, 38.537090, 42.959202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261948, 37.902016, 43.336552>,  <34.973835, 38.036732, 42.744892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261948, 37.902016, 43.336552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.238037, 38.301300, 43.336166>,  <35.223690, 38.540871, 43.335934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.238037, 38.301300, 43.336166>,  <35.261948, 37.902016, 43.336552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238037, 38.301300, 43.336166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300546, -0.017078, 0.953614,
		0.951892, 0.057297, 0.301029,
		-0.059780, 0.998211, -0.000964,
		35.220104, 38.600765, 43.335876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672272, 38.351753, 43.897961>,  <35.261948, 37.902016, 43.336552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672272, 38.351753, 43.897961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337585, 38.535389, 43.778530>,  <35.136776, 38.645573, 43.706871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337585, 38.535389, 43.778530>,  <35.672272, 38.351753, 43.897961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337585, 38.535389, 43.778530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250902, 0.163255, 0.954147,
		0.486785, 0.873259, -0.021411,
		-0.836713, 0.459092, -0.298573,
		35.086571, 38.673115, 43.688957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549034, 39.133751, 44.153858>,  <35.672272, 38.351753, 43.897961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549034, 39.133751, 44.153858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202656, 38.940453, 44.102295>,  <34.994831, 38.824474, 44.071358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202656, 38.940453, 44.102295>,  <35.549034, 39.133751, 44.153858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202656, 38.940453, 44.102295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278624, 0.252070, 0.926731,
		-0.415345, 0.838412, -0.352921,
		-0.865943, -0.483245, -0.128906,
		34.942871, 38.795479, 44.063622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081482, 39.567577, 44.458012>,  <35.549034, 39.133751, 44.153858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081482, 39.567577, 44.458012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898064, 39.212112, 44.459751>,  <34.788013, 38.998833, 44.460796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898064, 39.212112, 44.459751>,  <35.081482, 39.567577, 44.458012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898064, 39.212112, 44.459751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230861, 0.123845, 0.965073,
		-0.858162, 0.441522, -0.261946,
		-0.458541, -0.888662, 0.004349,
		34.760502, 38.945515, 44.461056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396801, 39.717678, 44.901760>,  <35.081482, 39.567577, 44.458012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396801, 39.717678, 44.901760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.434578, 39.320084, 44.879620>,  <34.457245, 39.081528, 44.866337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.434578, 39.320084, 44.879620>,  <34.396801, 39.717678, 44.901760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434578, 39.320084, 44.879620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424459, -0.090494, 0.900914,
		-0.900508, -0.061590, -0.430455,
		0.094441, -0.993991, -0.055348,
		34.462910, 39.021885, 44.863014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918713, 39.559280, 45.251415>,  <34.396801, 39.717678, 44.901760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918713, 39.559280, 45.251415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119198, 39.213474, 45.236504>,  <34.239491, 39.005989, 45.227554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119198, 39.213474, 45.236504>,  <33.918713, 39.559280, 45.251415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119198, 39.213474, 45.236504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444507, -0.294197, 0.846086,
		-0.742426, -0.407498, -0.531740,
		0.501215, -0.864519, -0.037284,
		34.269562, 38.954117, 45.225319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.486061, 38.971279, 45.569237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855106, 38.821705, 45.607079>,  <34.076534, 38.731960, 45.629784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855106, 38.821705, 45.607079>,  <33.486061, 38.971279, 45.569237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855106, 38.821705, 45.607079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182415, -0.206879, 0.961211,
		-0.339858, -0.904087, -0.259082,
		0.922616, -0.373936, 0.094609,
		34.131889, 38.709522, 45.635460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303135, 38.442837, 46.002831>,  <33.486061, 38.971279, 45.569237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303135, 38.442837, 46.002831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685074, 38.557255, 46.034950>,  <33.914238, 38.625904, 46.054222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685074, 38.557255, 46.034950>,  <33.303135, 38.442837, 46.002831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685074, 38.557255, 46.034950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083283, -0.001754, 0.996524,
		0.285188, -0.958216, 0.022147,
		0.954846, 0.286041, 0.080303,
		33.971527, 38.643066, 46.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539482, 37.977348, 46.482857>,  <33.303135, 38.442837, 46.002831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539482, 37.977348, 46.482857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806923, 38.272621, 46.518761>,  <33.967388, 38.449783, 46.540302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806923, 38.272621, 46.518761>,  <33.539482, 37.977348, 46.482857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806923, 38.272621, 46.518761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095873, -0.205269, 0.973998,
		0.737413, -0.642614, -0.208015,
		0.668604, 0.738182, 0.089759,
		34.007504, 38.494076, 46.545689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907833, 37.639751, 46.988140>,  <33.539482, 37.977348, 46.482857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907833, 37.639751, 46.988140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015686, 38.024212, 46.964512>,  <34.080399, 38.254887, 46.950336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015686, 38.024212, 46.964512>,  <33.907833, 37.639751, 46.988140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015686, 38.024212, 46.964512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030738, 0.052719, 0.998136,
		0.962472, -0.270948, -0.015329,
		0.269635, 0.961149, -0.059069,
		34.096577, 38.312557, 46.946793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465103, 37.755299, 47.420090>,  <33.907833, 37.639751, 46.988140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465103, 37.755299, 47.420090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334373, 38.128773, 47.361565>,  <34.255936, 38.352859, 47.326450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334373, 38.128773, 47.361565>,  <34.465103, 37.755299, 47.420090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334373, 38.128773, 47.361565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104338, 0.118226, 0.987490,
		0.939307, 0.338005, 0.058780,
		-0.326827, 0.933689, -0.146317,
		34.236324, 38.408878, 47.317669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852585, 38.129429, 47.801815>,  <34.465103, 37.755299, 47.420090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852585, 38.129429, 47.801815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524654, 38.352047, 47.747944>,  <34.327896, 38.485619, 47.715622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524654, 38.352047, 47.747944>,  <34.852585, 38.129429, 47.801815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524654, 38.352047, 47.747944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148552, 0.020426, 0.988694,
		0.553003, 0.830567, 0.065930,
		-0.819829, 0.556544, -0.134678,
		34.278706, 38.519009, 47.707539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908310, 38.525719, 48.311424>,  <34.852585, 38.129429, 47.801815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908310, 38.525719, 48.311424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529053, 38.568790, 48.191807>,  <34.301498, 38.594635, 48.120037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529053, 38.568790, 48.191807>,  <34.908310, 38.525719, 48.311424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529053, 38.568790, 48.191807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294349, 0.057503, 0.953966,
		0.119919, 0.992521, -0.022826,
		-0.948144, 0.107680, -0.299044,
		34.244610, 38.601093, 48.102093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643845, 39.089317, 48.569439>,  <34.908310, 38.525719, 48.311424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643845, 39.089317, 48.569439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302605, 38.892910, 48.498875>,  <34.097858, 38.775066, 48.456535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302605, 38.892910, 48.498875>,  <34.643845, 39.089317, 48.569439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302605, 38.892910, 48.498875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288497, 0.162219, 0.943639,
		-0.434725, 0.855914, -0.280047,
		-0.853102, -0.491016, -0.176408,
		34.046673, 38.745605, 48.445953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086563, 39.456226, 48.814476>,  <34.643845, 39.089317, 48.569439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086563, 39.456226, 48.814476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927269, 39.089512, 48.826599>,  <33.831692, 38.869484, 48.833874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927269, 39.089512, 48.826599>,  <34.086563, 39.456226, 48.814476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927269, 39.089512, 48.826599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306914, 0.164306, 0.937447,
		-0.864416, 0.364020, -0.346806,
		-0.398232, -0.916784, 0.030306,
		33.807800, 38.814476, 48.835690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487862, 39.614059, 49.124733>,  <34.086563, 39.456226, 48.814476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487862, 39.614059, 49.124733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551327, 39.219925, 49.149857>,  <33.589405, 38.983444, 49.164932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551327, 39.219925, 49.149857>,  <33.487862, 39.614059, 49.124733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551327, 39.219925, 49.149857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534724, -0.032280, 0.844410,
		-0.829997, -0.167565, -0.532003,
		0.158667, -0.985332, 0.062808,
		33.598927, 38.924324, 49.168697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912201, 39.319042, 49.356422>,  <33.487862, 39.614059, 49.124733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912201, 39.319042, 49.356422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182232, 39.041084, 49.455540>,  <33.344250, 38.874310, 49.515011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182232, 39.041084, 49.455540>,  <32.912201, 39.319042, 49.356422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182232, 39.041084, 49.455540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539763, -0.236242, 0.807988,
		-0.502924, -0.679203, -0.534557,
		0.675073, -0.694891, 0.247797,
		33.384754, 38.832619, 49.529881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455070, 38.878841, 49.692551>,  <32.912201, 39.319042, 49.356422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455070, 38.878841, 49.692551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816177, 38.728333, 49.775917>,  <33.032841, 38.638027, 49.825935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816177, 38.728333, 49.775917>,  <32.455070, 38.878841, 49.692551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816177, 38.728333, 49.775917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338953, -0.324007, 0.883250,
		-0.264811, -0.868010, -0.420040,
		0.902766, -0.376268, 0.208414,
		33.087006, 38.615452, 49.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374886, 38.252544, 50.062706>,  <32.455070, 38.878841, 49.692551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374886, 38.252544, 50.062706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745930, 38.368336, 50.157143>,  <32.968555, 38.437813, 50.213802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745930, 38.368336, 50.157143>,  <32.374886, 38.252544, 50.062706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745930, 38.368336, 50.157143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113185, -0.384493, 0.916163,
		0.355986, -0.876565, -0.323895,
		0.927611, 0.289481, 0.236088,
		33.024212, 38.455181, 50.227970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653145, 37.570789, 50.388355>,  <32.374886, 38.252544, 50.062706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653145, 37.570789, 50.388355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852161, 37.889931, 50.524521>,  <32.971573, 38.081417, 50.606220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852161, 37.889931, 50.524521>,  <32.653145, 37.570789, 50.388355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852161, 37.889931, 50.524521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041393, -0.370153, 0.928048,
		0.866451, -0.475835, -0.151142,
		0.497543, 0.797852, 0.340416,
		33.001423, 38.129288, 50.626644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073231, 37.319126, 50.829315>,  <32.653145, 37.570789, 50.388355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073231, 37.319126, 50.829315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075798, 37.700905, 50.948643>,  <33.077339, 37.929974, 51.020237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075798, 37.700905, 50.948643>,  <33.073231, 37.319126, 50.829315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075798, 37.700905, 50.948643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097634, -0.297496, 0.949718,
		0.995202, 0.023027, -0.095096,
		0.006422, 0.954445, 0.298317,
		33.077724, 37.987240, 51.038139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744766, 37.460152, 51.215736>,  <33.073231, 37.319126, 50.829315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744766, 37.460152, 51.215736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442150, 37.691544, 51.337727>,  <33.260582, 37.830379, 51.410919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442150, 37.691544, 51.337727>,  <33.744766, 37.460152, 51.215736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442150, 37.691544, 51.337727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233109, -0.197164, 0.952253,
		0.610993, 0.791506, 0.014312,
		-0.756536, 0.578484, 0.304973,
		33.215191, 37.865089, 51.429218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009483, 37.565247, 51.809669>,  <33.744766, 37.460152, 51.215736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009483, 37.565247, 51.809669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635838, 37.699913, 51.857132>,  <33.411648, 37.780712, 51.885609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635838, 37.699913, 51.857132>,  <34.009483, 37.565247, 51.809669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635838, 37.699913, 51.857132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016166, -0.292170, 0.956230,
		0.356597, 0.895150, 0.267479,
		-0.934119, 0.336665, 0.118658,
		33.355602, 37.800911, 51.892731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001457, 37.897102, 52.532631>,  <34.009483, 37.565247, 51.809669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001457, 37.897102, 52.532631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.618805, 37.842918, 52.429470>,  <33.389214, 37.810410, 52.367573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.618805, 37.842918, 52.429470>,  <34.001457, 37.897102, 52.532631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618805, 37.842918, 52.429470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246469, -0.095585, 0.964425,
		-0.155294, 0.986161, 0.058052,
		-0.956628, -0.135461, -0.257902,
		33.331818, 37.802280, 52.352100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636368, 38.224319, 53.015354>,  <34.001457, 37.897102, 52.532631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636368, 38.224319, 53.015354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372620, 37.973618, 52.849262>,  <33.214371, 37.823196, 52.749607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372620, 37.973618, 52.849262>,  <33.636368, 38.224319, 53.015354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372620, 37.973618, 52.849262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293643, -0.293732, 0.909667,
		-0.692103, 0.721735, 0.009636,
		-0.659369, -0.626754, -0.415226,
		33.174809, 37.785591, 52.724693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926361, 38.269211, 53.384632>,  <33.636368, 38.224319, 53.015354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926361, 38.269211, 53.384632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918320, 37.921112, 53.187752>,  <32.913494, 37.712254, 53.069622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918320, 37.921112, 53.187752>,  <32.926361, 38.269211, 53.384632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918320, 37.921112, 53.187752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207696, -0.477925, 0.853493,
		-0.977987, 0.119388, -0.171138,
		-0.020106, -0.870249, -0.492201,
		32.912289, 37.660038, 53.040092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475708, 37.874020, 53.729477>,  <32.926361, 38.269211, 53.384632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475708, 37.874020, 53.729477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648708, 37.562622, 53.547535>,  <32.752506, 37.375782, 53.438370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648708, 37.562622, 53.547535>,  <32.475708, 37.874020, 53.729477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648708, 37.562622, 53.547535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056216, -0.526781, 0.848140,
		-0.899880, -0.341249, -0.271596,
		0.432498, -0.778493, -0.454856,
		32.778458, 37.329075, 53.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182533, 37.353451, 54.041710>,  <32.475708, 37.874020, 53.729477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182533, 37.353451, 54.041710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528091, 37.254475, 53.866234>,  <32.735428, 37.195087, 53.760948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.528091, 37.254475, 53.866234>,  <32.182533, 37.353451, 54.041710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528091, 37.254475, 53.866234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199478, -0.631684, 0.749122,
		-0.462476, -0.734676, -0.496354,
		0.863901, -0.247439, -0.438691,
		32.787262, 37.180241, 53.734627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383507, 36.703556, 54.217182>,  <32.182533, 37.353451, 54.041710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383507, 36.703556, 54.217182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735168, 36.851589, 54.097092>,  <32.946163, 36.940411, 54.025040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735168, 36.851589, 54.097092>,  <32.383507, 36.703556, 54.217182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735168, 36.851589, 54.097092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472985, -0.600780, 0.644475,
		0.058142, -0.708591, -0.703220,
		0.879150, 0.370084, -0.300222,
		32.998913, 36.962616, 54.007027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682180, 36.455872, 54.203087>,  <32.383507, 36.703556, 54.217182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682180, 36.455872, 54.203087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482365, 36.110039, 54.224827>,  <31.362476, 35.902538, 54.237869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482365, 36.110039, 54.224827>,  <31.682180, 36.455872, 54.203087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482365, 36.110039, 54.224827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394452, 0.171153, -0.902837,
		0.771278, -0.472438, -0.426535,
		-0.499537, -0.864586, 0.054347,
		31.332504, 35.850662, 54.241131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816422, 35.901836, 53.618725>,  <31.682180, 36.455872, 54.203087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816422, 35.901836, 53.618725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434797, 35.886009, 53.737518>,  <31.205822, 35.876514, 53.808796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434797, 35.886009, 53.737518>,  <31.816422, 35.901836, 53.618725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434797, 35.886009, 53.737518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299442, 0.092957, -0.949575,
		0.009961, -0.994884, -0.100533,
		-0.954063, -0.039563, 0.296984,
		31.148579, 35.874138, 53.826614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536283, 35.462856, 53.221050>,  <31.816422, 35.901836, 53.618725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536283, 35.462856, 53.221050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.233074, 35.676933, 53.370167>,  <31.051149, 35.805378, 53.459637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.233074, 35.676933, 53.370167>,  <31.536283, 35.462856, 53.221050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233074, 35.676933, 53.370167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283007, 0.245068, -0.927280,
		-0.587629, -0.808403, -0.034305,
		-0.758023, 0.535188, 0.372793,
		31.005667, 35.837490, 53.482006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085789, 35.248856, 52.775249>,  <31.536283, 35.462856, 53.221050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085789, 35.248856, 52.775249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.944433, 35.579971, 52.949554>,  <30.859619, 35.778641, 53.054138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.944433, 35.579971, 52.949554>,  <31.085789, 35.248856, 52.775249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944433, 35.579971, 52.949554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281692, 0.350035, -0.893379,
		-0.892057, -0.438461, 0.109482,
		-0.353389, 0.827785, 0.435762,
		30.838417, 35.828308, 53.080284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458521, 35.352345, 52.473213>,  <31.085789, 35.248856, 52.775249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458521, 35.352345, 52.473213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.564421, 35.710304, 52.616913>,  <30.627960, 35.925079, 52.703133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.564421, 35.710304, 52.616913>,  <30.458521, 35.352345, 52.473213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564421, 35.710304, 52.616913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057558, 0.386542, -0.920474,
		-0.962598, 0.223018, 0.153845,
		0.264750, 0.894901, 0.359248,
		30.643847, 35.978775, 52.724686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015831, 35.854595, 52.165897>,  <30.458521, 35.352345, 52.473213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015831, 35.854595, 52.165897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.325790, 36.079979, 52.280472>,  <30.511766, 36.215210, 52.349216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.325790, 36.079979, 52.280472>,  <30.015831, 35.854595, 52.165897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325790, 36.079979, 52.280472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000627, 0.453838, -0.891084,
		-0.632087, 0.690319, 0.352031,
		0.774897, 0.563464, 0.286432,
		30.558260, 36.249020, 52.366402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782782, 36.549484, 51.979816>,  <30.015831, 35.854595, 52.165897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782782, 36.549484, 51.979816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179159, 36.510406, 52.016663>,  <30.416986, 36.486961, 52.038769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179159, 36.510406, 52.016663>,  <29.782782, 36.549484, 51.979816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179159, 36.510406, 52.016663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131400, 0.564557, -0.814868,
		0.027603, 0.819592, 0.572282,
		0.990945, -0.097691, 0.092111,
		30.476442, 36.481098, 52.044296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026926, 37.217167, 51.699848>,  <29.782782, 36.549484, 51.979816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026926, 37.217167, 51.699848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337229, 36.964760, 51.701168>,  <30.523411, 36.813316, 51.701958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337229, 36.964760, 51.701168>,  <30.026926, 37.217167, 51.699848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337229, 36.964760, 51.701168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392764, 0.478752, -0.785196,
		0.493898, 0.610417, 0.619238,
		0.775758, -0.631021, 0.003295,
		30.569956, 36.775452, 51.702156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664108, 37.603039, 51.586483>,  <30.026926, 37.217167, 51.699848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664108, 37.603039, 51.586483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.721453, 37.224869, 51.469440>,  <30.755859, 36.997967, 51.399216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.721453, 37.224869, 51.469440>,  <30.664108, 37.603039, 51.586483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721453, 37.224869, 51.469440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311447, 0.323733, -0.893419,
		0.939388, 0.036951, 0.340861,
		0.143361, -0.945427, -0.292603,
		30.764462, 36.941242, 51.381660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278059, 37.590717, 51.127445>,  <30.664108, 37.603039, 51.586483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278059, 37.590717, 51.127445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109209, 37.234863, 51.057755>,  <31.007900, 37.021351, 51.015938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109209, 37.234863, 51.057755>,  <31.278059, 37.590717, 51.127445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109209, 37.234863, 51.057755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420111, -0.021666, -0.907214,
		0.803318, -0.456151, 0.382893,
		-0.422123, -0.889639, -0.174230,
		30.982573, 36.967972, 51.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826632, 37.134617, 50.842197>,  <31.278059, 37.590717, 51.127445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826632, 37.134617, 50.842197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.469276, 36.990097, 50.735374>,  <31.254864, 36.903385, 50.671280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.469276, 36.990097, 50.735374>,  <31.826632, 37.134617, 50.842197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469276, 36.990097, 50.735374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313467, -0.075439, -0.946598,
		0.321861, -0.929392, 0.180653,
		-0.893389, -0.361301, -0.267053,
		31.201260, 36.881706, 50.655258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984858, 36.553478, 50.517483>,  <31.826632, 37.134617, 50.842197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984858, 36.553478, 50.517483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625713, 36.646713, 50.368073>,  <31.410227, 36.702652, 50.278427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625713, 36.646713, 50.368073>,  <31.984858, 36.553478, 50.517483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625713, 36.646713, 50.368073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416183, 0.172493, -0.892770,
		-0.143660, -0.957036, -0.251880,
		-0.897860, 0.233083, -0.373522,
		31.356356, 36.716637, 50.256016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032898, 36.402229, 49.870613>,  <31.984858, 36.553478, 50.517483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032898, 36.402229, 49.870613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.714973, 36.644073, 49.849709>,  <31.524220, 36.789181, 49.837166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.714973, 36.644073, 49.849709>,  <32.032898, 36.402229, 49.870613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714973, 36.644073, 49.849709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337185, 0.368371, -0.866377,
		-0.504568, -0.706224, -0.496648,
		-0.794807, 0.604608, -0.052260,
		31.476532, 36.825455, 49.834030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707312, 36.215729, 49.362804>,  <32.032898, 36.402229, 49.870613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707312, 36.215729, 49.362804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.549316, 36.582088, 49.391403>,  <31.454519, 36.801903, 49.408562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.549316, 36.582088, 49.391403>,  <31.707312, 36.215729, 49.362804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549316, 36.582088, 49.391403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079707, 0.111698, -0.990540,
		-0.915221, -0.385554, -0.117123,
		-0.394990, 0.915899, 0.071497,
		31.430819, 36.856857, 49.412853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128218, 36.279877, 48.855255>,  <31.707312, 36.215729, 49.362804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128218, 36.279877, 48.855255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240871, 36.655937, 48.931988>,  <31.308464, 36.881573, 48.978027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240871, 36.655937, 48.931988>,  <31.128218, 36.279877, 48.855255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240871, 36.655937, 48.931988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084742, 0.174774, -0.980955,
		-0.955772, 0.292528, -0.030447,
		0.281636, 0.940149, 0.191834,
		31.325361, 36.937981, 48.989536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835430, 36.593788, 48.307869>,  <31.128218, 36.279877, 48.855255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835430, 36.593788, 48.307869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087643, 36.867924, 48.453606>,  <31.238970, 37.032406, 48.541046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087643, 36.867924, 48.453606>,  <30.835430, 36.593788, 48.307869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087643, 36.867924, 48.453606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035749, 0.443275, -0.895673,
		-0.775340, 0.577775, 0.254999,
		0.630532, 0.685335, 0.364343,
		31.276802, 37.073524, 48.562908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582832, 37.286194, 48.029427>,  <30.835430, 36.593788, 48.307869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582832, 37.286194, 48.029427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970625, 37.320763, 48.121201>,  <31.203300, 37.341503, 48.176266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970625, 37.320763, 48.121201>,  <30.582832, 37.286194, 48.029427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970625, 37.320763, 48.121201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184486, 0.359204, -0.914843,
		-0.161478, 0.929249, 0.332297,
		0.969479, 0.086423, 0.229436,
		31.261469, 37.346691, 48.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739836, 37.970230, 47.864342>,  <30.582832, 37.286194, 48.029427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739836, 37.970230, 47.864342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092087, 37.780739, 47.860798>,  <31.303438, 37.667046, 47.858669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092087, 37.780739, 47.860798>,  <30.739836, 37.970230, 47.864342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092087, 37.780739, 47.860798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245441, 0.472098, -0.846689,
		0.405282, 0.743443, 0.532015,
		0.880628, -0.473726, -0.008862,
		31.356276, 37.638622, 47.858139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154499, 38.432686, 47.419884>,  <30.739836, 37.970230, 47.864342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154499, 38.432686, 47.419884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400986, 38.118561, 47.443752>,  <31.548878, 37.930084, 47.458073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400986, 38.118561, 47.443752>,  <31.154499, 38.432686, 47.419884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400986, 38.118561, 47.443752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265715, 0.135980, -0.954414,
		0.741398, 0.603982, 0.292462,
		0.616218, -0.785312, 0.059672,
		31.585852, 37.882969, 47.461655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732954, 38.635960, 47.080292>,  <31.154499, 38.432686, 47.419884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732954, 38.635960, 47.080292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780529, 38.239082, 47.095245>,  <31.809074, 38.000954, 47.104218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780529, 38.239082, 47.095245>,  <31.732954, 38.635960, 47.080292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780529, 38.239082, 47.095245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268480, -0.004113, -0.963277,
		0.955915, 0.124606, 0.265896,
		0.118937, -0.992198, 0.037386,
		31.816210, 37.941422, 47.106461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398121, 38.492382, 46.819168>,  <31.732954, 38.635960, 47.080292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398121, 38.492382, 46.819168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175938, 38.160843, 46.792419>,  <32.042629, 37.961918, 46.776371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175938, 38.160843, 46.792419>,  <32.398121, 38.492382, 46.819168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175938, 38.160843, 46.792419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107878, 0.007909, -0.994133,
		0.824518, -0.559412, 0.085022,
		-0.555457, -0.828852, -0.066869,
		32.009300, 37.912186, 46.772358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.087360, 34.599472, 42.474854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.769104, 34.642597, 42.713291>,  <45.578148, 34.668472, 42.856354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.769104, 34.642597, 42.713291>,  <46.087360, 34.599472, 42.474854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769104, 34.642597, 42.713291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537036, 0.329713, -0.776454,
		-0.280251, -0.937905, -0.204435,
		-0.795645, 0.107813, 0.596092,
		45.530411, 34.674942, 42.892120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535786, 34.388786, 42.136620>,  <46.087360, 34.599472, 42.474854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535786, 34.388786, 42.136620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.394543, 34.649357, 42.405235>,  <45.309795, 34.805698, 42.566402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.394543, 34.649357, 42.405235>,  <45.535786, 34.388786, 42.136620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394543, 34.649357, 42.405235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700614, 0.291580, -0.651246,
		-0.620043, -0.700449, 0.353436,
		-0.353110, 0.651423, 0.671537,
		45.288609, 34.844784, 42.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609661, 34.276905, 42.247189>,  <45.535786, 34.388786, 42.136620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609661, 34.276905, 42.247189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.720520, 34.647480, 42.349091>,  <44.787037, 34.869823, 42.410233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.720520, 34.647480, 42.349091>,  <44.609661, 34.276905, 42.247189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720520, 34.647480, 42.349091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756054, 0.373898, -0.537199,
		-0.592933, -0.043721, 0.804064,
		0.277151, 0.926438, 0.254752,
		44.803665, 34.925411, 42.425518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930500, 34.479908, 42.385723>,  <44.609661, 34.276905, 42.247189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930500, 34.479908, 42.385723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.196552, 34.769901, 42.314171>,  <44.356186, 34.943897, 42.271240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.196552, 34.769901, 42.314171>,  <43.930500, 34.479908, 42.385723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196552, 34.769901, 42.314171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681945, 0.492153, -0.541052,
		-0.304218, 0.481856, 0.821746,
		0.665134, 0.724983, -0.178877,
		44.396091, 34.987396, 42.260509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481995, 35.045689, 42.304989>,  <43.930500, 34.479908, 42.385723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481995, 35.045689, 42.304989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832001, 35.181782, 42.167244>,  <44.042004, 35.263439, 42.084599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832001, 35.181782, 42.167244>,  <43.481995, 35.045689, 42.304989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832001, 35.181782, 42.167244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478685, 0.502151, -0.720212,
		-0.072119, 0.795038, 0.602256,
		0.875020, 0.340232, -0.344358,
		44.094505, 35.283852, 42.063938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314655, 35.737083, 42.140938>,  <43.481995, 35.045689, 42.304989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314655, 35.737083, 42.140938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.642994, 35.645821, 41.931496>,  <43.839996, 35.591064, 41.805832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.642994, 35.645821, 41.931496>,  <43.314655, 35.737083, 42.140938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642994, 35.645821, 41.931496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355711, 0.513035, -0.781195,
		0.446858, 0.827491, 0.339966,
		0.820846, -0.228153, -0.523601,
		43.889248, 35.577374, 41.774414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351631, 36.309574, 41.695686>,  <43.314655, 35.737083, 42.140938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351631, 36.309574, 41.695686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605045, 36.057991, 41.515438>,  <43.757092, 35.907043, 41.407291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605045, 36.057991, 41.515438>,  <43.351631, 36.309574, 41.695686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605045, 36.057991, 41.515438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256127, 0.379087, -0.889209,
		0.730094, 0.678757, 0.079071,
		0.633532, -0.628953, -0.450617,
		43.795105, 35.869305, 41.380253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665806, 36.686768, 41.155983>,  <43.351631, 36.309574, 41.695686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665806, 36.686768, 41.155983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725117, 36.306160, 41.048183>,  <43.760704, 36.077797, 40.983505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725117, 36.306160, 41.048183>,  <43.665806, 36.686768, 41.155983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725117, 36.306160, 41.048183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197141, 0.238602, -0.950897,
		0.969098, 0.194121, -0.152205,
		0.148273, -0.951518, -0.269498,
		43.769600, 36.020706, 40.967335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173264, 36.659344, 40.514465>,  <43.665806, 36.686768, 41.155983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173264, 36.659344, 40.514465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959011, 36.321568, 40.515656>,  <43.830460, 36.118900, 40.516369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959011, 36.321568, 40.515656>,  <44.173264, 36.659344, 40.514465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959011, 36.321568, 40.515656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154358, 0.094448, -0.983490,
		0.830222, -0.527251, -0.180937,
		-0.535635, -0.844444, 0.002973,
		43.798321, 36.068233, 40.516548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350773, 36.462605, 39.855808>,  <44.173264, 36.659344, 40.514465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350773, 36.462605, 39.855808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.053101, 36.220184, 39.968163>,  <43.874496, 36.074734, 40.035576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.053101, 36.220184, 39.968163>,  <44.350773, 36.462605, 39.855808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053101, 36.220184, 39.968163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306895, -0.063280, -0.949637,
		0.593300, -0.792907, -0.138900,
		-0.744185, -0.606048, 0.280883,
		43.829845, 36.038368, 40.052429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405842, 35.928593, 39.501865>,  <44.350773, 36.462605, 39.855808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405842, 35.928593, 39.501865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020504, 35.972301, 39.599861>,  <43.789299, 35.998528, 39.658661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020504, 35.972301, 39.599861>,  <44.405842, 35.928593, 39.501865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020504, 35.972301, 39.599861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247167, -0.006593, -0.968951,
		-0.104262, -0.993990, 0.033359,
		-0.963347, 0.109270, 0.244994,
		43.731499, 36.005081, 39.673359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991482, 35.473175, 39.072342>,  <44.405842, 35.928593, 39.501865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991482, 35.473175, 39.072342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740974, 35.755703, 39.204342>,  <43.590668, 35.925220, 39.283543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740974, 35.755703, 39.204342>,  <43.991482, 35.473175, 39.072342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740974, 35.755703, 39.204342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482646, -0.018852, -0.875613,
		-0.612238, -0.707646, 0.352707,
		-0.626273, 0.706316, 0.330000,
		43.553093, 35.967598, 39.303341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460743, 35.305714, 38.726025>,  <43.991482, 35.473175, 39.072342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460743, 35.305714, 38.726025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309486, 35.644917, 38.874557>,  <43.218731, 35.848438, 38.963676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309486, 35.644917, 38.874557>,  <43.460743, 35.305714, 38.726025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309486, 35.644917, 38.874557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585889, 0.091337, -0.805227,
		-0.716758, -0.522048, 0.462302,
		-0.378142, 0.848011, 0.371329,
		43.196045, 35.899319, 38.985958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785610, 35.165619, 38.779552>,  <43.460743, 35.305714, 38.726025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785610, 35.165619, 38.779552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848404, 35.559647, 38.751289>,  <42.886082, 35.796062, 38.734333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848404, 35.559647, 38.751289>,  <42.785610, 35.165619, 38.779552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848404, 35.559647, 38.751289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571125, 0.032184, -0.820232,
		-0.805711, 0.169122, 0.567650,
		0.156988, 0.985070, -0.070659,
		42.895500, 35.855167, 38.730091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127460, 35.463718, 38.711060>,  <42.785610, 35.165619, 38.779552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127460, 35.463718, 38.711060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373066, 35.740158, 38.558552>,  <42.520428, 35.906021, 38.467045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373066, 35.740158, 38.558552>,  <42.127460, 35.463718, 38.711060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373066, 35.740158, 38.558552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506816, -0.025101, -0.861688,
		-0.605086, 0.722319, 0.334851,
		0.614009, 0.691104, -0.381272,
		42.557270, 35.947491, 38.444172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622215, 35.959019, 38.329712>,  <42.127460, 35.463718, 38.711060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622215, 35.959019, 38.329712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991405, 36.003788, 38.182423>,  <42.212921, 36.030647, 38.094048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991405, 36.003788, 38.182423>,  <41.622215, 35.959019, 38.329712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991405, 36.003788, 38.182423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380846, 0.127814, -0.915762,
		-0.055428, 0.985463, 0.160593,
		0.922976, 0.111920, -0.368225,
		42.268299, 36.037365, 38.071957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587875, 36.602760, 37.892330>,  <41.622215, 35.959019, 38.329712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587875, 36.602760, 37.892330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878166, 36.354439, 37.773724>,  <42.052341, 36.205444, 37.702560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878166, 36.354439, 37.773724>,  <41.587875, 36.602760, 37.892330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878166, 36.354439, 37.773724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376133, 0.002853, -0.926561,
		0.576061, 0.783958, -0.231436,
		0.725725, -0.620807, -0.296516,
		42.095882, 36.168198, 37.684769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712982, 36.860847, 37.163666>,  <41.587875, 36.602760, 37.892330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712982, 36.860847, 37.163666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883076, 36.499199, 37.180321>,  <41.985130, 36.282207, 37.190315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883076, 36.499199, 37.180321>,  <41.712982, 36.860847, 37.163666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883076, 36.499199, 37.180321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229609, -0.152262, -0.961299,
		0.875474, 0.399217, -0.272343,
		0.425234, -0.904125, 0.041638,
		42.010647, 36.227962, 37.192814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091686, 36.866570, 36.490810>,  <41.712982, 36.860847, 37.163666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091686, 36.866570, 36.490810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054295, 36.496738, 36.638550>,  <42.031860, 36.274841, 36.727192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054295, 36.496738, 36.638550>,  <42.091686, 36.866570, 36.490810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054295, 36.496738, 36.638550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130477, -0.356399, -0.925179,
		0.987035, -0.134676, -0.087321,
		-0.093478, -0.924577, 0.369350,
		42.026253, 36.219364, 36.749355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594822, 36.519272, 36.043724>,  <42.091686, 36.866570, 36.490810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594822, 36.519272, 36.043724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.365070, 36.238815, 36.212715>,  <42.227219, 36.070541, 36.314110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.365070, 36.238815, 36.212715>,  <42.594822, 36.519272, 36.043724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365070, 36.238815, 36.212715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087397, -0.460632, -0.883278,
		0.813910, -0.544261, 0.203300,
		-0.574380, -0.701141, 0.422479,
		42.192757, 36.028473, 36.339458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826557, 35.936321, 35.771282>,  <42.594822, 36.519272, 36.043724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826557, 35.936321, 35.771282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463364, 35.835835, 35.905422>,  <42.245449, 35.775543, 35.985905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463364, 35.835835, 35.905422>,  <42.826557, 35.936321, 35.771282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463364, 35.835835, 35.905422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151716, -0.548926, -0.821987,
		0.390577, -0.797227, 0.460302,
		-0.907982, -0.251214, 0.335350,
		42.190968, 35.760471, 36.006027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394939, 35.638485, 35.201542>,  <42.826557, 35.936321, 35.771282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394939, 35.638485, 35.201542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792980, 35.624783, 35.164433>,  <44.031803, 35.616562, 35.142166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792980, 35.624783, 35.164433>,  <43.394939, 35.638485, 35.201542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792980, 35.624783, 35.164433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023919, -0.826896, 0.561845,
		-0.095958, -0.561310, -0.822024,
		0.995098, -0.034251, -0.092774,
		44.091511, 35.614506, 35.136600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541191, 34.883049, 35.142731>,  <43.394939, 35.638485, 35.201542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541191, 34.883049, 35.142731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912712, 35.003067, 35.229725>,  <44.135624, 35.075077, 35.281921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912712, 35.003067, 35.229725>,  <43.541191, 34.883049, 35.142731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912712, 35.003067, 35.229725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105031, -0.775957, 0.621980,
		0.355379, -0.554854, -0.752225,
		0.928802, 0.300046, 0.217482,
		44.191353, 35.093082, 35.294968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089207, 34.258427, 35.226875>,  <43.541191, 34.883049, 35.142731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089207, 34.258427, 35.226875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245480, 34.565552, 35.429985>,  <44.339245, 34.749825, 35.551849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245480, 34.565552, 35.429985>,  <44.089207, 34.258427, 35.226875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245480, 34.565552, 35.429985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173962, -0.603255, 0.778345,
		0.903938, -0.215754, -0.369252,
		0.390684, 0.767811, 0.507772,
		44.362686, 34.795895, 35.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693184, 33.984566, 35.516224>,  <44.089207, 34.258427, 35.226875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693184, 33.984566, 35.516224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566677, 34.300701, 35.726116>,  <44.490772, 34.490383, 35.852051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566677, 34.300701, 35.726116>,  <44.693184, 33.984566, 35.516224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566677, 34.300701, 35.726116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120045, -0.515333, 0.848540,
		0.941044, 0.331357, 0.068107,
		-0.316267, 0.790338, 0.524729,
		44.471798, 34.537804, 35.883533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226051, 34.011059, 36.030807>,  <44.693184, 33.984566, 35.516224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226051, 34.011059, 36.030807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911373, 34.226860, 36.150833>,  <44.722565, 34.356342, 36.222847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911373, 34.226860, 36.150833>,  <45.226051, 34.011059, 36.030807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911373, 34.226860, 36.150833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053521, -0.424620, 0.903789,
		0.615011, 0.727070, 0.305174,
		-0.786700, 0.539507, 0.300059,
		44.675362, 34.388714, 36.240852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348858, 34.324909, 36.701908>,  <45.226051, 34.011059, 36.030807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348858, 34.324909, 36.701908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948883, 34.322151, 36.698353>,  <44.708897, 34.320496, 36.696220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948883, 34.322151, 36.698353>,  <45.348858, 34.324909, 36.701908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948883, 34.322151, 36.698353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005607, -0.379434, 0.925202,
		-0.009750, 0.925194, 0.379371,
		-0.999937, -0.006894, -0.008887,
		44.648903, 34.320084, 36.695686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181107, 34.579563, 37.418415>,  <45.348858, 34.324909, 36.701908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181107, 34.579563, 37.418415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861294, 34.401962, 37.256622>,  <44.669407, 34.295403, 37.159546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861294, 34.401962, 37.256622>,  <45.181107, 34.579563, 37.418415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861294, 34.401962, 37.256622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297773, -0.291828, 0.908938,
		-0.521612, 0.847170, 0.101113,
		-0.799533, -0.444004, -0.404485,
		44.621433, 34.268761, 37.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667450, 34.753334, 37.852440>,  <45.181107, 34.579563, 37.418415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667450, 34.753334, 37.852440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.545582, 34.427982, 37.654209>,  <44.472462, 34.232773, 37.535271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.545582, 34.427982, 37.654209>,  <44.667450, 34.753334, 37.852440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545582, 34.427982, 37.654209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332024, -0.396976, 0.855670,
		-0.892712, 0.425241, -0.149113,
		-0.304672, -0.813376, -0.495575,
		44.454182, 34.183971, 37.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066368, 34.532829, 38.168537>,  <44.667450, 34.753334, 37.852440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066368, 34.532829, 38.168537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138607, 34.202244, 37.955238>,  <44.181950, 34.003895, 37.827259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138607, 34.202244, 37.955238>,  <44.066368, 34.532829, 38.168537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138607, 34.202244, 37.955238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308052, -0.562407, 0.767334,
		-0.934071, 0.025690, -0.356161,
		0.180595, -0.826461, -0.533243,
		44.192787, 33.954304, 37.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566509, 34.086693, 38.418312>,  <44.066368, 34.532829, 38.168537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566509, 34.086693, 38.418312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856846, 33.875534, 38.241909>,  <44.031048, 33.748840, 38.136066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856846, 33.875534, 38.241909>,  <43.566509, 34.086693, 38.418312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856846, 33.875534, 38.241909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159644, -0.494332, 0.854488,
		-0.669086, -0.690622, -0.274528,
		0.725836, -0.527899, -0.441004,
		44.074596, 33.717163, 38.109608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434605, 33.368191, 38.601967>,  <43.566509, 34.086693, 38.418312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434605, 33.368191, 38.601967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807140, 33.318417, 38.465069>,  <44.030663, 33.288551, 38.382931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807140, 33.318417, 38.465069>,  <43.434605, 33.368191, 38.601967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807140, 33.318417, 38.465069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209483, -0.585671, 0.783011,
		-0.297876, -0.800940, -0.519389,
		0.931336, -0.124437, -0.342241,
		44.086540, 33.281086, 38.362396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640095, 32.592518, 38.397678>,  <43.434605, 33.368191, 38.601967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640095, 32.592518, 38.397678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953239, 32.814037, 38.511127>,  <44.141125, 32.946949, 38.579197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953239, 32.814037, 38.511127>,  <43.640095, 32.592518, 38.397678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953239, 32.814037, 38.511127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191527, -0.648196, 0.736993,
		0.591987, -0.522640, -0.613513,
		0.782859, 0.553795, 0.283624,
		44.188099, 32.980175, 38.596214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118595, 32.105110, 38.757751>,  <43.640095, 32.592518, 38.397678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118595, 32.105110, 38.757751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240623, 32.460991, 38.893608>,  <44.313839, 32.674519, 38.975121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240623, 32.460991, 38.893608>,  <44.118595, 32.105110, 38.757751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240623, 32.460991, 38.893608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328853, -0.433122, 0.839203,
		0.893749, -0.144324, -0.424716,
		0.305071, 0.889706, 0.339641,
		44.332146, 32.727901, 38.995499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644238, 31.925320, 39.082367>,  <44.118595, 32.105110, 38.757751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644238, 31.925320, 39.082367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589828, 32.283680, 39.251537>,  <44.557182, 32.498695, 39.353039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589828, 32.283680, 39.251537>,  <44.644238, 31.925320, 39.082367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589828, 32.283680, 39.251537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086796, -0.414472, 0.905913,
		0.986896, 0.159932, -0.021384,
		-0.136022, 0.895899, 0.422923,
		44.549023, 32.552448, 39.378414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097557, 32.032608, 39.642899>,  <44.644238, 31.925320, 39.082367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097557, 32.032608, 39.642899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849915, 32.337139, 39.719925>,  <44.701328, 32.519859, 39.766140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849915, 32.337139, 39.719925>,  <45.097557, 32.032608, 39.642899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849915, 32.337139, 39.719925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166875, -0.112075, 0.979588,
		0.767370, 0.638606, -0.057660,
		-0.619109, 0.761329, 0.192570,
		44.664181, 32.565536, 39.777695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501835, 32.565945, 40.089996>,  <45.097557, 32.032608, 39.642899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501835, 32.565945, 40.089996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113449, 32.633121, 40.158150>,  <44.880417, 32.673428, 40.199043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113449, 32.633121, 40.158150>,  <45.501835, 32.565945, 40.089996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113449, 32.633121, 40.158150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176170, 0.020047, 0.984156,
		0.161861, 0.985594, -0.049050,
		-0.970961, 0.167938, 0.170387,
		44.822163, 32.683502, 40.209267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393829, 33.260586, 40.470585>,  <45.501835, 32.565945, 40.089996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393829, 33.260586, 40.470585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076157, 33.031921, 40.553032>,  <44.885555, 32.894722, 40.602501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076157, 33.031921, 40.553032>,  <45.393829, 33.260586, 40.470585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076157, 33.031921, 40.553032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134399, 0.165550, 0.977001,
		-0.592635, 0.803615, -0.054646,
		-0.794179, -0.571660, 0.206116,
		44.837902, 32.860424, 40.614868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217522, 33.536301, 41.148945>,  <45.393829, 33.260586, 40.470585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217522, 33.536301, 41.148945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006329, 33.198566, 41.112419>,  <44.879612, 32.995926, 41.090504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006329, 33.198566, 41.112419>,  <45.217522, 33.536301, 41.148945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006329, 33.198566, 41.112419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061610, -0.145326, 0.987464,
		-0.847018, 0.515737, 0.128749,
		-0.527982, -0.844332, -0.091319,
		44.847935, 32.945267, 41.085022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777683, 33.489662, 41.786812>,  <45.217522, 33.536301, 41.148945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777683, 33.489662, 41.786812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793896, 33.112976, 41.653233>,  <44.803623, 32.886963, 41.573086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793896, 33.112976, 41.653233>,  <44.777683, 33.489662, 41.786812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793896, 33.112976, 41.653233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069120, -0.336067, 0.939298,
		-0.996785, -0.014988, -0.078713,
		0.040531, -0.941719, -0.333951,
		44.806053, 32.830460, 41.553047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232574, 33.112774, 42.068069>,  <44.777683, 33.489662, 41.786812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232574, 33.112774, 42.068069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507298, 32.836956, 41.976139>,  <44.672131, 32.671467, 41.920982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507298, 32.836956, 41.976139>,  <44.232574, 33.112774, 42.068069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507298, 32.836956, 41.976139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066804, -0.374744, 0.924718,
		-0.723761, -0.619752, -0.303442,
		0.686810, -0.689546, -0.229824,
		44.713341, 32.630093, 41.907192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025993, 32.505959, 42.426414>,  <44.232574, 33.112774, 42.068069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025993, 32.505959, 42.426414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415936, 32.468365, 42.345589>,  <44.649899, 32.445808, 42.297092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415936, 32.468365, 42.345589>,  <44.025993, 32.505959, 42.426414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415936, 32.468365, 42.345589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134947, -0.472594, 0.870887,
		-0.177347, -0.876254, -0.448026,
		0.974853, -0.093990, -0.202061,
		44.708393, 32.440166, 42.284969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.340096, 39.360088, 43.338627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043606, 39.106319, 43.250908>,  <35.865711, 38.954056, 43.198277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043606, 39.106319, 43.250908>,  <36.340096, 39.360088, 43.338627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043606, 39.106319, 43.250908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630912, -0.546899, -0.550319,
		0.229204, -0.546267, 0.805641,
		-0.741226, -0.634424, -0.219295,
		35.821239, 38.915993, 43.185120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750256, 38.734322, 43.273090>,  <36.340096, 39.360088, 43.338627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750256, 38.734322, 43.273090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402576, 38.717678, 43.076004>,  <36.193970, 38.707691, 42.957752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402576, 38.717678, 43.076004>,  <36.750256, 38.734322, 43.273090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402576, 38.717678, 43.076004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446656, -0.493535, -0.746272,
		-0.212121, -0.868730, 0.447563,
		-0.869197, -0.041607, -0.492712,
		36.141819, 38.705196, 42.928188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695423, 37.992161, 43.029343>,  <36.750256, 38.734322, 43.273090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695423, 37.992161, 43.029343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457642, 38.218891, 42.801193>,  <36.314972, 38.354931, 42.664303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457642, 38.218891, 42.801193>,  <36.695423, 37.992161, 43.029343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457642, 38.218891, 42.801193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242194, -0.550160, -0.799165,
		-0.766787, -0.613211, 0.189765,
		-0.594458, 0.566829, -0.570372,
		36.279305, 38.388939, 42.630081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518982, 37.484455, 42.503632>,  <36.695423, 37.992161, 43.029343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518982, 37.484455, 42.503632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426945, 37.843647, 42.353600>,  <36.371723, 38.059162, 42.263580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426945, 37.843647, 42.353600>,  <36.518982, 37.484455, 42.503632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426945, 37.843647, 42.353600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322259, -0.293370, -0.900046,
		-0.918264, -0.327963, -0.221882,
		-0.230088, 0.897984, -0.375080,
		36.357918, 38.113041, 42.241077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290970, 37.317841, 41.964039>,  <36.518982, 37.484455, 42.503632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290970, 37.317841, 41.964039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389164, 37.699448, 41.895229>,  <36.448082, 37.928410, 41.853943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389164, 37.699448, 41.895229>,  <36.290970, 37.317841, 41.964039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389164, 37.699448, 41.895229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354401, -0.253494, -0.900078,
		-0.902296, 0.159988, -0.400333,
		0.245484, 0.954015, -0.172026,
		36.462811, 37.985653, 41.843620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719902, 37.518116, 41.456776>,  <36.290970, 37.317841, 41.964039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719902, 37.518116, 41.456776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038204, 37.760361, 41.457745>,  <36.229187, 37.905708, 41.458324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038204, 37.760361, 41.457745>,  <35.719902, 37.518116, 41.456776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038204, 37.760361, 41.457745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249372, -0.324027, -0.912590,
		-0.551887, 0.726806, -0.408869,
		0.795760, 0.605607, 0.002419,
		36.276932, 37.942043, 41.458469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721336, 37.963440, 40.747387>,  <35.719902, 37.518116, 41.456776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721336, 37.963440, 40.747387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087082, 37.963097, 40.909344>,  <36.306530, 37.962891, 41.006519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087082, 37.963097, 40.909344>,  <35.721336, 37.963440, 40.747387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087082, 37.963097, 40.909344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401386, -0.129480, -0.906711,
		0.053204, 0.991582, -0.118047,
		0.914362, -0.000859, 0.404896,
		36.361389, 37.962837, 41.030811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126945, 38.479980, 40.340263>,  <35.721336, 37.963440, 40.747387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126945, 38.479980, 40.340263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369434, 38.224487, 40.529800>,  <36.514927, 38.071194, 40.643520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369434, 38.224487, 40.529800>,  <36.126945, 38.479980, 40.340263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369434, 38.224487, 40.529800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351307, -0.319453, -0.880076,
		0.713499, 0.699982, 0.030731,
		0.606220, -0.638729, 0.473838,
		36.551300, 38.032867, 40.671951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660431, 38.520035, 40.005627>,  <36.126945, 38.479980, 40.340263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660431, 38.520035, 40.005627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724415, 38.172260, 40.192600>,  <36.762806, 37.963596, 40.304787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724415, 38.172260, 40.192600>,  <36.660431, 38.520035, 40.005627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724415, 38.172260, 40.192600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368070, -0.386852, -0.845500,
		0.915935, 0.307298, 0.258130,
		0.159963, -0.869433, 0.467438,
		36.772404, 37.911430, 40.332832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447491, 38.444454, 39.943199>,  <36.660431, 38.520035, 40.005627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447491, 38.444454, 39.943199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283390, 38.084167, 40.000340>,  <37.184929, 37.867996, 40.034626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283390, 38.084167, 40.000340>,  <37.447491, 38.444454, 39.943199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283390, 38.084167, 40.000340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424989, -0.327416, -0.843910,
		0.806896, -0.285501, 0.517116,
		-0.410249, -0.900716, 0.142856,
		37.160316, 37.813953, 40.043198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980232, 37.983990, 39.850979>,  <37.447491, 38.444454, 39.943199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980232, 37.983990, 39.850979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651093, 37.765415, 39.788593>,  <37.453609, 37.634270, 39.751163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651093, 37.765415, 39.788593>,  <37.980232, 37.983990, 39.850979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651093, 37.765415, 39.788593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501050, -0.568207, -0.652755,
		0.268069, -0.615266, 0.741342,
		-0.822854, -0.546432, -0.155960,
		37.404236, 37.601486, 39.741806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186996, 37.326878, 39.793003>,  <37.980232, 37.983990, 39.850979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186996, 37.326878, 39.793003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832108, 37.336784, 39.608730>,  <37.619175, 37.342728, 39.498169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832108, 37.336784, 39.608730>,  <38.186996, 37.326878, 39.793003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832108, 37.336784, 39.608730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336720, -0.647834, -0.683323,
		-0.315369, -0.761378, 0.566432,
		-0.887221, 0.024770, -0.460678,
		37.565941, 37.344215, 39.470528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959389, 36.681374, 39.746635>,  <38.186996, 37.326878, 39.793003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959389, 36.681374, 39.746635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879944, 36.959404, 39.470253>,  <37.832279, 37.126225, 39.304424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879944, 36.959404, 39.470253>,  <37.959389, 36.681374, 39.746635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879944, 36.959404, 39.470253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629761, -0.449687, -0.633390,
		-0.750970, -0.560932, -0.348423,
		-0.198607, 0.695080, -0.690955,
		37.820362, 37.167927, 39.262966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256931, 36.418640, 39.181915>,  <37.959389, 36.681374, 39.746635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256931, 36.418640, 39.181915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212322, 36.791172, 39.043240>,  <38.185555, 37.014690, 38.960033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212322, 36.791172, 39.043240>,  <38.256931, 36.418640, 39.181915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212322, 36.791172, 39.043240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822578, -0.109235, -0.558062,
		-0.557609, -0.347413, -0.753908,
		-0.111525, 0.931328, -0.346684,
		38.178864, 37.070572, 38.939236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794380, 35.771393, 38.950314>,  <38.256931, 36.418640, 39.181915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794380, 35.771393, 38.950314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936298, 35.434372, 39.112415>,  <38.021450, 35.232159, 39.209675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936298, 35.434372, 39.112415>,  <37.794380, 35.771393, 38.950314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936298, 35.434372, 39.112415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931389, -0.280749, 0.231719,
		-0.081460, -0.459661, -0.884351,
		0.354793, -0.842551, 0.405253,
		38.042736, 35.181606, 39.233990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352016, 35.188679, 38.594807>,  <37.794380, 35.771393, 38.950314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352016, 35.188679, 38.594807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524410, 35.039383, 38.923428>,  <37.627846, 34.949806, 39.120602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524410, 35.039383, 38.923428>,  <37.352016, 35.188679, 38.594807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524410, 35.039383, 38.923428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861953, -0.439677, 0.252431,
		0.267002, -0.816933, -0.511205,
		0.430984, -0.373235, 0.821552,
		37.653706, 34.927414, 39.169895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064903, 34.460842, 38.605839>,  <37.352016, 35.188679, 38.594807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064903, 34.460842, 38.605839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181927, 34.570587, 38.972256>,  <37.252140, 34.636433, 39.192104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181927, 34.570587, 38.972256>,  <37.064903, 34.460842, 38.605839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181927, 34.570587, 38.972256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854737, -0.354496, 0.379153,
		0.428759, -0.893901, 0.130795,
		0.292559, 0.274360, 0.916043,
		37.269695, 34.652897, 39.247070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826279, 33.785202, 38.967400>,  <37.064903, 34.460842, 38.605839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826279, 33.785202, 38.967400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868114, 34.078430, 39.236225>,  <36.893215, 34.254368, 39.397522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868114, 34.078430, 39.236225>,  <36.826279, 33.785202, 38.967400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868114, 34.078430, 39.236225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797937, -0.341495, 0.496667,
		0.593598, -0.588213, 0.549224,
		0.104589, 0.733066, 0.672068,
		36.899490, 34.298351, 39.437847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542839, 33.470711, 39.600334>,  <36.826279, 33.785202, 38.967400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542839, 33.470711, 39.600334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558292, 33.865681, 39.661652>,  <36.567566, 34.102661, 39.698441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558292, 33.865681, 39.661652>,  <36.542839, 33.470711, 39.600334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558292, 33.865681, 39.661652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830749, -0.053508, 0.554069,
		0.555304, -0.148752, 0.818236,
		0.038637, 0.987426, 0.153289,
		36.569885, 34.161907, 39.707638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374756, 33.585438, 40.223095>,  <36.542839, 33.470711, 39.600334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374756, 33.585438, 40.223095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313671, 33.965759, 40.115280>,  <36.277020, 34.193954, 40.050591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313671, 33.965759, 40.115280>,  <36.374756, 33.585438, 40.223095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313671, 33.965759, 40.115280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790184, 0.046328, 0.611117,
		0.593540, 0.306302, 0.744237,
		-0.152708, 0.950807, -0.269532,
		36.267860, 34.250999, 40.034420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344437, 34.043190, 40.869617>,  <36.374756, 33.585438, 40.223095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344437, 34.043190, 40.869617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138866, 34.222919, 40.577320>,  <36.015526, 34.330757, 40.401939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138866, 34.222919, 40.577320>,  <36.344437, 34.043190, 40.869617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138866, 34.222919, 40.577320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848218, -0.138972, 0.511090,
		0.128092, 0.882493, 0.452547,
		-0.513925, 0.449325, -0.730745,
		35.984688, 34.357716, 40.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991913, 34.669498, 41.266300>,  <36.344437, 34.043190, 40.869617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991913, 34.669498, 41.266300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803028, 34.585609, 40.923832>,  <35.689697, 34.535275, 40.718349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803028, 34.585609, 40.923832>,  <35.991913, 34.669498, 41.266300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803028, 34.585609, 40.923832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867942, -0.058981, 0.493151,
		-0.153923, 0.975980, -0.154177,
		-0.472212, -0.209724, -0.856173,
		35.661366, 34.522694, 40.666981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506607, 35.155605, 41.142250>,  <35.991913, 34.669498, 41.266300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506607, 35.155605, 41.142250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363819, 34.846756, 40.931957>,  <35.278145, 34.661446, 40.805782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363819, 34.846756, 40.931957>,  <35.506607, 35.155605, 41.142250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363819, 34.846756, 40.931957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886720, 0.103098, 0.450664,
		-0.293768, 0.627050, -0.721463,
		-0.356970, -0.772126, -0.525731,
		35.256729, 34.615120, 40.774239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789539, 35.382027, 41.094265>,  <35.506607, 35.155605, 41.142250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789539, 35.382027, 41.094265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801273, 34.993553, 40.999664>,  <34.808311, 34.760468, 40.942902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801273, 34.993553, 40.999664>,  <34.789539, 35.382027, 41.094265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801273, 34.993553, 40.999664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768646, -0.173172, 0.615789,
		-0.639002, 0.163727, -0.751578,
		0.029331, -0.971187, -0.236505,
		34.810074, 34.702198, 40.928711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126091, 35.168240, 40.816490>,  <34.789539, 35.382027, 41.094265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126091, 35.168240, 40.816490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280945, 34.820721, 40.939983>,  <34.373856, 34.612209, 41.014080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280945, 34.820721, 40.939983>,  <34.126091, 35.168240, 40.816490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280945, 34.820721, 40.939983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774740, -0.124966, 0.619807,
		-0.499907, -0.479135, -0.721473,
		0.387130, -0.868800, 0.308734,
		34.397083, 34.560081, 41.032604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546730, 34.713390, 40.856445>,  <34.126091, 35.168240, 40.816490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546730, 34.713390, 40.856445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828701, 34.549644, 41.088135>,  <33.997883, 34.451397, 41.227150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828701, 34.549644, 41.088135>,  <33.546730, 34.713390, 40.856445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828701, 34.549644, 41.088135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669945, -0.116111, 0.733275,
		-0.232927, -0.904950, -0.356105,
		0.704925, -0.409370, 0.579221,
		34.040180, 34.426834, 41.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186245, 34.115810, 41.254295>,  <33.546730, 34.713390, 40.856445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186245, 34.115810, 41.254295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509785, 34.188519, 41.477982>,  <33.703907, 34.232143, 41.612194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509785, 34.188519, 41.477982>,  <33.186245, 34.115810, 41.254295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509785, 34.188519, 41.477982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569266, 0.003825, 0.822145,
		0.147305, -0.983333, 0.106571,
		0.808850, 0.181773, 0.559214,
		33.752441, 34.243050, 41.645744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158707, 33.647434, 41.843330>,  <33.186245, 34.115810, 41.254295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158707, 33.647434, 41.843330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382797, 33.960381, 41.952187>,  <33.517250, 34.148148, 42.017502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382797, 33.960381, 41.952187>,  <33.158707, 33.647434, 41.843330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382797, 33.960381, 41.952187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523735, 0.080019, 0.848115,
		0.641757, -0.617662, 0.454579,
		0.560223, 0.782362, 0.272139,
		33.550865, 34.195087, 42.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262562, 32.987438, 42.290630>,  <33.158707, 33.647434, 41.843330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262562, 32.987438, 42.290630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929268, 32.789085, 42.192795>,  <32.729294, 32.670074, 42.134094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929268, 32.789085, 42.192795>,  <33.262562, 32.987438, 42.290630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929268, 32.789085, 42.192795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043737, 0.381863, -0.923183,
		0.551191, -0.779923, -0.296492,
		-0.833232, -0.495883, -0.244591,
		32.679298, 32.640320, 42.119419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369289, 32.770935, 41.669701>,  <33.262562, 32.987438, 42.290630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369289, 32.770935, 41.669701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971066, 32.733337, 41.667744>,  <32.732132, 32.710777, 41.666569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971066, 32.733337, 41.667744>,  <33.369289, 32.770935, 41.669701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971066, 32.733337, 41.667744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035443, 0.422574, -0.905635,
		0.087193, -0.901442, -0.424029,
		-0.995561, -0.093994, -0.004896,
		32.672398, 32.705139, 41.666275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121559, 32.527626, 40.967182>,  <33.369289, 32.770935, 41.669701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121559, 32.527626, 40.967182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796680, 32.698132, 41.126503>,  <32.601753, 32.800434, 41.222095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796680, 32.698132, 41.126503>,  <33.121559, 32.527626, 40.967182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796680, 32.698132, 41.126503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268714, 0.332655, -0.903955,
		-0.517816, -0.841215, -0.155638,
		-0.812194, 0.426260, 0.398300,
		32.553020, 32.826008, 41.245995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580208, 32.469315, 40.473694>,  <33.121559, 32.527626, 40.967182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580208, 32.469315, 40.473694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400879, 32.735886, 40.711979>,  <32.293282, 32.895828, 40.854950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400879, 32.735886, 40.711979>,  <32.580208, 32.469315, 40.473694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400879, 32.735886, 40.711979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300820, 0.515084, -0.802618,
		-0.841734, -0.539033, -0.030446,
		-0.448321, 0.666432, 0.595715,
		32.266384, 32.935814, 40.890694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958750, 32.550106, 40.128777>,  <32.580208, 32.469315, 40.473694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958750, 32.550106, 40.128777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997335, 32.878670, 40.353626>,  <32.020485, 33.075806, 40.488537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997335, 32.878670, 40.353626>,  <31.958750, 32.550106, 40.128777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997335, 32.878670, 40.353626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307909, 0.561685, -0.767920,
		-0.946513, -0.099008, 0.307100,
		0.096463, 0.821405, 0.562128,
		32.026276, 33.125092, 40.522266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335655, 32.941227, 39.916733>,  <31.958750, 32.550106, 40.128777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335655, 32.941227, 39.916733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609186, 33.182747, 40.080589>,  <31.773304, 33.327660, 40.178902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609186, 33.182747, 40.080589>,  <31.335655, 32.941227, 39.916733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609186, 33.182747, 40.080589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128091, 0.652049, -0.747278,
		-0.718313, 0.458538, 0.523230,
		0.683827, 0.603801, 0.409641,
		31.814335, 33.363888, 40.203480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974812, 33.669521, 40.074432>,  <31.335655, 32.941227, 39.916733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974812, 33.669521, 40.074432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365297, 33.754951, 40.059513>,  <31.599588, 33.806210, 40.050560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365297, 33.754951, 40.059513>,  <30.974812, 33.669521, 40.074432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365297, 33.754951, 40.059513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184656, 0.728889, -0.659260,
		-0.113618, 0.650466, 0.750990,
		0.976214, 0.213579, -0.037297,
		31.658161, 33.819027, 40.048325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980524, 34.396744, 40.072651>,  <30.974812, 33.669521, 40.074432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980524, 34.396744, 40.072651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341175, 34.287689, 39.938347>,  <31.557566, 34.222260, 39.857765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341175, 34.287689, 39.938347>,  <30.980524, 34.396744, 40.072651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341175, 34.287689, 39.938347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167520, 0.495586, -0.852251,
		0.398749, 0.824661, 0.401163,
		0.901630, -0.272632, -0.335762,
		31.611664, 34.205898, 39.837620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353371, 35.014549, 39.994186>,  <30.980524, 34.396744, 40.072651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353371, 35.014549, 39.994186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514677, 34.732876, 39.760433>,  <31.611462, 34.563873, 39.620182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514677, 34.732876, 39.760433>,  <31.353371, 35.014549, 39.994186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514677, 34.732876, 39.760433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258827, 0.524763, -0.810945,
		0.877715, 0.478283, 0.029359,
		0.403268, -0.704180, -0.584385,
		31.635658, 34.521622, 39.585117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705660, 35.458466, 39.490143>,  <31.353371, 35.014549, 39.994186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705660, 35.458466, 39.490143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644157, 35.086796, 39.355690>,  <31.607256, 34.863792, 39.275017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644157, 35.086796, 39.355690>,  <31.705660, 35.458466, 39.490143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644157, 35.086796, 39.355690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244995, 0.365406, -0.898029,
		0.957255, -0.055725, -0.283827,
		-0.153755, -0.929179, -0.336134,
		31.598030, 34.808041, 39.254848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922718, 35.568008, 38.894794>,  <31.705660, 35.458466, 39.490143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922718, 35.568008, 38.894794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735588, 35.215538, 38.867485>,  <31.623310, 35.004055, 38.851101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735588, 35.215538, 38.867485>,  <31.922718, 35.568008, 38.894794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735588, 35.215538, 38.867485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422639, 0.290886, -0.858348,
		0.776219, -0.372701, -0.508505,
		-0.467825, -0.881181, -0.068273,
		31.595242, 34.951183, 38.847004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025402, 35.373848, 38.202873>,  <31.922718, 35.568008, 38.894794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025402, 35.373848, 38.202873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699907, 35.192211, 38.347992>,  <31.504610, 35.083229, 38.435062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699907, 35.192211, 38.347992>,  <32.025402, 35.373848, 38.202873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699907, 35.192211, 38.347992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554750, 0.420544, -0.717910,
		0.173429, -0.785454, -0.594125,
		-0.813741, -0.454097, 0.362796,
		31.455786, 35.055981, 38.456833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.019676, 31.035337, 45.317150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.626438, 31.075466, 45.378403>,  <32.390495, 31.099543, 45.415154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.626438, 31.075466, 45.378403>,  <33.019676, 31.035337, 45.317150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626438, 31.075466, 45.378403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171221, -0.207797, -0.963070,
		-0.064794, -0.973014, 0.221462,
		-0.983100, 0.100320, 0.153136,
		32.331509, 31.105562, 45.424343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638771, 30.497858, 44.965649>,  <33.019676, 31.035337, 45.317150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638771, 30.497858, 44.965649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.362724, 30.785990, 44.993538>,  <32.197094, 30.958868, 45.010269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.362724, 30.785990, 44.993538>,  <32.638771, 30.497858, 44.965649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362724, 30.785990, 44.993538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177157, -0.074744, -0.981340,
		-0.701676, -0.689595, 0.179193,
		-0.690121, 0.720328, 0.069720,
		32.155689, 31.002089, 45.014454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282169, 30.530310, 44.205418>,  <32.638771, 30.497858, 44.965649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282169, 30.530310, 44.205418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.160458, 30.877617, 44.362144>,  <32.087429, 31.086000, 44.456181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.160458, 30.877617, 44.362144>,  <32.282169, 30.530310, 44.205418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160458, 30.877617, 44.362144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260096, 0.319966, -0.911028,
		-0.916385, -0.379120, 0.128473,
		-0.304282, 0.868268, 0.391820,
		32.069172, 31.138098, 44.479691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563099, 30.627300, 43.923405>,  <32.282169, 30.530310, 44.205418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563099, 30.627300, 43.923405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.751005, 30.963243, 44.032188>,  <31.863749, 31.164810, 44.097458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.751005, 30.963243, 44.032188>,  <31.563099, 30.627300, 43.923405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751005, 30.963243, 44.032188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001966, 0.307069, -0.951685,
		-0.882790, 0.447602, 0.142599,
		0.469764, 0.839858, 0.271958,
		31.891933, 31.215200, 44.113777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281633, 31.202053, 43.548359>,  <31.563099, 30.627300, 43.923405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281633, 31.202053, 43.548359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616259, 31.376406, 43.681129>,  <31.817034, 31.481016, 43.760792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616259, 31.376406, 43.681129>,  <31.281633, 31.202053, 43.548359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616259, 31.376406, 43.681129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073876, 0.510559, -0.856663,
		-0.542868, 0.741173, 0.394914,
		0.836562, 0.435880, 0.331922,
		31.867228, 31.507170, 43.780704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148819, 32.012291, 43.482517>,  <31.281633, 31.202053, 43.548359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148819, 32.012291, 43.482517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.540485, 31.938862, 43.517239>,  <31.775484, 31.894804, 43.538071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.540485, 31.938862, 43.517239>,  <31.148819, 32.012291, 43.482517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540485, 31.938862, 43.517239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173231, 0.532084, -0.828781,
		0.105957, 0.826551, 0.552799,
		0.979165, -0.183577, 0.086806,
		31.834234, 31.883789, 43.543282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514492, 32.671310, 43.238354>,  <31.148819, 32.012291, 43.482517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514492, 32.671310, 43.238354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.788397, 32.384167, 43.188122>,  <31.952740, 32.211880, 43.157982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.788397, 32.384167, 43.188122>,  <31.514492, 32.671310, 43.238354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788397, 32.384167, 43.188122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260984, 0.402448, -0.877453,
		0.680431, 0.568073, 0.462932,
		0.684764, -0.717864, -0.125580,
		31.993826, 32.168808, 43.150448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071011, 33.033962, 43.085560>,  <31.514492, 32.671310, 43.238354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071011, 33.033962, 43.085560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.152626, 32.667789, 42.946789>,  <32.201595, 32.448086, 42.863525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.152626, 32.667789, 42.946789>,  <32.071011, 33.033962, 43.085560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152626, 32.667789, 42.946789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319121, 0.397217, -0.860454,
		0.925490, 0.064852, 0.373179,
		0.204036, -0.915430, -0.346924,
		32.213837, 32.393162, 42.842712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691719, 33.190636, 42.837250>,  <32.071011, 33.033962, 43.085560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691719, 33.190636, 42.837250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572777, 32.840588, 42.684544>,  <32.501411, 32.630558, 42.592918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572777, 32.840588, 42.684544>,  <32.691719, 33.190636, 42.837250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572777, 32.840588, 42.684544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358842, 0.268102, -0.894066,
		0.884768, -0.402846, 0.234310,
		-0.297352, -0.875121, -0.381766,
		32.483570, 32.578053, 42.570015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433056, 33.522343, 42.780907>,  <32.691719, 33.190636, 42.837250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433056, 33.522343, 42.780907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524246, 33.902370, 42.695683>,  <33.578960, 34.130386, 42.644547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524246, 33.902370, 42.695683>,  <33.433056, 33.522343, 42.780907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524246, 33.902370, 42.695683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315847, 0.279153, 0.906815,
		0.921014, -0.139439, 0.363717,
		0.227978, 0.950068, -0.213063,
		33.592640, 34.187389, 42.631763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896847, 33.816975, 43.428062>,  <33.433056, 33.522343, 42.780907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896847, 33.816975, 43.428062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.720291, 34.118458, 43.233288>,  <33.614357, 34.299347, 43.116425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.720291, 34.118458, 43.233288>,  <33.896847, 33.816975, 43.428062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720291, 34.118458, 43.233288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256799, 0.413857, 0.873371,
		0.859787, 0.510537, 0.010880,
		-0.441386, 0.753707, -0.486934,
		33.587875, 34.344570, 43.087208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046940, 34.348999, 43.853844>,  <33.896847, 33.816975, 43.428062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046940, 34.348999, 43.853844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.757687, 34.476990, 43.608994>,  <33.584133, 34.553783, 43.462082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.757687, 34.476990, 43.608994>,  <34.046940, 34.348999, 43.853844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757687, 34.476990, 43.608994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293437, 0.659958, 0.691628,
		0.625278, 0.679760, -0.383346,
		-0.723134, 0.319972, -0.612124,
		33.540745, 34.572983, 43.425358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155991, 35.044632, 43.732395>,  <34.046940, 34.348999, 43.853844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155991, 35.044632, 43.732395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.763664, 34.979797, 43.689072>,  <33.528271, 34.940895, 43.663078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.763664, 34.979797, 43.689072>,  <34.155991, 35.044632, 43.732395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763664, 34.979797, 43.689072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188565, 0.647819, 0.738088,
		-0.049471, 0.744351, -0.665954,
		-0.980814, -0.162089, -0.108310,
		33.469421, 34.931171, 43.656578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891602, 35.790352, 43.755566>,  <34.155991, 35.044632, 43.732395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891602, 35.790352, 43.755566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.626644, 35.506176, 43.850647>,  <33.467670, 35.335670, 43.907696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.626644, 35.506176, 43.850647>,  <33.891602, 35.790352, 43.755566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626644, 35.506176, 43.850647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249630, 0.508480, 0.824095,
		-0.706341, 0.486538, -0.514163,
		-0.662395, -0.710443, 0.237705,
		33.427925, 35.293045, 43.921959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361027, 36.122425, 44.062428>,  <33.891602, 35.790352, 43.755566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361027, 36.122425, 44.062428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326286, 35.742588, 44.182919>,  <33.305443, 35.514687, 44.255211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326286, 35.742588, 44.182919>,  <33.361027, 36.122425, 44.062428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326286, 35.742588, 44.182919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246577, 0.313451, 0.917032,
		-0.965223, 0.005374, -0.261372,
		-0.086855, -0.949589, 0.301225,
		33.300228, 35.457710, 44.273285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008099, 36.181904, 44.597393>,  <33.361027, 36.122425, 44.062428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008099, 36.181904, 44.597393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.125046, 35.800591, 44.627773>,  <33.195213, 35.571800, 44.646004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.125046, 35.800591, 44.627773>,  <33.008099, 36.181904, 44.597393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125046, 35.800591, 44.627773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133675, 0.037906, 0.990300,
		-0.946918, -0.299682, -0.116348,
		0.292364, -0.953286, 0.075954,
		33.212753, 35.514606, 44.650558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451004, 35.867836, 44.897881>,  <33.008099, 36.181904, 44.597393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451004, 35.867836, 44.897881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.766247, 35.635017, 44.977993>,  <32.955391, 35.495327, 45.026062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.766247, 35.635017, 44.977993>,  <32.451004, 35.867836, 44.897881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766247, 35.635017, 44.977993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236160, 0.014563, 0.971605,
		-0.568438, -0.813024, -0.125980,
		0.788103, -0.582049, 0.200282,
		33.002678, 35.460403, 45.038078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163162, 35.296200, 45.250935>,  <32.451004, 35.867836, 44.897881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163162, 35.296200, 45.250935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547909, 35.319946, 45.357727>,  <32.778759, 35.334194, 45.421803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547909, 35.319946, 45.357727>,  <32.163162, 35.296200, 45.250935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547909, 35.319946, 45.357727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239132, -0.291207, 0.926291,
		0.132740, -0.954816, -0.265906,
		0.961871, 0.059369, 0.266982,
		32.836472, 35.337757, 45.437820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307285, 34.744793, 45.800667>,  <32.163162, 35.296200, 45.250935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307285, 34.744793, 45.800667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.623638, 34.988060, 45.827927>,  <32.813450, 35.134022, 45.844284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.623638, 34.988060, 45.827927>,  <32.307285, 34.744793, 45.800667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623638, 34.988060, 45.827927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010575, -0.124926, 0.992110,
		0.611882, -0.783918, -0.105233,
		0.790879, 0.608166, 0.068150,
		32.860901, 35.170509, 45.848373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699959, 34.388283, 46.219276>,  <32.307285, 34.744793, 45.800667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699959, 34.388283, 46.219276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.850292, 34.757683, 46.250019>,  <32.940491, 34.979321, 46.268463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.850292, 34.757683, 46.250019>,  <32.699959, 34.388283, 46.219276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850292, 34.757683, 46.250019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147882, -0.141639, 0.978810,
		0.914812, -0.356502, -0.189801,
		0.375831, 0.923496, 0.076853,
		32.963043, 35.034733, 46.273075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283508, 34.359123, 46.607731>,  <32.699959, 34.388283, 46.219276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283508, 34.359123, 46.607731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.168461, 34.740559, 46.643394>,  <33.099434, 34.969421, 46.664795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.168461, 34.740559, 46.643394>,  <33.283508, 34.359123, 46.607731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168461, 34.740559, 46.643394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045293, -0.106534, 0.993277,
		0.956675, 0.281642, 0.073832,
		-0.287614, 0.953587, 0.089162,
		33.082176, 35.026634, 46.670143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785206, 34.652485, 46.979767>,  <33.283508, 34.359123, 46.607731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785206, 34.652485, 46.979767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.464756, 34.889793, 47.011356>,  <33.272488, 35.032177, 47.030312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.464756, 34.889793, 47.011356>,  <33.785206, 34.652485, 46.979767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464756, 34.889793, 47.011356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263916, 0.231740, 0.936293,
		0.537172, 0.770927, -0.342225,
		-0.801121, 0.593269, 0.078975,
		33.224419, 35.067776, 47.035049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118454, 35.322712, 47.259468>,  <33.785206, 34.652485, 46.979767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118454, 35.322712, 47.259468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.726967, 35.339176, 47.339890>,  <33.492077, 35.349052, 47.388142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.726967, 35.339176, 47.339890>,  <34.118454, 35.322712, 47.259468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726967, 35.339176, 47.339890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204821, 0.257502, 0.944321,
		-0.012906, 0.965401, -0.260450,
		-0.978715, 0.041158, 0.201057,
		33.433353, 35.351524, 47.400208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.726486, 36.951153, 47.392078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.848400, 36.571480, 47.360699>,  <28.921549, 36.343674, 47.341869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.848400, 36.571480, 47.360699>,  <28.726486, 36.951153, 47.392078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848400, 36.571480, 47.360699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068631, 0.104044, -0.992202,
		0.949946, 0.297022, 0.096854,
		0.304783, -0.949185, -0.078451,
		28.939835, 36.286724, 47.337162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255356, 37.007389, 47.027225>,  <28.726486, 36.951153, 47.392078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255356, 37.007389, 47.027225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171547, 36.617752, 46.993179>,  <29.121262, 36.383968, 46.972752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171547, 36.617752, 46.993179>,  <29.255356, 37.007389, 47.027225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171547, 36.617752, 46.993179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175635, 0.048141, -0.983277,
		0.961901, -0.220966, 0.160998,
		-0.209521, -0.974093, -0.085117,
		29.108690, 36.325523, 46.967644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852009, 36.763035, 46.732712>,  <29.255356, 37.007389, 47.027225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852009, 36.763035, 46.732712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604420, 36.451054, 46.695747>,  <29.455866, 36.263863, 46.673569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604420, 36.451054, 46.695747>,  <29.852009, 36.763035, 46.732712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604420, 36.451054, 46.695747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181614, -0.027663, -0.982981,
		0.764126, -0.625223, 0.158774,
		-0.618974, -0.779956, -0.092411,
		29.418728, 36.217068, 46.668026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235685, 36.362324, 46.286747>,  <29.852009, 36.763035, 46.732712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235685, 36.362324, 46.286747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854166, 36.246754, 46.253780>,  <29.625256, 36.177410, 46.234001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854166, 36.246754, 46.253780>,  <30.235685, 36.362324, 46.286747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854166, 36.246754, 46.253780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087956, -0.006235, -0.996105,
		0.287290, -0.957330, 0.031360,
		-0.953797, -0.288929, -0.082412,
		29.568027, 36.160076, 46.229057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325665, 35.773830, 45.903740>,  <30.235685, 36.362324, 46.286747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325665, 35.773830, 45.903740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.952667, 35.911564, 45.860123>,  <29.728868, 35.994202, 45.833954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.952667, 35.911564, 45.860123>,  <30.325665, 35.773830, 45.903740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952667, 35.911564, 45.860123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070259, -0.123212, -0.989890,
		-0.354286, -0.930728, 0.090702,
		-0.932494, 0.344331, -0.109044,
		29.672918, 36.014862, 45.827408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123608, 35.478329, 45.359760>,  <30.325665, 35.773830, 45.903740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123608, 35.478329, 45.359760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.822325, 35.740688, 45.379673>,  <29.641556, 35.898102, 45.391621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.822325, 35.740688, 45.379673>,  <30.123608, 35.478329, 45.359760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822325, 35.740688, 45.379673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162403, -0.112085, -0.980338,
		-0.637421, -0.746482, 0.190942,
		-0.753207, 0.655897, 0.049786,
		29.596363, 35.937458, 45.394608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627546, 35.134617, 45.004009>,  <30.123608, 35.478329, 45.359760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627546, 35.134617, 45.004009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.564007, 35.529526, 45.001106>,  <29.525883, 35.766472, 44.999363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.564007, 35.529526, 45.001106>,  <29.627546, 35.134617, 45.004009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564007, 35.529526, 45.001106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020608, -0.010668, -0.999731,
		-0.987088, -0.158655, 0.022041,
		-0.158847, 0.987277, -0.007261,
		29.516352, 35.825710, 44.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933729, 35.352142, 44.493618>,  <29.627546, 35.134617, 45.004009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933729, 35.352142, 44.493618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.187901, 35.655434, 44.552029>,  <29.340403, 35.837410, 44.587074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.187901, 35.655434, 44.552029>,  <28.933729, 35.352142, 44.493618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187901, 35.655434, 44.552029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136574, 0.075765, -0.987728,
		-0.759987, 0.647572, -0.055410,
		0.635427, 0.758228, 0.146022,
		29.378529, 35.882900, 44.595837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714996, 35.810669, 44.016006>,  <28.933729, 35.352142, 44.493618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714996, 35.810669, 44.016006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.073612, 35.965816, 44.101585>,  <29.288782, 36.058907, 44.152931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.073612, 35.965816, 44.101585>,  <28.714996, 35.810669, 44.016006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073612, 35.965816, 44.101585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128124, 0.235276, -0.963446,
		-0.424031, 0.891179, 0.161238,
		0.896538, 0.387873, 0.213946,
		29.342573, 36.082180, 44.165768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864384, 36.488827, 43.713997>,  <28.714996, 35.810669, 44.016006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864384, 36.488827, 43.713997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.234800, 36.358612, 43.790386>,  <29.457050, 36.280483, 43.836220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.234800, 36.358612, 43.790386>,  <28.864384, 36.488827, 43.713997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234800, 36.358612, 43.790386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284059, 0.267989, -0.920594,
		0.248510, 0.906756, 0.340641,
		0.926042, -0.325539, 0.190975,
		29.512613, 36.260952, 43.847679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300339, 37.042751, 43.551758>,  <28.864384, 36.488827, 43.713997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300339, 37.042751, 43.551758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577040, 36.753956, 43.546024>,  <29.743061, 36.580677, 43.542583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577040, 36.753956, 43.546024>,  <29.300339, 37.042751, 43.551758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577040, 36.753956, 43.546024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313772, 0.318391, -0.894524,
		0.650404, 0.614291, 0.446789,
		0.691752, -0.721993, -0.014336,
		29.784565, 36.537357, 43.541725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917244, 37.303802, 43.503933>,  <29.300339, 37.042751, 43.551758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917244, 37.303802, 43.503933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.968088, 36.929195, 43.373230>,  <29.998594, 36.704430, 43.294807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.968088, 36.929195, 43.373230>,  <29.917244, 37.303802, 43.503933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968088, 36.929195, 43.373230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467656, 0.347101, -0.812908,
		0.874723, -0.049482, 0.482090,
		0.127110, -0.936521, -0.326758,
		30.006222, 36.648239, 43.275204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507395, 37.288624, 43.199642>,  <29.917244, 37.303802, 43.503933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507395, 37.288624, 43.199642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.361448, 36.952595, 43.039066>,  <30.273880, 36.750977, 42.942722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.361448, 36.952595, 43.039066>,  <30.507395, 37.288624, 43.199642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361448, 36.952595, 43.039066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517754, 0.175278, -0.837382,
		0.773824, -0.513379, 0.370998,
		-0.364866, -0.840071, -0.401438,
		30.251987, 36.700573, 42.918636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998484, 36.919617, 42.842533>,  <30.507395, 37.288624, 43.199642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998484, 36.919617, 42.842533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658213, 36.788876, 42.677845>,  <30.454050, 36.710430, 42.579033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658213, 36.788876, 42.677845>,  <30.998484, 36.919617, 42.842533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658213, 36.788876, 42.677845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385780, 0.143868, -0.911304,
		0.357098, -0.934059, 0.003709,
		-0.850679, -0.326856, -0.411717,
		30.403009, 36.690819, 42.554329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725845, 36.766090, 42.795395>,  <30.998484, 36.919617, 42.842533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725845, 36.766090, 42.795395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.933428, 37.106544, 42.827007>,  <32.057980, 37.310818, 42.845974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.933428, 37.106544, 42.827007>,  <31.725845, 36.766090, 42.795395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933428, 37.106544, 42.827007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069105, -0.133931, 0.988578,
		0.852002, -0.507569, -0.128323,
		0.518958, 0.851138, 0.079034,
		32.089115, 37.361885, 42.850716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266197, 36.675396, 43.304325>,  <31.725845, 36.766090, 42.795395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266197, 36.675396, 43.304325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242783, 37.073719, 43.276196>,  <32.228733, 37.312714, 43.259315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242783, 37.073719, 43.276196>,  <32.266197, 36.675396, 43.304325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242783, 37.073719, 43.276196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136941, 0.077793, 0.987520,
		0.988848, 0.048177, -0.140921,
		-0.058539, 0.995805, -0.070328,
		32.225220, 37.372459, 43.255096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634430, 36.895218, 43.852837>,  <32.266197, 36.675396, 43.304325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634430, 36.895218, 43.852837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429981, 37.219196, 43.737774>,  <32.307312, 37.413582, 43.668736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429981, 37.219196, 43.737774>,  <32.634430, 36.895218, 43.852837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429981, 37.219196, 43.737774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262018, 0.171920, 0.949626,
		0.818600, 0.560742, 0.124349,
		-0.511118, 0.809946, -0.287658,
		32.276646, 37.462181, 43.651478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970200, 37.557503, 44.158176>,  <32.634430, 36.895218, 43.852837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970200, 37.557503, 44.158176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580570, 37.598572, 44.077538>,  <32.346794, 37.623215, 44.029152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580570, 37.598572, 44.077538>,  <32.970200, 37.557503, 44.158176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580570, 37.598572, 44.077538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157956, 0.329306, 0.930917,
		0.161971, 0.938624, -0.304550,
		-0.974072, 0.102676, -0.201599,
		32.288349, 37.629375, 44.017059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811691, 38.081940, 44.578606>,  <32.970200, 37.557503, 44.158176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811691, 38.081940, 44.578606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444462, 37.947639, 44.494312>,  <32.224125, 37.867062, 44.443737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444462, 37.947639, 44.494312>,  <32.811691, 38.081940, 44.578606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444462, 37.947639, 44.494312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242757, 0.055926, 0.968474,
		-0.313377, 0.940290, -0.132850,
		-0.918076, -0.335748, -0.210736,
		32.169041, 37.846916, 44.431091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247166, 38.464619, 44.942005>,  <32.811691, 38.081940, 44.578606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247166, 38.464619, 44.942005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075146, 38.109314, 44.877445>,  <31.971933, 37.896133, 44.838711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075146, 38.109314, 44.877445>,  <32.247166, 38.464619, 44.942005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075146, 38.109314, 44.877445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410220, 0.033010, 0.911389,
		-0.804222, 0.458154, -0.378578,
		-0.430054, -0.888259, -0.161397,
		31.946129, 37.842834, 44.829025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627956, 38.593433, 45.240417>,  <32.247166, 38.464619, 44.942005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627956, 38.593433, 45.240417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665648, 38.196934, 45.203449>,  <31.688263, 37.959034, 45.181267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665648, 38.196934, 45.203449>,  <31.627956, 38.593433, 45.240417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665648, 38.196934, 45.203449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315207, -0.117763, 0.941688,
		-0.944333, -0.059602, -0.323546,
		0.094229, -0.991251, -0.092421,
		31.693916, 37.899559, 45.175724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200342, 38.431824, 45.685486>,  <31.627956, 38.593433, 45.240417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200342, 38.431824, 45.685486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425571, 38.102501, 45.656860>,  <31.560709, 37.904907, 45.639683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425571, 38.102501, 45.656860>,  <31.200342, 38.431824, 45.685486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425571, 38.102501, 45.656860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245669, -0.249441, 0.936710,
		-0.789048, -0.509853, -0.342714,
		0.563072, -0.823304, -0.071566,
		31.594494, 37.855511, 45.635391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813025, 37.984161, 46.079765>,  <31.200342, 38.431824, 45.685486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813025, 37.984161, 46.079765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.180696, 37.831715, 46.040058>,  <31.401300, 37.740246, 46.016235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.180696, 37.831715, 46.040058>,  <30.813025, 37.984161, 46.079765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180696, 37.831715, 46.040058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037089, -0.334696, 0.941596,
		-0.392087, -0.861815, -0.321782,
		0.919180, -0.381122, -0.099266,
		31.456451, 37.717377, 46.010277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788641, 37.390442, 46.453022>,  <30.813025, 37.984161, 46.079765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788641, 37.390442, 46.453022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177631, 37.479450, 46.425373>,  <31.411026, 37.532856, 46.408783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177631, 37.479450, 46.425373>,  <30.788641, 37.390442, 46.453022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177631, 37.479450, 46.425373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106065, -0.158591, 0.981631,
		0.207470, -0.961943, -0.177827,
		0.972475, 0.222520, -0.069126,
		31.469374, 37.546207, 46.404636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270805, 36.851227, 46.694538>,  <30.788641, 37.390442, 46.453022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270805, 36.851227, 46.694538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.511072, 37.170879, 46.704308>,  <31.655231, 37.362671, 46.710171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.511072, 37.170879, 46.704308>,  <31.270805, 36.851227, 46.694538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511072, 37.170879, 46.704308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215126, -0.190976, 0.957731,
		0.770014, -0.570021, -0.286625,
		0.600665, 0.799127, 0.024428,
		31.691271, 37.410618, 46.711636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931826, 36.671467, 46.976822>,  <31.270805, 36.851227, 46.694538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931826, 36.671467, 46.976822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.868332, 37.062565, 47.031696>,  <31.830236, 37.297222, 47.064621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.868332, 37.062565, 47.031696>,  <31.931826, 36.671467, 46.976822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868332, 37.062565, 47.031696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088239, -0.124348, 0.988307,
		0.983371, 0.168982, -0.066537,
		-0.158732, 0.977744, 0.137191,
		31.820713, 37.355888, 47.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333519, 36.870556, 47.503887>,  <31.931826, 36.671467, 46.976822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333519, 36.870556, 47.503887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080288, 37.180141, 47.498257>,  <31.928350, 37.365891, 47.494877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080288, 37.180141, 47.498257>,  <32.333519, 36.870556, 47.503887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080288, 37.180141, 47.498257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018257, 0.003257, 0.999828,
		0.773874, 0.633225, 0.012068,
		-0.633076, 0.773961, -0.014081,
		31.890366, 37.412331, 47.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610031, 37.390240, 47.945023>,  <32.333519, 36.870556, 47.503887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610031, 37.390240, 47.945023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214375, 37.446014, 47.926445>,  <31.976980, 37.479477, 47.915298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214375, 37.446014, 47.926445>,  <32.610031, 37.390240, 47.945023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214375, 37.446014, 47.926445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049160, -0.016114, 0.998661,
		0.138498, 0.990100, 0.022794,
		-0.989142, 0.139433, -0.046441,
		31.917631, 37.487843, 47.912514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894695, 38.050171, 48.250149>,  <32.610031, 37.390240, 47.945023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894695, 38.050171, 48.250149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239094, 38.245457, 48.307186>,  <33.445732, 38.362629, 48.341408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239094, 38.245457, 48.307186>,  <32.894695, 38.050171, 48.250149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239094, 38.245457, 48.307186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094534, 0.121864, -0.988035,
		-0.499755, 0.864171, 0.058771,
		0.860993, 0.488219, 0.142596,
		33.497391, 38.391922, 48.349964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941055, 38.673965, 47.754147>,  <32.894695, 38.050171, 48.250149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941055, 38.673965, 47.754147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327663, 38.631699, 47.847675>,  <33.559628, 38.606339, 47.903793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327663, 38.631699, 47.847675>,  <32.941055, 38.673965, 47.754147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327663, 38.631699, 47.847675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250841, 0.197307, -0.947707,
		0.054011, 0.974630, 0.217208,
		0.966520, -0.105672, 0.233820,
		33.617619, 38.599998, 47.917820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238251, 39.226223, 47.392960>,  <32.941055, 38.673965, 47.754147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238251, 39.226223, 47.392960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548889, 38.996655, 47.496891>,  <33.735271, 38.858913, 47.559250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548889, 38.996655, 47.496891>,  <33.238251, 39.226223, 47.392960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548889, 38.996655, 47.496891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410089, 0.147423, -0.900052,
		0.478256, 0.805530, 0.349847,
		0.776594, -0.573924, 0.259833,
		33.781868, 38.824478, 47.574841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862007, 39.646305, 47.311874>,  <33.238251, 39.226223, 47.392960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862007, 39.646305, 47.311874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.985416, 39.266258, 47.293575>,  <34.059460, 39.038231, 47.282597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.985416, 39.266258, 47.293575>,  <33.862007, 39.646305, 47.311874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985416, 39.266258, 47.293575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405635, 0.174913, -0.897143,
		0.860393, 0.258231, 0.439365,
		0.308521, -0.950117, -0.045746,
		34.077972, 38.981224, 47.279850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459400, 39.713795, 46.999153>,  <33.862007, 39.646305, 47.311874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459400, 39.713795, 46.999153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369015, 39.325798, 46.963242>,  <34.314785, 39.092999, 46.941696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369015, 39.325798, 46.963242>,  <34.459400, 39.713795, 46.999153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369015, 39.325798, 46.963242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457184, -0.024217, -0.889042,
		0.860189, -0.241933, 0.448936,
		-0.225961, -0.969991, -0.089777,
		34.301228, 39.034801, 46.936310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024548, 39.333443, 46.704304>,  <34.459400, 39.713795, 46.999153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024548, 39.333443, 46.704304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715626, 39.088940, 46.635128>,  <34.530273, 38.942238, 46.593624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715626, 39.088940, 46.635128>,  <35.024548, 39.333443, 46.704304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715626, 39.088940, 46.635128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357295, -0.192880, -0.913858,
		0.525244, -0.767571, 0.367362,
		-0.772307, -0.611255, -0.172940,
		34.483932, 38.905563, 46.583244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272247, 38.762569, 46.287460>,  <35.024548, 39.333443, 46.704304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272247, 38.762569, 46.287460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879833, 38.753288, 46.210480>,  <34.644386, 38.747719, 46.164291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879833, 38.753288, 46.210480>,  <35.272247, 38.762569, 46.287460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879833, 38.753288, 46.210480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193308, -0.191079, -0.962352,
		-0.014439, -0.981300, 0.191941,
		-0.981032, -0.023208, -0.192452,
		34.585526, 38.746326, 46.152744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185966, 38.167141, 45.922466>,  <35.272247, 38.762569, 46.287460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185966, 38.167141, 45.922466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.866188, 38.386024, 45.823311>,  <34.674320, 38.517357, 45.763817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.866188, 38.386024, 45.823311>,  <35.185966, 38.167141, 45.922466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866188, 38.386024, 45.823311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237129, -0.091693, -0.967141,
		-0.551961, -0.831956, -0.056456,
		-0.799443, 0.547212, -0.247892,
		34.626354, 38.550186, 45.748943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036705, 37.819466, 45.352264>,  <35.185966, 38.167141, 45.922466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036705, 37.819466, 45.352264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810413, 38.145760, 45.304054>,  <34.674637, 38.341534, 45.275127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810413, 38.145760, 45.304054>,  <35.036705, 37.819466, 45.352264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810413, 38.145760, 45.304054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215355, 0.005074, -0.976523,
		-0.795970, -0.578407, -0.178543,
		-0.565733, 0.815733, -0.120524,
		34.640694, 38.390480, 45.267899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573559, 37.672722, 44.870522>,  <35.036705, 37.819466, 45.352264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573559, 37.672722, 44.870522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549965, 38.071983, 44.864670>,  <34.535809, 38.311539, 44.861160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549965, 38.071983, 44.864670>,  <34.573559, 37.672722, 44.870522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549965, 38.071983, 44.864670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083205, -0.019519, -0.996341,
		-0.994785, -0.057549, 0.084202,
		-0.058982, 0.998152, -0.014628,
		34.532269, 38.371429, 44.860283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985428, 37.897182, 44.480492>,  <34.573559, 37.672722, 44.870522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985428, 37.897182, 44.480492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264233, 38.182362, 44.449814>,  <34.431515, 38.353470, 44.431408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264233, 38.182362, 44.449814>,  <33.985428, 37.897182, 44.480492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264233, 38.182362, 44.449814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028567, -0.134474, -0.990505,
		-0.716493, 0.688201, -0.114096,
		0.697010, 0.712949, -0.076690,
		34.473335, 38.396248, 44.426807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831882, 38.047245, 43.859756>,  <33.985428, 37.897182, 44.480492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831882, 38.047245, 43.859756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.170475, 38.255058, 43.906315>,  <34.373631, 38.379745, 43.934250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.170475, 38.255058, 43.906315>,  <33.831882, 38.047245, 43.859756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170475, 38.255058, 43.906315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186641, -0.084813, -0.978760,
		-0.498630, 0.850228, -0.168760,
		0.846483, 0.519537, 0.116397,
		34.424419, 38.410919, 43.941235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877861, 38.573051, 43.311836>,  <33.831882, 38.047245, 43.859756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877861, 38.573051, 43.311836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226971, 38.458515, 43.469963>,  <34.436436, 38.389793, 43.564838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226971, 38.458515, 43.469963>,  <33.877861, 38.573051, 43.311836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226971, 38.458515, 43.469963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275253, -0.380124, -0.883030,
		0.403121, 0.879496, -0.252944,
		0.872771, -0.286344, 0.395320,
		34.488804, 38.372612, 43.588558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940105, 39.003544, 42.652557>,  <33.877861, 38.573051, 43.311836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940105, 39.003544, 42.652557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796997, 39.111340, 42.294926>,  <33.711132, 39.176018, 42.080345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796997, 39.111340, 42.294926>,  <33.940105, 39.003544, 42.652557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796997, 39.111340, 42.294926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506694, -0.860270, -0.056538,
		-0.784384, 0.432797, 0.444329,
		-0.357773, 0.269486, -0.894078,
		33.689667, 39.192184, 42.026703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.886988, 30.185654, 28.457539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033117, 29.949617, 28.745520>,  <29.120796, 29.807995, 28.918308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033117, 29.949617, 28.745520>,  <28.886988, 30.185654, 28.457539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033117, 29.949617, 28.745520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650829, 0.391052, 0.650769,
		-0.665551, -0.706308, -0.241187,
		0.365326, -0.590091, 0.719951,
		29.142715, 29.772591, 28.961504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304369, 29.910902, 28.723431>,  <28.886988, 30.185654, 28.457539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304369, 29.910902, 28.723431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589016, 29.837305, 28.994648>,  <28.759804, 29.793146, 29.157379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589016, 29.837305, 28.994648>,  <28.304369, 29.910902, 28.723431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589016, 29.837305, 28.994648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589693, 0.368209, 0.718808,
		-0.381918, -0.911356, 0.153524,
		0.711618, -0.183994, 0.678046,
		28.802502, 29.782106, 29.198061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923836, 29.748981, 29.230833>,  <28.304369, 29.910902, 28.723431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923836, 29.748981, 29.230833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280888, 29.835329, 29.389132>,  <28.495119, 29.887136, 29.484112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280888, 29.835329, 29.389132>,  <27.923836, 29.748981, 29.230833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280888, 29.835329, 29.389132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450696, 0.409036, 0.793450,
		0.009404, -0.886618, 0.462408,
		0.892628, 0.215867, 0.395748,
		28.548676, 29.900089, 29.507856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897247, 29.518946, 29.954655>,  <27.923836, 29.748981, 29.230833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897247, 29.518946, 29.954655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177706, 29.803045, 29.929558>,  <28.345982, 29.973505, 29.914499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177706, 29.803045, 29.929558>,  <27.897247, 29.518946, 29.954655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177706, 29.803045, 29.929558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413178, 0.476442, 0.776071,
		0.581101, -0.518214, 0.627516,
		0.701146, 0.710251, -0.062746,
		28.388050, 30.016121, 29.910734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196552, 29.567316, 30.622959>,  <27.897247, 29.518946, 29.954655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196552, 29.567316, 30.622959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257235, 29.917202, 30.438848>,  <28.293644, 30.127134, 30.328382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257235, 29.917202, 30.438848>,  <28.196552, 29.567316, 30.622959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257235, 29.917202, 30.438848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274105, 0.484634, 0.830660,
		0.949659, 0.000150, 0.313286,
		0.151705, 0.874717, -0.460278,
		28.302746, 30.179617, 30.300766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632668, 30.036898, 31.135052>,  <28.196552, 29.567316, 30.622959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632668, 30.036898, 31.135052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468679, 30.279383, 30.862455>,  <28.370287, 30.424873, 30.698898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468679, 30.279383, 30.862455>,  <28.632668, 30.036898, 31.135052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468679, 30.279383, 30.862455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283172, 0.625651, 0.726893,
		0.867027, 0.490985, -0.084837,
		-0.409972, 0.606213, -0.681490,
		28.345688, 30.461246, 30.658009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854979, 30.761154, 31.296789>,  <28.632668, 30.036898, 31.135052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854979, 30.761154, 31.296789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522514, 30.798815, 31.077587>,  <28.323036, 30.821411, 30.946066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522514, 30.798815, 31.077587>,  <28.854979, 30.761154, 31.296789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522514, 30.798815, 31.077587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318352, 0.727459, 0.607828,
		0.455877, 0.679661, -0.574662,
		-0.831161, 0.094150, -0.548003,
		28.273167, 30.827059, 30.913187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648293, 31.498781, 31.427883>,  <28.854979, 30.761154, 31.296789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648293, 31.498781, 31.427883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317884, 31.370258, 31.242649>,  <28.119638, 31.293144, 31.131508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317884, 31.370258, 31.242649>,  <28.648293, 31.498781, 31.427883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317884, 31.370258, 31.242649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554042, 0.613829, 0.562363,
		0.103565, 0.721094, -0.685054,
		-0.826022, -0.321307, -0.463087,
		28.070078, 31.273867, 31.103724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338833, 32.045769, 31.130779>,  <28.648293, 31.498781, 31.427883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338833, 32.045769, 31.130779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055647, 31.773518, 31.206177>,  <27.885735, 31.610167, 31.251415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055647, 31.773518, 31.206177>,  <28.338833, 32.045769, 31.130779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055647, 31.773518, 31.206177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569120, 0.707847, 0.418396,
		-0.418197, 0.188935, -0.888490,
		-0.707965, -0.680629, 0.188493,
		27.843258, 31.569328, 31.262724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867481, 32.305317, 30.745190>,  <28.338833, 32.045769, 31.130779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867481, 32.305317, 30.745190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.676697, 32.057125, 30.994194>,  <27.562225, 31.908211, 31.143597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.676697, 32.057125, 30.994194>,  <27.867481, 32.305317, 30.745190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676697, 32.057125, 30.994194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569982, 0.757497, 0.318306,
		-0.669050, -0.203000, -0.714957,
		-0.476961, -0.620475, 0.622510,
		27.533607, 31.870983, 31.180946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156385, 32.459969, 30.715771>,  <27.867481, 32.305317, 30.745190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156385, 32.459969, 30.715771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199610, 32.277451, 31.069069>,  <27.225544, 32.167942, 31.281048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199610, 32.277451, 31.069069>,  <27.156385, 32.459969, 30.715771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199610, 32.277451, 31.069069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573708, 0.696956, 0.430245,
		-0.811900, -0.553218, -0.186464,
		0.108062, -0.456292, 0.883244,
		27.232029, 32.140564, 31.334042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521620, 32.516495, 31.079809>,  <27.156385, 32.459969, 30.715771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521620, 32.516495, 31.079809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787653, 32.476635, 31.375845>,  <26.947273, 32.452721, 31.553467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787653, 32.476635, 31.375845>,  <26.521620, 32.516495, 31.079809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787653, 32.476635, 31.375845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378159, 0.809649, 0.448848,
		-0.643939, -0.578394, 0.500802,
		0.665084, -0.099648, 0.740090,
		26.987179, 32.446739, 31.597872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153479, 32.671631, 31.674192>,  <26.521620, 32.516495, 31.079809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153479, 32.671631, 31.674192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530840, 32.697685, 31.804268>,  <26.757257, 32.713318, 31.882313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530840, 32.697685, 31.804268>,  <26.153479, 32.671631, 31.674192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530840, 32.697685, 31.804268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261137, 0.750333, 0.607296,
		-0.204442, -0.657844, 0.724876,
		0.943404, 0.065135, 0.325187,
		26.813862, 32.717224, 31.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176683, 32.522030, 32.382446>,  <26.153479, 32.671631, 31.674192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176683, 32.522030, 32.382446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505373, 32.737938, 32.309315>,  <26.702587, 32.867481, 32.265438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505373, 32.737938, 32.309315>,  <26.176683, 32.522030, 32.382446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505373, 32.737938, 32.309315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271435, 0.652779, 0.707250,
		0.501093, -0.531538, 0.682914,
		0.821723, 0.539765, -0.182825,
		26.751890, 32.899868, 32.254467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471680, 32.584991, 33.058651>,  <26.176683, 32.522030, 32.382446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471680, 32.584991, 33.058651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603859, 32.888550, 32.834194>,  <26.683167, 33.070683, 32.699520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603859, 32.888550, 32.834194>,  <26.471680, 32.584991, 33.058651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603859, 32.888550, 32.834194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145729, 0.628441, 0.764084,
		0.932505, -0.170716, 0.318261,
		0.330450, 0.758892, -0.561146,
		26.702993, 33.116219, 32.665852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796169, 32.985012, 33.636295>,  <26.471680, 32.584991, 33.058651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796169, 32.985012, 33.636295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746252, 33.236732, 33.329464>,  <26.716301, 33.387764, 33.145367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746252, 33.236732, 33.329464>,  <26.796169, 32.985012, 33.636295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746252, 33.236732, 33.329464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283101, 0.718398, 0.635419,
		0.950936, 0.296457, 0.088504,
		-0.124794, 0.629299, -0.767078,
		26.708815, 33.425522, 33.099342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956234, 33.594212, 33.866905>,  <26.796169, 32.985012, 33.636295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956234, 33.594212, 33.866905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735323, 33.698734, 33.550247>,  <26.602776, 33.761448, 33.360252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735323, 33.698734, 33.550247>,  <26.956234, 33.594212, 33.866905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735323, 33.698734, 33.550247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456292, 0.699986, 0.549379,
		0.697700, 0.664632, -0.267355,
		-0.552280, 0.261310, -0.791647,
		26.569639, 33.777126, 33.312752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118153, 34.315838, 33.734264>,  <26.956234, 33.594212, 33.866905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118153, 34.315838, 33.734264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762857, 34.270309, 33.556240>,  <26.549681, 34.242992, 33.449425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762857, 34.270309, 33.556240>,  <27.118153, 34.315838, 33.734264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762857, 34.270309, 33.556240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321260, 0.846413, 0.424708,
		0.328362, 0.520221, -0.788383,
		-0.888240, -0.113818, -0.445056,
		26.496386, 34.236164, 33.422722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984985, 35.018970, 34.076206>,  <27.118153, 34.315838, 33.734264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984985, 35.018970, 34.076206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248234, 35.210205, 34.308865>,  <27.406183, 35.324944, 34.448460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248234, 35.210205, 34.308865>,  <26.984985, 35.018970, 34.076206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248234, 35.210205, 34.308865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741987, -0.280692, -0.608825,
		-0.127804, 0.832256, -0.539460,
		0.658120, 0.478082, 0.581649,
		27.445669, 35.353630, 34.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345934, 35.623112, 33.719833>,  <26.984985, 35.018970, 34.076206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345934, 35.623112, 33.719833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597605, 35.445175, 33.974785>,  <27.748608, 35.338413, 34.127758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597605, 35.445175, 33.974785>,  <27.345934, 35.623112, 33.719833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597605, 35.445175, 33.974785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648245, -0.152134, -0.746079,
		0.428851, 0.882595, 0.192645,
		0.629178, -0.444838, 0.637381,
		27.786358, 35.311726, 34.166000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119427, 35.853172, 33.622116>,  <27.345934, 35.623112, 33.719833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119427, 35.853172, 33.622116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146383, 35.507530, 33.821629>,  <28.162558, 35.300144, 33.941338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146383, 35.507530, 33.821629>,  <28.119427, 35.853172, 33.622116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146383, 35.507530, 33.821629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582605, -0.371755, -0.722751,
		0.809957, 0.339301, 0.478378,
		0.067391, -0.864102, 0.498784,
		28.166601, 35.248299, 33.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744192, 35.857277, 33.674438>,  <28.119427, 35.853172, 33.622116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744192, 35.857277, 33.674438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635078, 35.480923, 33.754761>,  <28.569611, 35.255112, 33.802952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635078, 35.480923, 33.754761>,  <28.744192, 35.857277, 33.674438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635078, 35.480923, 33.754761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691265, -0.336850, -0.639284,
		0.669134, -0.035579, 0.742290,
		-0.272785, -0.940886, 0.200803,
		28.553244, 35.198658, 33.815002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356964, 35.425865, 33.793507>,  <28.744192, 35.857277, 33.674438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356964, 35.425865, 33.793507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072357, 35.154819, 33.719124>,  <28.901592, 34.992191, 33.674496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072357, 35.154819, 33.719124>,  <29.356964, 35.425865, 33.793507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072357, 35.154819, 33.719124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655110, -0.544009, -0.524294,
		0.254108, -0.494866, 0.830985,
		-0.711519, -0.677614, -0.185955,
		28.858902, 34.951534, 33.663338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599493, 34.747906, 33.880741>,  <29.356964, 35.425865, 33.793507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599493, 34.747906, 33.880741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294582, 34.672375, 33.633102>,  <29.111635, 34.627056, 33.484520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294582, 34.672375, 33.633102>,  <29.599493, 34.747906, 33.880741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294582, 34.672375, 33.633102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623442, -0.471238, -0.623903,
		-0.173931, -0.861557, 0.476936,
		-0.762278, -0.188826, -0.619094,
		29.065899, 34.615726, 33.447376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730280, 34.130650, 33.660679>,  <29.599493, 34.747906, 33.880741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730280, 34.130650, 33.660679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461889, 34.261505, 33.394516>,  <29.300856, 34.340019, 33.234818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461889, 34.261505, 33.394516>,  <29.730280, 34.130650, 33.660679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461889, 34.261505, 33.394516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481993, -0.489505, -0.726682,
		-0.563450, -0.808309, 0.170765,
		-0.670974, 0.327142, -0.665411,
		29.260597, 34.359646, 33.194893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802267, 33.556667, 33.215637>,  <29.730280, 34.130650, 33.660679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802267, 33.556667, 33.215637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607819, 33.831646, 32.999821>,  <29.491150, 33.996632, 32.870331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607819, 33.831646, 32.999821>,  <29.802267, 33.556667, 33.215637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607819, 33.831646, 32.999821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325261, -0.430710, -0.841840,
		-0.811104, -0.584729, -0.014222,
		-0.486122, 0.687446, -0.539540,
		29.461983, 34.037880, 32.837959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490133, 33.170883, 32.641800>,  <29.802267, 33.556667, 33.215637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490133, 33.170883, 32.641800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534986, 33.562073, 32.571384>,  <29.561899, 33.796787, 32.529133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534986, 33.562073, 32.571384>,  <29.490133, 33.170883, 32.641800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534986, 33.562073, 32.571384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514705, -0.208705, -0.831577,
		-0.850003, 0.002638, -0.526772,
		0.112133, 0.977975, -0.176043,
		29.568626, 33.855465, 32.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311174, 33.237038, 31.926014>,  <29.490133, 33.170883, 32.641800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311174, 33.237038, 31.926014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509739, 33.572884, 32.014214>,  <29.628878, 33.774391, 32.067135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509739, 33.572884, 32.014214>,  <29.311174, 33.237038, 31.926014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509739, 33.572884, 32.014214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566761, -0.121068, -0.814939,
		-0.657540, 0.529515, -0.535961,
		0.496410, 0.839617, 0.220501,
		29.658663, 33.824768, 32.080364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422283, 33.613903, 31.211695>,  <29.311174, 33.237038, 31.926014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422283, 33.613903, 31.211695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684223, 33.776661, 31.466444>,  <29.841387, 33.874317, 31.619293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684223, 33.776661, 31.466444>,  <29.422283, 33.613903, 31.211695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684223, 33.776661, 31.466444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699681, -0.007858, -0.714412,
		-0.285686, 0.913441, -0.289842,
		0.654851, 0.406895, 0.636872,
		29.880678, 33.898727, 31.657505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854990, 34.132347, 30.733543>,  <29.422283, 33.613903, 31.211695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854990, 34.132347, 30.733543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055283, 34.045490, 31.068714>,  <30.175457, 33.993374, 31.269815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055283, 34.045490, 31.068714>,  <29.854990, 34.132347, 30.733543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055283, 34.045490, 31.068714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851583, -0.049944, -0.521834,
		0.155163, 0.974861, 0.159910,
		0.500730, -0.217146, 0.837925,
		30.205502, 33.980347, 31.320091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503618, 34.507645, 30.719303>,  <29.854990, 34.132347, 30.733543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503618, 34.507645, 30.719303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558876, 34.188210, 30.953627>,  <30.592031, 33.996548, 31.094221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558876, 34.188210, 30.953627>,  <30.503618, 34.507645, 30.719303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558876, 34.188210, 30.953627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761973, -0.292157, -0.577963,
		0.632703, 0.526214, 0.568143,
		0.138145, -0.798588, 0.585809,
		30.600319, 33.948631, 31.129370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185951, 34.479942, 30.813044>,  <30.503618, 34.507645, 30.719303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185951, 34.479942, 30.813044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.054445, 34.110767, 30.893147>,  <30.975542, 33.889263, 30.941208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.054445, 34.110767, 30.893147>,  <31.185951, 34.479942, 30.813044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054445, 34.110767, 30.893147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735289, -0.383216, -0.559013,
		0.592675, -0.036539, 0.804613,
		-0.328766, -0.922936, 0.200256,
		30.955816, 33.833885, 30.953222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706667, 34.057041, 30.725100>,  <31.185951, 34.479942, 30.813044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706667, 34.057041, 30.725100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445761, 33.756344, 30.763945>,  <31.289217, 33.575924, 30.787251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445761, 33.756344, 30.763945>,  <31.706667, 34.057041, 30.725100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445761, 33.756344, 30.763945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631528, -0.609814, -0.478852,
		0.419195, -0.251010, 0.872508,
		-0.652264, -0.751745, 0.097111,
		31.250082, 33.530819, 30.793077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018612, 33.461174, 31.094709>,  <31.706667, 34.057041, 30.725100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018612, 33.461174, 31.094709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714897, 33.343971, 30.862282>,  <31.532669, 33.273651, 30.722826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714897, 33.343971, 30.862282>,  <32.018612, 33.461174, 31.094709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714897, 33.343971, 30.862282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593258, -0.678636, -0.433010,
		-0.267460, -0.673500, 0.689103,
		-0.759283, -0.293003, -0.581067,
		31.487112, 33.256069, 30.687962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924942, 32.715992, 31.166712>,  <32.018612, 33.461174, 31.094709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924942, 32.715992, 31.166712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784504, 32.836922, 30.812237>,  <31.700241, 32.909481, 30.599552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784504, 32.836922, 30.812237>,  <31.924942, 32.715992, 31.166712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784504, 32.836922, 30.812237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417661, -0.796503, -0.437198,
		-0.838028, -0.523625, 0.153380,
		-0.351096, 0.302324, -0.886190,
		31.679174, 32.927620, 30.546379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989458, 32.107121, 30.867022>,  <31.924942, 32.715992, 31.166712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989458, 32.107121, 30.867022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882645, 32.350334, 30.567959>,  <31.818558, 32.496262, 30.388521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882645, 32.350334, 30.567959>,  <31.989458, 32.107121, 30.867022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882645, 32.350334, 30.567959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403634, -0.633931, -0.659706,
		-0.875085, -0.477942, -0.076143,
		-0.267032, 0.608032, -0.747657,
		31.802534, 32.532745, 30.343662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436531, 31.727114, 30.459425>,  <31.989458, 32.107121, 30.867022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436531, 31.727114, 30.459425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.622562, 32.013630, 30.251337>,  <31.734182, 32.185539, 30.126484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.622562, 32.013630, 30.251337>,  <31.436531, 31.727114, 30.459425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622562, 32.013630, 30.251337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119038, -0.632902, -0.765026,
		-0.877229, 0.293873, -0.379616,
		0.465080, 0.716292, -0.520218,
		31.762087, 32.228516, 30.095272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260260, 31.621620, 29.779503>,  <31.436531, 31.727114, 30.459425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260260, 31.621620, 29.779503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583296, 31.852551, 29.731356>,  <31.777119, 31.991110, 29.702467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583296, 31.852551, 29.731356>,  <31.260260, 31.621620, 29.779503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583296, 31.852551, 29.731356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208920, -0.470940, -0.857069,
		-0.551497, 0.667014, -0.500943,
		0.807591, 0.577328, -0.120369,
		31.825573, 32.025749, 29.695246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194418, 31.814837, 29.090633>,  <31.260260, 31.621620, 29.779503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194418, 31.814837, 29.090633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.578465, 31.834719, 29.200691>,  <31.808893, 31.846649, 29.266726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.578465, 31.834719, 29.200691>,  <31.194418, 31.814837, 29.090633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578465, 31.834719, 29.200691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262198, -0.501794, -0.824291,
		0.097093, 0.863558, -0.494814,
		0.960117, 0.049707, 0.275144,
		31.866499, 31.849630, 29.283234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502781, 31.983459, 28.470354>,  <31.194418, 31.814837, 29.090633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502781, 31.983459, 28.470354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802250, 31.854212, 28.701899>,  <31.981932, 31.776663, 28.840826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802250, 31.854212, 28.701899>,  <31.502781, 31.983459, 28.470354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802250, 31.854212, 28.701899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441864, -0.407719, -0.799075,
		0.494210, 0.854025, -0.162474,
		0.748674, -0.323120, 0.578862,
		32.026852, 31.757277, 28.875557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106041, 32.280441, 28.196686>,  <31.502781, 31.983459, 28.470354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106041, 32.280441, 28.196686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207767, 31.963892, 28.419056>,  <32.268803, 31.773962, 28.552479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207767, 31.963892, 28.419056>,  <32.106041, 32.280441, 28.196686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207767, 31.963892, 28.419056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500975, -0.383893, -0.775661,
		0.827252, 0.475770, 0.298826,
		0.254319, -0.791372, 0.555925,
		32.284061, 31.726480, 28.585833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713482, 32.331165, 28.358440>,  <32.106041, 32.280441, 28.196686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713482, 32.331165, 28.358440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.600994, 31.947676, 28.341612>,  <32.533501, 31.717583, 28.331514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.600994, 31.947676, 28.341612>,  <32.713482, 32.331165, 28.358440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600994, 31.947676, 28.341612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609971, -0.144729, -0.779095,
		0.740847, -0.244756, 0.625492,
		-0.281215, -0.958722, -0.042072,
		32.516628, 31.660059, 28.328991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.868710, 36.067913, 47.705166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581135, 35.800205, 47.780224>,  <33.408588, 35.639580, 47.825260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581135, 35.800205, 47.780224>,  <33.868710, 36.067913, 47.705166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581135, 35.800205, 47.780224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163892, 0.099127, 0.981485,
		-0.675478, 0.736379, 0.038422,
		-0.718936, -0.669269, 0.187644,
		33.365456, 35.599426, 47.836517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519020, 36.287708, 48.262299>,  <33.868710, 36.067913, 47.705166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519020, 36.287708, 48.262299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394253, 35.907913, 48.276077>,  <33.319393, 35.680038, 48.284344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394253, 35.907913, 48.276077>,  <33.519020, 36.287708, 48.262299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394253, 35.907913, 48.276077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012655, 0.032097, 0.999405,
		-0.950026, 0.312165, 0.002004,
		-0.311915, -0.949485, 0.034443,
		33.300678, 35.623066, 48.286411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099297, 36.206558, 48.887638>,  <33.519020, 36.287708, 48.262299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099297, 36.206558, 48.887638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163052, 35.824867, 48.786407>,  <33.201305, 35.595852, 48.725670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163052, 35.824867, 48.786407>,  <33.099297, 36.206558, 48.887638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163052, 35.824867, 48.786407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041488, -0.262600, 0.964013,
		-0.986344, -0.143154, -0.081444,
		0.159389, -0.954227, -0.253074,
		33.210869, 35.538601, 48.710484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609749, 35.805435, 49.177769>,  <33.099297, 36.206558, 48.887638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609749, 35.805435, 49.177769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922913, 35.565643, 49.111225>,  <33.110809, 35.421768, 49.071297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922913, 35.565643, 49.111225>,  <32.609749, 35.805435, 49.177769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922913, 35.565643, 49.111225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001754, -0.265275, 0.964171,
		-0.622134, -0.755150, -0.206635,
		0.782909, -0.599481, -0.166361,
		33.157784, 35.385799, 49.061317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477852, 35.176388, 49.587994>,  <32.609749, 35.805435, 49.177769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477852, 35.176388, 49.587994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867584, 35.176937, 49.497952>,  <33.101425, 35.177265, 49.443924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867584, 35.176937, 49.497952>,  <32.477852, 35.176388, 49.587994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867584, 35.176937, 49.497952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215098, -0.300606, 0.929176,
		-0.066393, -0.953747, -0.293186,
		0.974333, 0.001373, -0.225108,
		33.159885, 35.177349, 49.430420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731503, 34.642601, 49.850296>,  <32.477852, 35.176388, 49.587994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731503, 34.642601, 49.850296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057541, 34.873547, 49.831188>,  <33.253162, 35.012112, 49.819725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057541, 34.873547, 49.831188>,  <32.731503, 34.642601, 49.850296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057541, 34.873547, 49.831188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251570, -0.278465, 0.926914,
		0.521861, -0.767537, -0.372220,
		0.815091, 0.577360, -0.047769,
		33.302067, 35.046753, 49.816856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203011, 34.290909, 50.235611>,  <32.731503, 34.642601, 49.850296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203011, 34.290909, 50.235611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370960, 34.653175, 50.212017>,  <33.471729, 34.870533, 50.197861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370960, 34.653175, 50.212017>,  <33.203011, 34.290909, 50.235611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370960, 34.653175, 50.212017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401522, -0.127074, 0.906991,
		0.813933, -0.404507, -0.416998,
		0.419873, 0.905664, -0.058989,
		33.496922, 34.924873, 50.194321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909122, 34.193520, 50.359566>,  <33.203011, 34.290909, 50.235611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909122, 34.193520, 50.359566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830948, 34.574970, 50.451134>,  <33.784042, 34.803841, 50.506073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830948, 34.574970, 50.451134>,  <33.909122, 34.193520, 50.359566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830948, 34.574970, 50.451134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506292, -0.101804, 0.856332,
		0.839923, 0.283262, -0.462916,
		-0.195440, 0.953624, 0.228921,
		33.772316, 34.861057, 50.519810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562592, 34.459446, 50.718349>,  <33.909122, 34.193520, 50.359566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562592, 34.459446, 50.718349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261398, 34.711178, 50.795261>,  <34.080685, 34.862217, 50.841408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261398, 34.711178, 50.795261>,  <34.562592, 34.459446, 50.718349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261398, 34.711178, 50.795261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297446, 0.064862, 0.952533,
		0.586981, 0.774431, -0.236030,
		-0.752980, 0.629325, 0.192278,
		34.035503, 34.899975, 50.852943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858444, 35.069836, 51.060562>,  <34.562592, 34.459446, 50.718349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858444, 35.069836, 51.060562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473583, 35.103580, 51.164215>,  <34.242668, 35.123825, 51.226406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473583, 35.103580, 51.164215>,  <34.858444, 35.069836, 51.060562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473583, 35.103580, 51.164215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272336, 0.332436, 0.902950,
		-0.009974, 0.939346, -0.342827,
		-0.962151, 0.084358, 0.259134,
		34.184937, 35.128887, 51.241955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792156, 35.740150, 51.363159>,  <34.858444, 35.069836, 51.060562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792156, 35.740150, 51.363159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516254, 35.487297, 51.504379>,  <34.350712, 35.335583, 51.589111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516254, 35.487297, 51.504379>,  <34.792156, 35.740150, 51.363159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516254, 35.487297, 51.504379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277857, 0.219172, 0.935286,
		-0.668608, 0.743213, 0.024469,
		-0.689753, -0.632138, 0.353047,
		34.309330, 35.297657, 51.610294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571918, 36.056744, 52.005379>,  <34.792156, 35.740150, 51.363159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571918, 36.056744, 52.005379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421227, 35.686954, 52.028770>,  <34.330811, 35.465080, 52.042805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421227, 35.686954, 52.028770>,  <34.571918, 36.056744, 52.005379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421227, 35.686954, 52.028770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163827, -0.004356, 0.986480,
		-0.911722, 0.381214, 0.153095,
		-0.376727, -0.924477, 0.058482,
		34.308208, 35.409611, 52.046314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157124, 36.034718, 52.453838>,  <34.571918, 36.056744, 52.005379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157124, 36.034718, 52.453838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266315, 35.650738, 52.428593>,  <34.331833, 35.420349, 52.413445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266315, 35.650738, 52.428593>,  <34.157124, 36.034718, 52.453838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266315, 35.650738, 52.428593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464544, 0.074083, 0.882445,
		-0.842424, -0.270214, 0.466161,
		0.272984, -0.959946, -0.063117,
		34.348209, 35.362755, 52.409657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043678, 35.818707, 53.127804>,  <34.157124, 36.034718, 52.453838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043678, 35.818707, 53.127804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305962, 35.563503, 52.966316>,  <34.463329, 35.410381, 52.869423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305962, 35.563503, 52.966316>,  <34.043678, 35.818707, 53.127804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305962, 35.563503, 52.966316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579921, 0.083189, 0.810414,
		-0.483468, -0.765520, 0.424544,
		0.655706, -0.638012, -0.403722,
		34.502674, 35.372101, 52.845200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752636, 36.484833, 53.405067>,  <34.043678, 35.818707, 53.127804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752636, 36.484833, 53.405067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387291, 36.622025, 53.492832>,  <33.168083, 36.704342, 53.545490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387291, 36.622025, 53.492832>,  <33.752636, 36.484833, 53.405067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387291, 36.622025, 53.492832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060080, 0.419454, -0.905787,
		-0.402701, -0.840489, -0.362505,
		-0.913358, 0.342981, 0.219411,
		33.113285, 36.724918, 53.558655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477386, 36.456409, 52.788761>,  <33.752636, 36.484833, 53.405067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477386, 36.456409, 52.788761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228874, 36.708920, 52.974453>,  <33.079765, 36.860424, 53.085869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228874, 36.708920, 52.974453>,  <33.477386, 36.456409, 52.788761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228874, 36.708920, 52.974453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132971, 0.498910, -0.856392,
		-0.772223, -0.593789, -0.226023,
		-0.621282, 0.631271, 0.464227,
		33.042488, 36.898300, 53.113720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884682, 36.545319, 52.449272>,  <33.477386, 36.456409, 52.788761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884682, 36.545319, 52.449272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888062, 36.890686, 52.651039>,  <32.890091, 37.097908, 52.772099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888062, 36.890686, 52.651039>,  <32.884682, 36.545319, 52.449272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888062, 36.890686, 52.651039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079360, 0.503425, -0.860386,
		-0.996810, -0.032761, 0.072775,
		0.008450, 0.863417, 0.504420,
		32.890598, 37.149712, 52.802364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440830, 36.968170, 52.060410>,  <32.884682, 36.545319, 52.449272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440830, 36.968170, 52.060410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667027, 37.215881, 52.278297>,  <32.802742, 37.364506, 52.409031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667027, 37.215881, 52.278297>,  <32.440830, 36.968170, 52.060410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667027, 37.215881, 52.278297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086020, 0.612579, -0.785715,
		-0.820259, 0.491169, 0.293136,
		0.565488, 0.619274, 0.544724,
		32.836674, 37.401665, 52.441715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089828, 37.636803, 52.135303>,  <32.440830, 36.968170, 52.060410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089828, 37.636803, 52.135303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482899, 37.685066, 52.191582>,  <32.718739, 37.714024, 52.225349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482899, 37.685066, 52.191582>,  <32.089828, 37.636803, 52.135303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482899, 37.685066, 52.191582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010009, 0.723433, -0.690322,
		-0.185078, 0.679769, 0.709690,
		0.982673, 0.120660, 0.140695,
		32.777702, 37.721264, 52.233791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209091, 38.363571, 52.020794>,  <32.089828, 37.636803, 52.135303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209091, 38.363571, 52.020794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575401, 38.204800, 51.996140>,  <32.795189, 38.109535, 51.981346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575401, 38.204800, 51.996140>,  <32.209091, 38.363571, 52.020794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575401, 38.204800, 51.996140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143551, 0.466701, -0.872687,
		0.375159, 0.790340, 0.484374,
		0.915778, -0.396929, -0.061633,
		32.850136, 38.085720, 51.977650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593510, 38.888115, 51.913074>,  <32.209091, 38.363571, 52.020794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593510, 38.888115, 51.913074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801533, 38.582939, 51.759472>,  <32.926346, 38.399834, 51.667309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801533, 38.582939, 51.759472>,  <32.593510, 38.888115, 51.913074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801533, 38.582939, 51.759472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009133, 0.444598, -0.895684,
		0.854080, 0.469317, 0.224250,
		0.520061, -0.762938, -0.384008,
		32.957550, 38.354057, 51.644268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147232, 39.198929, 51.506508>,  <32.593510, 38.888115, 51.913074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147232, 39.198929, 51.506508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147388, 38.824310, 51.366295>,  <33.147480, 38.599537, 51.282166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147388, 38.824310, 51.366295>,  <33.147232, 39.198929, 51.506508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147388, 38.824310, 51.366295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399316, 0.321518, -0.858588,
		0.916813, -0.139640, 0.374105,
		0.000388, -0.936551, -0.350532,
		33.147507, 38.543346, 51.261135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659374, 39.216068, 51.056187>,  <33.147232, 39.198929, 51.506508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659374, 39.216068, 51.056187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464405, 38.886230, 50.941319>,  <33.347424, 38.688328, 50.872398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464405, 38.886230, 50.941319>,  <33.659374, 39.216068, 51.056187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464405, 38.886230, 50.941319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405279, 0.077655, -0.910889,
		0.773411, -0.560374, 0.296338,
		-0.487426, -0.824591, -0.287167,
		33.318176, 38.638855, 50.855167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158459, 38.714767, 50.782333>,  <33.659374, 39.216068, 51.056187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158459, 38.714767, 50.782333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806625, 38.615215, 50.620155>,  <33.595524, 38.555485, 50.522846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806625, 38.615215, 50.620155>,  <34.158459, 38.714767, 50.782333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806625, 38.615215, 50.620155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431151, -0.056779, -0.900492,
		0.201098, -0.966867, 0.157249,
		-0.879584, -0.248885, -0.405447,
		33.542751, 38.540550, 50.498520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251144, 38.305008, 50.296642>,  <34.158459, 38.714767, 50.782333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251144, 38.305008, 50.296642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893024, 38.393932, 50.142227>,  <33.678154, 38.447285, 50.049580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893024, 38.393932, 50.142227>,  <34.251144, 38.305008, 50.296642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893024, 38.393932, 50.142227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377470, -0.081589, -0.922420,
		-0.236559, -0.971556, -0.010869,
		-0.895296, 0.222310, -0.386034,
		33.624435, 38.460625, 50.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169453, 37.834427, 49.738617>,  <34.251144, 38.305008, 50.296642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169453, 37.834427, 49.738617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902744, 38.126152, 49.677273>,  <33.742722, 38.301189, 49.640469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902744, 38.126152, 49.677273>,  <34.169453, 37.834427, 49.738617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902744, 38.126152, 49.677273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175824, -0.046027, -0.983345,
		-0.724229, -0.682626, -0.097543,
		-0.666767, 0.729318, -0.153356,
		33.702713, 38.344948, 49.631268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793674, 37.605633, 49.241219>,  <34.169453, 37.834427, 49.738617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793674, 37.605633, 49.241219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.703552, 37.995178, 49.229698>,  <33.649479, 38.228905, 49.222786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.703552, 37.995178, 49.229698>,  <33.793674, 37.605633, 49.241219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703552, 37.995178, 49.229698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050580, -0.041216, -0.997869,
		-0.972975, -0.223365, 0.058544,
		-0.225302, 0.973863, -0.028804,
		33.635963, 38.287338, 49.221058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158234, 37.653728, 48.775265>,  <33.793674, 37.605633, 49.241219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158234, 37.653728, 48.775265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349453, 38.004757, 48.789925>,  <33.464184, 38.215374, 48.798721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349453, 38.004757, 48.789925>,  <33.158234, 37.653728, 48.775265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349453, 38.004757, 48.789925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126286, -0.027378, -0.991616,
		-0.869207, 0.478669, -0.123913,
		0.478048, 0.877569, 0.036652,
		33.492867, 38.268028, 48.800919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465076, 37.569614, 48.626842>,  <33.158234, 37.653728, 48.775265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465076, 37.569614, 48.626842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096165, 37.507416, 48.485294>,  <31.874817, 37.470097, 48.400368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096165, 37.507416, 48.485294>,  <32.465076, 37.569614, 48.626842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096165, 37.507416, 48.485294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318973, -0.210887, 0.924004,
		-0.218306, 0.965063, 0.144898,
		-0.922279, -0.155498, -0.353867,
		31.819481, 37.460766, 48.379135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076492, 37.932735, 49.055923>,  <32.465076, 37.569614, 48.626842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076492, 37.932735, 49.055923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803885, 37.674892, 48.917355>,  <31.640318, 37.520187, 48.834213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803885, 37.674892, 48.917355>,  <32.076492, 37.932735, 49.055923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803885, 37.674892, 48.917355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360615, -0.116094, 0.925462,
		-0.636775, 0.755650, -0.153333,
		-0.681524, -0.644605, -0.346424,
		31.599428, 37.481510, 48.813427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467083, 38.188393, 49.263042>,  <32.076492, 37.932735, 49.055923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467083, 38.188393, 49.263042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414703, 37.800663, 49.179852>,  <31.383276, 37.568024, 49.129936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414703, 37.800663, 49.179852>,  <31.467083, 38.188393, 49.263042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414703, 37.800663, 49.179852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403570, -0.139499, 0.904252,
		-0.905529, 0.202346, -0.372924,
		-0.130950, -0.969328, -0.207981,
		31.375418, 37.509865, 49.117458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736614, 37.942032, 49.443600>,  <31.467083, 38.188393, 49.263042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736614, 37.942032, 49.443600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965967, 37.614319, 49.445038>,  <31.103579, 37.417690, 49.445900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965967, 37.614319, 49.445038>,  <30.736614, 37.942032, 49.443600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965967, 37.614319, 49.445038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439462, -0.303858, 0.845307,
		-0.691452, -0.486262, -0.534269,
		0.573383, -0.819280, 0.003591,
		31.137981, 37.368534, 49.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443748, 37.601471, 49.875870>,  <30.736614, 37.942032, 49.443600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443748, 37.601471, 49.875870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.713404, 37.313324, 49.810612>,  <30.875196, 37.140438, 49.771458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.713404, 37.313324, 49.810612>,  <30.443748, 37.601471, 49.875870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713404, 37.313324, 49.810612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292052, -0.462858, 0.836939,
		-0.678414, -0.516564, -0.522413,
		0.674137, -0.720363, -0.163146,
		30.915646, 37.097214, 49.761669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110952, 36.947666, 49.933346>,  <30.443748, 37.601471, 49.875870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110952, 36.947666, 49.933346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.494247, 36.889393, 50.031784>,  <30.724224, 36.854427, 50.090847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.494247, 36.889393, 50.031784>,  <30.110952, 36.947666, 49.933346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494247, 36.889393, 50.031784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263123, -0.112030, 0.958236,
		-0.112030, -0.982968, -0.145684,
		-0.958236, 0.145684, -0.246091,
		30.781717, 36.845688, 50.105610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110788, 36.328026, 50.200638>,  <30.110952, 36.947666, 49.933346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110788, 36.328026, 50.200638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452787, 36.481281, 50.340462>,  <30.657986, 36.573235, 50.424355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452787, 36.481281, 50.340462>,  <30.110788, 36.328026, 50.200638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452787, 36.481281, 50.340462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268794, -0.249059, 0.930440,
		0.443545, -0.889481, -0.109959,
		0.854996, 0.383135, 0.349556,
		30.709286, 36.596222, 50.445328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898701, 35.590191, 50.007351>,  <30.110788, 36.328026, 50.200638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898701, 35.590191, 50.007351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.516451, 35.474918, 49.982925>,  <29.287100, 35.405754, 49.968269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.516451, 35.474918, 49.982925>,  <29.898701, 35.590191, 50.007351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516451, 35.474918, 49.982925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065511, -0.005792, -0.997835,
		0.287205, -0.957558, 0.024414,
		-0.955626, -0.288182, -0.061067,
		29.229763, 35.388462, 49.964603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773270, 35.169773, 49.437370>,  <29.898701, 35.590191, 50.007351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773270, 35.169773, 49.437370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.382303, 35.240746, 49.483280>,  <29.147724, 35.283329, 49.510826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.382303, 35.240746, 49.483280>,  <29.773270, 35.169773, 49.437370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382303, 35.240746, 49.483280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098663, 0.097145, -0.990368,
		-0.186876, -0.979326, -0.077445,
		-0.977416, 0.177435, 0.114778,
		29.089079, 35.293976, 49.517712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366577, 34.760815, 48.907207>,  <29.773270, 35.169773, 49.437370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366577, 34.760815, 48.907207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.178040, 35.095833, 49.017735>,  <29.064917, 35.296844, 49.084049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.178040, 35.095833, 49.017735>,  <29.366577, 34.760815, 48.907207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178040, 35.095833, 49.017735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065904, 0.345875, -0.935963,
		-0.879485, -0.422948, -0.218223,
		-0.471342, 0.837547, 0.276318,
		29.036636, 35.347095, 49.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881493, 34.774921, 48.484329>,  <29.366577, 34.760815, 48.907207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881493, 34.774921, 48.484329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.888084, 35.146271, 48.632847>,  <28.892038, 35.369080, 48.721958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.888084, 35.146271, 48.632847>,  <28.881493, 34.774921, 48.484329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888084, 35.146271, 48.632847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182257, 0.367911, -0.911825,
		-0.983113, -0.052645, 0.175264,
		0.016479, 0.928370, 0.371292,
		28.893028, 35.424782, 48.744236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237640, 35.132759, 48.294804>,  <28.881493, 34.774921, 48.484329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237640, 35.132759, 48.294804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.517025, 35.404644, 48.384373>,  <28.684656, 35.567776, 48.438114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.517025, 35.404644, 48.384373>,  <28.237640, 35.132759, 48.294804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517025, 35.404644, 48.384373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130354, 0.428493, -0.894093,
		-0.703674, 0.595302, 0.387889,
		0.698463, 0.679713, 0.223919,
		28.726564, 35.608559, 48.451550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052202, 35.760052, 47.955032>,  <28.237640, 35.132759, 48.294804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052202, 35.760052, 47.955032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.437580, 35.842949, 48.022945>,  <28.668806, 35.892689, 48.063694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.437580, 35.842949, 48.022945>,  <28.052202, 35.760052, 47.955032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437580, 35.842949, 48.022945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088012, 0.353727, -0.931199,
		-0.253043, 0.912100, 0.322556,
		0.963443, 0.207244, 0.169784,
		28.726614, 35.905121, 48.073879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204666, 36.412689, 47.708580>,  <28.052202, 35.760052, 47.955032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204666, 36.412689, 47.708580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.563595, 36.236378, 47.717731>,  <28.778952, 36.130589, 47.723221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.563595, 36.236378, 47.717731>,  <28.204666, 36.412689, 47.708580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563595, 36.236378, 47.717731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132180, 0.218905, -0.966752,
		0.421119, 0.870512, 0.254691,
		0.897322, -0.440782, 0.022879,
		28.832792, 36.104141, 47.724594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.913929, 32.347168, 52.306225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.166931, 32.644478, 52.219063>,  <32.318733, 32.822865, 52.166767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.166931, 32.644478, 52.219063>,  <31.913929, 32.347168, 52.306225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166931, 32.644478, 52.219063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090459, -0.208515, -0.973827,
		-0.769255, 0.635662, -0.064651,
		0.632505, 0.743273, -0.217902,
		32.356682, 32.867458, 52.153690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577078, 32.865654, 51.885227>,  <31.913929, 32.347168, 52.306225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577078, 32.865654, 51.885227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.971378, 32.890533, 51.822716>,  <32.207958, 32.905460, 51.785210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.971378, 32.890533, 51.822716>,  <31.577078, 32.865654, 51.885227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971378, 32.890533, 51.822716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157219, 0.010448, -0.987508,
		-0.059789, 0.998009, 0.020078,
		0.985752, 0.062199, -0.156281,
		32.267105, 32.909195, 51.775833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736731, 33.407406, 51.333729>,  <31.577078, 32.865654, 51.885227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736731, 33.407406, 51.333729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069233, 33.185505, 51.319500>,  <32.268734, 33.052364, 51.310963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069233, 33.185505, 51.319500>,  <31.736731, 33.407406, 51.333729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069233, 33.185505, 51.319500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032064, 0.016037, -0.999357,
		0.554967, 0.831860, -0.004456,
		0.831254, -0.554753, -0.035573,
		32.318607, 33.019077, 51.308826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040928, 33.614716, 50.699589>,  <31.736731, 33.407406, 51.333729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040928, 33.614716, 50.699589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.245323, 33.285244, 50.797924>,  <32.367962, 33.087559, 50.856926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.245323, 33.285244, 50.797924>,  <32.040928, 33.614716, 50.699589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245323, 33.285244, 50.797924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141220, -0.201669, -0.969220,
		0.847906, 0.529981, 0.013269,
		0.510992, -0.823681, 0.245840,
		32.398621, 33.038139, 50.871677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610710, 33.634979, 50.271992>,  <32.040928, 33.614716, 50.699589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610710, 33.634979, 50.271992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.527534, 33.258404, 50.378166>,  <32.477631, 33.032459, 50.441872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.527534, 33.258404, 50.378166>,  <32.610710, 33.634979, 50.271992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527534, 33.258404, 50.378166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100385, -0.290476, -0.951602,
		0.972977, -0.171230, 0.154908,
		-0.207940, -0.941437, 0.265437,
		32.465153, 32.975971, 50.457798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140308, 33.305077, 50.105141>,  <32.610710, 33.634979, 50.271992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140308, 33.305077, 50.105141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876644, 33.005894, 50.136284>,  <32.718445, 32.826382, 50.154968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876644, 33.005894, 50.136284>,  <33.140308, 33.305077, 50.105141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876644, 33.005894, 50.136284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299301, -0.355915, -0.885293,
		0.689874, -0.560248, 0.458471,
		-0.659160, -0.747962, 0.077854,
		32.678898, 32.781506, 50.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488132, 32.650291, 49.961391>,  <33.140308, 33.305077, 50.105141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488132, 32.650291, 49.961391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096176, 32.622833, 49.886452>,  <32.861000, 32.606358, 49.841488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096176, 32.622833, 49.886452>,  <33.488132, 32.650291, 49.961391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096176, 32.622833, 49.886452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199375, -0.300599, -0.932679,
		0.007705, -0.951277, 0.308241,
		-0.979893, -0.068642, -0.187345,
		32.802208, 32.602242, 49.830250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382450, 31.975237, 49.514305>,  <33.488132, 32.650291, 49.961391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382450, 31.975237, 49.514305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.028355, 32.155266, 49.467342>,  <32.815895, 32.263283, 49.439163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.028355, 32.155266, 49.467342>,  <33.382450, 31.975237, 49.514305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028355, 32.155266, 49.467342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040794, -0.326571, -0.944292,
		-0.463342, -0.831136, 0.307453,
		-0.885240, 0.450073, -0.117409,
		32.762783, 32.290287, 49.432121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919830, 31.454021, 49.264633>,  <33.382450, 31.975237, 49.514305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919830, 31.454021, 49.264633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.743889, 31.792210, 49.143501>,  <32.638325, 31.995123, 49.070824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.743889, 31.792210, 49.143501>,  <32.919830, 31.454021, 49.264633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743889, 31.792210, 49.143501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125693, -0.391840, -0.911407,
		-0.889229, -0.362824, 0.278623,
		-0.439856, 0.845470, -0.302831,
		32.611931, 32.045849, 49.052650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349724, 31.277870, 49.009968>,  <32.919830, 31.454021, 49.264633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349724, 31.277870, 49.009968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.421940, 31.622372, 48.819958>,  <32.465271, 31.829073, 48.705952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.421940, 31.622372, 48.819958>,  <32.349724, 31.277870, 49.009968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421940, 31.622372, 48.819958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135915, -0.456484, -0.879289,
		-0.974131, 0.223312, 0.034643,
		0.180542, 0.861251, -0.475027,
		32.476101, 31.880747, 48.677448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854561, 31.247053, 48.440311>,  <32.349724, 31.277870, 49.009968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854561, 31.247053, 48.440311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.123001, 31.516647, 48.316784>,  <32.284065, 31.678404, 48.242668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.123001, 31.516647, 48.316784>,  <31.854561, 31.247053, 48.440311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123001, 31.516647, 48.316784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217734, -0.219000, -0.951121,
		-0.708673, 0.705537, -0.000221,
		0.671099, 0.673986, -0.308818,
		32.324329, 31.718843, 48.224140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490978, 31.746984, 48.073929>,  <31.854561, 31.247053, 48.440311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490978, 31.746984, 48.073929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.867657, 31.771755, 47.941643>,  <32.093662, 31.786617, 47.862270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.867657, 31.771755, 47.941643>,  <31.490978, 31.746984, 48.073929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867657, 31.771755, 47.941643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307227, -0.242492, -0.920223,
		-0.137184, 0.968175, -0.209327,
		0.941696, 0.061929, -0.330715,
		32.150166, 31.790335, 47.842426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132614, 32.382641, 48.431278>,  <31.490978, 31.746984, 48.073929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132614, 32.382641, 48.431278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.771666, 32.531910, 48.345051>,  <30.555098, 32.621471, 48.293316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.771666, 32.531910, 48.345051>,  <31.132614, 32.382641, 48.431278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771666, 32.531910, 48.345051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182412, 0.122452, 0.975567,
		0.390456, 0.919643, -0.042425,
		-0.902369, 0.373177, -0.215567,
		30.500956, 32.643864, 48.280380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020006, 33.035835, 48.850277>,  <31.132614, 32.382641, 48.431278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020006, 33.035835, 48.850277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.656502, 32.904629, 48.747082>,  <30.438398, 32.825905, 48.685165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.656502, 32.904629, 48.747082>,  <31.020006, 33.035835, 48.850277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656502, 32.904629, 48.747082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262670, -0.030792, 0.964394,
		-0.324277, 0.944171, -0.058176,
		-0.908762, -0.328012, -0.257990,
		30.383873, 32.806225, 48.669685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569092, 33.526230, 49.148869>,  <31.020006, 33.035835, 48.850277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569092, 33.526230, 49.148869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385872, 33.178082, 49.076588>,  <30.275940, 32.969193, 49.033218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385872, 33.178082, 49.076588>,  <30.569092, 33.526230, 49.148869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385872, 33.178082, 49.076588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167356, -0.115207, 0.979142,
		-0.873030, 0.478738, -0.092890,
		-0.458051, -0.870366, -0.180698,
		30.248457, 32.916973, 49.022377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916397, 33.529362, 49.449184>,  <30.569092, 33.526230, 49.148869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916397, 33.529362, 49.449184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979095, 33.139137, 49.387581>,  <30.016714, 32.905003, 49.350620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979095, 33.139137, 49.387581>,  <29.916397, 33.529362, 49.449184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979095, 33.139137, 49.387581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401112, -0.205377, 0.892709,
		-0.902519, -0.078154, -0.423500,
		0.156746, -0.975558, -0.154008,
		30.026119, 32.846470, 49.341377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263691, 33.269737, 49.571507>,  <29.916397, 33.529362, 49.449184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263691, 33.269737, 49.571507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.515059, 32.967026, 49.643482>,  <29.665878, 32.785400, 49.686668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.515059, 32.967026, 49.643482>,  <29.263691, 33.269737, 49.571507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515059, 32.967026, 49.643482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478487, -0.193691, 0.856466,
		-0.613304, -0.624314, -0.483828,
		0.628417, -0.756780, 0.179935,
		29.703585, 32.739990, 49.697464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846663, 32.806087, 49.859898>,  <29.263691, 33.269737, 49.571507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846663, 32.806087, 49.859898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212973, 32.688549, 49.969448>,  <29.432758, 32.618027, 50.035179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212973, 32.688549, 49.969448>,  <28.846663, 32.806087, 49.859898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212973, 32.688549, 49.969448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361680, -0.306561, 0.880459,
		-0.174762, -0.905358, -0.387021,
		0.915776, -0.293849, 0.273874,
		29.487705, 32.600395, 50.051609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728996, 32.179729, 50.054436>,  <28.846663, 32.806087, 49.859898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728996, 32.179729, 50.054436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.071131, 32.293545, 50.227612>,  <29.276411, 32.361835, 50.331516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.071131, 32.293545, 50.227612>,  <28.728996, 32.179729, 50.054436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071131, 32.293545, 50.227612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344710, -0.311273, 0.885598,
		0.386753, -0.906722, -0.168159,
		0.855335, 0.284542, 0.432942,
		29.327732, 32.378906, 50.357494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825586, 31.600386, 50.528839>,  <28.728996, 32.179729, 50.054436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825586, 31.600386, 50.528839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.049395, 31.902185, 50.666050>,  <29.183680, 32.083263, 50.748379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.049395, 31.902185, 50.666050>,  <28.825586, 31.600386, 50.528839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049395, 31.902185, 50.666050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391802, -0.123932, 0.911665,
		0.730362, -0.644494, 0.226271,
		0.559520, 0.754499, 0.343030,
		29.217251, 32.128536, 50.768959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122328, 31.342102, 51.247086>,  <28.825586, 31.600386, 50.528839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122328, 31.342102, 51.247086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.151537, 31.740963, 51.239578>,  <29.169062, 31.980280, 51.235073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.151537, 31.740963, 51.239578>,  <29.122328, 31.342102, 51.247086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151537, 31.740963, 51.239578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386251, 0.045622, 0.921265,
		0.919499, -0.060026, 0.388483,
		0.073023, 0.997154, -0.018764,
		29.173445, 32.040108, 51.233948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439941, 31.553246, 51.886364>,  <29.122328, 31.342102, 51.247086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439941, 31.553246, 51.886364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.249725, 31.872465, 51.738319>,  <29.135595, 32.063995, 51.649490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.249725, 31.872465, 51.738319>,  <29.439941, 31.553246, 51.886364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249725, 31.872465, 51.738319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149359, 0.341375, 0.927984,
		0.866922, 0.496573, -0.043141,
		-0.475539, 0.798047, -0.370113,
		29.107063, 32.111877, 51.627285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743725, 32.070122, 52.369270>,  <29.439941, 31.553246, 51.886364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743725, 32.070122, 52.369270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.394463, 32.196106, 52.220463>,  <29.184906, 32.271698, 52.131180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.394463, 32.196106, 52.220463>,  <29.743725, 32.070122, 52.369270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394463, 32.196106, 52.220463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207119, 0.451154, 0.868080,
		0.441249, 0.835021, -0.328693,
		-0.873156, 0.314961, -0.372020,
		29.132515, 32.290596, 52.108856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666355, 32.815132, 52.510757>,  <29.743725, 32.070122, 52.369270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666355, 32.815132, 52.510757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.296377, 32.666779, 52.477489>,  <29.074390, 32.577766, 52.457527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.296377, 32.666779, 52.477489>,  <29.666355, 32.815132, 52.510757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296377, 32.666779, 52.477489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210164, 0.316704, 0.924948,
		-0.316709, 0.873008, -0.370881,
		-0.924947, -0.370885, -0.083172,
		29.018892, 32.555511, 52.452538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283350, 33.308887, 52.806370>,  <29.666355, 32.815132, 52.510757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283350, 33.308887, 52.806370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.051279, 32.983620, 52.824883>,  <28.912037, 32.788460, 52.835991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.051279, 32.983620, 52.824883>,  <29.283350, 33.308887, 52.806370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051279, 32.983620, 52.824883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263777, 0.241350, 0.933901,
		-0.770594, 0.529621, -0.354523,
		-0.580178, -0.813174, 0.046281,
		28.877226, 32.739666, 52.838768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582054, 33.449699, 53.041279>,  <29.283350, 33.308887, 52.806370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582054, 33.449699, 53.041279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.658720, 33.075745, 53.160782>,  <28.704720, 32.851372, 53.232483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.658720, 33.075745, 53.160782>,  <28.582054, 33.449699, 53.041279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658720, 33.075745, 53.160782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297392, 0.234775, 0.925440,
		-0.935320, -0.266224, -0.233028,
		0.191665, -0.934883, 0.298762,
		28.716219, 32.795280, 53.250412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370962, 34.189335, 52.864872>,  <28.582054, 33.449699, 53.041279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370962, 34.189335, 52.864872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.419979, 34.584251, 52.824406>,  <28.449389, 34.821201, 52.800125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.419979, 34.584251, 52.824406>,  <28.370962, 34.189335, 52.864872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419979, 34.584251, 52.824406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037477, -0.097254, -0.994554,
		-0.991755, 0.125666, 0.025084,
		0.122542, 0.987294, -0.101162,
		28.456741, 34.880440, 52.794056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804939, 34.509335, 52.451225>,  <28.370962, 34.189335, 52.864872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804939, 34.509335, 52.451225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.136347, 34.729694, 52.411095>,  <28.335192, 34.861912, 52.387016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.136347, 34.729694, 52.411095>,  <27.804939, 34.509335, 52.451225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136347, 34.729694, 52.411095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084974, -0.053399, -0.994951,
		-0.553479, 0.832859, 0.002570,
		0.828517, 0.550903, -0.100326,
		28.384901, 34.894966, 52.380997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700121, 34.939529, 51.815250>,  <27.804939, 34.509335, 52.451225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700121, 34.939529, 51.815250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.089441, 35.018166, 51.862644>,  <28.323032, 35.065350, 51.891079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.089441, 35.018166, 51.862644>,  <27.700121, 34.939529, 51.815250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089441, 35.018166, 51.862644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109831, 0.054381, -0.992462,
		-0.201556, 0.978976, 0.031337,
		0.973300, 0.196595, 0.118483,
		28.381432, 35.077145, 51.898190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814013, 35.585426, 51.388168>,  <27.700121, 34.939529, 51.815250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814013, 35.585426, 51.388168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178528, 35.434685, 51.454548>,  <28.397238, 35.344242, 51.494377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178528, 35.434685, 51.454548>,  <27.814013, 35.585426, 51.388168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178528, 35.434685, 51.454548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236437, 0.148932, -0.960165,
		0.337124, 0.914223, 0.224821,
		0.911287, -0.376850, 0.165948,
		28.451914, 35.321629, 51.504333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340630, 36.065002, 51.197536>,  <27.814013, 35.585426, 51.388168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340630, 36.065002, 51.197536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.536148, 35.717300, 51.167950>,  <28.653460, 35.508678, 51.150196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.536148, 35.717300, 51.167950>,  <28.340630, 36.065002, 51.197536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536148, 35.717300, 51.167950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260659, 0.226433, -0.938501,
		0.832548, 0.439454, 0.337259,
		0.488794, -0.869258, -0.073969,
		28.682787, 35.456524, 51.145760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911007, 36.250801, 50.752258>,  <28.340630, 36.065002, 51.197536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911007, 36.250801, 50.752258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.882248, 35.851917, 50.744305>,  <28.864992, 35.612587, 50.739532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.882248, 35.851917, 50.744305>,  <28.911007, 36.250801, 50.752258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882248, 35.851917, 50.744305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403354, -0.010839, -0.914980,
		0.912215, -0.073806, 0.403010,
		-0.071900, -0.997214, -0.019882,
		28.860678, 35.552753, 50.738338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522909, 36.024143, 50.470066>,  <28.911007, 36.250801, 50.752258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522909, 36.024143, 50.470066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.243191, 35.745239, 50.407059>,  <29.075359, 35.577896, 50.369255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.243191, 35.745239, 50.407059>,  <29.522909, 36.024143, 50.470066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243191, 35.745239, 50.407059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281028, -0.065552, -0.957458,
		0.657274, -0.713812, 0.241791,
		-0.699295, -0.697263, -0.157515,
		29.033401, 35.536060, 50.359806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291885, 35.893776, 50.788788>,  <29.522909, 36.024143, 50.470066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291885, 35.893776, 50.788788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.500540, 36.226875, 50.863010>,  <30.625732, 36.426735, 50.907543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.500540, 36.226875, 50.863010>,  <30.291885, 35.893776, 50.788788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500540, 36.226875, 50.863010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011830, -0.210412, 0.977541,
		0.853086, -0.512117, -0.099908,
		0.521637, 0.832745, 0.185558,
		30.657030, 36.476700, 50.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862623, 35.679371, 51.098831>,  <30.291885, 35.893776, 50.788788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862623, 35.679371, 51.098831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838305, 36.063744, 51.206837>,  <30.823713, 36.294369, 51.271641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838305, 36.063744, 51.206837>,  <30.862623, 35.679371, 51.098831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838305, 36.063744, 51.206837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108183, -0.262575, 0.958828,
		0.992270, 0.087506, -0.087992,
		-0.060799, 0.960936, 0.270012,
		30.820065, 36.352024, 51.287842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482445, 35.890881, 51.621170>,  <30.862623, 35.679371, 51.098831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482445, 35.890881, 51.621170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212477, 36.183819, 51.657284>,  <31.050495, 36.359581, 51.678951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212477, 36.183819, 51.657284>,  <31.482445, 35.890881, 51.621170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212477, 36.183819, 51.657284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051072, -0.075697, 0.995822,
		0.736121, 0.676711, 0.013687,
		-0.674920, 0.732347, 0.090283,
		31.010000, 36.403522, 51.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796984, 36.511482, 52.033882>,  <31.482445, 35.890881, 51.621170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796984, 36.511482, 52.033882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.397587, 36.501694, 52.053555>,  <31.157949, 36.495819, 52.065357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.397587, 36.501694, 52.053555>,  <31.796984, 36.511482, 52.033882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397587, 36.501694, 52.053555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048733, 0.018475, 0.998641,
		-0.025348, 0.999530, -0.017254,
		-0.998490, -0.024472, 0.049178,
		31.098040, 36.494350, 52.068310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608768, 36.959873, 52.635555>,  <31.796984, 36.511482, 52.033882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608768, 36.959873, 52.635555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.290506, 36.728424, 52.563866>,  <31.099548, 36.589554, 52.520851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.290506, 36.728424, 52.563866>,  <31.608768, 36.959873, 52.635555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290506, 36.728424, 52.563866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178095, -0.059336, 0.982223,
		-0.578975, 0.813431, -0.055839,
		-0.795657, -0.578627, -0.179222,
		31.051809, 36.554836, 52.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972044, 37.155563, 53.081470>,  <31.608768, 36.959873, 52.635555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972044, 37.155563, 53.081470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.903467, 36.780136, 52.961678>,  <30.862320, 36.554878, 52.889801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.903467, 36.780136, 52.961678>,  <30.972044, 37.155563, 53.081470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903467, 36.780136, 52.961678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152265, -0.275087, 0.949285,
		-0.973356, 0.208350, -0.095750,
		-0.171444, -0.938572, -0.299482,
		30.852034, 36.498566, 52.871834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436617, 36.941620, 53.577240>,  <30.972044, 37.155563, 53.081470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436617, 36.941620, 53.577240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.557915, 36.593033, 53.423058>,  <30.630693, 36.383881, 53.330547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.557915, 36.593033, 53.423058>,  <30.436617, 36.941620, 53.577240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557915, 36.593033, 53.423058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096316, -0.430466, 0.897453,
		-0.948033, -0.235021, -0.214473,
		0.303244, -0.871472, -0.385460,
		30.648888, 36.331593, 53.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009567, 36.515110, 53.859146>,  <30.436617, 36.941620, 53.577240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009567, 36.515110, 53.859146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.315428, 36.285000, 53.742958>,  <30.498943, 36.146935, 53.673244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.315428, 36.285000, 53.742958>,  <30.009567, 36.515110, 53.859146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315428, 36.285000, 53.742958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038221, -0.409448, 0.911533,
		-0.643313, -0.708104, -0.291096,
		0.764649, -0.575275, -0.290467,
		30.544823, 36.112419, 53.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904583, 35.932919, 54.185173>,  <30.009567, 36.515110, 53.859146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904583, 35.932919, 54.185173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.291237, 35.933548, 54.082706>,  <30.523230, 35.933926, 54.021229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.291237, 35.933548, 54.082706>,  <29.904583, 35.932919, 54.185173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291237, 35.933548, 54.082706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211951, -0.566530, 0.796317,
		-0.143869, -0.824039, -0.547960,
		0.966633, 0.001576, -0.256162,
		30.581226, 35.934021, 54.005859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.762684, 37.159611, 38.517288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142548, 37.164238, 38.642517>,  <34.370464, 37.167015, 38.717655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142548, 37.164238, 38.642517>,  <33.762684, 37.159611, 38.517288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142548, 37.164238, 38.642517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287247, -0.366765, 0.884857,
		0.125060, -0.930242, -0.344979,
		0.949657, 0.011566, 0.313077,
		34.427444, 37.167709, 38.736439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071316, 36.518391, 38.770283>,  <33.762684, 37.159611, 38.517288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071316, 36.518391, 38.770283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270504, 36.814510, 38.950943>,  <34.390015, 36.992184, 39.059338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270504, 36.814510, 38.950943>,  <34.071316, 36.518391, 38.770283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270504, 36.814510, 38.950943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567648, -0.115469, 0.815134,
		0.655593, -0.662287, 0.362729,
		0.497969, 0.740299, 0.451647,
		34.419895, 37.036598, 39.086437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174088, 36.310547, 39.432308>,  <34.071316, 36.518391, 38.770283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174088, 36.310547, 39.432308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226036, 36.702641, 39.491997>,  <34.257206, 36.937897, 39.527809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226036, 36.702641, 39.491997>,  <34.174088, 36.310547, 39.432308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226036, 36.702641, 39.491997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478702, -0.069810, 0.875198,
		0.868318, -0.185100, 0.460175,
		0.129874, 0.980237, 0.149225,
		34.264999, 36.996712, 39.536766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329922, 36.395706, 40.097084>,  <34.174088, 36.310547, 39.432308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329922, 36.395706, 40.097084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243286, 36.779510, 40.025051>,  <34.191303, 37.009792, 39.981831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243286, 36.779510, 40.025051>,  <34.329922, 36.395706, 40.097084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243286, 36.779510, 40.025051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419843, 0.074985, 0.904494,
		0.881374, 0.271511, 0.386603,
		-0.216590, 0.959510, -0.180082,
		34.178310, 37.067364, 39.971027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429527, 36.681301, 40.794430>,  <34.329922, 36.395706, 40.097084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429527, 36.681301, 40.794430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178364, 36.919064, 40.593468>,  <34.027664, 37.061722, 40.472889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178364, 36.919064, 40.593468>,  <34.429527, 36.681301, 40.794430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178364, 36.919064, 40.593468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482408, 0.209317, 0.850570,
		0.610743, 0.776448, 0.155312,
		-0.627914, 0.594403, -0.502404,
		33.989990, 37.097385, 40.442745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298512, 37.199493, 41.240810>,  <34.429527, 36.681301, 40.794430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298512, 37.199493, 41.240810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990959, 37.234100, 40.987404>,  <33.806427, 37.254864, 40.835361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990959, 37.234100, 40.987404>,  <34.298512, 37.199493, 41.240810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990959, 37.234100, 40.987404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581012, 0.319095, 0.748735,
		0.266933, 0.943765, -0.195075,
		-0.768877, 0.086522, -0.633515,
		33.760296, 37.260056, 40.797348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015411, 37.773632, 41.365829>,  <34.298512, 37.199493, 41.240810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015411, 37.773632, 41.365829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727459, 37.577557, 41.169266>,  <33.554688, 37.459911, 41.051327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727459, 37.577557, 41.169266>,  <34.015411, 37.773632, 41.365829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727459, 37.577557, 41.169266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664556, 0.282416, 0.691814,
		-0.200337, 0.824595, -0.529064,
		-0.719882, -0.490189, -0.491411,
		33.511494, 37.430500, 41.021843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461250, 38.264027, 41.332821>,  <34.015411, 37.773632, 41.365829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461250, 38.264027, 41.332821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283638, 37.914394, 41.254009>,  <33.177071, 37.704617, 41.206722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283638, 37.914394, 41.254009>,  <33.461250, 38.264027, 41.332821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283638, 37.914394, 41.254009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755804, 0.247280, 0.606310,
		-0.481242, 0.418138, -0.770433,
		-0.444034, -0.874079, -0.197029,
		33.150429, 37.652172, 41.194901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783798, 38.423336, 41.185604>,  <33.461250, 38.264027, 41.332821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783798, 38.423336, 41.185604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797180, 38.045715, 41.316837>,  <32.805210, 37.819141, 41.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797180, 38.045715, 41.316837>,  <32.783798, 38.423336, 41.185604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797180, 38.045715, 41.316837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804336, 0.169419, 0.569510,
		-0.593233, -0.282943, -0.753670,
		0.033453, -0.944055, 0.328086,
		32.807217, 37.762497, 41.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082989, 38.335587, 41.371220>,  <32.783798, 38.423336, 41.185604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082989, 38.335587, 41.371220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272823, 38.028416, 41.543289>,  <32.386726, 37.844112, 41.646530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272823, 38.028416, 41.543289>,  <32.082989, 38.335587, 41.371220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272823, 38.028416, 41.543289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661122, 0.011650, 0.750188,
		-0.581105, -0.640425, -0.502168,
		0.474589, -0.767932, 0.430169,
		32.415199, 37.798035, 41.672340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542074, 37.947266, 41.771343>,  <32.082989, 38.335587, 41.371220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542074, 37.947266, 41.771343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893797, 37.816639, 41.910011>,  <32.104832, 37.738262, 41.993214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893797, 37.816639, 41.910011>,  <31.542074, 37.947266, 41.771343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893797, 37.816639, 41.910011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406660, -0.135941, 0.903409,
		-0.247894, -0.935348, -0.252334,
		0.879305, -0.326564, 0.346670,
		32.157589, 37.718670, 42.014011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364307, 37.415882, 42.248352>,  <31.542074, 37.947266, 41.771343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364307, 37.415882, 42.248352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733919, 37.517872, 42.362301>,  <31.955687, 37.579067, 42.430672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733919, 37.517872, 42.362301>,  <31.364307, 37.415882, 42.248352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733919, 37.517872, 42.362301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283583, -0.042630, 0.958000,
		0.256412, -0.966007, 0.032916,
		0.924031, 0.254977, 0.284874,
		32.011127, 37.594364, 42.447762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251974, 36.589348, 42.155430>,  <31.364307, 37.415882, 42.248352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251974, 36.589348, 42.155430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853199, 36.587467, 42.124203>,  <30.613934, 36.586338, 42.105465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853199, 36.587467, 42.124203>,  <31.251974, 36.589348, 42.155430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853199, 36.587467, 42.124203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075411, 0.206989, -0.975433,
		0.020747, -0.978332, -0.206000,
		-0.996937, -0.004703, -0.078071,
		30.554117, 36.586056, 42.100780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026865, 36.114883, 41.639885>,  <31.251974, 36.589348, 42.155430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026865, 36.114883, 41.639885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742090, 36.391335, 41.689663>,  <30.571226, 36.557205, 41.719532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742090, 36.391335, 41.689663>,  <31.026865, 36.114883, 41.639885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742090, 36.391335, 41.689663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004704, 0.181903, -0.983305,
		-0.702229, -0.699465, -0.132755,
		-0.711936, 0.691130, 0.124447,
		30.528509, 36.598675, 41.726997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494032, 35.968857, 41.125320>,  <31.026865, 36.114883, 41.639885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494032, 35.968857, 41.125320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398634, 36.345390, 41.220821>,  <30.341394, 36.571312, 41.278122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398634, 36.345390, 41.220821>,  <30.494032, 35.968857, 41.125320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398634, 36.345390, 41.220821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202361, 0.192280, -0.960249,
		-0.949826, -0.277329, 0.144632,
		-0.238495, 0.941338, 0.238754,
		30.327085, 36.627792, 41.292446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829292, 36.085373, 40.864265>,  <30.494032, 35.968857, 41.125320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829292, 36.085373, 40.864265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006367, 36.442547, 40.897011>,  <30.112612, 36.656849, 40.916656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006367, 36.442547, 40.897011>,  <29.829292, 36.085373, 40.864265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006367, 36.442547, 40.897011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185762, 0.180642, -0.965847,
		-0.877224, 0.412360, 0.245840,
		0.442686, 0.892932, 0.081863,
		30.139174, 36.710426, 40.921570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437572, 36.558796, 40.442749>,  <29.829292, 36.085373, 40.864265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437572, 36.558796, 40.442749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789547, 36.739441, 40.501755>,  <30.000731, 36.847828, 40.537159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789547, 36.739441, 40.501755>,  <29.437572, 36.558796, 40.442749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789547, 36.739441, 40.501755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022603, 0.349935, -0.936501,
		-0.474557, 0.820726, 0.318128,
		0.879934, 0.451614, 0.147513,
		30.053528, 36.874924, 40.546009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348574, 37.245975, 40.240723>,  <29.437572, 36.558796, 40.442749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348574, 37.245975, 40.240723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733910, 37.142963, 40.210644>,  <29.965111, 37.081158, 40.192596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733910, 37.142963, 40.210644>,  <29.348574, 37.245975, 40.240723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733910, 37.142963, 40.210644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013656, 0.326994, -0.944928,
		0.267935, 0.909260, 0.318523,
		0.963340, -0.257529, -0.075196,
		30.022911, 37.065704, 40.188084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603729, 37.774189, 39.926426>,  <29.348574, 37.245975, 40.240723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603729, 37.774189, 39.926426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908381, 37.518543, 39.883621>,  <30.091171, 37.365154, 39.857941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908381, 37.518543, 39.883621>,  <29.603729, 37.774189, 39.926426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908381, 37.518543, 39.883621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010298, 0.177051, -0.984148,
		0.647933, 0.748452, 0.141429,
		0.761628, -0.639118, -0.107010,
		30.136869, 37.326809, 39.851517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998219, 38.071541, 39.440857>,  <29.603729, 37.774189, 39.926426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998219, 38.071541, 39.440857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119232, 37.690819, 39.461044>,  <30.191841, 37.462387, 39.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119232, 37.690819, 39.461044>,  <29.998219, 38.071541, 39.440857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119232, 37.690819, 39.461044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123415, -0.013382, -0.992265,
		0.945115, 0.306422, 0.113418,
		0.302534, -0.951802, 0.050464,
		30.209991, 37.405277, 39.476185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546556, 38.064949, 39.008587>,  <29.998219, 38.071541, 39.440857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546556, 38.064949, 39.008587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397915, 37.696304, 39.053391>,  <30.308731, 37.475117, 39.080273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397915, 37.696304, 39.053391>,  <30.546556, 38.064949, 39.008587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397915, 37.696304, 39.053391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092703, -0.156885, -0.983257,
		0.923752, -0.354997, 0.143735,
		-0.371603, -0.921610, 0.112013,
		30.286434, 37.419823, 39.086994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858017, 37.699162, 38.427692>,  <30.546556, 38.064949, 39.008587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858017, 37.699162, 38.427692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593769, 37.426533, 38.553574>,  <30.435221, 37.262955, 38.629101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593769, 37.426533, 38.553574>,  <30.858017, 37.699162, 38.427692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593769, 37.426533, 38.553574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158573, -0.283053, -0.945905,
		0.733782, -0.674787, 0.078912,
		-0.660621, -0.681574, 0.314702,
		30.395582, 37.222061, 38.647984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063416, 36.929398, 38.070007>,  <30.858017, 37.699162, 38.427692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063416, 36.929398, 38.070007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684486, 36.907486, 38.196232>,  <30.457129, 36.894341, 38.271969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684486, 36.907486, 38.196232>,  <31.063416, 36.929398, 38.070007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684486, 36.907486, 38.196232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262021, -0.434080, -0.861928,
		0.184193, -0.899207, 0.396861,
		-0.947321, -0.054775, 0.315566,
		30.400290, 36.891052, 38.290901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817162, 36.291859, 37.929497>,  <31.063416, 36.929398, 38.070007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817162, 36.291859, 37.929497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471685, 36.492847, 37.945282>,  <30.264400, 36.613441, 37.954754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471685, 36.492847, 37.945282>,  <30.817162, 36.291859, 37.929497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471685, 36.492847, 37.945282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372699, -0.583985, -0.721150,
		-0.339313, -0.637559, 0.691654,
		-0.863691, 0.502474, 0.039464,
		30.212578, 36.643589, 37.957123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182102, 35.790173, 37.865067>,  <30.817162, 36.291859, 37.929497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182102, 35.790173, 37.865067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027538, 36.147568, 37.773525>,  <29.934799, 36.362003, 37.718601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027538, 36.147568, 37.773525>,  <30.182102, 35.790173, 37.865067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027538, 36.147568, 37.773525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427006, -0.393230, -0.814270,
		-0.817528, -0.216922, 0.533472,
		-0.386410, 0.893484, -0.228850,
		29.911615, 36.415611, 37.704872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489790, 35.721542, 37.781876>,  <30.182102, 35.790173, 37.865067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489790, 35.721542, 37.781876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585978, 36.033981, 37.551376>,  <29.643690, 36.221443, 37.413078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585978, 36.033981, 37.551376>,  <29.489790, 35.721542, 37.781876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585978, 36.033981, 37.551376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549990, -0.379526, -0.743956,
		-0.799803, 0.495829, 0.338331,
		0.240470, 0.781098, -0.576247,
		29.658119, 36.268311, 37.378502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821369, 35.298500, 38.042858>,  <29.489790, 35.721542, 37.781876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821369, 35.298500, 38.042858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684460, 35.061115, 38.334240>,  <28.602314, 34.918686, 38.509071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684460, 35.061115, 38.334240>,  <28.821369, 35.298500, 38.042858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684460, 35.061115, 38.334240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895528, -0.028611, -0.444084,
		0.284388, -0.804355, -0.521667,
		-0.342276, -0.593460, 0.728459,
		28.581778, 34.883076, 38.552776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550858, 34.625111, 37.754150>,  <28.821369, 35.298500, 38.042858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550858, 34.625111, 37.754150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363447, 34.728695, 38.092007>,  <28.251001, 34.790848, 38.294720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363447, 34.728695, 38.092007>,  <28.550858, 34.625111, 37.754150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363447, 34.728695, 38.092007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883449, -0.135543, -0.448493,
		-0.001657, -0.956330, 0.292284,
		-0.468524, 0.258962, 0.844644,
		28.222891, 34.806385, 38.345402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900873, 34.109360, 37.746540>,  <28.550858, 34.625111, 37.754150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900873, 34.109360, 37.746540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820362, 34.404488, 38.004253>,  <27.772057, 34.581566, 38.158882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820362, 34.404488, 38.004253>,  <27.900873, 34.109360, 37.746540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820362, 34.404488, 38.004253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958212, -0.011818, -0.285814,
		-0.203266, -0.674892, 0.709369,
		-0.201277, 0.737822, 0.644287,
		27.759979, 34.625835, 38.197540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111320, 34.106724, 38.465897>,  <27.900873, 34.109360, 37.746540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111320, 34.106724, 38.465897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484022, 34.248505, 38.434406>,  <28.707644, 34.333572, 38.415512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484022, 34.248505, 38.434406>,  <28.111320, 34.106724, 38.465897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484022, 34.248505, 38.434406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185469, -0.278217, 0.942442,
		0.312149, -0.892725, -0.324970,
		0.931753, 0.354454, -0.078727,
		28.763548, 34.354839, 38.410789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556377, 33.555695, 38.740398>,  <28.111320, 34.106724, 38.465897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556377, 33.555695, 38.740398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771088, 33.892216, 38.765968>,  <28.899914, 34.094128, 38.781311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771088, 33.892216, 38.765968>,  <28.556377, 33.555695, 38.740398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771088, 33.892216, 38.765968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408517, -0.325443, 0.852761,
		0.738233, -0.431625, -0.518375,
		0.536774, 0.841301, 0.063926,
		28.932119, 34.144608, 38.785145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089960, 33.347065, 38.993988>,  <28.556377, 33.555695, 38.740398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089960, 33.347065, 38.993988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134785, 33.725872, 39.114384>,  <29.161680, 33.953156, 39.186619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134785, 33.725872, 39.114384>,  <29.089960, 33.347065, 38.993988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134785, 33.725872, 39.114384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357145, -0.321040, 0.877144,
		0.927302, 0.009202, -0.374200,
		0.112062, 0.947021, 0.300987,
		29.168404, 34.009979, 39.204681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759924, 33.378124, 39.241936>,  <29.089960, 33.347065, 38.993988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759924, 33.378124, 39.241936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567665, 33.681332, 39.418293>,  <29.452311, 33.863258, 39.524105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567665, 33.681332, 39.418293>,  <29.759924, 33.378124, 39.241936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567665, 33.681332, 39.418293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256626, -0.359175, 0.897294,
		0.838525, 0.544424, -0.021892,
		-0.480645, 0.758021, 0.440890,
		29.423471, 33.908737, 39.550560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106054, 33.432854, 39.825188>,  <29.759924, 33.378124, 39.241936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106054, 33.432854, 39.825188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781630, 33.650719, 39.910530>,  <29.586975, 33.781437, 39.961735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781630, 33.650719, 39.910530>,  <30.106054, 33.432854, 39.825188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781630, 33.650719, 39.910530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216478, -0.059371, 0.974481,
		0.543428, 0.836552, -0.069753,
		-0.811063, 0.544661, 0.213359,
		29.538311, 33.814117, 39.974537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285873, 34.048786, 40.252148>,  <30.106054, 33.432854, 39.825188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285873, 34.048786, 40.252148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904024, 33.946438, 40.313110>,  <29.674915, 33.885029, 40.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904024, 33.946438, 40.313110>,  <30.285873, 34.048786, 40.252148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904024, 33.946438, 40.313110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178116, -0.080387, 0.980720,
		-0.238690, 0.963362, 0.122314,
		-0.954621, -0.255874, 0.152403,
		29.617638, 33.869675, 40.358829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131968, 34.400627, 40.853649>,  <30.285873, 34.048786, 40.252148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131968, 34.400627, 40.853649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831293, 34.138313, 40.825607>,  <29.650888, 33.980927, 40.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831293, 34.138313, 40.825607>,  <30.131968, 34.400627, 40.853649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831293, 34.138313, 40.825607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107131, 0.016523, 0.994107,
		-0.650760, 0.754769, -0.082675,
		-0.751687, -0.655783, -0.070107,
		29.605787, 33.941578, 40.804577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699802, 34.563946, 41.304302>,  <30.131968, 34.400627, 40.853649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699802, 34.563946, 41.304302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609566, 34.177402, 41.254887>,  <29.555424, 33.945477, 41.225235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609566, 34.177402, 41.254887>,  <29.699802, 34.563946, 41.304302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609566, 34.177402, 41.254887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096647, -0.103985, 0.989872,
		-0.969416, 0.235248, -0.069937,
		-0.225593, -0.966357, -0.123541,
		29.541887, 33.887497, 41.217823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090174, 34.439747, 41.567043>,  <29.699802, 34.563946, 41.304302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090174, 34.439747, 41.567043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263639, 34.079319, 41.566853>,  <29.367720, 33.863060, 41.566738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263639, 34.079319, 41.566853>,  <29.090174, 34.439747, 41.567043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263639, 34.079319, 41.566853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054119, -0.026573, 0.998181,
		-0.899448, -0.432850, -0.060289,
		0.433665, -0.901074, -0.000475,
		29.393740, 33.808998, 41.566711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702190, 34.115265, 42.123470>,  <29.090174, 34.439747, 41.567043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702190, 34.115265, 42.123470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030804, 33.896233, 42.059929>,  <29.227972, 33.764812, 42.021805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030804, 33.896233, 42.059929>,  <28.702190, 34.115265, 42.123470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030804, 33.896233, 42.059929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012834, -0.260782, 0.965312,
		-0.570014, -0.795077, -0.207214,
		0.821535, -0.547582, -0.158853,
		29.277264, 33.731956, 42.012272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549231, 33.591633, 42.577530>,  <28.702190, 34.115265, 42.123470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549231, 33.591633, 42.577530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940870, 33.570415, 42.498993>,  <29.175854, 33.557686, 42.451870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940870, 33.570415, 42.498993>,  <28.549231, 33.591633, 42.577530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940870, 33.570415, 42.498993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186871, -0.146384, 0.971417,
		-0.080266, -0.987805, -0.133413,
		0.979100, -0.053041, -0.196342,
		29.234600, 33.554504, 42.440090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848894, 32.972610, 42.894829>,  <28.549231, 33.591633, 42.577530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848894, 32.972610, 42.894829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164310, 33.212029, 42.838337>,  <29.353559, 33.355679, 42.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164310, 33.212029, 42.838337>,  <28.848894, 32.972610, 42.894829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164310, 33.212029, 42.838337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328264, -0.215466, 0.919683,
		0.520044, -0.771567, -0.366385,
		0.788541, 0.598547, -0.141226,
		29.400873, 33.391594, 42.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428295, 32.615017, 43.138950>,  <28.848894, 32.972610, 42.894829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428295, 32.615017, 43.138950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579195, 32.985321, 43.128754>,  <29.669735, 33.207504, 43.122635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579195, 32.985321, 43.128754>,  <29.428295, 32.615017, 43.138950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579195, 32.985321, 43.128754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373988, -0.127106, 0.918682,
		0.847240, -0.356106, -0.394174,
		0.377250, 0.925760, -0.025490,
		29.692369, 33.263050, 43.121105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123903, 32.535191, 43.360748>,  <29.428295, 32.615017, 43.138950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123903, 32.535191, 43.360748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021538, 32.917221, 43.420536>,  <29.960119, 33.146439, 43.456409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021538, 32.917221, 43.420536>,  <30.123903, 32.535191, 43.360748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021538, 32.917221, 43.420536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281322, -0.074351, 0.956729,
		0.924861, 0.286888, -0.249656,
		-0.255912, 0.955075, 0.149472,
		29.944765, 33.203743, 43.465378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670240, 32.803066, 43.739708>,  <30.123903, 32.535191, 43.360748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670240, 32.803066, 43.739708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360823, 33.051243, 43.791363>,  <30.175173, 33.200150, 43.822357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360823, 33.051243, 43.791363>,  <30.670240, 32.803066, 43.739708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360823, 33.051243, 43.791363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212326, 0.061733, 0.975247,
		0.597115, 0.781817, -0.179490,
		-0.773545, 0.620445, 0.129138,
		30.128759, 33.237377, 43.830105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999214, 33.470997, 43.997746>,  <30.670240, 32.803066, 43.739708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999214, 33.470997, 43.997746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610165, 33.449421, 44.088161>,  <30.376736, 33.436474, 44.142410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610165, 33.449421, 44.088161>,  <30.999214, 33.470997, 43.997746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610165, 33.449421, 44.088161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226147, 0.004134, 0.974084,
		-0.053478, 0.998536, 0.008178,
		-0.972624, -0.053942, 0.226037,
		30.318377, 33.433239, 44.155972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871799, 34.004791, 44.523876>,  <30.999214, 33.470997, 43.997746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871799, 34.004791, 44.523876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563866, 33.752033, 44.559795>,  <30.379105, 33.600380, 44.581348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563866, 33.752033, 44.559795>,  <30.871799, 34.004791, 44.523876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563866, 33.752033, 44.559795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172159, -0.070107, 0.982571,
		-0.614587, 0.771877, 0.162757,
		-0.769834, -0.631895, 0.089799,
		30.332916, 33.562466, 44.586735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534229, 34.155239, 45.095810>,  <30.871799, 34.004791, 44.523876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534229, 34.155239, 45.095810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391682, 33.787617, 45.028473>,  <30.306152, 33.567043, 44.988071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391682, 33.787617, 45.028473>,  <30.534229, 34.155239, 45.095810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391682, 33.787617, 45.028473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215558, -0.256179, 0.942288,
		-0.909140, 0.299516, 0.289404,
		-0.356370, -0.919055, -0.168339,
		30.284771, 33.511902, 44.977970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026396, 34.095688, 45.535099>,  <30.534229, 34.155239, 45.095810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026396, 34.095688, 45.535099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137251, 33.717613, 45.466022>,  <30.203764, 33.490768, 45.424576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137251, 33.717613, 45.466022>,  <30.026396, 34.095688, 45.535099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137251, 33.717613, 45.466022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084263, -0.202952, 0.975556,
		-0.957129, -0.255810, -0.135889,
		0.277136, -0.945183, -0.172696,
		30.220392, 33.434059, 45.414215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493256, 33.734154, 45.829739>,  <30.026396, 34.095688, 45.535099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493256, 33.734154, 45.829739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804552, 33.484592, 45.801224>,  <29.991331, 33.334854, 45.784115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804552, 33.484592, 45.801224>,  <29.493256, 33.734154, 45.829739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804552, 33.484592, 45.801224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189572, -0.341649, 0.920510,
		-0.598665, -0.702866, -0.384161,
		0.778243, -0.623903, -0.071290,
		30.038025, 33.297421, 45.779839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259905, 33.188107, 46.299522>,  <29.493256, 33.734154, 45.829739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259905, 33.188107, 46.299522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646160, 33.109612, 46.231361>,  <29.877913, 33.062515, 46.190464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646160, 33.109612, 46.231361>,  <29.259905, 33.188107, 46.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646160, 33.109612, 46.231361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101814, -0.317622, 0.942735,
		-0.239123, -0.927689, -0.286728,
		0.965637, -0.196237, -0.170402,
		29.935850, 33.050739, 46.180241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356192, 32.535870, 46.613964>,  <29.259905, 33.188107, 46.299522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356192, 32.535870, 46.613964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713589, 32.713005, 46.584126>,  <29.928026, 32.819286, 46.566223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713589, 32.713005, 46.584126>,  <29.356192, 32.535870, 46.613964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713589, 32.713005, 46.584126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176440, -0.193413, 0.965122,
		0.412968, -0.875490, -0.250948,
		0.893491, 0.442842, -0.074598,
		29.981636, 32.845856, 46.561745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805904, 32.068325, 46.947681>,  <29.356192, 32.535870, 46.613964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805904, 32.068325, 46.947681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988190, 32.423828, 46.967415>,  <30.097561, 32.637131, 46.979256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988190, 32.423828, 46.967415>,  <29.805904, 32.068325, 46.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988190, 32.423828, 46.967415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099211, -0.105795, 0.989426,
		0.884582, -0.445998, -0.136386,
		0.455711, 0.888759, 0.049336,
		30.124903, 32.690456, 46.982216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454559, 31.860962, 47.225315>,  <29.805904, 32.068325, 46.947681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454559, 31.860962, 47.225315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348660, 32.239956, 47.297070>,  <30.285120, 32.467354, 47.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348660, 32.239956, 47.297070>,  <30.454559, 31.860962, 47.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348660, 32.239956, 47.297070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086455, -0.161955, 0.983003,
		0.960434, 0.275757, -0.039038,
		-0.264747, 0.947485, 0.179388,
		30.269236, 32.524200, 47.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865536, 32.001717, 47.842976>,  <30.454559, 31.860962, 47.225315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865536, 32.001717, 47.842976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629162, 32.324162, 47.830475>,  <30.487337, 32.517628, 47.822975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629162, 32.324162, 47.830475>,  <30.865536, 32.001717, 47.842976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629162, 32.324162, 47.830475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022345, 0.022367, 0.999500,
		0.806409, 0.591340, 0.004796,
		-0.590937, 0.806112, -0.031251,
		30.451881, 32.565994, 47.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442287, 31.904438, 47.370140>,  <30.865536, 32.001717, 47.842976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442287, 31.904438, 47.370140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835577, 31.833782, 47.388344>,  <32.071552, 31.791389, 47.399265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835577, 31.833782, 47.388344>,  <31.442287, 31.904438, 47.370140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835577, 31.833782, 47.388344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016846, -0.336352, -0.941586,
		0.181627, 0.925022, -0.333684,
		0.983223, -0.176639, 0.045508,
		32.130543, 31.780790, 47.401997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795736, 32.394146, 46.918034>,  <31.442287, 31.904438, 47.370140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795736, 32.394146, 46.918034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019447, 32.063526, 46.943436>,  <32.153675, 31.865154, 46.958675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019447, 32.063526, 46.943436>,  <31.795736, 32.394146, 46.918034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019447, 32.063526, 46.943436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085929, -0.133992, -0.987250,
		0.824516, 0.546688, -0.145963,
		0.559276, -0.826546, 0.063502,
		32.187229, 31.815563, 46.962486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226223, 32.523487, 46.346390>,  <31.795736, 32.394146, 46.918034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226223, 32.523487, 46.346390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296467, 32.137806, 46.425861>,  <32.338612, 31.906397, 46.473545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296467, 32.137806, 46.425861>,  <32.226223, 32.523487, 46.346390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296467, 32.137806, 46.425861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178764, -0.229693, -0.956705,
		0.968093, 0.132489, -0.212701,
		0.175609, -0.964203, 0.198680,
		32.349148, 31.848545, 46.485466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704704, 32.213478, 45.884502>,  <32.226223, 32.523487, 46.346390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704704, 32.213478, 45.884502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494068, 31.903784, 46.024940>,  <32.367687, 31.717968, 46.109203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494068, 31.903784, 46.024940>,  <32.704704, 32.213478, 45.884502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494068, 31.903784, 46.024940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225046, -0.271309, -0.935813,
		0.819792, -0.571802, -0.031369,
		-0.526589, -0.774231, 0.351099,
		32.336090, 31.671515, 46.130272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957767, 31.706999, 45.553616>,  <32.704704, 32.213478, 45.884502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957767, 31.706999, 45.553616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620068, 31.524984, 45.666882>,  <32.417446, 31.415775, 45.734840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620068, 31.524984, 45.666882>,  <32.957767, 31.706999, 45.553616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620068, 31.524984, 45.666882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078869, -0.417113, -0.905426,
		0.530114, -0.786740, 0.316260,
		-0.844251, -0.455036, 0.283166,
		32.366791, 31.388474, 45.751831>
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
