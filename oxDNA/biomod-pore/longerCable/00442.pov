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
	<24.552511, 35.197010, 35.036007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408379, 34.845039, 34.912144>,  <24.321899, 34.633858, 34.837826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408379, 34.845039, 34.912144>,  <24.552511, 35.197010, 35.036007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408379, 34.845039, 34.912144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738418, -0.066219, -0.671084,
		0.570000, -0.470470, 0.673615,
		-0.360331, -0.879928, -0.309659,
		24.300280, 34.581062, 34.819244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162659, 35.550953, 34.873116>,  <24.552511, 35.197010, 35.036007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162659, 35.550953, 34.873116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239920, 35.162086, 34.926170>,  <25.286276, 34.928768, 34.958004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239920, 35.162086, 34.926170>,  <25.162659, 35.550953, 34.873116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239920, 35.162086, 34.926170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232167, -0.176630, -0.956504,
		0.953305, 0.153957, -0.259821,
		0.193153, -0.972162, 0.132638,
		25.297865, 34.870438, 34.965961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697647, 35.316414, 34.490070>,  <25.162659, 35.550953, 34.873116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697647, 35.316414, 34.490070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459686, 34.998447, 34.537743>,  <25.316910, 34.807667, 34.566345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459686, 34.998447, 34.537743>,  <25.697647, 35.316414, 34.490070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459686, 34.998447, 34.537743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130621, -0.241906, -0.961467,
		0.793114, -0.556411, 0.247743,
		-0.594902, -0.794914, 0.119180,
		25.281216, 34.759972, 34.573498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022894, 34.788197, 34.150433>,  <25.697647, 35.316414, 34.490070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022894, 34.788197, 34.150433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636629, 34.686367, 34.171188>,  <25.404871, 34.625271, 34.183643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636629, 34.686367, 34.171188>,  <26.022894, 34.788197, 34.150433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636629, 34.686367, 34.171188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043360, -0.354834, -0.933923,
		0.256166, -0.899602, 0.353688,
		-0.965660, -0.254576, 0.051890,
		25.346931, 34.609993, 34.186756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048239, 34.049973, 33.938213>,  <26.022894, 34.788197, 34.150433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048239, 34.049973, 33.938213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683233, 34.205124, 33.886253>,  <25.464230, 34.298214, 33.855076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683233, 34.205124, 33.886253>,  <26.048239, 34.049973, 33.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683233, 34.205124, 33.886253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049107, -0.211391, -0.976167,
		-0.406093, -0.897142, 0.173849,
		-0.912511, 0.387878, -0.129900,
		25.409479, 34.321487, 33.847282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444921, 33.566673, 33.646828>,  <26.048239, 34.049973, 33.938213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444921, 33.566673, 33.646828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397501, 33.954933, 33.563126>,  <25.369049, 34.187889, 33.512905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397501, 33.954933, 33.563126>,  <25.444921, 33.566673, 33.646828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397501, 33.954933, 33.563126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032939, -0.214474, -0.976174,
		-0.992401, -0.108834, 0.057399,
		-0.118552, 0.970647, -0.209260,
		25.361935, 34.246128, 33.500347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000778, 33.608330, 33.119156>,  <25.444921, 33.566673, 33.646828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000778, 33.608330, 33.119156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220261, 33.939850, 33.075306>,  <25.351950, 34.138760, 33.048996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220261, 33.939850, 33.075306>,  <25.000778, 33.608330, 33.119156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220261, 33.939850, 33.075306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021909, -0.116832, -0.992910,
		-0.835728, 0.547219, -0.045948,
		0.548707, 0.828795, -0.109629,
		25.384872, 34.188488, 33.042416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617237, 34.101852, 32.698406>,  <25.000778, 33.608330, 33.119156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617237, 34.101852, 32.698406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995064, 34.171539, 32.587093>,  <25.221760, 34.213352, 32.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995064, 34.171539, 32.587093>,  <24.617237, 34.101852, 32.698406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995064, 34.171539, 32.587093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294237, 0.073139, -0.952930,
		-0.145659, 0.981988, 0.120344,
		0.944568, 0.174212, -0.278284,
		25.278435, 34.223804, 32.503609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555790, 34.421722, 32.112160>,  <24.617237, 34.101852, 32.698406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555790, 34.421722, 32.112160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941010, 34.329308, 32.056793>,  <25.172140, 34.273857, 32.023571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941010, 34.329308, 32.056793>,  <24.555790, 34.421722, 32.112160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941010, 34.329308, 32.056793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175143, -0.146788, -0.973539,
		0.204605, 0.961808, -0.181828,
		0.963048, -0.231037, -0.138420,
		25.229923, 34.259995, 32.015266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718634, 34.823105, 31.537754>,  <24.555790, 34.421722, 32.112160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718634, 34.823105, 31.537754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979475, 34.523682, 31.585779>,  <25.135981, 34.344028, 31.614594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979475, 34.523682, 31.585779>,  <24.718634, 34.823105, 31.537754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979475, 34.523682, 31.585779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180346, -0.306987, -0.934470,
		0.736366, 0.587720, -0.335188,
		0.652105, -0.748562, 0.120062,
		25.175106, 34.299114, 31.621798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177608, 34.829571, 30.952259>,  <24.718634, 34.823105, 31.537754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177608, 34.829571, 30.952259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172829, 34.465652, 31.118217>,  <25.169960, 34.247303, 31.217793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172829, 34.465652, 31.118217>,  <25.177608, 34.829571, 30.952259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172829, 34.465652, 31.118217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120943, -0.410562, -0.903776,
		0.992587, -0.060980, -0.105127,
		-0.011951, -0.909791, 0.414894,
		25.169243, 34.192715, 31.242685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600534, 34.371895, 30.496832>,  <25.177608, 34.829571, 30.952259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600534, 34.371895, 30.496832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329449, 34.161224, 30.702087>,  <25.166798, 34.034821, 30.825241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329449, 34.161224, 30.702087>,  <25.600534, 34.371895, 30.496832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329449, 34.161224, 30.702087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363207, -0.367000, -0.856383,
		0.639362, -0.766758, 0.057426,
		-0.677714, -0.526681, 0.513138,
		25.126135, 34.003220, 30.856030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544437, 33.734943, 30.276682>,  <25.600534, 34.371895, 30.496832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544437, 33.734943, 30.276682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177847, 33.775520, 30.431486>,  <24.957891, 33.799866, 30.524368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177847, 33.775520, 30.431486>,  <25.544437, 33.734943, 30.276682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177847, 33.775520, 30.431486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391089, -0.023173, -0.920061,
		-0.084372, -0.994571, 0.060913,
		-0.916477, 0.101450, 0.387010,
		24.902903, 33.805954, 30.547590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046783, 33.218567, 30.218542>,  <25.544437, 33.734943, 30.276682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046783, 33.218567, 30.218542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832733, 33.555878, 30.238617>,  <24.704304, 33.758266, 30.250662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832733, 33.555878, 30.238617>,  <25.046783, 33.218567, 30.218542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832733, 33.555878, 30.238617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587161, -0.328569, -0.739787,
		-0.607359, -0.425346, 0.670967,
		-0.535124, 0.843281, 0.050187,
		24.672195, 33.808861, 30.253674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406887, 33.325859, 30.624598>,  <25.046783, 33.218567, 30.218542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406887, 33.325859, 30.624598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774416, 33.483288, 30.636368>,  <24.994934, 33.577744, 30.643431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774416, 33.483288, 30.636368>,  <24.406887, 33.325859, 30.624598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774416, 33.483288, 30.636368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003629, -0.066128, 0.997804,
		0.394653, -0.916913, -0.059332,
		0.918823, 0.393571, 0.029426,
		25.050062, 33.601360, 30.645195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802179, 33.131145, 31.235477>,  <24.406887, 33.325859, 30.624598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802179, 33.131145, 31.235477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049450, 33.420181, 31.111717>,  <25.197813, 33.593601, 31.037460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049450, 33.420181, 31.111717>,  <24.802179, 33.131145, 31.235477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049450, 33.420181, 31.111717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293429, 0.153030, 0.943653,
		0.729218, -0.674131, -0.117429,
		0.618176, 0.722585, -0.309402,
		25.234903, 33.636955, 31.018896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306236, 33.004578, 31.714191>,  <24.802179, 33.131145, 31.235477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306236, 33.004578, 31.714191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330452, 33.368340, 31.549599>,  <25.344982, 33.586597, 31.450844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330452, 33.368340, 31.549599>,  <25.306236, 33.004578, 31.714191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330452, 33.368340, 31.549599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331721, 0.370477, 0.867587,
		0.941433, -0.189019, -0.279241,
		0.060538, 0.909405, -0.411481,
		25.348614, 33.641163, 31.426155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026644, 33.311760, 31.773716>,  <25.306236, 33.004578, 31.714191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026644, 33.311760, 31.773716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765295, 33.608829, 31.715004>,  <25.608486, 33.787071, 31.679777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765295, 33.608829, 31.715004>,  <26.026644, 33.311760, 31.773716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765295, 33.608829, 31.715004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332991, 0.456060, 0.825304,
		0.679870, 0.490354, -0.545279,
		-0.653371, 0.742673, -0.146779,
		25.569284, 33.831631, 31.670971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500465, 34.014580, 31.898628>,  <26.026644, 33.311760, 31.773716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500465, 34.014580, 31.898628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104643, 34.063133, 31.929720>,  <25.867149, 34.092266, 31.948376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104643, 34.063133, 31.929720>,  <26.500465, 34.014580, 31.898628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104643, 34.063133, 31.929720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125728, 0.463168, 0.877307,
		0.070489, 0.877919, -0.473593,
		-0.989557, 0.121384, 0.077731,
		25.807775, 34.099548, 31.953039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596884, 34.582600, 32.364216>,  <26.500465, 34.014580, 31.898628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596884, 34.582600, 32.364216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223766, 34.438435, 32.363838>,  <25.999895, 34.351936, 32.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223766, 34.438435, 32.363838>,  <26.596884, 34.582600, 32.364216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223766, 34.438435, 32.363838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127929, 0.328648, 0.935748,
		-0.336943, 0.872980, -0.352668,
		-0.932793, -0.360411, -0.000944,
		25.943928, 34.330311, 32.363556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466131, 34.883896, 32.900158>,  <26.596884, 34.582600, 32.364216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466131, 34.883896, 32.900158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125662, 34.715233, 32.775124>,  <25.921381, 34.614037, 32.700104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125662, 34.715233, 32.775124>,  <26.466131, 34.883896, 32.900158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125662, 34.715233, 32.775124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436372, 0.237514, 0.867852,
		-0.291694, 0.875095, -0.386165,
		-0.851172, -0.421659, -0.312586,
		25.870310, 34.588734, 32.681347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815739, 35.342842, 32.787842>,  <26.466131, 34.883896, 32.900158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815739, 35.342842, 32.787842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701132, 34.979317, 32.909145>,  <25.632368, 34.761200, 32.981926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701132, 34.979317, 32.909145>,  <25.815739, 35.342842, 32.787842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701132, 34.979317, 32.909145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530120, 0.414041, 0.739961,
		-0.798048, 0.051249, -0.600411,
		-0.286517, -0.908814, 0.303256,
		25.615177, 34.706673, 33.000122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225233, 35.481514, 33.139042>,  <25.815739, 35.342842, 32.787842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225233, 35.481514, 33.139042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287876, 35.102455, 33.250351>,  <25.325462, 34.875019, 33.317135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287876, 35.102455, 33.250351>,  <25.225233, 35.481514, 33.139042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287876, 35.102455, 33.250351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470733, 0.176072, 0.864528,
		-0.868265, -0.266383, -0.418516,
		0.156607, -0.947649, 0.278273,
		25.334858, 34.818161, 33.333832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.652136, 35.135227, 33.369171>,  <25.225233, 35.481514, 33.139042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.652136, 35.135227, 33.369171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802240, 34.764549, 33.360973>,  <24.892303, 34.542145, 33.356056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802240, 34.764549, 33.360973>,  <24.652136, 35.135227, 33.369171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802240, 34.764549, 33.360973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315699, -0.148568, 0.937156,
		-0.871500, -0.345208, -0.348308,
		0.375262, -0.926692, -0.020496,
		24.914820, 34.486542, 33.354824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186293, 34.680061, 33.565132>,  <24.652136, 35.135227, 33.369171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186293, 34.680061, 33.565132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550844, 34.544926, 33.659157>,  <24.769575, 34.463844, 33.715572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550844, 34.544926, 33.659157>,  <24.186293, 34.680061, 33.565132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550844, 34.544926, 33.659157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225391, 0.068178, 0.971880,
		-0.344362, -0.938732, -0.014009,
		0.911380, -0.337836, 0.235060,
		24.824259, 34.443577, 33.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.144342, 34.146351, 34.063927>,  <24.186293, 34.680061, 33.565132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.144342, 34.146351, 34.063927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511139, 34.293877, 34.124722>,  <24.731216, 34.382393, 34.161198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511139, 34.293877, 34.124722>,  <24.144342, 34.146351, 34.063927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511139, 34.293877, 34.124722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139958, -0.059318, 0.988379,
		0.373548, -0.927607, -0.002775,
		0.916992, 0.368819, 0.151984,
		24.786236, 34.404522, 34.170319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386841, 33.865887, 34.688652>,  <24.144342, 34.146351, 34.063927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386841, 33.865887, 34.688652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652163, 34.160591, 34.636169>,  <24.811356, 34.337414, 34.604679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652163, 34.160591, 34.636169>,  <24.386841, 33.865887, 34.688652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652163, 34.160591, 34.636169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071850, 0.237216, 0.968796,
		0.744893, -0.633179, 0.210283,
		0.663304, 0.736758, -0.131206,
		24.851154, 34.381618, 34.596809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019140, 33.665989, 35.092224>,  <24.386841, 33.865887, 34.688652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019140, 33.665989, 35.092224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951714, 34.057163, 35.042854>,  <24.911257, 34.291866, 35.013233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951714, 34.057163, 35.042854>,  <25.019140, 33.665989, 35.092224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951714, 34.057163, 35.042854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273688, 0.073857, 0.958979,
		0.946932, 0.195433, 0.255199,
		-0.168567, 0.977932, -0.123425,
		24.901144, 34.350544, 35.005825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628160, 34.058544, 35.340134>,  <25.019140, 33.665989, 35.092224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628160, 34.058544, 35.340134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864521, 33.752655, 35.442921>,  <26.006336, 33.569122, 35.504593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864521, 33.752655, 35.442921>,  <25.628160, 34.058544, 35.340134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864521, 33.752655, 35.442921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029460, -0.297863, -0.954154,
		0.806206, 0.571380, -0.153479,
		0.590900, -0.764723, 0.256972,
		26.041792, 33.523239, 35.520012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287548, 33.972969, 34.917854>,  <25.628160, 34.058544, 35.340134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287548, 33.972969, 34.917854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240065, 33.599445, 35.052856>,  <26.211575, 33.375332, 35.133858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240065, 33.599445, 35.052856>,  <26.287548, 33.972969, 34.917854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240065, 33.599445, 35.052856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004605, -0.340420, -0.940262,
		0.992919, -0.110061, 0.044711,
		-0.118707, -0.933810, 0.337502,
		26.204453, 33.319302, 35.154106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577749, 33.579468, 34.473503>,  <26.287548, 33.972969, 34.917854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577749, 33.579468, 34.473503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392023, 33.271824, 34.649178>,  <26.280588, 33.087238, 34.754581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392023, 33.271824, 34.649178>,  <26.577749, 33.579468, 34.473503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392023, 33.271824, 34.649178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050231, -0.517952, -0.853933,
		0.884245, -0.374433, 0.279126,
		-0.464315, -0.769107, 0.439188,
		26.252729, 33.041092, 34.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821741, 32.963432, 34.265903>,  <26.577749, 33.579468, 34.473503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821741, 32.963432, 34.265903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455156, 32.844933, 34.373482>,  <26.235205, 32.773834, 34.438030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455156, 32.844933, 34.373482>,  <26.821741, 32.963432, 34.265903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455156, 32.844933, 34.373482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022471, -0.633001, -0.773825,
		0.399487, -0.715226, 0.573465,
		-0.916463, -0.296247, 0.268947,
		26.180218, 32.756058, 34.454166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935301, 32.313114, 34.234020>,  <26.821741, 32.963432, 34.265903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935301, 32.313114, 34.234020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537560, 32.352394, 34.217930>,  <26.298914, 32.375961, 34.208275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537560, 32.352394, 34.217930>,  <26.935301, 32.313114, 34.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537560, 32.352394, 34.217930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045214, -0.734978, -0.676581,
		-0.096002, -0.670943, 0.735268,
		-0.994354, 0.098197, -0.040223,
		26.239254, 32.381855, 34.205864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609980, 31.711994, 34.419792>,  <26.935301, 32.313114, 34.234020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609980, 31.711994, 34.419792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389238, 31.911705, 34.152607>,  <26.256794, 32.031532, 33.992294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389238, 31.911705, 34.152607>,  <26.609980, 31.711994, 34.419792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389238, 31.911705, 34.152607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076300, -0.767390, -0.636625,
		-0.830443, -0.402291, 0.385393,
		-0.551855, 0.499275, -0.667968,
		26.223682, 32.061489, 33.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988482, 31.475918, 34.728771>,  <26.609980, 31.711994, 34.419792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988482, 31.475918, 34.728771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686058, 31.702145, 34.597008>,  <25.504604, 31.837881, 34.517948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686058, 31.702145, 34.597008>,  <25.988482, 31.475918, 34.728771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686058, 31.702145, 34.597008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223920, -0.249407, -0.942155,
		-0.615009, -0.786085, 0.061924,
		-0.756058, 0.565568, -0.329407,
		25.459240, 31.871815, 34.498184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658644, 31.144503, 34.209377>,  <25.988482, 31.475918, 34.728771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658644, 31.144503, 34.209377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536867, 31.512653, 34.111217>,  <25.463802, 31.733543, 34.052322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536867, 31.512653, 34.111217>,  <25.658644, 31.144503, 34.209377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536867, 31.512653, 34.111217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049522, -0.272576, -0.960859,
		-0.951244, -0.280371, 0.128562,
		-0.304439, 0.920377, -0.245402,
		25.445536, 31.788767, 34.037598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974268, 31.227966, 33.917782>,  <25.658644, 31.144503, 34.209377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974268, 31.227966, 33.917782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144928, 31.557011, 33.767433>,  <25.247324, 31.754436, 33.677223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144928, 31.557011, 33.767433>,  <24.974268, 31.227966, 33.917782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144928, 31.557011, 33.767433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104010, -0.368211, -0.923906,
		-0.898416, 0.433279, -0.071538,
		0.426651, 0.822611, -0.375872,
		25.272923, 31.803795, 33.654671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538549, 31.509228, 33.473267>,  <24.974268, 31.227966, 33.917782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538549, 31.509228, 33.473267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893118, 31.642359, 33.344593>,  <25.105860, 31.722239, 33.267387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893118, 31.642359, 33.344593>,  <24.538549, 31.509228, 33.473267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893118, 31.642359, 33.344593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117187, -0.510959, -0.851580,
		-0.447798, 0.792557, -0.413922,
		0.886422, 0.332829, -0.321684,
		25.159044, 31.742208, 33.248089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512705, 31.475790, 32.803852>,  <24.538549, 31.509228, 33.473267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512705, 31.475790, 32.803852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.908274, 31.514736, 32.848671>,  <25.145615, 31.538103, 32.875561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.908274, 31.514736, 32.848671>,  <24.512705, 31.475790, 32.803852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.908274, 31.514736, 32.848671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146876, -0.532567, -0.833547,
		-0.021488, 0.840769, -0.540967,
		0.988922, 0.097366, 0.112045,
		25.204950, 31.543945, 32.882286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857458, 31.429472, 32.126965>,  <24.512705, 31.475790, 32.803852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857458, 31.429472, 32.126965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158648, 31.339767, 32.374428>,  <25.339361, 31.285946, 32.522907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158648, 31.339767, 32.374428>,  <24.857458, 31.429472, 32.126965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158648, 31.339767, 32.374428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409333, -0.576499, -0.707175,
		0.515248, 0.785721, -0.342291,
		0.752972, -0.224260, 0.618661,
		25.384539, 31.272490, 32.560024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163849, 30.668947, 32.145969>,  <24.857458, 31.429472, 32.126965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163849, 30.668947, 32.145969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477760, 30.846720, 31.973179>,  <25.666107, 30.953382, 31.869505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477760, 30.846720, 31.973179>,  <25.163849, 30.668947, 32.145969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477760, 30.846720, 31.973179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148607, 0.541716, 0.827321,
		0.601694, -0.713459, 0.359083,
		0.784780, 0.444432, -0.431972,
		25.713194, 30.980049, 31.843588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716118, 30.554605, 32.663502>,  <25.163849, 30.668947, 32.145969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716118, 30.554605, 32.663502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723009, 30.887255, 32.441475>,  <25.727144, 31.086845, 32.308258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723009, 30.887255, 32.441475>,  <25.716118, 30.554605, 32.663502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723009, 30.887255, 32.441475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139084, 0.547762, 0.824992,
		0.990131, -0.091412, -0.106230,
		0.017226, 0.831625, -0.555070,
		25.728176, 31.136742, 32.274956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301634, 30.857121, 32.868484>,  <25.716118, 30.554605, 32.663502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301634, 30.857121, 32.868484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036266, 31.120726, 32.726734>,  <25.877047, 31.278889, 32.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036266, 31.120726, 32.726734>,  <26.301634, 30.857121, 32.868484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036266, 31.120726, 32.726734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141884, 0.575805, 0.805181,
		0.734672, 0.483893, -0.475504,
		-0.663419, 0.659011, -0.354372,
		25.837240, 31.318428, 32.620422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490013, 31.570332, 32.884071>,  <26.301634, 30.857121, 32.868484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490013, 31.570332, 32.884071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095110, 31.627560, 32.856201>,  <25.858168, 31.661898, 32.839478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095110, 31.627560, 32.856201>,  <26.490013, 31.570332, 32.884071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095110, 31.627560, 32.856201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052151, 0.704539, 0.707746,
		0.150348, 0.695093, -0.703022,
		-0.987257, 0.143072, -0.069676,
		25.798933, 31.670481, 32.835297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307018, 32.295097, 32.911961>,  <26.490013, 31.570332, 32.884071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307018, 32.295097, 32.911961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941395, 32.148083, 32.980553>,  <25.722021, 32.059872, 33.021709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941395, 32.148083, 32.980553>,  <26.307018, 32.295097, 32.911961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941395, 32.148083, 32.980553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079587, 0.577141, 0.812757,
		-0.397692, 0.729262, -0.556793,
		-0.914061, -0.367540, 0.171484,
		25.667177, 32.037819, 33.031998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943291, 32.795094, 33.196846>,  <26.307018, 32.295097, 32.911961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943291, 32.795094, 33.196846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754515, 32.473812, 33.342251>,  <25.641249, 32.281044, 33.429493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754515, 32.473812, 33.342251>,  <25.943291, 32.795094, 33.196846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754515, 32.473812, 33.342251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023738, 0.400588, 0.915951,
		-0.881311, 0.440902, -0.169987,
		-0.471939, -0.803203, 0.363509,
		25.612932, 32.232853, 33.451305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245916, 32.787586, 33.555477>,  <25.943291, 32.795094, 33.196846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245916, 32.787586, 33.555477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471123, 32.498821, 33.716404>,  <25.606247, 32.325562, 33.812958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471123, 32.498821, 33.716404>,  <25.245916, 32.787586, 33.555477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471123, 32.498821, 33.716404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036979, 0.464309, 0.884901,
		-0.825617, -0.513092, 0.234719,
		0.563018, -0.721909, 0.402315,
		25.640028, 32.282249, 33.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933870, 32.494095, 34.156097>,  <25.245916, 32.787586, 33.555477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933870, 32.494095, 34.156097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333164, 32.473507, 34.167965>,  <25.572741, 32.461155, 34.175087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333164, 32.473507, 34.167965>,  <24.933870, 32.494095, 34.156097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333164, 32.473507, 34.167965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009381, 0.356575, 0.934220,
		-0.058661, -0.932848, 0.355462,
		0.998234, -0.051467, 0.029668,
		25.632635, 32.458065, 34.176865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056993, 32.263710, 34.856499>,  <24.933870, 32.494095, 34.156097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056993, 32.263710, 34.856499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404657, 32.418579, 34.733437>,  <25.613256, 32.511501, 34.659599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404657, 32.418579, 34.733437>,  <25.056993, 32.263710, 34.856499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404657, 32.418579, 34.733437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155293, 0.376965, 0.913116,
		0.469514, -0.841422, 0.267518,
		0.869161, 0.387177, -0.307657,
		25.665405, 32.534733, 34.641140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408735, 32.310356, 35.518204>,  <25.056993, 32.263710, 34.856499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408735, 32.310356, 35.518204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652830, 32.513577, 35.275059>,  <25.799288, 32.635509, 35.129173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652830, 32.513577, 35.275059>,  <25.408735, 32.310356, 35.518204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652830, 32.513577, 35.275059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533649, 0.303480, 0.789379,
		0.585517, -0.806093, -0.085925,
		0.610236, 0.508049, -0.607864,
		25.835901, 32.665993, 35.092701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081888, 32.097786, 35.559837>,  <25.408735, 32.310356, 35.518204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081888, 32.097786, 35.559837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076265, 32.481289, 35.446289>,  <26.072891, 32.711391, 35.378159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076265, 32.481289, 35.446289>,  <26.081888, 32.097786, 35.559837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076265, 32.481289, 35.446289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411517, 0.264293, 0.872240,
		0.911294, -0.104557, -0.398261,
		-0.014059, 0.958758, -0.283875,
		26.072048, 32.768917, 35.361126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678965, 32.376892, 35.908348>,  <26.081888, 32.097786, 35.559837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678965, 32.376892, 35.908348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422394, 32.667557, 35.809929>,  <26.268452, 32.841953, 35.750877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422394, 32.667557, 35.809929>,  <26.678965, 32.376892, 35.908348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422394, 32.667557, 35.809929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127665, 0.417342, 0.899738,
		0.756487, 0.545705, -0.360463,
		-0.641427, 0.726658, -0.246046,
		26.229965, 32.885555, 35.736115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128984, 33.020691, 35.983669>,  <26.678965, 32.376892, 35.908348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128984, 33.020691, 35.983669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733688, 33.051254, 36.036652>,  <26.496511, 33.069592, 36.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733688, 33.051254, 36.036652>,  <27.128984, 33.020691, 35.983669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733688, 33.051254, 36.036652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152712, 0.448696, 0.880540,
		0.007852, 0.890412, -0.455088,
		-0.988239, 0.076412, 0.132453,
		26.437216, 33.074177, 36.076389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553648, 33.117485, 36.597775>,  <27.128984, 33.020691, 35.983669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553648, 33.117485, 36.597775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291164, 32.875328, 36.777946>,  <27.133675, 32.730034, 36.886051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291164, 32.875328, 36.777946>,  <27.553648, 33.117485, 36.597775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291164, 32.875328, 36.777946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196069, 0.439631, 0.876517,
		-0.728660, 0.663495, -0.169792,
		-0.656210, -0.605392, 0.450432,
		27.094301, 32.693710, 36.913074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868402, 33.389996, 36.862030>,  <27.553648, 33.117485, 36.597775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868402, 33.389996, 36.862030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016901, 33.104958, 37.100151>,  <27.106001, 32.933933, 37.243023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016901, 33.104958, 37.100151>,  <26.868402, 33.389996, 36.862030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016901, 33.104958, 37.100151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142146, 0.677178, 0.721959,
		-0.917590, -0.183404, 0.352693,
		0.371246, -0.712596, 0.595301,
		27.128275, 32.891178, 37.278740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069956, 33.966373, 37.229847>,  <26.868402, 33.389996, 36.862030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069956, 33.966373, 37.229847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090099, 34.361221, 37.290585>,  <27.102184, 34.598129, 37.327026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090099, 34.361221, 37.290585>,  <27.069956, 33.966373, 37.229847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090099, 34.361221, 37.290585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167472, -0.141540, 0.975664,
		0.984590, -0.074562, 0.158187,
		0.050357, 0.987121, 0.151846,
		27.105207, 34.657356, 37.336140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638577, 34.201221, 37.630161>,  <27.069956, 33.966373, 37.229847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638577, 34.201221, 37.630161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293598, 34.399815, 37.669556>,  <27.086611, 34.518970, 37.693192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293598, 34.399815, 37.669556>,  <27.638577, 34.201221, 37.630161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293598, 34.399815, 37.669556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033835, -0.137599, 0.989910,
		0.505021, 0.857074, 0.101873,
		-0.862444, 0.496478, 0.098489,
		27.034864, 34.548759, 37.699104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394058, 34.144230, 37.346676>,  <27.638577, 34.201221, 37.630161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394058, 34.144230, 37.346676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133087, 34.418056, 37.476723>,  <27.976505, 34.582352, 37.554752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133087, 34.418056, 37.476723>,  <28.394058, 34.144230, 37.346676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133087, 34.418056, 37.476723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733278, 0.678589, 0.042659,
		-0.191421, 0.266237, -0.944709,
		-0.652427, 0.684569, 0.325122,
		27.937359, 34.623428, 37.574261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616587, 34.768078, 37.126026>,  <28.394058, 34.144230, 37.346676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616587, 34.768078, 37.126026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327297, 34.894844, 37.371468>,  <28.153723, 34.970905, 37.518734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327297, 34.894844, 37.371468>,  <28.616587, 34.768078, 37.126026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327297, 34.894844, 37.371468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438129, 0.897352, 0.052934,
		-0.533844, 0.307121, -0.787837,
		-0.723224, 0.316915, 0.613605,
		28.110331, 34.989918, 37.555550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335434, 34.721504, 36.856930>,  <28.616587, 34.768078, 37.126026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335434, 34.721504, 36.856930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530602, 34.630573, 36.519821>,  <29.647701, 34.576015, 36.317558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530602, 34.630573, 36.519821>,  <29.335434, 34.721504, 36.856930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530602, 34.630573, 36.519821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872889, -0.128469, -0.470703,
		-0.001265, 0.965307, -0.261116,
		0.487918, -0.227330, -0.842768,
		29.676977, 34.562374, 36.266991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192692, 34.610271, 37.534763>,  <29.335434, 34.721504, 36.856930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192692, 34.610271, 37.534763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320967, 34.251816, 37.657459>,  <29.397932, 34.036743, 37.731075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320967, 34.251816, 37.657459>,  <29.192692, 34.610271, 37.534763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320967, 34.251816, 37.657459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624585, -0.043388, -0.779751,
		0.712076, 0.441641, 0.545802,
		0.320689, -0.896142, 0.306738,
		29.417173, 33.982975, 37.749481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918579, 34.652702, 37.660305>,  <29.192692, 34.610271, 37.534763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918579, 34.652702, 37.660305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787663, 34.300777, 37.522430>,  <29.709112, 34.089622, 37.439705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787663, 34.300777, 37.522430>,  <29.918579, 34.652702, 37.660305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787663, 34.300777, 37.522430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559116, 0.113746, -0.821250,
		0.761754, -0.461507, 0.454690,
		-0.327293, -0.879815, -0.344682,
		29.689474, 34.036835, 37.419025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579189, 34.853661, 38.055271>,  <29.918579, 34.652702, 37.660305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579189, 34.853661, 38.055271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487291, 34.683136, 37.705303>,  <30.432154, 34.580822, 37.495323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487291, 34.683136, 37.705303>,  <30.579189, 34.853661, 38.055271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487291, 34.683136, 37.705303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531769, -0.807897, 0.254018,
		-0.815132, -0.406893, 0.412308,
		-0.229743, -0.426311, -0.874915,
		30.418367, 34.555244, 37.442829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520439, 35.487579, 37.638176>,  <30.579189, 34.853661, 38.055271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520439, 35.487579, 37.638176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877775, 35.316494, 37.583038>,  <31.092176, 35.213844, 37.549953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877775, 35.316494, 37.583038>,  <30.520439, 35.487579, 37.638176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877775, 35.316494, 37.583038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354882, -0.483296, -0.800302,
		0.275678, 0.763863, -0.583536,
		0.893342, -0.427713, -0.137847,
		31.145779, 35.188179, 37.541683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941669, 35.578255, 37.029469>,  <30.520439, 35.487579, 37.638176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941669, 35.578255, 37.029469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968012, 35.181316, 37.071255>,  <30.983816, 34.943153, 37.096325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968012, 35.181316, 37.071255>,  <30.941669, 35.578255, 37.029469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968012, 35.181316, 37.071255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565397, -0.123371, -0.815540,
		0.822186, -0.005356, -0.569194,
		0.065854, -0.992346, 0.104462,
		30.987768, 34.883614, 37.102592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482405, 35.276470, 36.530540>,  <30.941669, 35.578255, 37.029469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482405, 35.276470, 36.530540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151203, 35.080917, 36.640381>,  <30.952482, 34.963585, 36.706284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151203, 35.080917, 36.640381>,  <31.482405, 35.276470, 36.530540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151203, 35.080917, 36.640381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352337, 0.072664, -0.933048,
		0.436199, -0.869317, -0.232418,
		-0.828003, -0.488883, 0.274596,
		30.902802, 34.934254, 36.722759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433081, 34.675423, 36.129539>,  <31.482405, 35.276470, 36.530540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433081, 34.675423, 36.129539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079649, 34.820934, 36.247490>,  <30.867590, 34.908241, 36.318260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079649, 34.820934, 36.247490>,  <31.433081, 34.675423, 36.129539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079649, 34.820934, 36.247490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200951, 0.274222, -0.940437,
		-0.422971, -0.890207, -0.169196,
		-0.883580, 0.363777, 0.294876,
		30.814575, 34.930069, 36.335953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790520, 34.413185, 35.782581>,  <31.433081, 34.675423, 36.129539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790520, 34.413185, 35.782581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723732, 34.791279, 35.894764>,  <30.683659, 35.018135, 35.962074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723732, 34.791279, 35.894764>,  <30.790520, 34.413185, 35.782581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723732, 34.791279, 35.894764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122772, 0.262300, -0.957145,
		-0.978288, -0.194248, 0.072251,
		-0.166972, 0.945234, 0.280453,
		30.673641, 35.074848, 35.978901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073690, 34.733982, 35.770466>,  <30.790520, 34.413185, 35.782581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073690, 34.733982, 35.770466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391090, 34.965370, 35.694855>,  <30.581530, 35.104202, 35.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391090, 34.965370, 35.694855>,  <30.073690, 34.733982, 35.770466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391090, 34.965370, 35.694855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217135, -0.021051, -0.975915,
		-0.568515, 0.815433, 0.108902,
		0.793501, 0.578468, -0.189027,
		30.629141, 35.138912, 35.638145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848021, 35.285065, 35.373539>,  <30.073690, 34.733982, 35.770466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848021, 35.285065, 35.373539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237305, 35.243023, 35.291744>,  <30.470875, 35.217796, 35.242668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237305, 35.243023, 35.291744>,  <29.848021, 35.285065, 35.373539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237305, 35.243023, 35.291744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203422, 0.020830, -0.978869,
		0.107143, 0.994243, -0.001109,
		0.973211, -0.105105, -0.204483,
		30.529268, 35.211491, 35.230400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932663, 35.632534, 34.712864>,  <29.848021, 35.285065, 35.373539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932663, 35.632534, 34.712864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268143, 35.417149, 34.745445>,  <30.469431, 35.287918, 34.764996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268143, 35.417149, 34.745445>,  <29.932663, 35.632534, 34.712864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268143, 35.417149, 34.745445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024667, -0.186978, -0.982054,
		0.544033, 0.821641, -0.170101,
		0.838701, -0.538466, 0.081455,
		30.519753, 35.255608, 34.769882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428877, 36.030079, 34.306995>,  <29.932663, 35.632534, 34.712864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428877, 36.030079, 34.306995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541815, 35.647575, 34.337601>,  <30.609577, 35.418076, 34.355965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541815, 35.647575, 34.337601>,  <30.428877, 36.030079, 34.306995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541815, 35.647575, 34.337601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191902, -0.021842, -0.981171,
		0.939922, 0.291713, 0.177340,
		0.282347, -0.956257, 0.076510,
		30.626518, 35.360699, 34.360554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209864, 35.978352, 33.993462>,  <30.428877, 36.030079, 34.306995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209864, 35.978352, 33.993462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031054, 35.620544, 33.992207>,  <30.923767, 35.405861, 33.991455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031054, 35.620544, 33.992207>,  <31.209864, 35.978352, 33.993462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031054, 35.620544, 33.992207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293373, -0.143298, -0.945198,
		0.845045, -0.423447, 0.326484,
		-0.447025, -0.894516, -0.003135,
		30.896946, 35.352188, 33.991264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705257, 35.535469, 33.680714>,  <31.209864, 35.978352, 33.993462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705257, 35.535469, 33.680714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395201, 35.282768, 33.683487>,  <31.209166, 35.131149, 33.685150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395201, 35.282768, 33.683487>,  <31.705257, 35.535469, 33.680714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395201, 35.282768, 33.683487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218587, -0.278466, -0.935241,
		0.592767, -0.723430, 0.353943,
		-0.775143, -0.631748, 0.006933,
		31.162659, 35.093243, 33.685566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979259, 34.888130, 33.424229>,  <31.705257, 35.535469, 33.680714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979259, 34.888130, 33.424229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587643, 34.915115, 33.347366>,  <31.352673, 34.931305, 33.301250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587643, 34.915115, 33.347366>,  <31.979259, 34.888130, 33.424229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587643, 34.915115, 33.347366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189799, -0.039758, -0.981018,
		-0.073824, -0.996929, 0.026120,
		-0.979044, 0.067465, -0.192152,
		31.293930, 34.935352, 33.289722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885254, 34.464970, 32.827747>,  <31.979259, 34.888130, 33.424229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885254, 34.464970, 32.827747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542597, 34.671116, 32.818207>,  <31.337004, 34.794804, 32.812485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542597, 34.671116, 32.818207>,  <31.885254, 34.464970, 32.827747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542597, 34.671116, 32.818207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004272, -0.039137, -0.999225,
		-0.515895, -0.856079, 0.031325,
		-0.856641, 0.515362, -0.023848,
		31.285604, 34.825726, 32.811054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455435, 34.063995, 32.431438>,  <31.885254, 34.464970, 32.827747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455435, 34.063995, 32.431438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324928, 34.441868, 32.417992>,  <31.246624, 34.668591, 32.409924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324928, 34.441868, 32.417992>,  <31.455435, 34.063995, 32.431438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324928, 34.441868, 32.417992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121974, 0.006806, -0.992510,
		-0.937376, -0.327922, -0.117447,
		-0.326265, 0.944680, -0.033618,
		31.227049, 34.725273, 32.407906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924654, 34.143349, 31.873075>,  <31.455435, 34.063995, 32.431438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924654, 34.143349, 31.873075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097923, 34.501041, 31.918184>,  <31.201885, 34.715656, 31.945250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097923, 34.501041, 31.918184>,  <30.924654, 34.143349, 31.873075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097923, 34.501041, 31.918184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076462, 0.088208, -0.993163,
		-0.898061, 0.438835, -0.030165,
		0.433174, 0.894227, 0.112771,
		31.227875, 34.769310, 31.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547020, 34.528461, 31.481976>,  <30.924654, 34.143349, 31.873075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547020, 34.528461, 31.481976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861176, 34.769440, 31.538860>,  <31.049669, 34.914028, 31.572992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861176, 34.769440, 31.538860>,  <30.547020, 34.528461, 31.481976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861176, 34.769440, 31.538860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034277, 0.187065, -0.981749,
		-0.618053, 0.775930, 0.126269,
		0.785389, 0.602445, 0.142213,
		31.096792, 34.950172, 31.581524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371778, 35.135998, 31.201538>,  <30.547020, 34.528461, 31.481976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371778, 35.135998, 31.201538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770720, 35.157043, 31.221613>,  <31.010084, 35.169670, 31.233658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770720, 35.157043, 31.221613>,  <30.371778, 35.135998, 31.201538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770720, 35.157043, 31.221613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018394, 0.485180, -0.874221,
		-0.070348, 0.872830, 0.482928,
		0.997353, 0.052617, 0.050187,
		31.069925, 35.172829, 31.236670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530111, 35.805912, 30.890900>,  <30.371778, 35.135998, 31.201538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530111, 35.805912, 30.890900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882980, 35.617645, 30.884638>,  <31.094702, 35.504684, 30.880880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882980, 35.617645, 30.884638>,  <30.530111, 35.805912, 30.890900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882980, 35.617645, 30.884638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209399, 0.421813, -0.882171,
		0.421813, 0.774948, 0.470669,
		0.882171, -0.470669, -0.015653,
		31.147633, 35.476444, 30.879942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122669, 36.297043, 30.757315>,  <30.530111, 35.805912, 30.890900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122669, 36.297043, 30.757315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230705, 35.932957, 30.631733>,  <31.295527, 35.714504, 30.556383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230705, 35.932957, 30.631733>,  <31.122669, 36.297043, 30.757315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230705, 35.932957, 30.631733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203088, 0.372592, -0.905500,
		0.941173, 0.180806, 0.285487,
		0.270090, -0.910211, -0.313954,
		31.311733, 35.659893, 30.537546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836920, 36.410557, 30.521614>,  <31.122669, 36.297043, 30.757315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836920, 36.410557, 30.521614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641539, 36.104568, 30.353697>,  <31.524309, 35.920975, 30.252947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641539, 36.104568, 30.353697>,  <31.836920, 36.410557, 30.521614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641539, 36.104568, 30.353697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074912, 0.442550, -0.893610,
		0.869368, -0.467935, -0.158859,
		-0.488454, -0.764975, -0.419793,
		31.495003, 35.875076, 30.227758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202774, 36.260410, 29.878548>,  <31.836920, 36.410557, 30.521614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202774, 36.260410, 29.878548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889254, 36.013992, 29.847178>,  <31.701141, 35.866142, 29.828356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889254, 36.013992, 29.847178>,  <32.202774, 36.260410, 29.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889254, 36.013992, 29.847178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030464, 0.164274, -0.985944,
		0.620270, -0.770391, -0.147524,
		-0.783797, -0.616045, -0.078425,
		31.654114, 35.829178, 29.823650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361107, 35.740192, 29.362532>,  <32.202774, 36.260410, 29.878548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361107, 35.740192, 29.362532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961922, 35.762936, 29.374163>,  <31.722412, 35.776581, 29.381142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961922, 35.762936, 29.374163>,  <32.361107, 35.740192, 29.362532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961922, 35.762936, 29.374163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027160, 0.034190, -0.999046,
		-0.057804, -0.997796, -0.032575,
		-0.997958, 0.056864, 0.029077,
		31.662535, 35.779995, 29.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154446, 35.529205, 28.765064>,  <32.361107, 35.740192, 29.362532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154446, 35.529205, 28.765064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808859, 35.704231, 28.864738>,  <31.601507, 35.809246, 28.924543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808859, 35.704231, 28.864738>,  <32.154446, 35.529205, 28.765064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808859, 35.704231, 28.864738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207394, 0.141720, -0.967938,
		-0.458854, -0.887946, -0.031692,
		-0.863968, 0.437569, 0.249184,
		31.549669, 35.835503, 28.939493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704792, 35.409302, 28.241455>,  <32.154446, 35.529205, 28.765064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704792, 35.409302, 28.241455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528620, 35.713886, 28.431700>,  <31.422916, 35.896637, 28.545847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528620, 35.713886, 28.431700>,  <31.704792, 35.409302, 28.241455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528620, 35.713886, 28.431700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459189, 0.264164, -0.848153,
		-0.771470, -0.591947, 0.233307,
		-0.440430, 0.761457, 0.475610,
		31.396490, 35.942322, 28.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033728, 35.393940, 28.169338>,  <31.704792, 35.409302, 28.241455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033728, 35.393940, 28.169338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055574, 35.789520, 28.224474>,  <31.068682, 36.026867, 28.257555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055574, 35.789520, 28.224474>,  <31.033728, 35.393940, 28.169338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055574, 35.789520, 28.224474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488863, 0.146854, -0.859911,
		-0.870649, -0.020421, 0.491481,
		0.054615, 0.988948, 0.137841,
		31.071959, 36.086205, 28.265827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402390, 35.539482, 28.022089>,  <31.033728, 35.393940, 28.169338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402390, 35.539482, 28.022089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578150, 35.898800, 28.021536>,  <30.683605, 36.114391, 28.021204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578150, 35.898800, 28.021536>,  <30.402390, 35.539482, 28.022089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578150, 35.898800, 28.021536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554941, 0.270237, -0.786773,
		-0.706377, 0.346476, 0.617240,
		0.439400, 0.898291, -0.001385,
		30.709970, 36.168285, 28.021120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887238, 36.019318, 28.027319>,  <30.402390, 35.539482, 28.022089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887238, 36.019318, 28.027319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210772, 36.219112, 27.903193>,  <30.404892, 36.338989, 27.828716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210772, 36.219112, 27.903193>,  <29.887238, 36.019318, 28.027319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210772, 36.219112, 27.903193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441652, 0.167598, -0.881393,
		-0.388234, 0.849956, 0.356158,
		0.808837, 0.499485, -0.310318,
		30.453423, 36.368958, 27.810097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675457, 36.772114, 27.843210>,  <29.887238, 36.019318, 28.027319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675457, 36.772114, 27.843210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003204, 36.660076, 27.643139>,  <30.199852, 36.592854, 27.523096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003204, 36.660076, 27.643139>,  <29.675457, 36.772114, 27.843210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003204, 36.660076, 27.643139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447077, 0.233916, -0.863369,
		0.358828, 0.931036, 0.066437,
		0.819368, -0.280099, -0.500180,
		30.249014, 36.576046, 27.493084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830364, 37.355076, 27.439426>,  <29.675457, 36.772114, 27.843210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830364, 37.355076, 27.439426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037701, 37.062702, 27.261864>,  <30.162102, 36.887276, 27.155325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037701, 37.062702, 27.261864>,  <29.830364, 37.355076, 27.439426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037701, 37.062702, 27.261864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369568, 0.276651, -0.887065,
		0.771197, 0.623855, -0.126732,
		0.518339, -0.730938, -0.443909,
		30.193203, 36.843422, 27.128691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376329, 37.665661, 26.966875>,  <29.830364, 37.355076, 27.439426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376329, 37.665661, 26.966875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265171, 37.307735, 26.827116>,  <30.198477, 37.092979, 26.743259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265171, 37.307735, 26.827116>,  <30.376329, 37.665661, 26.966875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265171, 37.307735, 26.827116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195466, 0.408789, -0.891451,
		0.940514, -0.179435, -0.288507,
		-0.277896, -0.894815, -0.349399,
		30.181803, 37.039291, 26.722296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497238, 37.699390, 26.313236>,  <30.376329, 37.665661, 26.966875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497238, 37.699390, 26.313236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294147, 37.355118, 26.298031>,  <30.172293, 37.148556, 26.288908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294147, 37.355118, 26.298031>,  <30.497238, 37.699390, 26.313236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294147, 37.355118, 26.298031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233634, 0.180024, -0.955514,
		0.829233, -0.476260, -0.292487,
		-0.507728, -0.860679, -0.038011,
		30.141829, 37.096912, 26.286627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558826, 37.567528, 25.562328>,  <30.497238, 37.699390, 26.313236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558826, 37.567528, 25.562328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261543, 37.333336, 25.691853>,  <30.083174, 37.192822, 25.769567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261543, 37.333336, 25.691853>,  <30.558826, 37.567528, 25.562328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261543, 37.333336, 25.691853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330833, -0.099079, -0.938474,
		0.581543, -0.804607, -0.120061,
		-0.743208, -0.585483, 0.323809,
		30.038582, 37.157692, 25.788996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472599, 37.099342, 25.059635>,  <30.558826, 37.567528, 25.562328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472599, 37.099342, 25.059635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124771, 37.102406, 25.257135>,  <29.916075, 37.104244, 25.375635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124771, 37.102406, 25.257135>,  <30.472599, 37.099342, 25.059635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124771, 37.102406, 25.257135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493471, -0.050496, -0.868295,
		0.018288, -0.998695, 0.047686,
		-0.869570, 0.007652, 0.493751,
		29.863899, 37.104706, 25.405260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007414, 36.668701, 24.685377>,  <30.472599, 37.099342, 25.059635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007414, 36.668701, 24.685377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768524, 36.898670, 24.909088>,  <29.625191, 37.036652, 25.043314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768524, 36.898670, 24.909088>,  <30.007414, 36.668701, 24.685377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768524, 36.898670, 24.909088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731358, -0.104064, -0.674007,
		-0.329302, -0.811563, 0.482624,
		-0.597223, 0.574922, 0.559275,
		29.589357, 37.071148, 25.076870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378933, 36.352718, 24.645538>,  <30.007414, 36.668701, 24.685377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378933, 36.352718, 24.645538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262417, 36.726467, 24.727615>,  <29.192507, 36.950714, 24.776861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262417, 36.726467, 24.727615>,  <29.378933, 36.352718, 24.645538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262417, 36.726467, 24.727615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502031, 0.033278, -0.864209,
		-0.814319, -0.354749, 0.459388,
		-0.291290, 0.934369, 0.205194,
		29.175030, 37.006779, 24.789173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663551, 36.430725, 24.368788>,  <29.378933, 36.352718, 24.645538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663551, 36.430725, 24.368788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802780, 36.799335, 24.437653>,  <28.886318, 37.020500, 24.478971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802780, 36.799335, 24.437653>,  <28.663551, 36.430725, 24.368788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802780, 36.799335, 24.437653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562427, 0.352197, -0.748087,
		-0.750014, 0.163562, 0.640880,
		0.348074, 0.921523, 0.172161,
		28.907202, 37.075794, 24.489302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065182, 36.767643, 24.441231>,  <28.663551, 36.430725, 24.368788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065182, 36.767643, 24.441231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336435, 37.044949, 24.343641>,  <28.499187, 37.211330, 24.285088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336435, 37.044949, 24.343641>,  <28.065182, 36.767643, 24.441231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336435, 37.044949, 24.343641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554571, 0.264854, -0.788862,
		-0.482270, 0.670254, 0.564070,
		0.678134, 0.693261, -0.243972,
		28.539875, 37.252926, 24.270449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527409, 37.259323, 24.111607>,  <28.065182, 36.767643, 24.441231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527409, 37.259323, 24.111607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910309, 37.336952, 24.025810>,  <28.140049, 37.383530, 23.974333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910309, 37.336952, 24.025810>,  <27.527409, 37.259323, 24.111607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910309, 37.336952, 24.025810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272241, 0.353861, -0.894800,
		-0.097756, 0.914941, 0.391569,
		0.957250, 0.194073, -0.214493,
		28.197483, 37.395176, 23.961462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695089, 37.965355, 23.947491>,  <27.527409, 37.259323, 24.111607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695089, 37.965355, 23.947491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984673, 37.763561, 23.759285>,  <28.158422, 37.642487, 23.646362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984673, 37.763561, 23.759285>,  <27.695089, 37.965355, 23.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984673, 37.763561, 23.759285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113601, 0.585561, -0.802629,
		0.680428, 0.634519, 0.366610,
		0.723956, -0.504484, -0.470514,
		28.201859, 37.612217, 23.618130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121574, 38.452473, 23.736996>,  <27.695089, 37.965355, 23.947491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121574, 38.452473, 23.736996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215113, 38.136292, 23.510544>,  <28.271236, 37.946583, 23.374672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215113, 38.136292, 23.510544>,  <28.121574, 38.452473, 23.736996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215113, 38.136292, 23.510544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066805, 0.567836, -0.820427,
		0.969976, 0.229673, 0.079980,
		0.233846, -0.790451, -0.566130,
		28.285267, 37.899155, 23.340704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751511, 38.594463, 23.237274>,  <28.121574, 38.452473, 23.736996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751511, 38.594463, 23.237274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516148, 38.313900, 23.076376>,  <28.374929, 38.145561, 22.979837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516148, 38.313900, 23.076376>,  <28.751511, 38.594463, 23.237274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516148, 38.313900, 23.076376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015696, 0.507294, -0.861630,
		0.808413, -0.500676, -0.309504,
		-0.588407, -0.701411, -0.402244,
		28.339626, 38.103477, 22.955702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069195, 38.645187, 22.623148>,  <28.751511, 38.594463, 23.237274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069195, 38.645187, 22.623148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723627, 38.459972, 22.543909>,  <28.516287, 38.348843, 22.496367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723627, 38.459972, 22.543909>,  <29.069195, 38.645187, 22.623148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723627, 38.459972, 22.543909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054428, 0.476873, -0.877285,
		0.500686, -0.747119, -0.437181,
		-0.863916, -0.463040, -0.198099,
		28.464451, 38.321060, 22.484480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039974, 38.757744, 21.943275>,  <29.069195, 38.645187, 22.623148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039974, 38.757744, 21.943275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680868, 38.614319, 22.045609>,  <28.465405, 38.528263, 22.107008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680868, 38.614319, 22.045609>,  <29.039974, 38.757744, 21.943275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680868, 38.614319, 22.045609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371658, 0.304922, -0.876866,
		0.236395, -0.882305, -0.407009,
		-0.897768, -0.358554, 0.255833,
		28.411537, 38.506752, 22.122358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905506, 38.376610, 21.376568>,  <29.039974, 38.757744, 21.943275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905506, 38.376610, 21.376568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546772, 38.423126, 21.547289>,  <28.331532, 38.451035, 21.649721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546772, 38.423126, 21.547289>,  <28.905506, 38.376610, 21.376568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546772, 38.423126, 21.547289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392168, 0.237384, -0.888736,
		-0.204664, -0.964430, -0.167291,
		-0.896837, 0.116286, 0.426803,
		28.277721, 38.458012, 21.675329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387266, 38.035179, 20.932701>,  <28.905506, 38.376610, 21.376568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387266, 38.035179, 20.932701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172613, 38.285572, 21.159037>,  <28.043821, 38.435806, 21.294838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172613, 38.285572, 21.159037>,  <28.387266, 38.035179, 20.932701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172613, 38.285572, 21.159037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596527, 0.192845, -0.779080,
		-0.596810, -0.755616, 0.269929,
		-0.536631, 0.625983, 0.565837,
		28.011623, 38.473366, 21.328789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628935, 37.932178, 20.793381>,  <28.387266, 38.035179, 20.932701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628935, 37.932178, 20.793381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664818, 38.307907, 20.925821>,  <27.686348, 38.533344, 21.005285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664818, 38.307907, 20.925821>,  <27.628935, 37.932178, 20.793381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664818, 38.307907, 20.925821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478281, 0.332229, -0.812940,
		-0.873613, -0.085432, 0.479063,
		0.089707, 0.939322, 0.331100,
		27.691730, 38.589703, 21.025150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958136, 38.187523, 20.802303>,  <27.628935, 37.932178, 20.793381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958136, 38.187523, 20.802303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203304, 38.503227, 20.787380>,  <27.350407, 38.692650, 20.778425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203304, 38.503227, 20.787380>,  <26.958136, 38.187523, 20.802303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203304, 38.503227, 20.787380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467732, 0.324365, -0.822201,
		-0.636830, 0.521397, 0.567973,
		0.612923, 0.789261, -0.037309,
		27.387182, 38.740005, 20.776188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498014, 38.891224, 20.680834>,  <26.958136, 38.187523, 20.802303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498014, 38.891224, 20.680834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878044, 38.882519, 20.556330>,  <27.106062, 38.877296, 20.481627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878044, 38.882519, 20.556330>,  <26.498014, 38.891224, 20.680834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878044, 38.882519, 20.556330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295798, 0.254668, -0.920678,
		0.099304, 0.966784, 0.235517,
		0.950075, -0.021761, -0.311262,
		27.163067, 38.875992, 20.462952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645185, 39.562317, 20.479736>,  <26.498014, 38.891224, 20.680834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645185, 39.562317, 20.479736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865664, 39.301338, 20.271698>,  <26.997950, 39.144753, 20.146875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865664, 39.301338, 20.271698>,  <26.645185, 39.562317, 20.479736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865664, 39.301338, 20.271698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301381, 0.425567, -0.853265,
		0.778044, 0.627063, 0.037936,
		0.551195, -0.652445, -0.520095,
		27.031023, 39.105606, 20.115669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194248, 39.990677, 19.924358>,  <26.645185, 39.562317, 20.479736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194248, 39.990677, 19.924358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093359, 39.618393, 19.818401>,  <27.032825, 39.395023, 19.754827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093359, 39.618393, 19.818401>,  <27.194248, 39.990677, 19.924358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093359, 39.618393, 19.818401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190626, 0.316168, -0.929354,
		0.948707, -0.183911, -0.257162,
		-0.252225, -0.930706, -0.264892,
		27.017691, 39.339180, 19.738934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674210, 39.726307, 19.367819>,  <27.194248, 39.990677, 19.924358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674210, 39.726307, 19.367819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290380, 39.613773, 19.364349>,  <27.060083, 39.546253, 19.362268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290380, 39.613773, 19.364349>,  <27.674210, 39.726307, 19.367819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290380, 39.613773, 19.364349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074265, 0.282789, -0.956303,
		0.271461, -0.917006, -0.292250,
		-0.959580, -0.281303, -0.008665,
		27.002508, 39.529373, 19.361748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082962, 39.119095, 19.661154>,  <27.674210, 39.726307, 19.367819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082962, 39.119095, 19.661154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329588, 39.255203, 19.377165>,  <28.477564, 39.336868, 19.206772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329588, 39.255203, 19.377165>,  <28.082962, 39.119095, 19.661154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329588, 39.255203, 19.377165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242602, 0.940011, 0.239839,
		0.748993, 0.024365, 0.662130,
		0.616566, 0.340272, -0.709973,
		28.514557, 39.357285, 19.164173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421347, 39.599682, 19.979567>,  <28.082962, 39.119095, 19.661154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421347, 39.599682, 19.979567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444225, 39.681248, 19.588640>,  <28.457952, 39.730186, 19.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444225, 39.681248, 19.588640>,  <28.421347, 39.599682, 19.979567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444225, 39.681248, 19.588640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204632, 0.960529, 0.188441,
		0.977166, 0.189211, 0.096669,
		0.057198, 0.203919, -0.977315,
		28.461384, 39.742424, 19.295446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983965, 39.785973, 19.752348>,  <28.421347, 39.599682, 19.979567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983965, 39.785973, 19.752348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034416, 40.177490, 19.687778>,  <29.064688, 40.412399, 19.649036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034416, 40.177490, 19.687778>,  <28.983965, 39.785973, 19.752348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034416, 40.177490, 19.687778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018331, 0.160396, 0.986882,
		0.991844, -0.127434, 0.002289,
		0.126130, 0.978792, -0.161423,
		29.072256, 40.471127, 19.639351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522480, 39.970779, 20.120014>,  <28.983965, 39.785973, 19.752348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522480, 39.970779, 20.120014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334352, 40.317768, 20.055155>,  <29.221476, 40.525963, 20.016239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334352, 40.317768, 20.055155>,  <29.522480, 39.970779, 20.120014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334352, 40.317768, 20.055155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054214, 0.211792, 0.975810,
		0.880830, 0.450151, -0.146639,
		-0.470318, 0.867472, -0.162149,
		29.193256, 40.578011, 20.006510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033068, 40.466404, 20.185259>,  <29.522480, 39.970779, 20.120014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033068, 40.466404, 20.185259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659481, 40.590443, 20.256304>,  <29.435329, 40.664867, 20.298931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659481, 40.590443, 20.256304>,  <30.033068, 40.466404, 20.185259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659481, 40.590443, 20.256304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256160, 0.234377, 0.937790,
		0.249177, 0.921362, -0.298335,
		-0.933966, 0.310097, 0.177614,
		29.379292, 40.683472, 20.309587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912329, 41.192791, 20.321945>,  <30.033068, 40.466404, 20.185259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912329, 41.192791, 20.321945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634813, 40.992653, 20.529142>,  <29.468304, 40.872570, 20.653461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634813, 40.992653, 20.529142>,  <29.912329, 41.192791, 20.321945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634813, 40.992653, 20.529142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385178, 0.349944, 0.853918,
		-0.608521, 0.791956, -0.050065,
		-0.693786, -0.500344, 0.517993,
		29.426678, 40.842548, 20.684540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937988, 41.516998, 20.949276>,  <29.912329, 41.192791, 20.321945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937988, 41.516998, 20.949276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698584, 41.207497, 21.032303>,  <29.554941, 41.021793, 21.082119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698584, 41.207497, 21.032303>,  <29.937988, 41.516998, 20.949276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698584, 41.207497, 21.032303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375607, -0.042179, 0.925819,
		-0.707605, 0.632075, 0.315873,
		-0.598510, -0.773758, 0.207565,
		29.519030, 40.975368, 21.094572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628504, 41.642624, 21.665667>,  <29.937988, 41.516998, 20.949276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628504, 41.642624, 21.665667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574459, 41.249912, 21.612225>,  <29.542032, 41.014286, 21.580160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574459, 41.249912, 21.612225>,  <29.628504, 41.642624, 21.665667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574459, 41.249912, 21.612225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365507, -0.174716, 0.914264,
		-0.920950, 0.074694, 0.382454,
		-0.135111, -0.981782, -0.133603,
		29.533926, 40.955379, 21.572144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221678, 41.334030, 22.314848>,  <29.628504, 41.642624, 21.665667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221678, 41.334030, 22.314848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376009, 41.028751, 22.107513>,  <29.468607, 40.845585, 21.983112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376009, 41.028751, 22.107513>,  <29.221678, 41.334030, 22.314848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376009, 41.028751, 22.107513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204758, -0.476986, 0.854727,
		-0.899562, -0.435910, -0.027764,
		0.385827, -0.763195, -0.518335,
		29.491756, 40.799793, 21.952013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030579, 40.804672, 22.773336>,  <29.221678, 41.334030, 22.314848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030579, 40.804672, 22.773336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311485, 40.643333, 22.538685>,  <29.480030, 40.546532, 22.397894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311485, 40.643333, 22.538685>,  <29.030579, 40.804672, 22.773336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311485, 40.643333, 22.538685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404216, -0.452398, 0.794950,
		-0.586031, -0.795391, -0.154664,
		0.702266, -0.403348, -0.586629,
		29.522165, 40.522327, 22.362696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092903, 40.189121, 22.969759>,  <29.030579, 40.804672, 22.773336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092903, 40.189121, 22.969759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441566, 40.223125, 22.776686>,  <29.650764, 40.243530, 22.660841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441566, 40.223125, 22.776686>,  <29.092903, 40.189121, 22.969759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441566, 40.223125, 22.776686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473881, -0.397555, 0.785740,
		-0.125094, -0.913632, -0.386819,
		0.871659, 0.085015, -0.482684,
		29.703064, 40.248631, 22.631880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482777, 39.537548, 23.096966>,  <29.092903, 40.189121, 22.969759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482777, 39.537548, 23.096966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756460, 39.808281, 22.988331>,  <29.920670, 39.970718, 22.923151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756460, 39.808281, 22.988331>,  <29.482777, 39.537548, 23.096966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756460, 39.808281, 22.988331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626709, -0.355239, 0.693571,
		0.372953, -0.644753, -0.667233,
		0.684209, 0.676831, -0.271585,
		29.961723, 40.011330, 22.906855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185038, 39.215599, 23.232443>,  <29.482777, 39.537548, 23.096966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185038, 39.215599, 23.232443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257391, 39.608376, 23.210249>,  <30.300802, 39.844040, 23.196932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257391, 39.608376, 23.210249>,  <30.185038, 39.215599, 23.232443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257391, 39.608376, 23.210249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672566, -0.082338, 0.735443,
		0.717591, -0.170347, -0.675311,
		0.180884, 0.981938, -0.055484,
		30.311657, 39.902958, 23.193604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915899, 39.293533, 23.124062>,  <30.185038, 39.215599, 23.232443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915899, 39.293533, 23.124062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773827, 39.633057, 23.280712>,  <30.688583, 39.836769, 23.374702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773827, 39.633057, 23.280712>,  <30.915899, 39.293533, 23.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773827, 39.633057, 23.280712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619505, -0.100001, 0.778597,
		0.700043, 0.519155, -0.490324,
		-0.355180, 0.848810, 0.391624,
		30.667273, 39.887699, 23.398199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554949, 39.645527, 23.364237>,  <30.915899, 39.293533, 23.124062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554949, 39.645527, 23.364237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248999, 39.798401, 23.571659>,  <31.065430, 39.890125, 23.696114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248999, 39.798401, 23.571659>,  <31.554949, 39.645527, 23.364237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248999, 39.798401, 23.571659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537943, -0.063891, 0.840557,
		0.354382, 0.921873, -0.156727,
		-0.764873, 0.382189, 0.518557,
		31.019537, 39.913059, 23.727226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918304, 40.127857, 23.856234>,  <31.554949, 39.645527, 23.364237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918304, 40.127857, 23.856234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552362, 40.093418, 24.014034>,  <31.332798, 40.072754, 24.108715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552362, 40.093418, 24.014034>,  <31.918304, 40.127857, 23.856234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552362, 40.093418, 24.014034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403633, -0.221949, 0.887592,
		0.011141, 0.971250, 0.237802,
		-0.914853, -0.086096, 0.394501,
		31.277906, 40.067589, 24.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891960, 40.540939, 24.382710>,  <31.918304, 40.127857, 23.856234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891960, 40.540939, 24.382710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600714, 40.286114, 24.483902>,  <31.425966, 40.133221, 24.544617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600714, 40.286114, 24.483902>,  <31.891960, 40.540939, 24.382710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600714, 40.286114, 24.483902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415149, -0.116174, 0.902305,
		-0.545433, 0.762008, 0.349063,
		-0.728117, -0.637061, 0.252982,
		31.382278, 40.094994, 24.559797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541136, 40.738873, 25.080116>,  <31.891960, 40.540939, 24.382710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541136, 40.738873, 25.080116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468081, 40.353489, 25.001749>,  <31.424248, 40.122257, 24.954729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468081, 40.353489, 25.001749>,  <31.541136, 40.738873, 25.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468081, 40.353489, 25.001749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251774, -0.238456, 0.937949,
		-0.950396, 0.121980, 0.286126,
		-0.182640, -0.963462, -0.195916,
		31.413288, 40.064449, 24.942974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166052, 40.553886, 25.625359>,  <31.541136, 40.738873, 25.080116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166052, 40.553886, 25.625359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305300, 40.208420, 25.479546>,  <31.388849, 40.001141, 25.392057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305300, 40.208420, 25.479546>,  <31.166052, 40.553886, 25.625359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305300, 40.208420, 25.479546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069564, -0.363986, 0.928803,
		-0.934866, -0.348692, -0.066630,
		0.348119, -0.863671, -0.364534,
		31.409735, 39.949318, 25.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955421, 40.034996, 25.920895>,  <31.166052, 40.553886, 25.625359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955421, 40.034996, 25.920895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283834, 39.843460, 25.796558>,  <31.480883, 39.728539, 25.721956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283834, 39.843460, 25.796558>,  <30.955421, 40.034996, 25.920895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283834, 39.843460, 25.796558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151930, -0.341580, 0.927492,
		-0.550298, -0.808724, -0.207697,
		0.821030, -0.478841, -0.310840,
		31.530144, 39.699806, 25.703306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005301, 39.363655, 26.396807>,  <30.955421, 40.034996, 25.920895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005301, 39.363655, 26.396807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357237, 39.432499, 26.219604>,  <31.568399, 39.473804, 26.113283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357237, 39.432499, 26.219604>,  <31.005301, 39.363655, 26.396807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357237, 39.432499, 26.219604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473382, -0.234463, 0.849080,
		0.042269, -0.956767, -0.287766,
		0.879842, 0.172113, -0.443006,
		31.621189, 39.484131, 26.086702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408270, 38.761070, 26.398230>,  <31.005301, 39.363655, 26.396807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408270, 38.761070, 26.398230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648232, 39.079784, 26.369246>,  <31.792208, 39.271011, 26.351854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648232, 39.079784, 26.369246>,  <31.408270, 38.761070, 26.398230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648232, 39.079784, 26.369246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477390, -0.283802, 0.831598,
		0.642040, -0.533471, -0.550631,
		0.599903, 0.796785, -0.072462,
		31.828203, 39.318821, 26.347507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972704, 38.537701, 26.776838>,  <31.408270, 38.761070, 26.398230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972704, 38.537701, 26.776838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031834, 38.931061, 26.734764>,  <32.067310, 39.167076, 26.709518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031834, 38.931061, 26.734764>,  <31.972704, 38.537701, 26.776838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031834, 38.931061, 26.734764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398576, 0.038100, 0.916344,
		0.905144, -0.177383, -0.386329,
		0.147824, 0.983404, -0.105187,
		32.076180, 39.226082, 26.703209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560963, 38.629261, 27.071182>,  <31.972704, 38.537701, 26.776838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560963, 38.629261, 27.071182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436665, 39.009201, 27.057169>,  <32.362083, 39.237164, 27.048761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436665, 39.009201, 27.057169>,  <32.560963, 38.629261, 27.071182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436665, 39.009201, 27.057169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355738, 0.150402, 0.922404,
		0.881411, 0.274175, -0.384634,
		-0.310750, 0.949846, -0.035031,
		32.343441, 39.294155, 27.046659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177357, 38.968571, 27.176973>,  <32.560963, 38.629261, 27.071182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177357, 38.968571, 27.176973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867504, 39.202564, 27.273085>,  <32.681591, 39.342960, 27.330751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867504, 39.202564, 27.273085>,  <33.177357, 38.968571, 27.176973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867504, 39.202564, 27.273085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337244, 0.060699, 0.939458,
		0.534987, 0.808767, -0.244304,
		-0.774632, 0.584988, 0.240279,
		32.635113, 39.378059, 27.345169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493073, 39.487202, 27.521173>,  <33.177357, 38.968571, 27.176973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493073, 39.487202, 27.521173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104210, 39.476059, 27.614235>,  <32.870892, 39.469376, 27.670073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104210, 39.476059, 27.614235>,  <33.493073, 39.487202, 27.521173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104210, 39.476059, 27.614235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222104, 0.206807, 0.952838,
		-0.074655, 0.977985, -0.194863,
		-0.972161, -0.027854, 0.232653,
		32.812561, 39.467701, 27.684031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119598, 40.153976, 27.756950>,  <33.493073, 39.487202, 27.521173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119598, 40.153976, 27.756950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876900, 39.871719, 27.903330>,  <32.731281, 39.702366, 27.991158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876900, 39.871719, 27.903330>,  <33.119598, 40.153976, 27.756950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876900, 39.871719, 27.903330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153975, 0.347319, 0.925019,
		-0.779837, 0.617602, -0.102084,
		-0.606750, -0.705646, 0.365948,
		32.694874, 39.660027, 28.013115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729214, 40.468349, 28.297976>,  <33.119598, 40.153976, 27.756950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729214, 40.468349, 28.297976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658466, 40.081490, 28.371019>,  <32.616020, 39.849373, 28.414845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658466, 40.081490, 28.371019>,  <32.729214, 40.468349, 28.297976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658466, 40.081490, 28.371019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095293, 0.201488, 0.974845,
		-0.979611, 0.155016, -0.127798,
		-0.176866, -0.967147, 0.182608,
		32.605408, 39.791344, 28.425802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138832, 40.487625, 28.741188>,  <32.729214, 40.468349, 28.297976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138832, 40.487625, 28.741188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317078, 40.132252, 28.785221>,  <32.424026, 39.919029, 28.811640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317078, 40.132252, 28.785221>,  <32.138832, 40.487625, 28.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317078, 40.132252, 28.785221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096367, 0.074645, 0.992543,
		-0.890024, -0.452898, -0.052352,
		0.445613, -0.888432, 0.110080,
		32.450760, 39.865723, 28.818245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696814, 40.095905, 29.218502>,  <32.138832, 40.487625, 28.741188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696814, 40.095905, 29.218502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043636, 39.897266, 29.234484>,  <32.251732, 39.778084, 29.244074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043636, 39.897266, 29.234484>,  <31.696814, 40.095905, 29.218502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043636, 39.897266, 29.234484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105248, -0.104191, 0.988973,
		-0.486962, -0.861703, -0.142606,
		0.867059, -0.496602, 0.039956,
		32.303753, 39.748287, 29.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591265, 39.492329, 29.592121>,  <31.696814, 40.095905, 29.218502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591265, 39.492329, 29.592121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988186, 39.522121, 29.631693>,  <32.226337, 39.539997, 29.655436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988186, 39.522121, 29.631693>,  <31.591265, 39.492329, 29.592121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988186, 39.522121, 29.631693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072996, -0.293533, 0.953158,
		0.100033, -0.953043, -0.285837,
		0.992303, 0.074482, 0.098931,
		32.285877, 39.544464, 29.661371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968077, 38.781136, 29.771612>,  <31.591265, 39.492329, 29.592121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968077, 38.781136, 29.771612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198978, 39.079353, 29.904842>,  <32.337521, 39.258286, 29.984781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198978, 39.079353, 29.904842>,  <31.968077, 38.781136, 29.771612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198978, 39.079353, 29.904842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122966, -0.482616, 0.867157,
		0.807254, -0.459611, -0.370269,
		0.577252, 0.745546, 0.333077,
		32.372154, 39.303017, 30.004766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410484, 38.460022, 30.173485>,  <31.968077, 38.781136, 29.771612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410484, 38.460022, 30.173485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467476, 38.831806, 30.309603>,  <32.501671, 39.054878, 30.391273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467476, 38.831806, 30.309603>,  <32.410484, 38.460022, 30.173485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467476, 38.831806, 30.309603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172724, -0.361874, 0.916086,
		0.974611, -0.071744, -0.212099,
		0.142477, 0.929462, 0.340294,
		32.510220, 39.110645, 30.411692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040405, 38.451378, 30.663235>,  <32.410484, 38.460022, 30.173485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040405, 38.451378, 30.663235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812824, 38.770741, 30.742073>,  <32.676277, 38.962357, 30.789377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812824, 38.770741, 30.742073>,  <33.040405, 38.451378, 30.663235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812824, 38.770741, 30.742073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073148, -0.189588, 0.979135,
		0.819112, 0.571497, 0.049464,
		-0.568951, 0.798403, 0.197098,
		32.642139, 39.010262, 30.801203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299599, 38.660683, 31.231060>,  <33.040405, 38.451378, 30.663235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299599, 38.660683, 31.231060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947559, 38.850574, 31.227890>,  <32.736336, 38.964512, 31.225988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947559, 38.850574, 31.227890>,  <33.299599, 38.660683, 31.231060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947559, 38.850574, 31.227890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089531, -0.149544, 0.984693,
		0.466281, 0.867333, 0.174116,
		-0.880095, 0.474733, -0.007924,
		32.683533, 38.992992, 31.225513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312187, 39.126541, 31.756369>,  <33.299599, 38.660683, 31.231060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312187, 39.126541, 31.756369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918594, 39.099453, 31.690407>,  <32.682438, 39.083202, 31.650829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918594, 39.099453, 31.690407>,  <33.312187, 39.126541, 31.756369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918594, 39.099453, 31.690407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169892, 0.076026, 0.982526,
		-0.053996, 0.994804, -0.086313,
		-0.983982, -0.067716, -0.164904,
		32.623398, 39.079140, 31.640936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044888, 39.519627, 32.263947>,  <33.312187, 39.126541, 31.756369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044888, 39.519627, 32.263947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742619, 39.297028, 32.125801>,  <32.561256, 39.163467, 32.042915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742619, 39.297028, 32.125801>,  <33.044888, 39.519627, 32.263947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742619, 39.297028, 32.125801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306384, -0.165698, 0.937375,
		-0.578870, 0.814161, -0.045287,
		-0.755671, -0.556494, -0.345364,
		32.515919, 39.130081, 32.022190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476658, 39.646584, 32.688309>,  <33.044888, 39.519627, 32.263947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476658, 39.646584, 32.688309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400177, 39.295982, 32.511593>,  <32.354290, 39.085621, 32.405563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400177, 39.295982, 32.511593>,  <32.476658, 39.646584, 32.688309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400177, 39.295982, 32.511593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385210, -0.346980, 0.855113,
		-0.902805, 0.333679, -0.271297,
		-0.191198, -0.876506, -0.441792,
		32.342819, 39.033031, 32.379055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864286, 39.399246, 32.998810>,  <32.476658, 39.646584, 32.688309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864286, 39.399246, 32.998810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039505, 39.075249, 32.842842>,  <32.144634, 38.880852, 32.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039505, 39.075249, 32.842842>,  <31.864286, 39.399246, 32.998810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039505, 39.075249, 32.842842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386349, -0.561273, 0.731920,
		-0.811696, -0.169971, -0.558802,
		0.438045, -0.809989, -0.389915,
		32.170918, 38.832253, 32.725868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312017, 38.915844, 32.909523>,  <31.864286, 39.399246, 32.998810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312017, 38.915844, 32.909523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665173, 38.728699, 32.925610>,  <31.877066, 38.616413, 32.935261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665173, 38.728699, 32.925610>,  <31.312017, 38.915844, 32.909523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665173, 38.728699, 32.925610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375480, -0.651937, 0.658781,
		-0.281999, -0.596730, -0.751259,
		0.882888, -0.467859, 0.040214,
		31.930038, 38.588341, 32.937675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184195, 38.188000, 32.928326>,  <31.312017, 38.915844, 32.909523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184195, 38.188000, 32.928326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554884, 38.198193, 33.078278>,  <31.777298, 38.204308, 33.168251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554884, 38.198193, 33.078278>,  <31.184195, 38.188000, 32.928326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554884, 38.198193, 33.078278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281976, -0.612255, 0.738670,
		0.248348, -0.790250, -0.560204,
		0.926722, 0.025483, 0.374883,
		31.832901, 38.205837, 33.190742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330322, 37.375687, 33.028946>,  <31.184195, 38.188000, 32.928326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330322, 37.375687, 33.028946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627058, 37.551682, 33.231369>,  <31.805099, 37.657276, 33.352821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627058, 37.551682, 33.231369>,  <31.330322, 37.375687, 33.028946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627058, 37.551682, 33.231369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126698, -0.649097, 0.750080,
		0.658502, -0.620554, -0.425779,
		0.741837, 0.439984, 0.506055,
		31.849609, 37.683678, 33.383186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680634, 36.904526, 33.335762>,  <31.330322, 37.375687, 33.028946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680634, 36.904526, 33.335762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814674, 37.213100, 33.552132>,  <31.895100, 37.398243, 33.681953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814674, 37.213100, 33.552132>,  <31.680634, 36.904526, 33.335762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814674, 37.213100, 33.552132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072926, -0.551159, 0.831207,
		0.939355, -0.317986, -0.128437,
		0.335102, 0.771433, 0.540924,
		31.915205, 37.444530, 33.714409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335777, 36.775940, 33.604084>,  <31.680634, 36.904526, 33.335762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335777, 36.775940, 33.604084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141087, 37.038940, 33.834141>,  <32.024273, 37.196739, 33.972176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141087, 37.038940, 33.834141>,  <32.335777, 36.775940, 33.604084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141087, 37.038940, 33.834141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182064, -0.567581, 0.802935,
		0.854369, 0.495525, 0.156551,
		-0.486729, 0.657501, 0.575141,
		31.995068, 37.236191, 34.006683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639580, 36.926350, 34.220428>,  <32.335777, 36.775940, 33.604084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639580, 36.926350, 34.220428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252052, 36.985886, 34.299656>,  <32.019535, 37.021606, 34.347191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252052, 36.985886, 34.299656>,  <32.639580, 36.926350, 34.220428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252052, 36.985886, 34.299656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055735, -0.648007, 0.759593,
		0.241406, 0.746949, 0.619508,
		-0.968822, 0.148842, 0.198064,
		31.961405, 37.030537, 34.359074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360317, 36.739094, 33.725761>,  <32.639580, 36.926350, 34.220428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360317, 36.739094, 33.725761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750786, 36.733601, 33.812382>,  <33.985069, 36.730305, 33.864353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750786, 36.733601, 33.812382>,  <33.360317, 36.739094, 33.725761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750786, 36.733601, 33.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188997, 0.544120, -0.817444,
		-0.106606, 0.838895, 0.533751,
		0.976174, -0.013733, 0.216556,
		34.043636, 36.729481, 33.877350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624531, 37.482738, 33.774918>,  <33.360317, 36.739094, 33.725761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624531, 37.482738, 33.774918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922798, 37.228718, 33.694233>,  <34.101757, 37.076305, 33.645821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922798, 37.228718, 33.694233>,  <33.624531, 37.482738, 33.774918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922798, 37.228718, 33.694233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238725, 0.537252, -0.808932,
		0.622085, 0.555040, 0.552214,
		0.745668, -0.635052, -0.201714,
		34.146500, 37.038204, 33.633720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063484, 37.843517, 33.381035>,  <33.624531, 37.482738, 33.774918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063484, 37.843517, 33.381035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245426, 37.494930, 33.307648>,  <34.354591, 37.285778, 33.263615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245426, 37.494930, 33.307648>,  <34.063484, 37.843517, 33.381035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245426, 37.494930, 33.307648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196973, 0.299352, -0.933590,
		0.868510, 0.388508, 0.307817,
		0.454853, -0.871464, -0.183465,
		34.381882, 37.233490, 33.252609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726906, 38.025219, 32.966827>,  <34.063484, 37.843517, 33.381035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726906, 38.025219, 32.966827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659435, 37.635746, 32.905518>,  <34.618954, 37.402061, 32.868732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659435, 37.635746, 32.905518>,  <34.726906, 38.025219, 32.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659435, 37.635746, 32.905518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380187, 0.079201, -0.921513,
		0.909400, -0.213705, 0.356822,
		-0.168672, -0.973682, -0.153273,
		34.608833, 37.343643, 32.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364929, 37.640793, 32.826775>,  <34.726906, 38.025219, 32.966827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364929, 37.640793, 32.826775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081810, 37.421986, 32.647980>,  <34.911938, 37.290703, 32.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081810, 37.421986, 32.647980>,  <35.364929, 37.640793, 32.826775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081810, 37.421986, 32.647980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415608, 0.189200, -0.889648,
		0.571220, -0.815462, 0.093428,
		-0.707798, -0.547014, -0.446988,
		34.869473, 37.257881, 32.513882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672012, 37.404060, 32.290112>,  <35.364929, 37.640793, 32.826775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672012, 37.404060, 32.290112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283871, 37.351803, 32.208782>,  <35.050987, 37.320446, 32.159985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283871, 37.351803, 32.208782>,  <35.672012, 37.404060, 32.290112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283871, 37.351803, 32.208782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212266, -0.058436, -0.975463,
		0.115563, -0.989705, 0.084436,
		-0.970355, -0.130650, -0.203327,
		34.992764, 37.312607, 32.147785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637905, 36.737602, 31.839670>,  <35.672012, 37.404060, 32.290112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637905, 36.737602, 31.839670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308945, 36.958561, 31.785246>,  <35.111568, 37.091137, 31.752592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308945, 36.958561, 31.785246>,  <35.637905, 36.737602, 31.839670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308945, 36.958561, 31.785246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162417, -0.001231, -0.986721,
		-0.545227, -0.833582, -0.088705,
		-0.822404, 0.552394, -0.136059,
		35.062225, 37.124279, 31.744429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153408, 36.399128, 31.407532>,  <35.637905, 36.737602, 31.839670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153408, 36.399128, 31.407532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007217, 36.769314, 31.367649>,  <34.919502, 36.991425, 31.343719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007217, 36.769314, 31.367649>,  <35.153408, 36.399128, 31.407532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007217, 36.769314, 31.367649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068160, -0.080221, -0.994444,
		-0.928320, -0.370245, -0.033761,
		-0.365479, 0.925464, -0.099707,
		34.897575, 37.046951, 31.337736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600018, 36.323162, 30.947580>,  <35.153408, 36.399128, 31.407532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600018, 36.323162, 30.947580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687370, 36.712296, 30.916836>,  <34.739780, 36.945774, 30.898390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687370, 36.712296, 30.916836>,  <34.600018, 36.323162, 30.947580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687370, 36.712296, 30.916836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020073, -0.074268, -0.997036,
		-0.975657, 0.219279, 0.003308,
		0.218383, 0.972831, -0.076861,
		34.752884, 37.004147, 30.893778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212261, 36.615532, 30.263832>,  <34.600018, 36.323162, 30.947580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212261, 36.615532, 30.263832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457310, 36.917484, 30.357513>,  <34.604340, 37.098656, 30.413721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457310, 36.917484, 30.357513>,  <34.212261, 36.615532, 30.263832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457310, 36.917484, 30.357513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054719, 0.336111, -0.940231,
		-0.788483, 0.563187, 0.247214,
		0.612617, 0.754884, 0.234201,
		34.641094, 37.143948, 30.427774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947628, 37.348862, 30.160156>,  <34.212261, 36.615532, 30.263832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947628, 37.348862, 30.160156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344791, 37.362640, 30.114637>,  <34.583088, 37.370907, 30.087326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344791, 37.362640, 30.114637>,  <33.947628, 37.348862, 30.160156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344791, 37.362640, 30.114637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117613, 0.424977, -0.897531,
		0.017442, 0.904548, 0.426014,
		0.992906, 0.034450, -0.113799,
		34.642662, 37.372974, 30.080498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031582, 38.023624, 29.893755>,  <33.947628, 37.348862, 30.160156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031582, 38.023624, 29.893755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360531, 37.823917, 29.784618>,  <34.557899, 37.704094, 29.719137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360531, 37.823917, 29.784618>,  <34.031582, 38.023624, 29.893755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360531, 37.823917, 29.784618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030706, 0.517797, -0.854952,
		0.568126, 0.694708, 0.441150,
		0.822369, -0.499267, -0.272842,
		34.607243, 37.674137, 29.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471802, 38.572475, 29.592333>,  <34.031582, 38.023624, 29.893755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471802, 38.572475, 29.592333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576061, 38.204414, 29.475449>,  <34.638618, 37.983578, 29.405317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576061, 38.204414, 29.475449>,  <34.471802, 38.572475, 29.592333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576061, 38.204414, 29.475449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067633, 0.319335, -0.945225,
		0.963062, 0.226609, 0.145467,
		0.260649, -0.920149, -0.292213,
		34.654255, 37.928371, 29.387785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041149, 38.637062, 29.173471>,  <34.471802, 38.572475, 29.592333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041149, 38.637062, 29.173471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931839, 38.271351, 29.053862>,  <34.866253, 38.051926, 28.982096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931839, 38.271351, 29.053862>,  <35.041149, 38.637062, 29.173471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931839, 38.271351, 29.053862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013230, 0.314401, -0.949198,
		0.961845, -0.255436, -0.098014,
		-0.273275, -0.914278, -0.299025,
		34.849857, 37.997066, 28.964153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341030, 38.636177, 28.588259>,  <35.041149, 38.637062, 29.173471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341030, 38.636177, 28.588259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103516, 38.314495, 28.577856>,  <34.961006, 38.121487, 28.571615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103516, 38.314495, 28.577856>,  <35.341030, 38.636177, 28.588259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103516, 38.314495, 28.577856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185654, 0.168384, -0.968080,
		0.782910, -0.570006, -0.249287,
		-0.593788, -0.804201, -0.026005,
		34.925381, 38.073235, 28.570055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606304, 38.266552, 28.001072>,  <35.341030, 38.636177, 28.588259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606304, 38.266552, 28.001072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244694, 38.111752, 28.073698>,  <35.027729, 38.018871, 28.117273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244694, 38.111752, 28.073698>,  <35.606304, 38.266552, 28.001072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244694, 38.111752, 28.073698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223739, 0.066449, -0.972381,
		0.364249, -0.919681, -0.146660,
		-0.904026, -0.387003, 0.181565,
		34.973484, 37.995651, 28.128168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539608, 37.703773, 27.511700>,  <35.606304, 38.266552, 28.001072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539608, 37.703773, 27.511700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176243, 37.832245, 27.618752>,  <34.958221, 37.909328, 27.682983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176243, 37.832245, 27.618752>,  <35.539608, 37.703773, 27.511700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176243, 37.832245, 27.618752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306198, -0.075283, -0.948986,
		-0.284643, -0.944023, 0.166731,
		-0.908417, 0.321175, 0.267629,
		34.903717, 37.928596, 27.699041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090000, 37.394299, 27.087891>,  <35.539608, 37.703773, 27.511700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090000, 37.394299, 27.087891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868740, 37.708408, 27.199148>,  <34.735985, 37.896873, 27.265903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868740, 37.708408, 27.199148>,  <35.090000, 37.394299, 27.087891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868740, 37.708408, 27.199148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437339, 0.010445, -0.899236,
		-0.709052, -0.619060, 0.337653,
		-0.553155, 0.785274, 0.278145,
		34.702793, 37.943989, 27.282591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520798, 37.258976, 26.820864>,  <35.090000, 37.394299, 27.087891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520798, 37.258976, 26.820864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480057, 37.649002, 26.899731>,  <34.455612, 37.883018, 26.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480057, 37.649002, 26.899731>,  <34.520798, 37.258976, 26.820864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480057, 37.649002, 26.899731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503858, 0.120334, -0.855364,
		-0.857761, -0.186464, 0.479038,
		-0.101850, 0.975065, 0.197169,
		34.449501, 37.941521, 26.958881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782597, 37.494019, 26.654577>,  <34.520798, 37.258976, 26.820864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782597, 37.494019, 26.654577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996197, 37.831306, 26.629845>,  <34.124355, 38.033680, 26.615005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996197, 37.831306, 26.629845>,  <33.782597, 37.494019, 26.654577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996197, 37.831306, 26.629845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409314, 0.193837, -0.891566,
		-0.739802, 0.501404, 0.448651,
		0.534000, 0.843221, -0.061831,
		34.156395, 38.084274, 26.611296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252861, 38.036182, 26.435604>,  <33.782597, 37.494019, 26.654577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252861, 38.036182, 26.435604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627689, 38.151432, 26.356741>,  <33.852589, 38.220581, 26.309423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627689, 38.151432, 26.356741>,  <33.252861, 38.036182, 26.435604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627689, 38.151432, 26.356741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302105, 0.386137, -0.871568,
		-0.174992, 0.876288, 0.448884,
		0.937075, 0.288127, -0.197160,
		33.908813, 38.237869, 26.297592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251884, 38.679287, 26.388657>,  <33.252861, 38.036182, 26.435604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251884, 38.679287, 26.388657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564945, 38.550083, 26.175823>,  <33.752781, 38.472561, 26.048124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564945, 38.550083, 26.175823>,  <33.251884, 38.679287, 26.388657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564945, 38.550083, 26.175823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422800, 0.351482, -0.835285,
		0.456825, 0.878705, 0.138519,
		0.782656, -0.323013, -0.532082,
		33.799744, 38.453178, 26.016199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536362, 39.251369, 25.973635>,  <33.251884, 38.679287, 26.388657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536362, 39.251369, 25.973635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639194, 38.913979, 25.784977>,  <33.700893, 38.711544, 25.671782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639194, 38.913979, 25.784977>,  <33.536362, 39.251369, 25.973635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639194, 38.913979, 25.784977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144106, 0.449131, -0.881768,
		0.955584, 0.294655, -0.006086,
		0.257084, -0.843481, -0.471644,
		33.716320, 38.660934, 25.643484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908443, 39.516640, 25.388687>,  <33.536362, 39.251369, 25.973635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908443, 39.516640, 25.388687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840290, 39.136974, 25.282820>,  <33.799397, 38.909176, 25.219299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840290, 39.136974, 25.282820>,  <33.908443, 39.516640, 25.388687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840290, 39.136974, 25.282820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220993, 0.298563, -0.928451,
		0.960276, -0.099706, -0.260631,
		-0.170387, -0.949167, -0.264668,
		33.789173, 38.852222, 25.203419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301346, 39.359894, 24.751469>,  <33.908443, 39.516640, 25.388687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301346, 39.359894, 24.751469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027290, 39.068562, 24.755812>,  <33.862858, 38.893764, 24.758417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027290, 39.068562, 24.755812>,  <34.301346, 39.359894, 24.751469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027290, 39.068562, 24.755812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161925, 0.137758, -0.977140,
		0.710183, -0.671239, -0.212319,
		-0.685143, -0.728328, 0.010857,
		33.821747, 38.850063, 24.759069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333752, 39.120491, 24.073368>,  <34.301346, 39.359894, 24.751469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333752, 39.120491, 24.073368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996750, 38.956360, 24.212982>,  <33.794548, 38.857883, 24.296751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996750, 38.956360, 24.212982>,  <34.333752, 39.120491, 24.073368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996750, 38.956360, 24.212982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342358, -0.092407, -0.935014,
		0.415911, -0.907246, -0.062625,
		-0.842501, -0.410323, 0.349036,
		33.743999, 38.833263, 24.317694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237274, 38.422054, 23.819036>,  <34.333752, 39.120491, 24.073368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237274, 38.422054, 23.819036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867397, 38.540916, 23.914238>,  <33.645470, 38.612232, 23.971359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867397, 38.540916, 23.914238>,  <34.237274, 38.422054, 23.819036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867397, 38.540916, 23.914238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290285, -0.145812, -0.945766,
		-0.246333, -0.943631, 0.221090,
		-0.924692, 0.297153, 0.238004,
		33.589989, 38.630062, 23.985640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753979, 37.826710, 23.617777>,  <34.237274, 38.422054, 23.819036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753979, 37.826710, 23.617777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551559, 38.170815, 23.642654>,  <33.430107, 38.377277, 23.657581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551559, 38.170815, 23.642654>,  <33.753979, 37.826710, 23.617777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551559, 38.170815, 23.642654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347120, -0.137120, -0.927742,
		-0.789573, -0.491069, 0.368002,
		-0.506046, 0.860261, 0.062194,
		33.399746, 38.428894, 23.661312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074188, 37.700241, 23.366255>,  <33.753979, 37.826710, 23.617777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074188, 37.700241, 23.366255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091183, 38.098095, 23.328537>,  <33.101379, 38.336807, 23.305906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091183, 38.098095, 23.328537>,  <33.074188, 37.700241, 23.366255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091183, 38.098095, 23.328537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332090, -0.074956, -0.940265,
		-0.942290, 0.071263, 0.327125,
		0.042486, 0.994637, -0.094296,
		33.103928, 38.396484, 23.300249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330063, 37.919659, 23.128857>,  <33.074188, 37.700241, 23.366255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330063, 37.919659, 23.128857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605049, 38.187977, 23.017553>,  <32.770042, 38.348969, 22.950771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605049, 38.187977, 23.017553>,  <32.330063, 37.919659, 23.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605049, 38.187977, 23.017553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259436, -0.131025, -0.956831,
		-0.678294, 0.729979, 0.083953,
		0.687466, 0.670793, -0.278256,
		32.811291, 38.389214, 22.934076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045448, 38.109734, 22.563925>,  <32.330063, 37.919659, 23.128857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045448, 38.109734, 22.563925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409958, 38.272362, 22.537748>,  <32.628662, 38.369938, 22.522043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409958, 38.272362, 22.537748>,  <32.045448, 38.109734, 22.563925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409958, 38.272362, 22.537748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110806, 0.089033, -0.989846,
		-0.396612, 0.909273, 0.126183,
		0.911275, 0.406566, -0.065442,
		32.683342, 38.394333, 22.518116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985868, 38.851032, 22.153479>,  <32.045448, 38.109734, 22.563925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985868, 38.851032, 22.153479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363419, 38.722649, 22.122272>,  <32.589951, 38.645618, 22.103550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363419, 38.722649, 22.122272>,  <31.985868, 38.851032, 22.153479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363419, 38.722649, 22.122272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087994, -0.016684, -0.995981,
		0.318364, 0.946947, -0.043990,
		0.943876, -0.320955, -0.078014,
		32.646580, 38.626362, 22.098867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304432, 39.351624, 21.664959>,  <31.985868, 38.851032, 22.153479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304432, 39.351624, 21.664959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542976, 39.030594, 21.671047>,  <32.686104, 38.837975, 21.674700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542976, 39.030594, 21.671047>,  <32.304432, 39.351624, 21.664959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542976, 39.030594, 21.671047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060359, 0.025928, -0.997840,
		0.800447, 0.595987, 0.063905,
		0.596357, -0.802575, 0.015219,
		32.721882, 38.789822, 21.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845154, 39.587852, 21.272835>,  <32.304432, 39.351624, 21.664959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845154, 39.587852, 21.272835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832001, 39.188168, 21.281803>,  <32.824108, 38.948357, 21.287184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832001, 39.188168, 21.281803>,  <32.845154, 39.587852, 21.272835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832001, 39.188168, 21.281803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093099, -0.025398, -0.995333,
		0.995114, -0.030638, 0.093860,
		-0.032878, -0.999208, 0.022422,
		32.822136, 38.888405, 21.288530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416603, 39.352932, 20.738844>,  <32.845154, 39.587852, 21.272835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416603, 39.352932, 20.738844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190628, 39.027042, 20.791098>,  <33.055042, 38.831509, 20.822451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190628, 39.027042, 20.791098>,  <33.416603, 39.352932, 20.738844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190628, 39.027042, 20.791098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154880, -0.260210, -0.953049,
		0.810468, -0.518181, 0.273187,
		-0.564938, -0.814727, 0.130636,
		33.021145, 38.782623, 20.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839962, 38.762825, 20.592661>,  <33.416603, 39.352932, 20.738844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839962, 38.762825, 20.592661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466206, 38.620872, 20.580156>,  <33.241951, 38.535702, 20.572655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466206, 38.620872, 20.580156>,  <33.839962, 38.762825, 20.592661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466206, 38.620872, 20.580156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222137, -0.511775, -0.829905,
		0.278520, -0.782397, 0.557029,
		-0.934389, -0.354882, -0.031260,
		33.185890, 38.514408, 20.570778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823364, 38.105011, 20.717733>,  <33.839962, 38.762825, 20.592661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823364, 38.105011, 20.717733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491623, 38.168522, 20.503456>,  <33.292580, 38.206631, 20.374889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491623, 38.168522, 20.503456>,  <33.823364, 38.105011, 20.717733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491623, 38.168522, 20.503456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442564, -0.398553, -0.803301,
		-0.341053, -0.903296, 0.260268,
		-0.829349, 0.158782, -0.535694,
		33.242817, 38.216156, 20.342749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701813, 37.468719, 20.303333>,  <33.823364, 38.105011, 20.717733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701813, 37.468719, 20.303333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520443, 37.788715, 20.146147>,  <33.411621, 37.980713, 20.051834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520443, 37.788715, 20.146147>,  <33.701813, 37.468719, 20.303333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520443, 37.788715, 20.146147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170899, -0.354678, -0.919237,
		-0.874759, -0.483958, 0.024100,
		-0.453420, 0.799993, -0.392966,
		33.384418, 38.028713, 20.028257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097843, 37.165630, 20.263504>,  <33.701813, 37.468719, 20.303333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097843, 37.165630, 20.263504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251434, 36.871929, 20.039564>,  <33.343590, 36.695709, 19.905199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251434, 36.871929, 20.039564>,  <33.097843, 37.165630, 20.263504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251434, 36.871929, 20.039564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487800, -0.353501, 0.798179,
		-0.783975, -0.579575, 0.222435,
		0.383973, -0.734255, -0.559852,
		33.366627, 36.651653, 19.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035507, 36.553635, 20.657322>,  <33.097843, 37.165630, 20.263504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035507, 36.553635, 20.657322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317810, 36.501862, 20.378708>,  <33.487190, 36.470798, 20.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317810, 36.501862, 20.378708>,  <33.035507, 36.553635, 20.657322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317810, 36.501862, 20.378708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623119, -0.354403, 0.697224,
		-0.337094, -0.926092, -0.169472,
		0.705755, -0.129429, -0.696533,
		33.529537, 36.463032, 20.169748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345478, 36.060692, 20.863428>,  <33.035507, 36.553635, 20.657322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345478, 36.060692, 20.863428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617535, 36.191647, 20.601063>,  <33.780769, 36.270218, 20.443644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617535, 36.191647, 20.601063>,  <33.345478, 36.060692, 20.863428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617535, 36.191647, 20.601063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725197, -0.169637, 0.667317,
		0.107201, -0.929539, -0.352795,
		0.680145, 0.327383, -0.655914,
		33.821579, 36.289860, 20.404289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936707, 35.599346, 20.788612>,  <33.345478, 36.060692, 20.863428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936707, 35.599346, 20.788612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084831, 35.941071, 20.642719>,  <34.173706, 36.146103, 20.555183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084831, 35.941071, 20.642719>,  <33.936707, 35.599346, 20.788612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084831, 35.941071, 20.642719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833400, -0.132139, 0.536641,
		0.410262, -0.502691, -0.760912,
		0.370311, 0.854308, -0.364731,
		34.195923, 36.197361, 20.533300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612354, 35.561867, 20.585453>,  <33.936707, 35.599346, 20.788612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612354, 35.561867, 20.585453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582420, 35.954506, 20.655724>,  <34.564461, 36.190090, 20.697886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582420, 35.954506, 20.655724>,  <34.612354, 35.561867, 20.585453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582420, 35.954506, 20.655724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852091, -0.028571, 0.522614,
		0.518017, 0.188801, -0.834274,
		-0.074834, 0.981600, 0.175676,
		34.559971, 36.248985, 20.708426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321480, 35.840328, 20.711670>,  <34.612354, 35.561867, 20.585453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321480, 35.840328, 20.711670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101505, 36.154739, 20.824615>,  <34.969521, 36.343388, 20.892382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101505, 36.154739, 20.824615>,  <35.321480, 35.840328, 20.711670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101505, 36.154739, 20.824615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643443, 0.183178, 0.743254,
		0.532498, 0.590425, -0.606502,
		-0.549934, 0.786031, 0.282363,
		34.936523, 36.390549, 20.909325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723576, 36.435772, 20.733912>,  <35.321480, 35.840328, 20.711670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723576, 36.435772, 20.733912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409027, 36.487049, 20.975634>,  <35.220299, 36.517815, 21.120667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409027, 36.487049, 20.975634>,  <35.723576, 36.435772, 20.733912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409027, 36.487049, 20.975634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617489, 0.134634, 0.774971,
		0.017988, 0.982568, -0.185031,
		-0.786373, 0.128195, 0.604304,
		35.173115, 36.525509, 21.156925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764584, 37.029713, 21.077957>,  <35.723576, 36.435772, 20.733912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764584, 37.029713, 21.077957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521149, 36.806164, 21.303267>,  <35.375088, 36.672035, 21.438452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521149, 36.806164, 21.303267>,  <35.764584, 37.029713, 21.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521149, 36.806164, 21.303267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485268, 0.299504, 0.821470,
		-0.627800, 0.773278, 0.088928,
		-0.608590, -0.558873, 0.563276,
		35.338573, 36.638500, 21.472250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667332, 37.475300, 21.726229>,  <35.764584, 37.029713, 21.077957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667332, 37.475300, 21.726229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570107, 37.105076, 21.842340>,  <35.511772, 36.882942, 21.912006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570107, 37.105076, 21.842340>,  <35.667332, 37.475300, 21.726229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570107, 37.105076, 21.842340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545599, 0.116978, 0.829842,
		-0.802024, 0.360079, 0.476551,
		-0.243063, -0.925559, 0.290278,
		35.497189, 36.827408, 21.929424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450520, 37.491718, 22.432926>,  <35.667332, 37.475300, 21.726229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450520, 37.491718, 22.432926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554043, 37.111885, 22.362141>,  <35.616158, 36.883987, 22.319670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554043, 37.111885, 22.362141>,  <35.450520, 37.491718, 22.432926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554043, 37.111885, 22.362141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486789, -0.030017, 0.873004,
		-0.834298, -0.312088, 0.454475,
		0.258812, -0.949579, -0.176964,
		35.631687, 36.827011, 22.309052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441612, 37.208652, 23.018585>,  <35.450520, 37.491718, 22.432926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441612, 37.208652, 23.018585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633984, 36.918522, 22.821562>,  <35.749409, 36.744446, 22.703348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633984, 36.918522, 22.821562>,  <35.441612, 37.208652, 23.018585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633984, 36.918522, 22.821562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527221, -0.209626, 0.823465,
		-0.700530, -0.655717, 0.281589,
		0.480931, -0.725322, -0.492557,
		35.778263, 36.700924, 22.673794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360775, 36.569736, 23.316257>,  <35.441612, 37.208652, 23.018585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360775, 36.569736, 23.316257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707981, 36.554260, 23.118246>,  <35.916306, 36.544975, 22.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707981, 36.554260, 23.118246>,  <35.360775, 36.569736, 23.316257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707981, 36.554260, 23.118246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492062, -0.066500, 0.868017,
		-0.066500, -0.997036, -0.038687,
		-0.868017, 0.038687, 0.495026,
		35.968388, 36.542656, 22.969738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728367, 35.932858, 23.513630>,  <35.360775, 36.569736, 23.316257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728367, 35.932858, 23.513630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977287, 36.226200, 23.404137>,  <36.126640, 36.402206, 23.338440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977287, 36.226200, 23.404137>,  <35.728367, 35.932858, 23.513630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977287, 36.226200, 23.404137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470485, -0.070935, 0.879552,
		0.625606, -0.676136, -0.389175,
		0.622303, 0.733355, -0.273734,
		36.163979, 36.446205, 23.322016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405701, 35.690815, 23.675964>,  <35.728367, 35.932858, 23.513630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405701, 35.690815, 23.675964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438152, 36.089268, 23.689444>,  <36.457623, 36.328339, 23.697531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438152, 36.089268, 23.689444>,  <36.405701, 35.690815, 23.675964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438152, 36.089268, 23.689444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556014, -0.073290, 0.827935,
		0.827204, -0.048433, -0.559811,
		0.081128, 0.996134, 0.033697,
		36.462490, 36.388107, 23.699553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053295, 35.803928, 24.053425>,  <36.405701, 35.690815, 23.675964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053295, 35.803928, 24.053425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867321, 36.157082, 24.079817>,  <36.755737, 36.368973, 24.095652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867321, 36.157082, 24.079817>,  <37.053295, 35.803928, 24.053425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867321, 36.157082, 24.079817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374888, 0.128810, 0.918078,
		0.802058, 0.451578, -0.390871,
		-0.464932, 0.882885, 0.065978,
		36.727840, 36.421947, 24.099609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500145, 36.269173, 24.362312>,  <37.053295, 35.803928, 24.053425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500145, 36.269173, 24.362312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136253, 36.425480, 24.418436>,  <36.917915, 36.519264, 24.452110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136253, 36.425480, 24.418436>,  <37.500145, 36.269173, 24.362312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136253, 36.425480, 24.418436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183753, 0.075899, 0.980038,
		0.372316, 0.917356, -0.140852,
		-0.909734, 0.390766, 0.140308,
		36.863335, 36.542709, 24.460529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587070, 36.874634, 24.830259>,  <37.500145, 36.269173, 24.362312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587070, 36.874634, 24.830259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211655, 36.740341, 24.862305>,  <36.986404, 36.659763, 24.881533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211655, 36.740341, 24.862305>,  <37.587070, 36.874634, 24.830259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211655, 36.740341, 24.862305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028130, 0.156931, 0.987209,
		-0.344013, 0.928792, -0.137842,
		-0.938543, -0.335736, 0.080113,
		36.930092, 36.639622, 24.886339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329659, 37.274773, 25.431757>,  <37.587070, 36.874634, 24.830259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329659, 37.274773, 25.431757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098946, 36.954739, 25.365808>,  <36.960518, 36.762718, 25.326241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098946, 36.954739, 25.365808>,  <37.329659, 37.274773, 25.431757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098946, 36.954739, 25.365808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014180, -0.191987, 0.981295,
		-0.816775, 0.568331, 0.099389,
		-0.576782, -0.800088, -0.164869,
		36.925911, 36.714714, 25.316347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782570, 37.450787, 25.875175>,  <37.329659, 37.274773, 25.431757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782570, 37.450787, 25.875175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732719, 37.060520, 25.803020>,  <36.702808, 36.826359, 25.759727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732719, 37.060520, 25.803020>,  <36.782570, 37.450787, 25.875175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732719, 37.060520, 25.803020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275308, -0.140662, 0.951010,
		-0.953244, 0.168180, -0.251079,
		-0.124623, -0.975669, -0.180387,
		36.695332, 36.767818, 25.748905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106285, 37.311363, 26.077190>,  <36.782570, 37.450787, 25.875175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106285, 37.311363, 26.077190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294144, 36.959053, 26.052961>,  <36.406860, 36.747669, 26.038424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294144, 36.959053, 26.052961>,  <36.106285, 37.311363, 26.077190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294144, 36.959053, 26.052961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349973, -0.248725, 0.903136,
		-0.810523, -0.402959, -0.425060,
		0.469650, -0.880772, -0.060572,
		36.435040, 36.694820, 26.034790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640751, 36.868092, 26.309105>,  <36.106285, 37.311363, 26.077190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640751, 36.868092, 26.309105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989311, 36.685287, 26.380442>,  <36.198448, 36.575603, 26.423244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989311, 36.685287, 26.380442>,  <35.640751, 36.868092, 26.309105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989311, 36.685287, 26.380442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375579, -0.387607, 0.841844,
		-0.315608, -0.800562, -0.509404,
		0.871397, -0.457014, 0.178342,
		36.250729, 36.548183, 26.433945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470318, 36.244598, 26.710245>,  <35.640751, 36.868092, 26.309105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470318, 36.244598, 26.710245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862690, 36.246704, 26.787970>,  <36.098114, 36.247967, 26.834604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862690, 36.246704, 26.787970>,  <35.470318, 36.244598, 26.710245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862690, 36.246704, 26.787970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182379, -0.320875, 0.929396,
		0.067245, -0.947107, -0.313794,
		0.980926, 0.005268, 0.194309,
		36.156967, 36.248283, 26.846262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621319, 35.631386, 27.206284>,  <35.470318, 36.244598, 26.710245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621319, 35.631386, 27.206284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917870, 35.894459, 27.259676>,  <36.095802, 36.052303, 27.291712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917870, 35.894459, 27.259676>,  <35.621319, 35.631386, 27.206284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917870, 35.894459, 27.259676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052740, -0.141189, 0.988577,
		0.669012, -0.739950, -0.069988,
		0.741379, 0.657678, 0.133482,
		36.140282, 36.091763, 27.299721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060791, 35.269936, 27.556494>,  <35.621319, 35.631386, 27.206284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060791, 35.269936, 27.556494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180923, 35.647491, 27.611448>,  <36.253002, 35.874023, 27.644421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180923, 35.647491, 27.611448>,  <36.060791, 35.269936, 27.556494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180923, 35.647491, 27.611448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025850, -0.152037, 0.988037,
		0.953484, -0.293190, -0.070061,
		0.300334, 0.943888, 0.137386,
		36.271023, 35.930656, 27.652664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504269, 35.192291, 28.105804>,  <36.060791, 35.269936, 27.556494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504269, 35.192291, 28.105804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431705, 35.585564, 28.097416>,  <36.388168, 35.821529, 28.092382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431705, 35.585564, 28.097416>,  <36.504269, 35.192291, 28.105804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431705, 35.585564, 28.097416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174407, 0.053152, 0.983238,
		0.967818, 0.174713, -0.181117,
		-0.181411, 0.983184, -0.020970,
		36.377281, 35.880520, 28.091125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069725, 35.364521, 28.500864>,  <36.504269, 35.192291, 28.105804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069725, 35.364521, 28.500864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840893, 35.692558, 28.495499>,  <36.703594, 35.889381, 28.492279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840893, 35.692558, 28.495499>,  <37.069725, 35.364521, 28.500864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840893, 35.692558, 28.495499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280817, 0.211207, 0.936233,
		0.770627, 0.531833, -0.351122,
		-0.572080, 0.820088, -0.013414,
		36.669270, 35.938583, 28.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506699, 35.987202, 28.714901>,  <37.069725, 35.364521, 28.500864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506699, 35.987202, 28.714901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121132, 36.078190, 28.770226>,  <36.889793, 36.132782, 28.803419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121132, 36.078190, 28.770226>,  <37.506699, 35.987202, 28.714901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121132, 36.078190, 28.770226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190439, 0.226139, 0.955298,
		0.186020, 0.947164, -0.261297,
		-0.963914, 0.227466, 0.138310,
		36.831959, 36.146431, 28.811718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421726, 36.726715, 28.904593>,  <37.506699, 35.987202, 28.714901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421726, 36.726715, 28.904593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100342, 36.524239, 29.029953>,  <36.907513, 36.402752, 29.105169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100342, 36.524239, 29.029953>,  <37.421726, 36.726715, 28.904593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100342, 36.524239, 29.029953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133337, 0.360043, 0.923358,
		-0.580232, 0.783671, -0.221787,
		-0.803462, -0.506189, 0.313401,
		36.859303, 36.372383, 29.123974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057041, 37.215706, 29.447918>,  <37.421726, 36.726715, 28.904593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057041, 37.215706, 29.447918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904278, 36.852169, 29.515036>,  <36.812618, 36.634048, 29.555305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904278, 36.852169, 29.515036>,  <37.057041, 37.215706, 29.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904278, 36.852169, 29.515036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053580, 0.159479, 0.985746,
		-0.922646, 0.385456, -0.012211,
		-0.381909, -0.908840, 0.167795,
		36.789703, 36.579517, 29.565374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575901, 37.331230, 29.954527>,  <37.057041, 37.215706, 29.447918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575901, 37.331230, 29.954527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681759, 36.945492, 29.953474>,  <36.745274, 36.714050, 29.952843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681759, 36.945492, 29.953474>,  <36.575901, 37.331230, 29.954527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681759, 36.945492, 29.953474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245909, 0.064845, 0.967121,
		-0.932465, -0.256594, 0.254301,
		0.264648, -0.964342, -0.002633,
		36.761154, 36.656189, 29.952684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340759, 37.082981, 30.555424>,  <36.575901, 37.331230, 29.954527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340759, 37.082981, 30.555424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614540, 36.815231, 30.439859>,  <36.778809, 36.654583, 30.370520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614540, 36.815231, 30.439859>,  <36.340759, 37.082981, 30.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614540, 36.815231, 30.439859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326765, -0.072593, 0.942314,
		-0.651730, -0.739374, 0.169041,
		0.684451, -0.669371, -0.288912,
		36.819874, 36.614422, 30.353186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247993, 36.507473, 30.979504>,  <36.340759, 37.082981, 30.555424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247993, 36.507473, 30.979504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617493, 36.506290, 30.826309>,  <36.839191, 36.505581, 30.734392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617493, 36.506290, 30.826309>,  <36.247993, 36.507473, 30.979504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617493, 36.506290, 30.826309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357982, -0.348805, 0.866132,
		-0.136151, -0.937191, -0.321149,
		0.923749, -0.002959, -0.382987,
		36.894619, 36.505402, 30.711412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559490, 35.830383, 31.157263>,  <36.247993, 36.507473, 30.979504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559490, 35.830383, 31.157263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873306, 36.060791, 31.065439>,  <37.061596, 36.199036, 31.010345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873306, 36.060791, 31.065439>,  <36.559490, 35.830383, 31.157263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873306, 36.060791, 31.065439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477951, -0.325907, 0.815688,
		0.395035, -0.749661, -0.530995,
		0.784545, 0.576015, -0.229556,
		37.108669, 36.233597, 30.996572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143925, 35.421852, 31.379732>,  <36.559490, 35.830383, 31.157263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143925, 35.421852, 31.379732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300690, 35.789845, 31.377197>,  <37.394749, 36.010639, 31.375675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300690, 35.789845, 31.377197>,  <37.143925, 35.421852, 31.379732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300690, 35.789845, 31.377197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391683, -0.160616, 0.905973,
		0.832458, -0.357548, -0.423288,
		0.391916, 0.919979, -0.006339,
		37.418266, 36.065838, 31.375296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955547, 35.376656, 31.516857>,  <37.143925, 35.421852, 31.379732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955547, 35.376656, 31.516857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834564, 35.745579, 31.613083>,  <37.761974, 35.966930, 31.670818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834564, 35.745579, 31.613083>,  <37.955547, 35.376656, 31.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834564, 35.745579, 31.613083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545221, -0.039608, 0.837356,
		0.781827, 0.384425, -0.490881,
		-0.302458, 0.922306, 0.240563,
		37.743828, 36.022270, 31.685251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583061, 35.707848, 31.867208>,  <37.955547, 35.376656, 31.516857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583061, 35.707848, 31.867208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280640, 35.938549, 31.990971>,  <38.099186, 36.076969, 32.065228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280640, 35.938549, 31.990971>,  <38.583061, 35.707848, 31.867208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280640, 35.938549, 31.990971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390439, 0.018028, 0.920452,
		0.525300, 0.816716, -0.238818,
		-0.756054, 0.576758, 0.309408,
		38.053822, 36.111576, 32.083794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914787, 36.158768, 32.346031>,  <38.583061, 35.707848, 31.867208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914787, 36.158768, 32.346031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526878, 36.209717, 32.429287>,  <38.294132, 36.240288, 32.479240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526878, 36.209717, 32.429287>,  <38.914787, 36.158768, 32.346031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526878, 36.209717, 32.429287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212062, 0.017930, 0.977092,
		0.120725, 0.991693, -0.044399,
		-0.969771, 0.127375, 0.208136,
		38.235947, 36.247929, 32.491726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855934, 36.724285, 32.743118>,  <38.914787, 36.158768, 32.346031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855934, 36.724285, 32.743118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530540, 36.513371, 32.841267>,  <38.335304, 36.386822, 32.900154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530540, 36.513371, 32.841267>,  <38.855934, 36.724285, 32.743118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530540, 36.513371, 32.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261321, 0.045513, 0.964178,
		-0.519565, 0.848468, 0.100767,
		-0.813489, -0.527285, 0.245369,
		38.286495, 36.355186, 32.914879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565796, 37.048706, 33.295624>,  <38.855934, 36.724285, 32.743118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565796, 37.048706, 33.295624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410164, 36.682194, 33.333664>,  <38.316784, 36.462284, 33.356487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410164, 36.682194, 33.333664>,  <38.565796, 37.048706, 33.295624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410164, 36.682194, 33.333664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317489, -0.036468, 0.947560,
		-0.864766, 0.398868, 0.305098,
		-0.389078, -0.916283, 0.095100,
		38.293442, 36.407310, 33.362194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315807, 37.040257, 33.968365>,  <38.565796, 37.048706, 33.295624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315807, 37.040257, 33.968365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366169, 36.660503, 33.853245>,  <38.396385, 36.432652, 33.784172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366169, 36.660503, 33.853245>,  <38.315807, 37.040257, 33.968365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366169, 36.660503, 33.853245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426289, -0.210178, 0.879832,
		-0.895782, -0.233461, 0.378246,
		0.125908, -0.949379, -0.287795,
		38.403942, 36.375690, 33.766907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161800, 36.602814, 34.472256>,  <38.315807, 37.040257, 33.968365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161800, 36.602814, 34.472256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405281, 36.368721, 34.257973>,  <38.551369, 36.228264, 34.129402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405281, 36.368721, 34.257973>,  <38.161800, 36.602814, 34.472256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405281, 36.368721, 34.257973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497846, -0.244000, 0.832234,
		-0.617764, -0.773283, 0.142832,
		0.608701, -0.585233, -0.535710,
		38.587891, 36.193150, 34.097260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181644, 35.950687, 34.796799>,  <38.161800, 36.602814, 34.472256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181644, 35.950687, 34.796799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507034, 35.894844, 34.570957>,  <38.702267, 35.861336, 34.435452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507034, 35.894844, 34.570957>,  <38.181644, 35.950687, 34.796799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507034, 35.894844, 34.570957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467628, -0.420204, 0.777658,
		-0.345815, -0.896626, -0.276539,
		0.813471, -0.139609, -0.564601,
		38.751076, 35.852962, 34.401577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352108, 35.343124, 34.936665>,  <38.181644, 35.950687, 34.796799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352108, 35.343124, 34.936665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693672, 35.506386, 34.807522>,  <38.898613, 35.604343, 34.730038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693672, 35.506386, 34.807522>,  <38.352108, 35.343124, 34.936665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693672, 35.506386, 34.807522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492145, -0.431659, 0.755952,
		0.169184, -0.804411, -0.569473,
		0.853915, 0.408158, -0.322857,
		38.949848, 35.628834, 34.710663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963703, 34.826920, 34.872623>,  <38.352108, 35.343124, 34.936665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963703, 34.826920, 34.872623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095154, 35.188850, 34.980911>,  <39.174023, 35.406010, 35.045883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095154, 35.188850, 34.980911>,  <38.963703, 34.826920, 34.872623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095154, 35.188850, 34.980911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496064, -0.409279, 0.765775,
		0.803697, -0.117357, -0.583352,
		0.328622, 0.904831, 0.270719,
		39.193741, 35.460300, 35.062126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621441, 34.674309, 35.053490>,  <38.963703, 34.826920, 34.872623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621441, 34.674309, 35.053490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569157, 35.054832, 35.165146>,  <39.537785, 35.283146, 35.232140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569157, 35.054832, 35.165146>,  <39.621441, 34.674309, 35.053490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569157, 35.054832, 35.165146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590425, -0.151490, 0.792748,
		0.796437, 0.268434, -0.541877,
		-0.130711, 0.951312, 0.279142,
		39.529942, 35.340225, 35.248890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140160, 34.841175, 35.347149>,  <39.621441, 34.674309, 35.053490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140160, 34.841175, 35.347149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944378, 35.154564, 35.500305>,  <39.826908, 35.342598, 35.592201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944378, 35.154564, 35.500305>,  <40.140160, 34.841175, 35.347149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944378, 35.154564, 35.500305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584654, -0.030949, 0.810692,
		0.647006, 0.620655, -0.442913,
		-0.489452, 0.783473, 0.382893,
		39.797543, 35.389606, 35.615173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694996, 35.275673, 35.707890>,  <40.140160, 34.841175, 35.347149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694996, 35.275673, 35.707890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366169, 35.405987, 35.894684>,  <40.168873, 35.484173, 36.006760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366169, 35.405987, 35.894684>,  <40.694996, 35.275673, 35.707890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366169, 35.405987, 35.894684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541954, 0.196128, 0.817202,
		0.174640, 0.924878, -0.337788,
		-0.822063, 0.325782, 0.466990,
		40.119549, 35.503723, 36.034782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871849, 35.821774, 36.217274>,  <40.694996, 35.275673, 35.707890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871849, 35.821774, 36.217274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515293, 35.703255, 36.354462>,  <40.301361, 35.632141, 36.436775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515293, 35.703255, 36.354462>,  <40.871849, 35.821774, 36.217274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515293, 35.703255, 36.354462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317237, 0.132575, 0.939034,
		-0.323704, 0.945849, -0.024179,
		-0.891390, -0.296299, 0.342974,
		40.247875, 35.614365, 36.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437538, 36.398605, 36.670185>,  <40.871849, 35.821774, 36.217274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437538, 36.398605, 36.670185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337914, 36.030849, 36.791965>,  <40.278141, 35.810196, 36.865036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337914, 36.030849, 36.791965>,  <40.437538, 36.398605, 36.670185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337914, 36.030849, 36.791965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359572, 0.204112, 0.910520,
		-0.899265, 0.336246, 0.279751,
		-0.249058, -0.919390, 0.304455,
		40.263195, 35.755032, 36.883301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725533, 36.257622, 37.300472>,  <40.437538, 36.398605, 36.670185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725533, 36.257622, 37.300472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486626, 35.937157, 37.315495>,  <40.343281, 35.744877, 37.324509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486626, 35.937157, 37.315495>,  <40.725533, 36.257622, 37.300472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486626, 35.937157, 37.315495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432830, -0.282545, 0.856053,
		-0.675228, 0.527545, 0.515522,
		-0.597265, -0.801164, 0.037555,
		40.307446, 35.696808, 37.326759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321602, 36.181267, 37.933128>,  <40.725533, 36.257622, 37.300472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321602, 36.181267, 37.933128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418728, 35.831379, 37.765366>,  <40.477001, 35.621445, 37.664707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418728, 35.831379, 37.765366>,  <40.321602, 36.181267, 37.933128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418728, 35.831379, 37.765366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704841, -0.137969, 0.695818,
		-0.666514, -0.464567, 0.583041,
		0.242813, -0.874724, -0.419404,
		40.491573, 35.568962, 37.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227470, 35.843250, 38.492828>,  <40.321602, 36.181267, 37.933128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227470, 35.843250, 38.492828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442223, 35.605251, 38.253586>,  <40.571075, 35.462452, 38.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442223, 35.605251, 38.253586>,  <40.227470, 35.843250, 38.492828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442223, 35.605251, 38.253586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410936, -0.434729, 0.801337,
		-0.736812, -0.676006, 0.011110,
		0.536879, -0.595001, -0.598109,
		40.603287, 35.426750, 38.074154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226589, 35.061031, 38.726513>,  <40.227470, 35.843250, 38.492828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226589, 35.061031, 38.726513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557438, 35.165413, 38.527409>,  <40.755947, 35.228043, 38.407944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557438, 35.165413, 38.527409>,  <40.226589, 35.061031, 38.726513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557438, 35.165413, 38.527409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536892, -0.105008, 0.837090,
		0.166174, -0.959622, -0.226959,
		0.827123, 0.260956, -0.497764,
		40.805576, 35.243698, 38.378078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814922, 34.553482, 38.914818>,  <40.226589, 35.061031, 38.726513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814922, 34.553482, 38.914818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926838, 34.923199, 38.810974>,  <40.993988, 35.145031, 38.748669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926838, 34.923199, 38.810974>,  <40.814922, 34.553482, 38.914818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926838, 34.923199, 38.810974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496559, 0.092116, 0.863101,
		0.821675, -0.370397, -0.433194,
		0.279786, 0.924295, -0.259613,
		41.010773, 35.200485, 38.733089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546913, 34.600864, 39.043365>,  <40.814922, 34.553482, 38.914818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546913, 34.600864, 39.043365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428314, 34.982838, 39.037918>,  <41.357155, 35.212021, 39.034649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428314, 34.982838, 39.037918>,  <41.546913, 34.600864, 39.043365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428314, 34.982838, 39.037918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581072, 0.191694, 0.790955,
		0.757923, 0.226599, -0.611723,
		-0.296493, 0.954938, -0.013618,
		41.339367, 35.269318, 39.033833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071495, 34.987118, 39.293610>,  <41.546913, 34.600864, 39.043365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071495, 34.987118, 39.293610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785000, 35.266163, 39.300926>,  <41.613102, 35.433590, 39.305317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785000, 35.266163, 39.300926>,  <42.071495, 34.987118, 39.293610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785000, 35.266163, 39.300926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427024, 0.417389, 0.802145,
		0.551951, 0.582341, -0.596849,
		-0.716240, 0.697614, 0.018296,
		41.570129, 35.475449, 39.306416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405846, 35.646027, 39.238922>,  <42.071495, 34.987118, 39.293610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405846, 35.646027, 39.238922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069698, 35.685410, 39.452122>,  <41.868011, 35.709038, 39.580044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069698, 35.685410, 39.452122>,  <42.405846, 35.646027, 39.238922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069698, 35.685410, 39.452122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520924, 0.418377, 0.744042,
		-0.149742, 0.902921, -0.402877,
		-0.840366, 0.098454, 0.533002,
		41.817589, 35.714947, 39.612022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354984, 36.314510, 39.519276>,  <42.405846, 35.646027, 39.238922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354984, 36.314510, 39.519276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132698, 36.097313, 39.771095>,  <41.999329, 35.966995, 39.922188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132698, 36.097313, 39.771095>,  <42.354984, 36.314510, 39.519276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132698, 36.097313, 39.771095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480243, 0.408467, 0.776222,
		-0.678638, 0.733696, 0.033779,
		-0.555713, -0.542996, 0.629554,
		41.965984, 35.934414, 39.959961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187763, 36.833347, 40.015072>,  <42.354984, 36.314510, 39.519276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187763, 36.833347, 40.015072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142014, 36.466934, 40.168854>,  <42.114563, 36.247086, 40.261124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142014, 36.466934, 40.168854>,  <42.187763, 36.833347, 40.015072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142014, 36.466934, 40.168854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367554, 0.320517, 0.873025,
		-0.922942, 0.241161, 0.300032,
		-0.114375, -0.916030, 0.384458,
		42.107700, 36.192123, 40.284191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187187, 37.004539, 40.648899>,  <42.187763, 36.833347, 40.015072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187187, 37.004539, 40.648899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249714, 36.612938, 40.701244>,  <42.287231, 36.377979, 40.732651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249714, 36.612938, 40.701244>,  <42.187187, 37.004539, 40.648899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249714, 36.612938, 40.701244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342044, 0.177947, 0.922681,
		-0.926591, -0.099471, 0.362677,
		0.156318, -0.979000, 0.130861,
		42.296608, 36.319237, 40.740501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776463, 36.738163, 41.253029>,  <42.187187, 37.004539, 40.648899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776463, 36.738163, 41.253029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103382, 36.521206, 41.175228>,  <42.299534, 36.391029, 41.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103382, 36.521206, 41.175228>,  <41.776463, 36.738163, 41.253029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103382, 36.521206, 41.175228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370474, 0.236103, 0.898334,
		-0.441330, -0.806265, 0.393910,
		0.817298, -0.542395, -0.194501,
		42.348572, 36.358486, 41.116879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995705, 36.282688, 41.830135>,  <41.776463, 36.738163, 41.253029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995705, 36.282688, 41.830135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319435, 36.360123, 41.608318>,  <42.513672, 36.406586, 41.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319435, 36.360123, 41.608318>,  <41.995705, 36.282688, 41.830135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319435, 36.360123, 41.608318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482955, 0.318016, 0.815856,
		0.334301, -0.928109, 0.163878,
		0.809319, 0.193595, -0.554548,
		42.562233, 36.418198, 41.441956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519718, 35.963936, 42.135265>,  <41.995705, 36.282688, 41.830135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519718, 35.963936, 42.135265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687717, 36.265766, 41.933586>,  <42.788517, 36.446865, 41.812576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687717, 36.265766, 41.933586>,  <42.519718, 35.963936, 42.135265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687717, 36.265766, 41.933586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525765, 0.250531, 0.812899,
		0.739712, -0.606506, -0.291507,
		0.419997, 0.754576, -0.504201,
		42.813717, 36.492138, 41.782326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186604, 35.748535, 41.748779>,  <42.519718, 35.963936, 42.135265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186604, 35.748535, 41.748779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849689, 35.927608, 41.628693>,  <42.647541, 36.035053, 41.556641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849689, 35.927608, 41.628693>,  <43.186604, 35.748535, 41.748779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849689, 35.927608, 41.628693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016076, -0.577567, -0.816185,
		-0.538786, -0.682638, 0.493675,
		-0.842289, 0.447685, -0.300212,
		42.597004, 36.061916, 41.538628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944527, 35.282417, 41.136806>,  <43.186604, 35.748535, 41.748779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944527, 35.282417, 41.136806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671196, 35.573051, 41.165489>,  <42.507198, 35.747433, 41.182701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671196, 35.573051, 41.165489>,  <42.944527, 35.282417, 41.136806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671196, 35.573051, 41.165489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419502, -0.310335, -0.853059,
		-0.597564, -0.613001, 0.516863,
		-0.683327, 0.726582, 0.071711,
		42.466198, 35.791027, 41.187004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310238, 34.984715, 41.068932>,  <42.944527, 35.282417, 41.136806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310238, 34.984715, 41.068932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268539, 35.367348, 40.960052>,  <42.243523, 35.596928, 40.894726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268539, 35.367348, 40.960052>,  <42.310238, 34.984715, 41.068932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268539, 35.367348, 40.960052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397213, -0.290952, -0.870384,
		-0.911787, 0.017388, 0.410295,
		-0.104242, 0.956579, -0.272193,
		42.237267, 35.654320, 40.878395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602718, 35.159092, 40.858971>,  <42.310238, 34.984715, 41.068932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602718, 35.159092, 40.858971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747761, 35.491505, 40.690254>,  <41.834785, 35.690952, 40.589024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747761, 35.491505, 40.690254>,  <41.602718, 35.159092, 40.858971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747761, 35.491505, 40.690254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735257, -0.022997, -0.677398,
		-0.572640, 0.555748, 0.602683,
		0.362603, 0.831033, -0.421787,
		41.856541, 35.740814, 40.563717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994999, 35.519703, 40.699551>,  <41.602718, 35.159092, 40.858971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994999, 35.519703, 40.699551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283848, 35.673588, 40.469582>,  <41.457157, 35.765919, 40.331600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283848, 35.673588, 40.469582>,  <40.994999, 35.519703, 40.699551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283848, 35.673588, 40.469582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616540, -0.018968, -0.787095,
		-0.313712, 0.922841, 0.223494,
		0.722125, 0.384714, -0.574918,
		41.500484, 35.789001, 40.297108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727631, 36.015560, 40.283669>,  <40.994999, 35.519703, 40.699551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727631, 36.015560, 40.283669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046875, 35.883011, 40.082386>,  <41.238422, 35.803482, 39.961617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046875, 35.883011, 40.082386>,  <40.727631, 36.015560, 40.283669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046875, 35.883011, 40.082386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571407, -0.151384, -0.806584,
		0.191102, 0.931276, -0.310169,
		0.798107, -0.331372, -0.503208,
		41.286308, 35.783600, 39.931423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424908, 35.973545, 39.629749>,  <40.727631, 36.015560, 40.283669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424908, 35.973545, 39.629749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799267, 35.852245, 39.558048>,  <41.023884, 35.779465, 39.515026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799267, 35.852245, 39.558048>,  <40.424908, 35.973545, 39.629749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799267, 35.852245, 39.558048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220045, -0.105901, -0.969724,
		0.275089, 0.947007, -0.165843,
		0.935899, -0.303253, -0.179252,
		41.080036, 35.761269, 39.504272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678612, 36.425945, 38.970932>,  <40.424908, 35.973545, 39.629749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678612, 36.425945, 38.970932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887638, 36.086998, 39.008644>,  <41.013054, 35.883629, 39.031273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887638, 36.086998, 39.008644>,  <40.678612, 36.425945, 38.970932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887638, 36.086998, 39.008644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112078, -0.177898, -0.977645,
		0.845199, 0.500318, -0.187935,
		0.522567, -0.847369, 0.094284,
		41.044407, 35.832787, 39.036930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169613, 36.437382, 38.506393>,  <40.678612, 36.425945, 38.970932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169613, 36.437382, 38.506393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138592, 36.042305, 38.560715>,  <41.119980, 35.805260, 38.593307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138592, 36.042305, 38.560715>,  <41.169613, 36.437382, 38.506393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138592, 36.042305, 38.560715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102410, -0.143385, -0.984354,
		0.991714, -0.062435, 0.112270,
		-0.077557, -0.987695, 0.135803,
		41.115326, 35.745995, 38.601456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660263, 35.961441, 38.206558>,  <41.169613, 36.437382, 38.506393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660263, 35.961441, 38.206558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534523, 35.606964, 38.342701>,  <41.459080, 35.394276, 38.424385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534523, 35.606964, 38.342701>,  <41.660263, 35.961441, 38.206558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534523, 35.606964, 38.342701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593716, -0.096230, -0.798900,
		0.740734, -0.453208, -0.495899,
		-0.314347, -0.886196, 0.340358,
		41.440220, 35.341106, 38.444809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768478, 35.342140, 37.749504>,  <41.660263, 35.961441, 38.206558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768478, 35.342140, 37.749504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453331, 35.194736, 37.946877>,  <41.264244, 35.106297, 38.065300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453331, 35.194736, 37.946877>,  <41.768478, 35.342140, 37.749504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453331, 35.194736, 37.946877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502817, -0.077712, -0.860892,
		0.355591, -0.926371, -0.124066,
		-0.787864, -0.368508, 0.493429,
		41.216972, 35.084183, 38.094906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369934, 34.677372, 37.423115>,  <41.768478, 35.342140, 37.749504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369934, 34.677372, 37.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129398, 34.914055, 37.637878>,  <40.985077, 35.056065, 37.766739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129398, 34.914055, 37.637878>,  <41.369934, 34.677372, 37.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129398, 34.914055, 37.637878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681697, -0.029447, -0.731041,
		-0.416755, -0.805612, 0.421075,
		-0.601335, 0.591711, 0.536911,
		40.948997, 35.091568, 37.798950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693207, 34.354671, 37.260731>,  <41.369934, 34.677372, 37.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693207, 34.354671, 37.260731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620670, 34.730976, 37.375336>,  <40.577148, 34.956757, 37.444099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620670, 34.730976, 37.375336>,  <40.693207, 34.354671, 37.260731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620670, 34.730976, 37.375336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775950, 0.042114, -0.629386,
		-0.604166, -0.336456, 0.722344,
		-0.181340, 0.940757, 0.286517,
		40.566269, 35.013203, 37.461292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047985, 34.429306, 37.220131>,  <40.693207, 34.354671, 37.260731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047985, 34.429306, 37.220131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142494, 34.814529, 37.168442>,  <40.199200, 35.045662, 37.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142494, 34.814529, 37.168442>,  <40.047985, 34.429306, 37.220131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142494, 34.814529, 37.168442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743668, 0.093633, -0.661960,
		-0.625405, 0.252502, 0.738317,
		0.236277, 0.963055, -0.129220,
		40.213379, 35.103447, 37.129677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503532, 34.862858, 37.252281>,  <40.047985, 34.429306, 37.220131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503532, 34.862858, 37.252281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707447, 35.162857, 37.083702>,  <39.829796, 35.342857, 36.982555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707447, 35.162857, 37.083702>,  <39.503532, 34.862858, 37.252281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707447, 35.162857, 37.083702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808283, 0.249789, -0.533183,
		-0.294614, 0.612459, 0.733551,
		0.509786, 0.749999, -0.421449,
		39.860382, 35.387856, 36.957268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060177, 35.207615, 36.797207>,  <39.503532, 34.862858, 37.252281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060177, 35.207615, 36.797207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410614, 35.372879, 36.697807>,  <39.620876, 35.472038, 36.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410614, 35.372879, 36.697807>,  <39.060177, 35.207615, 36.797207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410614, 35.372879, 36.697807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403834, 0.347278, -0.846355,
		-0.263384, 0.841841, 0.471098,
		0.876097, 0.413162, -0.248497,
		39.673443, 35.496826, 36.623257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925575, 35.869972, 36.484413>,  <39.060177, 35.207615, 36.797207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925575, 35.869972, 36.484413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279465, 35.755257, 36.337437>,  <39.491798, 35.686428, 36.249252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279465, 35.755257, 36.337437>,  <38.925575, 35.869972, 36.484413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279465, 35.755257, 36.337437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324798, 0.186080, -0.927297,
		0.334308, 0.939749, 0.071483,
		0.884728, -0.286786, -0.367436,
		39.544884, 35.669220, 36.227207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122910, 36.376934, 36.015919>,  <38.925575, 35.869972, 36.484413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122910, 36.376934, 36.015919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331387, 36.054981, 35.902416>,  <39.456474, 35.861809, 35.834316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331387, 36.054981, 35.902416>,  <39.122910, 36.376934, 36.015919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331387, 36.054981, 35.902416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193613, 0.212302, -0.957832,
		0.831188, 0.554153, -0.045186,
		0.521192, -0.804886, -0.283754,
		39.487743, 35.813515, 35.817291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483494, 36.601299, 35.460453>,  <39.122910, 36.376934, 36.015919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483494, 36.601299, 35.460453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467007, 36.204437, 35.413242>,  <39.457115, 35.966320, 35.384918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467007, 36.204437, 35.413242>,  <39.483494, 36.601299, 35.460453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467007, 36.204437, 35.413242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137423, 0.122631, -0.982892,
		0.989654, -0.024297, -0.141400,
		-0.041221, -0.992155, -0.118023,
		39.454639, 35.906792, 35.377834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814030, 36.485165, 34.817326>,  <39.483494, 36.601299, 35.460453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814030, 36.485165, 34.817326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653408, 36.119114, 34.831749>,  <39.557034, 35.899483, 34.840401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653408, 36.119114, 34.831749>,  <39.814030, 36.485165, 34.817326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653408, 36.119114, 34.831749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222838, 0.059444, -0.973042,
		0.888311, -0.398764, -0.227795,
		-0.401555, -0.915125, 0.036055,
		39.532940, 35.844578, 34.842564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041412, 36.149029, 34.257332>,  <39.814030, 36.485165, 34.817326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041412, 36.149029, 34.257332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704876, 35.967720, 34.375111>,  <39.502956, 35.858936, 34.445778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704876, 35.967720, 34.375111>,  <40.041412, 36.149029, 34.257332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704876, 35.967720, 34.375111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348481, 0.038465, -0.936526,
		0.413173, -0.890543, -0.190318,
		-0.841338, -0.453269, 0.294444,
		39.452473, 35.831741, 34.463444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820911, 35.741467, 33.694092>,  <40.041412, 36.149029, 34.257332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820911, 35.741467, 33.694092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485794, 35.756989, 33.911938>,  <39.284725, 35.766300, 34.042645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485794, 35.756989, 33.911938>,  <39.820911, 35.741467, 33.694092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485794, 35.756989, 33.911938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539782, 0.091157, -0.836855,
		-0.082119, -0.995080, -0.055424,
		-0.837790, 0.038805, 0.544611,
		39.234455, 35.768631, 34.075321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287331, 35.285263, 33.392033>,  <39.820911, 35.741467, 33.694092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287331, 35.285263, 33.392033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085026, 35.565269, 33.593700>,  <38.963642, 35.733273, 33.714699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085026, 35.565269, 33.593700>,  <39.287331, 35.285263, 33.392033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085026, 35.565269, 33.593700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576735, 0.160251, -0.801059,
		-0.641547, -0.695915, 0.322675,
		-0.505760, 0.700015, 0.504167,
		38.933296, 35.775272, 33.744949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396198, 35.425980, 32.605099>,  <39.287331, 35.285263, 33.392033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396198, 35.425980, 32.605099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734840, 35.422455, 32.817959>,  <39.938026, 35.420338, 32.945675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734840, 35.422455, 32.817959>,  <39.396198, 35.425980, 32.605099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734840, 35.422455, 32.817959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522802, -0.201037, 0.828409,
		0.099679, -0.979544, -0.174807,
		0.846606, -0.008815, 0.532147,
		39.988823, 35.419811, 32.977604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974571, 35.945190, 32.558548>,  <39.396198, 35.425980, 32.605099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974571, 35.945190, 32.558548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169266, 35.923637, 32.907303>,  <40.286083, 35.910706, 33.116554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169266, 35.923637, 32.907303>,  <39.974571, 35.945190, 32.558548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169266, 35.923637, 32.907303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859899, -0.146203, -0.489079,
		0.153824, 0.987786, -0.024830,
		0.486736, -0.053881, 0.871886,
		40.315285, 35.907475, 33.168869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795242, 36.141193, 32.791046>,  <39.974571, 35.945190, 32.558548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795242, 36.141193, 32.791046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936066, 36.297459, 33.131268>,  <41.020561, 36.391216, 33.335400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936066, 36.297459, 33.131268>,  <40.795242, 36.141193, 32.791046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936066, 36.297459, 33.131268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648580, 0.757011, -0.079238,
		-0.674830, -0.523753, 0.519892,
		0.352063, 0.390664, 0.850549,
		41.041683, 36.414658, 33.386433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221642, 36.752209, 32.655029>,  <40.795242, 36.141193, 32.791046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221642, 36.752209, 32.655029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312000, 36.466663, 32.920170>,  <41.366215, 36.295338, 33.079254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312000, 36.466663, 32.920170>,  <41.221642, 36.752209, 32.655029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312000, 36.466663, 32.920170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955846, 0.031132, -0.292214,
		0.187964, 0.699596, 0.689372,
		0.225893, -0.713860, 0.662855,
		41.379768, 36.252506, 33.119026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771755, 36.961266, 33.198116>,  <41.221642, 36.752209, 32.655029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771755, 36.961266, 33.198116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785896, 36.566158, 33.137363>,  <41.794380, 36.329094, 33.100914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785896, 36.566158, 33.137363>,  <41.771755, 36.961266, 33.198116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785896, 36.566158, 33.137363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978406, 0.065179, -0.196149,
		0.203649, -0.141664, 0.968741,
		0.035355, -0.987767, -0.151878,
		41.796501, 36.269829, 33.091801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448757, 36.770332, 33.442333>,  <41.771755, 36.961266, 33.198116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448757, 36.770332, 33.442333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411366, 36.466686, 33.184650>,  <42.388931, 36.284500, 33.030041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411366, 36.466686, 33.184650>,  <42.448757, 36.770332, 33.442333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411366, 36.466686, 33.184650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991389, -0.011381, -0.130453,
		0.091698, -0.650855, 0.753644,
		-0.093483, -0.759117, -0.644207,
		42.383320, 36.238953, 32.991386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904819, 37.236950, 32.887405>,  <42.448757, 36.770332, 33.442333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904819, 37.236950, 32.887405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034302, 36.890526, 32.735004>,  <43.111992, 36.682671, 32.643566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034302, 36.890526, 32.735004>,  <42.904819, 37.236950, 32.887405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034302, 36.890526, 32.735004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946061, 0.290484, 0.143482,
		-0.013589, -0.406894, 0.913374,
		0.323702, -0.866058, -0.380999,
		43.131413, 36.630707, 32.620705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370922, 36.942123, 33.327389>,  <42.904819, 37.236950, 32.887405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370922, 36.942123, 33.327389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449394, 36.824039, 32.953358>,  <43.496475, 36.753189, 32.728939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449394, 36.824039, 32.953358>,  <43.370922, 36.942123, 33.327389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449394, 36.824039, 32.953358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978409, 0.122187, 0.166694,
		0.065044, -0.947587, 0.312808,
		0.196178, -0.295212, -0.935074,
		43.508247, 36.735477, 32.672836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995243, 36.443897, 33.245384>,  <43.370922, 36.942123, 33.327389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995243, 36.443897, 33.245384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961864, 36.650276, 32.904366>,  <43.941837, 36.774105, 32.699757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961864, 36.650276, 32.904366>,  <43.995243, 36.443897, 33.245384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961864, 36.650276, 32.904366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947118, 0.307072, 0.093132,
		0.309844, -0.799688, -0.514292,
		-0.083448, 0.515951, -0.852544,
		43.936829, 36.805061, 32.648602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502827, 36.131062, 32.640766>,  <43.995243, 36.443897, 33.245384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502827, 36.131062, 32.640766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389221, 36.514568, 32.644871>,  <44.321060, 36.744671, 32.647335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389221, 36.514568, 32.644871>,  <44.502827, 36.131062, 32.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389221, 36.514568, 32.644871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947444, 0.278980, 0.156593,
		0.147272, 0.054200, -0.987610,
		-0.284010, 0.958766, 0.010265,
		44.304020, 36.802197, 32.647949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879917, 36.560749, 32.062714>,  <44.502827, 36.131062, 32.640766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879917, 36.560749, 32.062714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768391, 36.715904, 32.414124>,  <44.701473, 36.808998, 32.624969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768391, 36.715904, 32.414124>,  <44.879917, 36.560749, 32.062714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768391, 36.715904, 32.414124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939716, 0.298784, 0.166319,
		-0.197976, 0.871937, -0.447807,
		-0.278818, 0.387884, 0.878525,
		44.684746, 36.832268, 32.677681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151917, 37.280506, 32.070229>,  <44.879917, 36.560749, 32.062714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151917, 37.280506, 32.070229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153614, 37.144047, 32.446228>,  <45.154633, 37.062172, 32.671829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153614, 37.144047, 32.446228>,  <45.151917, 37.280506, 32.070229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153614, 37.144047, 32.446228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937341, 0.328849, 0.115113,
		-0.348388, 0.880611, 0.321170,
		0.004247, -0.341149, 0.939999,
		45.154888, 37.041702, 32.728230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400574, 37.741573, 32.599323>,  <45.151917, 37.280506, 32.070229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400574, 37.741573, 32.599323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492428, 37.372730, 32.723892>,  <45.547539, 37.151424, 32.798634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492428, 37.372730, 32.723892>,  <45.400574, 37.741573, 32.599323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492428, 37.372730, 32.723892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973263, 0.215858, -0.078514,
		0.005174, 0.321128, 0.947022,
		0.229635, -0.922108, 0.311425,
		45.561317, 37.096100, 32.817318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921951, 37.780128, 33.109432>,  <45.400574, 37.741573, 32.599323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921951, 37.780128, 33.109432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940525, 37.428074, 32.920452>,  <45.951668, 37.216843, 32.807064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940525, 37.428074, 32.920452>,  <45.921951, 37.780128, 33.109432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940525, 37.428074, 32.920452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998287, 0.057732, -0.009443,
		0.035587, -0.471206, 0.881305,
		0.046430, -0.880132, -0.472454,
		45.954453, 37.164036, 32.778717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407814, 37.485703, 33.563591>,  <45.921951, 37.780128, 33.109432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407814, 37.485703, 33.563591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.404263, 37.341919, 33.190342>,  <46.402134, 37.255650, 32.966393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.404263, 37.341919, 33.190342>,  <46.407814, 37.485703, 33.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.404263, 37.341919, 33.190342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890346, 0.421946, -0.171013,
		0.455198, -0.832316, 0.316299,
		-0.008876, -0.359461, -0.933118,
		46.401600, 37.234081, 32.910408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921654, 36.953545, 33.409065>,  <46.407814, 37.485703, 33.563591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921654, 36.953545, 33.409065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829464, 37.197186, 33.105522>,  <46.774151, 37.343372, 32.923397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829464, 37.197186, 33.105522>,  <46.921654, 36.953545, 33.409065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829464, 37.197186, 33.105522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973062, 0.139878, -0.183260,
		-0.005476, -0.780657, -0.624935,
		-0.230478, 0.609104, -0.758862,
		46.760319, 37.379917, 32.877865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535950, 36.469784, 33.205086>,  <46.921654, 36.953545, 33.409065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535950, 36.469784, 33.205086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294273, 36.175053, 33.326435>,  <47.149269, 35.998215, 33.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294273, 36.175053, 33.326435>,  <47.535950, 36.469784, 33.205086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294273, 36.175053, 33.326435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513399, -0.068795, 0.855388,
		-0.609405, 0.672569, 0.419853,
		-0.604191, -0.736830, 0.303371,
		47.113014, 35.954002, 33.417446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658001, 36.524441, 33.857792>,  <47.535950, 36.469784, 33.205086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658001, 36.524441, 33.857792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451210, 36.182049, 33.859905>,  <47.327133, 35.976612, 33.861172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451210, 36.182049, 33.859905>,  <47.658001, 36.524441, 33.857792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451210, 36.182049, 33.859905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584999, -0.348799, 0.732199,
		-0.624906, 0.381622, 0.681070,
		-0.516980, -0.855981, 0.005282,
		47.296116, 35.925255, 33.861488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344482, 36.409718, 34.540634>,  <47.658001, 36.524441, 33.857792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344482, 36.409718, 34.540634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441727, 36.070023, 34.353146>,  <47.500072, 35.866207, 34.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441727, 36.070023, 34.353146>,  <47.344482, 36.409718, 34.540634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441727, 36.070023, 34.353146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561718, -0.270692, 0.781792,
		-0.790803, -0.453349, 0.411224,
		0.243109, -0.849236, -0.468718,
		47.514660, 35.815250, 34.212528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212692, 35.754738, 34.963810>,  <47.344482, 36.409718, 34.540634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212692, 35.754738, 34.963810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.532604, 35.735035, 34.724503>,  <47.724552, 35.723213, 34.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.532604, 35.735035, 34.724503>,  <47.212692, 35.754738, 34.963810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.532604, 35.735035, 34.724503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566643, -0.267065, 0.779482,
		-0.198170, -0.962419, -0.185683,
		0.799778, -0.049254, -0.598272,
		47.772537, 35.720261, 34.545021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409660, 35.057610, 34.902943>,  <47.212692, 35.754738, 34.963810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409660, 35.057610, 34.902943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711910, 35.315018, 34.854080>,  <47.893261, 35.469463, 34.824760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711910, 35.315018, 34.854080>,  <47.409660, 35.057610, 34.902943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711910, 35.315018, 34.854080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486449, -0.426433, 0.762576,
		0.438637, -0.635644, -0.635260,
		0.755622, 0.643516, -0.122159,
		47.938599, 35.508072, 34.817432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.990929, 33.329681, 25.894424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.704199, 33.535469, 26.082672>,  <31.532162, 33.658943, 26.195621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.704199, 33.535469, 26.082672>,  <31.990929, 33.329681, 25.894424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704199, 33.535469, 26.082672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387849, -0.266696, 0.882296,
		0.579427, 0.814981, -0.008362,
		-0.716825, 0.514469, 0.470620,
		31.489151, 33.689812, 26.223858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296993, 33.642673, 26.402596>,  <31.990929, 33.329681, 25.894424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296993, 33.642673, 26.402596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.919765, 33.640377, 26.535608>,  <31.693428, 33.639000, 26.615416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.919765, 33.640377, 26.535608>,  <32.296993, 33.642673, 26.402596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919765, 33.640377, 26.535608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325937, -0.214839, 0.920657,
		0.066154, 0.976632, 0.204481,
		-0.943074, -0.005743, 0.332534,
		31.636843, 33.638653, 26.635368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300030, 34.100334, 26.908094>,  <32.296993, 33.642673, 26.402596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300030, 34.100334, 26.908094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991350, 33.851444, 26.960726>,  <31.806141, 33.702110, 26.992304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991350, 33.851444, 26.960726>,  <32.300030, 34.100334, 26.908094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991350, 33.851444, 26.960726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157599, 0.013343, 0.987413,
		-0.616147, 0.782726, 0.087765,
		-0.771703, -0.622223, 0.131578,
		31.759840, 33.664776, 27.000198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011215, 34.358002, 27.536392>,  <32.300030, 34.100334, 26.908094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011215, 34.358002, 27.536392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818092, 34.007988, 27.522415>,  <31.702219, 33.797981, 27.514029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818092, 34.007988, 27.522415>,  <32.011215, 34.358002, 27.536392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818092, 34.007988, 27.522415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068376, -0.077449, 0.994649,
		-0.873054, 0.477833, 0.097224,
		-0.482806, -0.875030, -0.034945,
		31.673250, 33.745480, 27.511932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494259, 34.355999, 27.977543>,  <32.011215, 34.358002, 27.536392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494259, 34.355999, 27.977543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528685, 33.960876, 27.925655>,  <31.549339, 33.723801, 27.894522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528685, 33.960876, 27.925655>,  <31.494259, 34.355999, 27.977543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528685, 33.960876, 27.925655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146468, -0.116244, 0.982361,
		-0.985464, -0.103546, 0.134678,
		0.086064, -0.987808, -0.129721,
		31.554504, 33.664536, 27.886740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025356, 34.047577, 28.532682>,  <31.494259, 34.355999, 27.977543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025356, 34.047577, 28.532682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.329504, 33.822491, 28.402946>,  <31.511992, 33.687439, 28.325106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.329504, 33.822491, 28.402946>,  <31.025356, 34.047577, 28.532682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329504, 33.822491, 28.402946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274081, -0.174737, 0.945699,
		-0.588830, -0.807974, 0.021364,
		0.760368, -0.562711, -0.324340,
		31.557615, 33.653679, 28.305645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948969, 33.365269, 28.986179>,  <31.025356, 34.047577, 28.532682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948969, 33.365269, 28.986179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.332047, 33.375698, 28.871536>,  <31.561893, 33.381954, 28.802750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.332047, 33.375698, 28.871536>,  <30.948969, 33.365269, 28.986179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332047, 33.375698, 28.871536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286720, -0.172299, 0.942393,
		-0.024810, -0.984700, -0.172486,
		0.957693, 0.026074, -0.286608,
		31.619354, 33.383518, 28.785553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297411, 32.931908, 29.361742>,  <30.948969, 33.365269, 28.986179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297411, 32.931908, 29.361742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.614546, 33.130142, 29.219870>,  <31.804827, 33.249084, 29.134747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.614546, 33.130142, 29.219870>,  <31.297411, 32.931908, 29.361742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614546, 33.130142, 29.219870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501832, -0.200680, 0.841363,
		0.345794, -0.845055, -0.407810,
		0.792837, 0.495591, -0.354681,
		31.852398, 33.278820, 29.113464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954477, 32.578796, 29.478470>,  <31.297411, 32.931908, 29.361742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954477, 32.578796, 29.478470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.121601, 32.929535, 29.383331>,  <32.221874, 33.139980, 29.326248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.121601, 32.929535, 29.383331>,  <31.954477, 32.578796, 29.478470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121601, 32.929535, 29.383331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771952, -0.204569, 0.601865,
		0.479089, -0.435071, -0.762356,
		0.417809, 0.876849, -0.237847,
		32.246944, 33.192589, 29.311977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675186, 32.477379, 29.253092>,  <31.954477, 32.578796, 29.478470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675186, 32.477379, 29.253092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.659103, 32.862041, 29.361603>,  <32.649452, 33.092842, 29.426708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.659103, 32.862041, 29.361603>,  <32.675186, 32.477379, 29.253092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659103, 32.862041, 29.361603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697480, -0.167392, 0.696779,
		0.715475, 0.217227, -0.664009,
		-0.040209, 0.961661, 0.271276,
		32.647041, 33.150539, 29.442986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344242, 32.694809, 29.373333>,  <32.675186, 32.477379, 29.253092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344242, 32.694809, 29.373333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.134682, 32.972488, 29.570763>,  <33.008945, 33.139095, 29.689220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.134682, 32.972488, 29.570763>,  <33.344242, 32.694809, 29.373333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134682, 32.972488, 29.570763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757045, 0.113908, 0.643357,
		0.390393, 0.710717, -0.585214,
		-0.523905, 0.694195, 0.493575,
		32.977509, 33.180748, 29.718836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834770, 33.200787, 29.527565>,  <33.344242, 32.694809, 29.373333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834770, 33.200787, 29.527565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522980, 33.296650, 29.759077>,  <33.335907, 33.354168, 29.897984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522980, 33.296650, 29.759077>,  <33.834770, 33.200787, 29.527565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522980, 33.296650, 29.759077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625672, 0.252272, 0.738169,
		0.030899, 0.937508, -0.346588,
		-0.779474, 0.239659, 0.578778,
		33.289139, 33.368549, 29.932711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026611, 33.842655, 29.923733>,  <33.834770, 33.200787, 29.527565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026611, 33.842655, 29.923733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.756222, 33.668682, 30.161690>,  <33.593987, 33.564297, 30.304464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.756222, 33.668682, 30.161690>,  <34.026611, 33.842655, 29.923733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756222, 33.668682, 30.161690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577470, 0.188871, 0.794264,
		-0.457808, 0.880433, 0.123489,
		-0.675973, -0.434932, 0.594890,
		33.553429, 33.538204, 30.340157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042973, 34.327457, 30.456032>,  <34.026611, 33.842655, 29.923733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042973, 34.327457, 30.456032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.908215, 33.974922, 30.588537>,  <33.827358, 33.763401, 30.668039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.908215, 33.974922, 30.588537>,  <34.042973, 34.327457, 30.456032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908215, 33.974922, 30.588537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473312, 0.145611, 0.868777,
		-0.813925, 0.449481, 0.368094,
		-0.336900, -0.881342, 0.331261,
		33.807144, 33.710518, 30.687916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694023, 34.444401, 31.122002>,  <34.042973, 34.327457, 30.456032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694023, 34.444401, 31.122002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807251, 34.060829, 31.114731>,  <33.875187, 33.830688, 31.110369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807251, 34.060829, 31.114731>,  <33.694023, 34.444401, 31.122002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807251, 34.060829, 31.114731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375001, 0.093216, 0.922326,
		-0.882748, -0.267900, 0.385985,
		0.283071, -0.958926, -0.018177,
		33.892174, 33.773151, 31.109278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584286, 34.191051, 31.800968>,  <33.694023, 34.444401, 31.122002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584286, 34.191051, 31.800968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.832355, 33.909077, 31.663301>,  <33.981197, 33.739891, 31.580702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.832355, 33.909077, 31.663301>,  <33.584286, 34.191051, 31.800968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832355, 33.909077, 31.663301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414200, -0.078335, 0.906809,
		-0.666204, -0.704930, 0.243404,
		0.620170, -0.704938, -0.344169,
		34.018406, 33.697594, 31.560051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629040, 33.682533, 32.358879>,  <33.584286, 34.191051, 31.800968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629040, 33.682533, 32.358879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948242, 33.644505, 32.120838>,  <34.139763, 33.621685, 31.978014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948242, 33.644505, 32.120838>,  <33.629040, 33.682533, 32.358879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948242, 33.644505, 32.120838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601220, 0.193568, 0.775284,
		0.041484, -0.976469, 0.211629,
		0.798006, -0.095074, -0.595103,
		34.187645, 33.615982, 31.942307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018131, 33.060581, 32.619335>,  <33.629040, 33.682533, 32.358879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018131, 33.060581, 32.619335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268745, 33.285675, 32.403641>,  <34.419113, 33.420731, 32.274223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268745, 33.285675, 32.403641>,  <34.018131, 33.060581, 32.619335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268745, 33.285675, 32.403641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589120, 0.111040, 0.800380,
		0.510281, -0.819143, -0.261949,
		0.626538, 0.562738, -0.539235,
		34.456707, 33.454498, 32.241871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667706, 32.777920, 32.667969>,  <34.018131, 33.060581, 32.619335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667706, 32.777920, 32.667969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726139, 33.163574, 32.579334>,  <34.761200, 33.394966, 32.526154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726139, 33.163574, 32.579334>,  <34.667706, 32.777920, 32.667969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726139, 33.163574, 32.579334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639762, 0.078772, 0.764526,
		0.754563, -0.253443, -0.605311,
		0.146082, 0.964138, -0.221582,
		34.769962, 33.452816, 32.512859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320068, 32.804432, 32.875599>,  <34.667706, 32.777920, 32.667969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320068, 32.804432, 32.875599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245026, 33.192284, 32.812828>,  <35.200001, 33.424995, 32.775166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245026, 33.192284, 32.812828>,  <35.320068, 32.804432, 32.875599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245026, 33.192284, 32.812828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673960, 0.243296, 0.697556,
		0.714549, 0.025102, -0.699135,
		-0.187607, 0.969627, -0.156929,
		35.188744, 33.483173, 32.765751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015671, 33.154049, 32.716633>,  <35.320068, 32.804432, 32.875599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015671, 33.154049, 32.716633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756401, 33.432400, 32.840324>,  <35.600838, 33.599411, 32.914539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756401, 33.432400, 32.840324>,  <36.015671, 33.154049, 32.716633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756401, 33.432400, 32.840324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602330, 0.220064, 0.767313,
		0.465905, 0.683614, -0.561788,
		-0.648175, 0.695877, 0.309232,
		35.561947, 33.641163, 32.933094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477551, 33.675560, 32.887409>,  <36.015671, 33.154049, 32.716633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477551, 33.675560, 32.887409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134651, 33.738811, 33.083416>,  <35.928909, 33.776764, 33.201019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134651, 33.738811, 33.083416>,  <36.477551, 33.675560, 32.887409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134651, 33.738811, 33.083416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514900, 0.263430, 0.815771,
		-0.000089, 0.951630, -0.307245,
		-0.857250, 0.158128, 0.490018,
		35.877476, 33.786251, 33.230423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874355, 34.257980, 32.941536>,  <36.477551, 33.675560, 32.887409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874355, 34.257980, 32.941536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226624, 34.072418, 32.979935>,  <37.437984, 33.961082, 33.002975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226624, 34.072418, 32.979935>,  <36.874355, 34.257980, 32.941536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226624, 34.072418, 32.979935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099582, -0.016838, -0.994887,
		0.463149, 0.885725, 0.031368,
		0.880668, -0.463904, 0.096001,
		37.490826, 33.933247, 33.008736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332302, 34.558811, 32.475040>,  <36.874355, 34.257980, 32.941536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332302, 34.558811, 32.475040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442429, 34.179325, 32.537189>,  <37.508503, 33.951633, 32.574478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442429, 34.179325, 32.537189>,  <37.332302, 34.558811, 32.475040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442429, 34.179325, 32.537189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092991, -0.187143, -0.977921,
		0.956846, 0.254788, -0.139745,
		0.275315, -0.948715, 0.155374,
		37.525024, 33.894711, 32.583801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742760, 34.430031, 31.980808>,  <37.332302, 34.558811, 32.475040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742760, 34.430031, 31.980808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662113, 34.050648, 32.078609>,  <37.613728, 33.823017, 32.137291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662113, 34.050648, 32.078609>,  <37.742760, 34.430031, 31.980808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662113, 34.050648, 32.078609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228391, -0.197223, -0.953384,
		0.952465, -0.248056, -0.176856,
		-0.201613, -0.948457, 0.244502,
		37.601631, 33.766109, 32.151958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982857, 34.070702, 31.353262>,  <37.742760, 34.430031, 31.980808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982857, 34.070702, 31.353262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745636, 33.831207, 31.568598>,  <37.603306, 33.687511, 31.697800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745636, 33.831207, 31.568598>,  <37.982857, 34.070702, 31.353262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745636, 33.831207, 31.568598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401892, -0.359242, -0.842276,
		0.697694, -0.715864, -0.027579,
		-0.593047, -0.598735, 0.538341,
		37.567722, 33.651588, 31.730101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135223, 33.416252, 31.039366>,  <37.982857, 34.070702, 31.353262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135223, 33.416252, 31.039366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778263, 33.387367, 31.217537>,  <37.564087, 33.370037, 31.324440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778263, 33.387367, 31.217537>,  <38.135223, 33.416252, 31.039366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778263, 33.387367, 31.217537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411655, -0.274030, -0.869165,
		0.184822, -0.959007, 0.214819,
		-0.892402, -0.072210, 0.445427,
		37.510544, 33.365704, 31.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918282, 32.830784, 30.792330>,  <38.135223, 33.416252, 31.039366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918282, 32.830784, 30.792330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581028, 33.024765, 30.885241>,  <37.378677, 33.141151, 30.940987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581028, 33.024765, 30.885241>,  <37.918282, 32.830784, 30.792330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581028, 33.024765, 30.885241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364643, -0.198194, -0.909810,
		-0.395177, -0.851788, 0.343938,
		-0.843131, 0.484950, 0.232277,
		37.328087, 33.170250, 30.954924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363045, 32.443027, 30.515579>,  <37.918282, 32.830784, 30.792330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363045, 32.443027, 30.515579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180622, 32.789299, 30.598148>,  <37.071167, 32.997063, 30.647690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180622, 32.789299, 30.598148>,  <37.363045, 32.443027, 30.515579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180622, 32.789299, 30.598148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518564, -0.069992, -0.852169,
		-0.723258, -0.495681, 0.480831,
		-0.456059, 0.865680, 0.206420,
		37.043804, 33.049004, 30.660074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616623, 32.382504, 30.465151>,  <37.363045, 32.443027, 30.515579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616623, 32.382504, 30.465151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721020, 32.766766, 30.427164>,  <36.783657, 32.997322, 30.404371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721020, 32.766766, 30.427164>,  <36.616623, 32.382504, 30.465151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721020, 32.766766, 30.427164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621666, 0.091996, -0.777861,
		-0.738522, 0.262054, 0.621219,
		0.260992, 0.960658, -0.094969,
		36.799316, 33.054962, 30.398674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054779, 32.642925, 30.034760>,  <36.616623, 32.382504, 30.465151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054779, 32.642925, 30.034760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316227, 32.944824, 30.012348>,  <36.473095, 33.125965, 29.998901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316227, 32.944824, 30.012348>,  <36.054779, 32.642925, 30.034760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316227, 32.944824, 30.012348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381493, 0.264628, -0.885683,
		-0.653641, 0.600273, 0.460896,
		0.653618, 0.754747, -0.056028,
		36.512314, 33.171249, 29.995541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747334, 33.257366, 29.841223>,  <36.054779, 32.642925, 30.034760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747334, 33.257366, 29.841223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129028, 33.311577, 29.734592>,  <36.358044, 33.344105, 29.670614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129028, 33.311577, 29.734592>,  <35.747334, 33.257366, 29.841223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129028, 33.311577, 29.734592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294228, 0.266056, -0.917956,
		-0.053482, 0.954383, 0.293756,
		0.954238, 0.135525, -0.266578,
		36.415298, 33.352234, 29.654619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685905, 33.871059, 29.495798>,  <35.747334, 33.257366, 29.841223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685905, 33.871059, 29.495798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040962, 33.734219, 29.372477>,  <36.253998, 33.652115, 29.298483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040962, 33.734219, 29.372477>,  <35.685905, 33.871059, 29.495798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040962, 33.734219, 29.372477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192124, 0.333336, -0.923025,
		0.418538, 0.878552, 0.230158,
		0.887645, -0.342102, -0.308304,
		36.307255, 33.631588, 29.279985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050789, 34.353218, 29.136501>,  <35.685905, 33.871059, 29.495798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050789, 34.353218, 29.136501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168396, 34.000950, 28.987919>,  <36.238960, 33.789589, 28.898769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168396, 34.000950, 28.987919>,  <36.050789, 34.353218, 29.136501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168396, 34.000950, 28.987919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166347, 0.335555, -0.927217,
		0.941213, 0.334410, -0.047836,
		0.294019, -0.880666, -0.371457,
		36.256603, 33.736752, 28.876482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408154, 34.506760, 28.543177>,  <36.050789, 34.353218, 29.136501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408154, 34.506760, 28.543177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270370, 34.132320, 28.514702>,  <36.187698, 33.907658, 28.497618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270370, 34.132320, 28.514702>,  <36.408154, 34.506760, 28.543177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270370, 34.132320, 28.514702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472560, 0.238412, -0.848437,
		0.811192, -0.258614, -0.524487,
		-0.344462, -0.936098, -0.071187,
		36.167030, 33.851490, 28.493345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535698, 34.344746, 27.922621>,  <36.408154, 34.506760, 28.543177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535698, 34.344746, 27.922621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.309322, 34.015369, 27.938910>,  <36.173496, 33.817745, 27.948683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.309322, 34.015369, 27.938910>,  <36.535698, 34.344746, 27.922621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309322, 34.015369, 27.938910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432433, 0.254426, -0.865026,
		0.701937, -0.507161, -0.500072,
		-0.565939, -0.823441, 0.040721,
		36.139542, 33.768337, 27.951126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522861, 34.029438, 27.288641>,  <36.535698, 34.344746, 27.922621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522861, 34.029438, 27.288641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199261, 33.858780, 27.450375>,  <36.005100, 33.756386, 27.547415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199261, 33.858780, 27.450375>,  <36.522861, 34.029438, 27.288641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199261, 33.858780, 27.450375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479599, 0.081401, -0.873704,
		0.339849, -0.900748, -0.270473,
		-0.809004, -0.426646, 0.404334,
		35.956558, 33.730785, 27.571674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229549, 33.584095, 26.785219>,  <36.522861, 34.029438, 27.288641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229549, 33.584095, 26.785219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911049, 33.612213, 27.025564>,  <35.719948, 33.629082, 27.169771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911049, 33.612213, 27.025564>,  <36.229549, 33.584095, 26.785219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911049, 33.612213, 27.025564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604906, -0.079190, -0.792350,
		-0.008116, -0.994378, 0.105578,
		-0.796256, 0.070296, 0.600862,
		35.672173, 33.633301, 27.205822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705345, 33.118923, 26.393089>,  <36.229549, 33.584095, 26.785219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705345, 33.118923, 26.393089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484657, 33.328838, 26.652382>,  <35.352245, 33.454788, 26.807957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484657, 33.328838, 26.652382>,  <35.705345, 33.118923, 26.393089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484657, 33.328838, 26.652382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738533, 0.053729, -0.672073,
		-0.387524, -0.849536, 0.357930,
		-0.551719, 0.524788, 0.648231,
		35.319141, 33.486275, 26.846851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069042, 32.863728, 26.275560>,  <35.705345, 33.118923, 26.393089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069042, 32.863728, 26.275560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013332, 33.209484, 26.468822>,  <34.979908, 33.416939, 26.584780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013332, 33.209484, 26.468822>,  <35.069042, 32.863728, 26.275560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013332, 33.209484, 26.468822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876136, 0.119832, -0.466933,
		-0.461508, -0.488340, 0.740631,
		-0.139270, 0.864387, 0.483156,
		34.971550, 33.468800, 26.613770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.249031, 32.916935, 26.612843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369827, 33.297066, 26.582703>,  <34.442307, 33.525143, 26.564619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369827, 33.297066, 26.582703>,  <34.249031, 32.916935, 26.612843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369827, 33.297066, 26.582703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684641, 0.161204, -0.710830,
		-0.663375, 0.266254, 0.699316,
		0.301994, 0.950327, -0.075350,
		34.460426, 33.582165, 26.560099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663582, 33.311176, 26.643744>,  <34.249031, 32.916935, 26.612843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663582, 33.311176, 26.643744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928196, 33.534714, 26.443716>,  <34.086964, 33.668835, 26.323700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928196, 33.534714, 26.443716>,  <33.663582, 33.311176, 26.643744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928196, 33.534714, 26.443716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669614, 0.139971, -0.729401,
		-0.337627, 0.817374, 0.466806,
		0.661533, 0.558845, -0.500067,
		34.126656, 33.702366, 26.293695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286137, 33.970032, 26.421164>,  <33.663582, 33.311176, 26.643744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286137, 33.970032, 26.421164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613297, 33.922615, 26.195955>,  <33.809593, 33.894165, 26.060831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613297, 33.922615, 26.195955>,  <33.286137, 33.970032, 26.421164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613297, 33.922615, 26.195955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538780, 0.185564, -0.821755,
		0.201891, 0.975455, 0.087902,
		0.817897, -0.118546, -0.563020,
		33.858665, 33.887051, 26.027050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287155, 34.569042, 26.106703>,  <33.286137, 33.970032, 26.421164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287155, 34.569042, 26.106703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504135, 34.322884, 25.877954>,  <33.634323, 34.175186, 25.740705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504135, 34.322884, 25.877954>,  <33.287155, 34.569042, 26.106703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504135, 34.322884, 25.877954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543232, 0.262308, -0.797555,
		0.640821, 0.743289, -0.192016,
		0.542446, -0.615399, -0.571871,
		33.666870, 34.138264, 25.706392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459560, 34.972431, 25.617386>,  <33.287155, 34.569042, 26.106703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459560, 34.972431, 25.617386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480450, 34.595257, 25.485847>,  <33.492985, 34.368950, 25.406925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480450, 34.595257, 25.485847>,  <33.459560, 34.972431, 25.617386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480450, 34.595257, 25.485847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343535, 0.292234, -0.892515,
		0.937687, 0.159579, -0.308671,
		0.052223, -0.942939, -0.328845,
		33.496117, 34.312374, 25.387194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755596, 35.105118, 24.927258>,  <33.459560, 34.972431, 25.617386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755596, 35.105118, 24.927258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627331, 34.726280, 24.932791>,  <33.550369, 34.498978, 24.936110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627331, 34.726280, 24.932791>,  <33.755596, 35.105118, 24.927258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627331, 34.726280, 24.932791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294051, 0.085658, -0.951944,
		0.900393, -0.309324, -0.305961,
		-0.320667, -0.947091, 0.013831,
		33.531132, 34.442154, 24.936939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008068, 34.721584, 24.320717>,  <33.755596, 35.105118, 24.927258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008068, 34.721584, 24.320717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696491, 34.496536, 24.431503>,  <33.509544, 34.361507, 24.497974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696491, 34.496536, 24.431503>,  <34.008068, 34.721584, 24.320717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696491, 34.496536, 24.431503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365594, 0.048582, -0.929506,
		0.509507, -0.825284, -0.243535,
		-0.778938, -0.562624, 0.276966,
		33.462811, 34.327747, 24.514593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068642, 34.118629, 23.917360>,  <34.008068, 34.721584, 24.320717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068642, 34.118629, 23.917360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684219, 34.160023, 24.019861>,  <33.453568, 34.184860, 24.081362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684219, 34.160023, 24.019861>,  <34.068642, 34.118629, 23.917360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684219, 34.160023, 24.019861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273590, -0.225390, -0.935066,
		-0.039006, -0.968757, 0.244924,
		-0.961055, 0.103482, 0.256251,
		33.395905, 34.191067, 24.096737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751080, 33.607162, 23.572468>,  <34.068642, 34.118629, 23.917360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751080, 33.607162, 23.572468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445660, 33.844639, 23.674072>,  <33.262409, 33.987125, 23.735035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445660, 33.844639, 23.674072>,  <33.751080, 33.607162, 23.572468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445660, 33.844639, 23.674072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326223, -0.015163, -0.945171,
		-0.557291, -0.804548, 0.205255,
		-0.763547, 0.593695, 0.254012,
		33.216595, 34.022747, 23.750277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243629, 33.282948, 23.315643>,  <33.751080, 33.607162, 23.572468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243629, 33.282948, 23.315643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092701, 33.648060, 23.378199>,  <33.002144, 33.867126, 23.415731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092701, 33.648060, 23.378199>,  <33.243629, 33.282948, 23.315643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092701, 33.648060, 23.378199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503412, -0.060423, -0.861931,
		-0.777307, -0.403951, 0.482304,
		-0.377320, 0.912783, 0.156386,
		32.979504, 33.921894, 23.425114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479645, 33.234791, 23.154650>,  <33.243629, 33.282948, 23.315643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479645, 33.234791, 23.154650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.585892, 33.619808, 23.132896>,  <32.649639, 33.850819, 23.119844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.585892, 33.619808, 23.132896>,  <32.479645, 33.234791, 23.154650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585892, 33.619808, 23.132896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426941, 0.066864, -0.901804,
		-0.864389, 0.262756, 0.428709,
		0.265619, 0.962543, -0.054385,
		32.665577, 33.908569, 23.116581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876795, 33.598122, 22.989891>,  <32.479645, 33.234791, 23.154650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876795, 33.598122, 22.989891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.184849, 33.834064, 22.892765>,  <32.369682, 33.975632, 22.834490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.184849, 33.834064, 22.892765>,  <31.876795, 33.598122, 22.989891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184849, 33.834064, 22.892765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519223, 0.358558, -0.775786,
		-0.370542, 0.723535, 0.582406,
		0.770134, 0.589859, -0.242815,
		32.415890, 34.011021, 22.819920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574163, 34.237679, 22.826752>,  <31.876795, 33.598122, 22.989891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574163, 34.237679, 22.826752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934002, 34.251862, 22.652639>,  <32.149906, 34.260372, 22.548172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934002, 34.251862, 22.652639>,  <31.574163, 34.237679, 22.826752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934002, 34.251862, 22.652639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410327, 0.409883, -0.814633,
		0.149532, 0.911449, 0.383277,
		0.899595, 0.035455, -0.435283,
		32.203880, 34.262497, 22.522055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575111, 34.807938, 22.361750>,  <31.574163, 34.237679, 22.826752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575111, 34.807938, 22.361750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893723, 34.609058, 22.224148>,  <32.084888, 34.489731, 22.141586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893723, 34.609058, 22.224148>,  <31.575111, 34.807938, 22.361750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893723, 34.609058, 22.224148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225350, 0.283828, -0.932019,
		0.561036, 0.819899, 0.114033,
		0.796527, -0.497199, -0.344002,
		32.132679, 34.459900, 22.120947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962103, 35.319969, 21.965128>,  <31.575111, 34.807938, 22.361750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962103, 35.319969, 21.965128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071430, 34.956783, 21.838070>,  <32.137028, 34.738873, 21.761835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071430, 34.956783, 21.838070>,  <31.962103, 35.319969, 21.965128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071430, 34.956783, 21.838070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031422, 0.321615, -0.946349,
		0.961411, 0.268634, 0.059372,
		0.273317, -0.907964, -0.317645,
		32.153427, 34.684395, 21.742777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463638, 35.443329, 21.428764>,  <31.962103, 35.319969, 21.965128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463638, 35.443329, 21.428764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329357, 35.071754, 21.366308>,  <32.248787, 34.848808, 21.328835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329357, 35.071754, 21.366308>,  <32.463638, 35.443329, 21.428764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329357, 35.071754, 21.366308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004510, 0.164170, -0.986422,
		0.941956, -0.331852, -0.050923,
		-0.335706, -0.928936, -0.156138,
		32.228645, 34.793072, 21.319468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975632, 35.202187, 20.976326>,  <32.463638, 35.443329, 21.428764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975632, 35.202187, 20.976326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.635857, 34.991226, 20.969303>,  <32.431992, 34.864651, 20.965090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.635857, 34.991226, 20.969303>,  <32.975632, 35.202187, 20.976326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635857, 34.991226, 20.969303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025259, 0.073872, -0.996948,
		0.527090, -0.846398, -0.076071,
		-0.849434, -0.527402, -0.017558,
		32.381027, 34.833004, 20.964035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999050, 34.927063, 20.326546>,  <32.975632, 35.202187, 20.976326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999050, 34.927063, 20.326546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622818, 34.842728, 20.433025>,  <32.397079, 34.792126, 20.496914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622818, 34.842728, 20.433025>,  <32.999050, 34.927063, 20.326546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622818, 34.842728, 20.433025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267523, -0.022769, -0.963282,
		0.209154, -0.977257, -0.034987,
		-0.940577, -0.210834, 0.266201,
		32.340645, 34.779476, 20.512886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732697, 34.363621, 19.944666>,  <32.999050, 34.927063, 20.326546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732697, 34.363621, 19.944666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390602, 34.541756, 20.050686>,  <32.185345, 34.648636, 20.114298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390602, 34.541756, 20.050686>,  <32.732697, 34.363621, 19.944666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390602, 34.541756, 20.050686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292205, 0.008012, -0.956322,
		-0.428008, -0.895328, 0.123277,
		-0.855234, 0.445336, 0.265049,
		32.134033, 34.675358, 20.130201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368816, 34.219852, 19.421865>,  <32.732697, 34.363621, 19.944666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368816, 34.219852, 19.421865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.127197, 34.481037, 19.604630>,  <31.982225, 34.637749, 19.714289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.127197, 34.481037, 19.604630>,  <32.368816, 34.219852, 19.421865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127197, 34.481037, 19.604630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346360, 0.301255, -0.888415,
		-0.717748, -0.694899, 0.044188,
		-0.604047, 0.652963, 0.456910,
		31.945984, 34.676926, 19.741703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533163, 34.096077, 19.250813>,  <32.368816, 34.219852, 19.421865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533163, 34.096077, 19.250813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603203, 34.478642, 19.344297>,  <31.645227, 34.708179, 19.400389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603203, 34.478642, 19.344297>,  <31.533163, 34.096077, 19.250813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603203, 34.478642, 19.344297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476157, 0.290033, -0.830154,
		-0.861751, 0.034076, 0.506185,
		0.175099, 0.956410, 0.233711,
		31.655733, 34.765564, 19.414412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884283, 34.443653, 19.418905>,  <31.533163, 34.096077, 19.250813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884283, 34.443653, 19.418905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172735, 34.682205, 19.277882>,  <31.345806, 34.825336, 19.193268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172735, 34.682205, 19.277882>,  <30.884283, 34.443653, 19.418905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172735, 34.682205, 19.277882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545232, 0.174582, -0.819905,
		-0.427427, 0.783485, 0.451063,
		0.721130, 0.596383, -0.352560,
		31.389074, 34.861118, 19.172113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646641, 35.078568, 19.324076>,  <30.884283, 34.443653, 19.418905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646641, 35.078568, 19.324076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945684, 35.025417, 19.063791>,  <31.125111, 34.993526, 18.907621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945684, 35.025417, 19.063791>,  <30.646641, 35.078568, 19.324076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945684, 35.025417, 19.063791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592463, 0.309314, -0.743850,
		0.300113, 0.941631, 0.152522,
		0.747609, -0.132876, -0.650711,
		31.169968, 34.985554, 18.868578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752905, 35.726040, 19.125574>,  <30.646641, 35.078568, 19.324076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752905, 35.726040, 19.125574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806446, 35.416862, 18.877497>,  <30.838572, 35.231358, 18.728651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806446, 35.416862, 18.877497>,  <30.752905, 35.726040, 19.125574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806446, 35.416862, 18.877497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500876, 0.487239, -0.715347,
		0.855106, 0.406392, -0.321931,
		0.133854, -0.772945, -0.620193,
		30.846601, 35.184978, 18.691439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020361, 35.937031, 19.265806>,  <30.752905, 35.726040, 19.125574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020361, 35.937031, 19.265806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.643053, 36.067692, 19.242006>,  <29.416668, 36.146088, 19.227726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.643053, 36.067692, 19.242006>,  <30.020361, 35.937031, 19.265806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643053, 36.067692, 19.242006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121242, -0.172041, 0.977600,
		0.309097, 0.929355, 0.201885,
		-0.943271, 0.326650, -0.059499,
		29.360071, 36.165688, 19.224157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965555, 36.399986, 19.811119>,  <30.020361, 35.937031, 19.265806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965555, 36.399986, 19.811119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589102, 36.295223, 19.725632>,  <29.363230, 36.232365, 19.674339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589102, 36.295223, 19.725632>,  <29.965555, 36.399986, 19.811119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589102, 36.295223, 19.725632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146503, -0.253748, 0.956111,
		-0.304640, 0.931138, 0.200441,
		-0.941133, -0.261905, -0.213716,
		29.306763, 36.216652, 19.661516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583071, 36.864002, 20.232000>,  <29.965555, 36.399986, 19.811119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583071, 36.864002, 20.232000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363398, 36.544216, 20.134634>,  <29.231594, 36.352345, 20.076214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363398, 36.544216, 20.134634>,  <29.583071, 36.864002, 20.232000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363398, 36.544216, 20.134634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132918, -0.204001, 0.969905,
		-0.825064, 0.565010, 0.005770,
		-0.549183, -0.799467, -0.243414,
		29.198643, 36.304375, 20.061609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020651, 36.754250, 20.747795>,  <29.583071, 36.864002, 20.232000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020651, 36.754250, 20.747795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.009933, 36.405201, 20.552729>,  <29.003504, 36.195770, 20.435690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.009933, 36.405201, 20.552729>,  <29.020651, 36.754250, 20.747795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009933, 36.405201, 20.552729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220338, -0.470686, 0.854345,
		-0.975056, 0.130342, -0.179661,
		-0.026793, -0.872620, -0.487664,
		29.001896, 36.143414, 20.406429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330305, 36.455002, 20.968138>,  <29.020651, 36.754250, 20.747795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330305, 36.455002, 20.968138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.612137, 36.184429, 20.882339>,  <28.781237, 36.022087, 20.830860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.612137, 36.184429, 20.882339>,  <28.330305, 36.455002, 20.968138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612137, 36.184429, 20.882339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110931, -0.403541, 0.908212,
		-0.700900, -0.616113, -0.359365,
		0.704580, -0.676431, -0.214496,
		28.823511, 35.981499, 20.817991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170944, 35.927563, 21.313765>,  <28.330305, 36.455002, 20.968138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170944, 35.927563, 21.313765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.544891, 35.807964, 21.237215>,  <28.769260, 35.736206, 21.191286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.544891, 35.807964, 21.237215>,  <28.170944, 35.927563, 21.313765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544891, 35.807964, 21.237215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068058, -0.378127, 0.923249,
		-0.348408, -0.876141, -0.333151,
		0.934869, -0.298994, -0.191370,
		28.825352, 35.718266, 21.179804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204973, 35.161774, 21.634373>,  <28.170944, 35.927563, 21.313765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204973, 35.161774, 21.634373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584587, 35.281601, 21.595200>,  <28.812355, 35.353497, 21.571695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584587, 35.281601, 21.595200>,  <28.204973, 35.161774, 21.634373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584587, 35.281601, 21.595200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133648, -0.101107, 0.985858,
		0.285435, -0.948701, -0.135991,
		0.949034, 0.299573, -0.097932,
		28.869297, 35.371471, 21.565821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515274, 34.745754, 22.197937>,  <28.204973, 35.161774, 21.634373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515274, 34.745754, 22.197937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.793509, 35.013802, 22.094320>,  <28.960449, 35.174629, 22.032150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.793509, 35.013802, 22.094320>,  <28.515274, 34.745754, 22.197937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793509, 35.013802, 22.094320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368070, -0.022740, 0.929520,
		0.616995, -0.741908, -0.262467,
		0.695587, 0.670116, -0.259044,
		29.002184, 35.214836, 22.016607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147907, 34.477459, 22.469950>,  <28.515274, 34.745754, 22.197937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147907, 34.477459, 22.469950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232679, 34.862675, 22.403444>,  <29.283543, 35.093803, 22.363541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232679, 34.862675, 22.403444>,  <29.147907, 34.477459, 22.469950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232679, 34.862675, 22.403444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547073, 0.024067, 0.836739,
		0.809812, -0.268290, -0.521751,
		0.211932, 0.963037, -0.166264,
		29.296259, 35.151585, 22.353565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809315, 34.447773, 22.599030>,  <29.147907, 34.477459, 22.469950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809315, 34.447773, 22.599030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694349, 34.824505, 22.668705>,  <29.625370, 35.050545, 22.710510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694349, 34.824505, 22.668705>,  <29.809315, 34.447773, 22.599030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694349, 34.824505, 22.668705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631638, 0.049664, 0.773672,
		0.720019, 0.332388, -0.609172,
		-0.287413, 0.941834, 0.174190,
		29.608126, 35.107056, 22.720963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432060, 34.829472, 22.672466>,  <29.809315, 34.447773, 22.599030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432060, 34.829472, 22.672466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132252, 35.007992, 22.868031>,  <29.952366, 35.115105, 22.985369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132252, 35.007992, 22.868031>,  <30.432060, 34.829472, 22.672466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132252, 35.007992, 22.868031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510892, -0.079666, 0.855946,
		0.420959, 0.891330, -0.168300,
		-0.749522, 0.446301, 0.488909,
		29.907394, 35.141884, 23.014704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765863, 35.297989, 22.975952>,  <30.432060, 34.829472, 22.672466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765863, 35.297989, 22.975952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427166, 35.260082, 23.185349>,  <30.223948, 35.237339, 23.310987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427166, 35.260082, 23.185349>,  <30.765863, 35.297989, 22.975952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427166, 35.260082, 23.185349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530712, -0.218944, 0.818784,
		0.037020, 0.971124, 0.235685,
		-0.846743, -0.094769, 0.523493,
		30.173143, 35.231651, 23.342396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851238, 35.827072, 23.556084>,  <30.765863, 35.297989, 22.975952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851238, 35.827072, 23.556084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.564365, 35.562305, 23.643276>,  <30.392242, 35.403446, 23.695593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.564365, 35.562305, 23.643276>,  <30.851238, 35.827072, 23.556084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564365, 35.562305, 23.643276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460946, -0.215971, 0.860747,
		-0.522664, 0.717791, 0.459998,
		-0.717183, -0.661916, 0.217983,
		30.349211, 35.363731, 23.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741655, 35.992229, 24.213289>,  <30.851238, 35.827072, 23.556084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741655, 35.992229, 24.213289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597509, 35.621281, 24.173071>,  <30.511021, 35.398712, 24.148939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597509, 35.621281, 24.173071>,  <30.741655, 35.992229, 24.213289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597509, 35.621281, 24.173071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369595, -0.240918, 0.897417,
		-0.856467, 0.286238, 0.429573,
		-0.360367, -0.927376, -0.100546,
		30.489399, 35.343067, 24.142906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337795, 35.831043, 24.862017>,  <30.741655, 35.992229, 24.213289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337795, 35.831043, 24.862017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455156, 35.486877, 24.695353>,  <30.525574, 35.280380, 24.595354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455156, 35.486877, 24.695353>,  <30.337795, 35.831043, 24.862017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455156, 35.486877, 24.695353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207594, -0.368101, 0.906315,
		-0.933177, -0.352414, 0.070613,
		0.293405, -0.860411, -0.416662,
		30.543179, 35.228756, 24.570354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931107, 35.327625, 25.301065>,  <30.337795, 35.831043, 24.862017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931107, 35.327625, 25.301065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227177, 35.144253, 25.104298>,  <30.404818, 35.034229, 24.986237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227177, 35.144253, 25.104298>,  <29.931107, 35.327625, 25.301065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227177, 35.144253, 25.104298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325215, -0.396251, 0.858615,
		-0.588540, -0.795503, -0.144206,
		0.740173, -0.458431, -0.491919,
		30.449228, 35.006725, 24.956722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889868, 34.632614, 25.419989>,  <29.931107, 35.327625, 25.301065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889868, 34.632614, 25.419989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267950, 34.666092, 25.293766>,  <30.494801, 34.686180, 25.218033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267950, 34.666092, 25.293766>,  <29.889868, 34.632614, 25.419989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267950, 34.666092, 25.293766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307637, -0.551896, 0.775094,
		-0.109281, -0.829702, -0.547405,
		0.945208, 0.083698, -0.315559,
		30.551512, 34.691200, 25.199099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195543, 33.873852, 25.337347>,  <29.889868, 34.632614, 25.419989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195543, 33.873852, 25.337347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.514034, 34.109638, 25.391827>,  <30.705128, 34.251110, 25.424515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.514034, 34.109638, 25.391827>,  <30.195543, 33.873852, 25.337347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514034, 34.109638, 25.391827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267987, -0.545472, 0.794130,
		0.542408, -0.595808, -0.592289,
		0.796227, 0.589468, 0.136200,
		30.752903, 34.286480, 25.432686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755638, 33.439919, 25.263906>,  <30.195543, 33.873852, 25.337347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755638, 33.439919, 25.263906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.896145, 33.752407, 25.470324>,  <30.980450, 33.939899, 25.594173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.896145, 33.752407, 25.470324>,  <30.755638, 33.439919, 25.263906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896145, 33.752407, 25.470324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354443, -0.621099, 0.699004,
		0.866592, -0.062630, -0.495071,
		0.351267, 0.781226, 0.516041,
		31.001524, 33.986774, 25.625135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279312, 33.163284, 25.632629>,  <30.755638, 33.439919, 25.263906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279312, 33.163284, 25.632629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238489, 33.520485, 25.807964>,  <31.213995, 33.734806, 25.913164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238489, 33.520485, 25.807964>,  <31.279312, 33.163284, 25.632629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238489, 33.520485, 25.807964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354732, -0.378999, 0.854708,
		0.929381, 0.242721, -0.278096,
		-0.102057, 0.892999, 0.438335,
		31.207872, 33.788383, 25.939465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.799431, 32.649574, 28.518211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640564, 33.005711, 28.607254>,  <36.545242, 33.219391, 28.660679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640564, 33.005711, 28.607254>,  <36.799431, 32.649574, 28.518211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640564, 33.005711, 28.607254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433007, -0.032067, 0.900820,
		0.809175, 0.454164, -0.372788,
		-0.397166, 0.890341, 0.222605,
		36.521416, 33.272812, 28.674036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395317, 33.064655, 28.769737>,  <36.799431, 32.649574, 28.518211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395317, 33.064655, 28.769737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.064671, 33.226242, 28.926458>,  <36.866283, 33.323196, 29.020491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.064671, 33.226242, 28.926458>,  <37.395317, 33.064655, 28.769737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064671, 33.226242, 28.926458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442006, 0.035128, 0.896324,
		0.348324, 0.914098, -0.207594,
		-0.826621, 0.403969, 0.391801,
		36.816685, 33.347431, 29.043999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615685, 33.500584, 29.341944>,  <37.395317, 33.064655, 28.769737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615685, 33.500584, 29.341944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228336, 33.441422, 29.422333>,  <36.995930, 33.405922, 29.470566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228336, 33.441422, 29.422333>,  <37.615685, 33.500584, 29.341944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228336, 33.441422, 29.422333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192960, 0.066800, 0.978930,
		-0.158215, 0.986743, -0.036147,
		-0.968367, -0.147907, 0.200971,
		36.937828, 33.397049, 29.482624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484039, 34.055565, 29.869019>,  <37.615685, 33.500584, 29.341944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484039, 34.055565, 29.869019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194271, 33.782986, 29.910660>,  <37.020409, 33.619438, 29.935644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194271, 33.782986, 29.910660>,  <37.484039, 34.055565, 29.869019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194271, 33.782986, 29.910660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099019, 0.046589, 0.993994,
		-0.682207, 0.730381, 0.033726,
		-0.724423, -0.681450, 0.104105,
		36.976944, 33.578552, 29.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147625, 34.323948, 30.339750>,  <37.484039, 34.055565, 29.869019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147625, 34.323948, 30.339750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.029217, 33.942631, 30.363785>,  <36.958172, 33.713840, 30.378206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.029217, 33.942631, 30.363785>,  <37.147625, 34.323948, 30.339750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029217, 33.942631, 30.363785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265171, -0.021582, 0.963960,
		-0.917638, 0.301281, 0.259173,
		-0.296016, -0.953291, 0.060087,
		36.940411, 33.656643, 30.381811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604912, 34.226532, 30.815933>,  <37.147625, 34.323948, 30.339750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604912, 34.226532, 30.815933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.751453, 33.856102, 30.779787>,  <36.839378, 33.633842, 30.758099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.751453, 33.856102, 30.779787>,  <36.604912, 34.226532, 30.815933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751453, 33.856102, 30.779787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163025, -0.031731, 0.986112,
		-0.916082, -0.376001, 0.139349,
		0.366357, -0.926076, -0.090366,
		36.861359, 33.578278, 30.752678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289024, 33.791210, 31.403250>,  <36.604912, 34.226532, 30.815933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289024, 33.791210, 31.403250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.618965, 33.611191, 31.266390>,  <36.816933, 33.503178, 31.184273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.618965, 33.611191, 31.266390>,  <36.289024, 33.791210, 31.403250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618965, 33.611191, 31.266390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345973, -0.076803, 0.935096,
		-0.447118, -0.889695, 0.092353,
		0.824856, -0.450050, -0.342151,
		36.866421, 33.476177, 31.163744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322613, 33.239223, 31.864700>,  <36.289024, 33.791210, 31.403250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322613, 33.239223, 31.864700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684944, 33.261478, 31.696712>,  <36.902344, 33.274830, 31.595921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684944, 33.261478, 31.696712>,  <36.322613, 33.239223, 31.864700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684944, 33.261478, 31.696712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420299, 0.006211, 0.907364,
		0.053088, -0.998432, -0.017757,
		0.905831, 0.055633, -0.419970,
		36.956692, 33.278168, 31.570721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751183, 32.770496, 32.212708>,  <36.322613, 33.239223, 31.864700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751183, 32.770496, 32.212708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005810, 33.039402, 32.061531>,  <37.158588, 33.200745, 31.970825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005810, 33.039402, 32.061531>,  <36.751183, 32.770496, 32.212708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005810, 33.039402, 32.061531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528967, -0.023970, 0.848304,
		0.561222, -0.739926, -0.370862,
		0.636572, 0.672260, -0.377944,
		37.196781, 33.241081, 31.948149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356472, 32.524345, 32.442402>,  <36.751183, 32.770496, 32.212708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356472, 32.524345, 32.442402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419815, 32.909855, 32.356544>,  <37.457821, 33.141159, 32.305031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419815, 32.909855, 32.356544>,  <37.356472, 32.524345, 32.442402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419815, 32.909855, 32.356544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568947, 0.088606, 0.817587,
		0.806984, -0.251589, -0.534302,
		0.158354, 0.963769, -0.214645,
		37.467319, 33.198986, 32.292152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027161, 32.739471, 32.735928>,  <37.356472, 32.524345, 32.442402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027161, 32.739471, 32.735928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841793, 33.092316, 32.702171>,  <37.730572, 33.304024, 32.681919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841793, 33.092316, 32.702171>,  <38.027161, 32.739471, 32.735928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841793, 33.092316, 32.702171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439358, 0.311428, 0.842601,
		0.769551, 0.353399, -0.531884,
		-0.463418, 0.882112, -0.084392,
		37.702766, 33.356949, 32.676853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522243, 33.144852, 33.104568>,  <38.027161, 32.739471, 32.735928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522243, 33.144852, 33.104568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202377, 33.384483, 33.088406>,  <38.010456, 33.528263, 33.078709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202377, 33.384483, 33.088406>,  <38.522243, 33.144852, 33.104568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202377, 33.384483, 33.088406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248326, 0.391239, 0.886152,
		0.546686, 0.698593, -0.461629,
		-0.799668, 0.599082, -0.040406,
		37.962479, 33.564209, 33.076283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673626, 33.848324, 33.154953>,  <38.522243, 33.144852, 33.104568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673626, 33.848324, 33.154953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.299152, 33.823669, 33.293377>,  <38.074467, 33.808876, 33.376431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.299152, 33.823669, 33.293377>,  <38.673626, 33.848324, 33.154953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299152, 33.823669, 33.293377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301770, 0.363913, 0.881194,
		-0.180247, 0.929391, -0.322091,
		-0.936187, -0.061635, 0.346056,
		38.018295, 33.805180, 33.397194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573322, 34.457027, 33.588493>,  <38.673626, 33.848324, 33.154953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573322, 34.457027, 33.588493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381958, 34.115368, 33.670036>,  <38.267139, 33.910374, 33.718964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381958, 34.115368, 33.670036>,  <38.573322, 34.457027, 33.588493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381958, 34.115368, 33.670036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515294, -0.085090, 0.852779,
		-0.711050, 0.513027, 0.480844,
		-0.478413, -0.854145, 0.203856,
		38.238434, 33.859123, 33.731194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530262, 35.139778, 33.456966>,  <38.573322, 34.457027, 33.588493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530262, 35.139778, 33.456966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462917, 35.522125, 33.553276>,  <38.422512, 35.751534, 33.611061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462917, 35.522125, 33.553276>,  <38.530262, 35.139778, 33.456966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462917, 35.522125, 33.553276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447110, 0.143638, -0.882870,
		-0.878491, -0.256296, 0.403195,
		-0.168362, 0.955866, 0.240777,
		38.412407, 35.808884, 33.625511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822742, 35.257477, 33.377010>,  <38.530262, 35.139778, 33.456966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822742, 35.257477, 33.377010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961632, 35.632439, 33.366325>,  <38.044964, 35.857414, 33.359913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961632, 35.632439, 33.366325>,  <37.822742, 35.257477, 33.377010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961632, 35.632439, 33.366325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547302, 0.179428, -0.817476,
		-0.761510, 0.298467, 0.575344,
		0.347222, 0.937402, -0.026715,
		38.065800, 35.913658, 33.358311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227303, 35.724686, 33.238686>,  <37.822742, 35.257477, 33.377010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227303, 35.724686, 33.238686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553677, 35.931198, 33.134609>,  <37.749500, 36.055107, 33.072163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553677, 35.931198, 33.134609>,  <37.227303, 35.724686, 33.238686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553677, 35.931198, 33.134609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421511, 0.223199, -0.878926,
		-0.395700, 0.826821, 0.399735,
		0.815935, 0.516284, -0.260194,
		37.798458, 36.086082, 33.056553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026440, 36.359352, 32.971268>,  <37.227303, 35.724686, 33.238686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026440, 36.359352, 32.971268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.392235, 36.317989, 32.814800>,  <37.611713, 36.293171, 32.720921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.392235, 36.317989, 32.814800>,  <37.026440, 36.359352, 32.971268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392235, 36.317989, 32.814800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338865, 0.332515, -0.880116,
		0.221080, 0.937412, 0.269041,
		0.914491, -0.103407, -0.391169,
		37.666584, 36.286968, 32.697449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052467, 36.849262, 32.408821>,  <37.026440, 36.359352, 32.971268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052467, 36.849262, 32.408821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362244, 36.614380, 32.314644>,  <37.548107, 36.473450, 32.258137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362244, 36.614380, 32.314644>,  <37.052467, 36.849262, 32.408821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362244, 36.614380, 32.314644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167240, 0.168902, -0.971341,
		0.610145, 0.791618, 0.032600,
		0.774438, -0.587207, -0.235445,
		37.594574, 36.438217, 32.244011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342018, 37.228577, 31.817404>,  <37.052467, 36.849262, 32.408821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342018, 37.228577, 31.817404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.504276, 36.863873, 31.791645>,  <37.601631, 36.645050, 31.776190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.504276, 36.863873, 31.791645>,  <37.342018, 37.228577, 31.817404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504276, 36.863873, 31.791645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159999, -0.001466, -0.987116,
		0.899918, 0.410723, -0.146475,
		0.405646, -0.911759, -0.064395,
		37.625969, 36.590343, 31.772326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935043, 37.270142, 31.390787>,  <37.342018, 37.228577, 31.817404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935043, 37.270142, 31.390787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.757893, 36.911942, 31.373213>,  <37.651600, 36.697021, 31.362667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.757893, 36.911942, 31.373213>,  <37.935043, 37.270142, 31.390787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757893, 36.911942, 31.373213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045326, 0.071306, -0.996424,
		0.895434, -0.439306, -0.072170,
		-0.442881, -0.895503, -0.043938,
		37.625027, 36.643291, 31.360031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151424, 36.970676, 30.734653>,  <37.935043, 37.270142, 31.390787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151424, 36.970676, 30.734653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836464, 36.741291, 30.825108>,  <37.647488, 36.603661, 30.879379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836464, 36.741291, 30.825108>,  <38.151424, 36.970676, 30.734653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836464, 36.741291, 30.825108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245817, -0.044310, -0.968303,
		0.565305, -0.818033, -0.106077,
		-0.787403, -0.573462, 0.226135,
		37.600243, 36.569252, 30.892948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131664, 36.389683, 30.230566>,  <38.151424, 36.970676, 30.734653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131664, 36.389683, 30.230566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761963, 36.413139, 30.381462>,  <37.540142, 36.427212, 30.472000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761963, 36.413139, 30.381462>,  <38.131664, 36.389683, 30.230566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761963, 36.413139, 30.381462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380457, -0.223449, -0.897398,
		0.031671, -0.972950, 0.228834,
		-0.924256, 0.058640, 0.377242,
		37.484688, 36.430733, 30.494635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749699, 35.842896, 29.901525>,  <38.131664, 36.389683, 30.230566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749699, 35.842896, 29.901525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446930, 36.054806, 30.054575>,  <37.265266, 36.181953, 30.146404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446930, 36.054806, 30.054575>,  <37.749699, 35.842896, 29.901525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446930, 36.054806, 30.054575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583926, -0.285404, -0.759983,
		-0.293424, -0.798671, 0.525382,
		-0.756923, 0.529782, 0.382621,
		37.219852, 36.213737, 30.169363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148705, 35.333260, 29.968742>,  <37.749699, 35.842896, 29.901525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148705, 35.333260, 29.968742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007446, 35.707077, 29.986277>,  <36.922691, 35.931366, 29.996798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007446, 35.707077, 29.986277>,  <37.148705, 35.333260, 29.968742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007446, 35.707077, 29.986277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598476, -0.189638, -0.778373,
		-0.719109, -0.301112, 0.626270,
		-0.353142, 0.934542, 0.043838,
		36.901505, 35.987438, 29.999428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412773, 35.370274, 29.867973>,  <37.148705, 35.333260, 29.968742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412773, 35.370274, 29.867973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507603, 35.743401, 29.759422>,  <36.564499, 35.967278, 29.694292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507603, 35.743401, 29.759422>,  <36.412773, 35.370274, 29.867973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507603, 35.743401, 29.759422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433145, -0.148547, -0.888999,
		-0.869588, 0.328300, 0.368830,
		0.237069, 0.932820, -0.271376,
		36.578724, 36.023247, 29.678009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830788, 35.722889, 29.549541>,  <36.412773, 35.370274, 29.867973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830788, 35.722889, 29.549541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153515, 35.921009, 29.420721>,  <36.347153, 36.039883, 29.343430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153515, 35.921009, 29.420721>,  <35.830788, 35.722889, 29.549541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153515, 35.921009, 29.420721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375596, 0.009250, -0.926737,
		-0.456036, 0.868672, 0.193496,
		0.806820, 0.495302, -0.322051,
		36.395561, 36.069599, 29.324106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625889, 36.260033, 29.171549>,  <35.830788, 35.722889, 29.549541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625889, 36.260033, 29.171549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996597, 36.240314, 29.022600>,  <36.219025, 36.228485, 28.933231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996597, 36.240314, 29.022600>,  <35.625889, 36.260033, 29.171549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996597, 36.240314, 29.022600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362683, 0.140484, -0.921263,
		0.097723, 0.988855, 0.112320,
		0.926775, -0.049292, -0.372370,
		36.274632, 36.225529, 28.910889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724281, 37.045300, 29.374945>,  <35.625889, 36.260033, 29.171549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724281, 37.045300, 29.374945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391884, 37.236141, 29.489357>,  <35.192444, 37.350647, 29.558004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391884, 37.236141, 29.489357>,  <35.724281, 37.045300, 29.374945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391884, 37.236141, 29.489357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160826, -0.286175, 0.944584,
		0.532523, 0.830947, 0.161079,
		-0.830996, 0.477107, 0.286032,
		35.142586, 37.379272, 29.575167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883751, 37.613613, 30.034597>,  <35.724281, 37.045300, 29.374945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883751, 37.613613, 30.034597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.489460, 37.546341, 30.037432>,  <35.252884, 37.505978, 30.039131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.489460, 37.546341, 30.037432>,  <35.883751, 37.613613, 30.034597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489460, 37.546341, 30.037432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025339, -0.106646, 0.993974,
		-0.166409, 0.979971, 0.109386,
		-0.985731, -0.168178, 0.007084,
		35.193741, 37.495888, 30.039557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559361, 38.063053, 30.534769>,  <35.883751, 37.613613, 30.034597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559361, 38.063053, 30.534769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.292019, 37.767372, 30.501595>,  <35.131615, 37.589962, 30.481689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.292019, 37.767372, 30.501595>,  <35.559361, 38.063053, 30.534769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292019, 37.767372, 30.501595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100426, -0.020806, 0.994727,
		-0.737030, 0.673162, -0.060329,
		-0.668357, -0.739202, -0.082937,
		35.091511, 37.545612, 30.476713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053425, 38.263859, 31.015711>,  <35.559361, 38.063053, 30.534769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053425, 38.263859, 31.015711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.948910, 37.881519, 30.961931>,  <34.886200, 37.652115, 30.929665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.948910, 37.881519, 30.961931>,  <35.053425, 38.263859, 31.015711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948910, 37.881519, 30.961931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191616, -0.085151, 0.977769,
		-0.946051, 0.281242, -0.160907,
		-0.261289, -0.955851, -0.134448,
		34.870522, 37.594765, 30.921597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487827, 38.268227, 31.452482>,  <35.053425, 38.263859, 31.015711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487827, 38.268227, 31.452482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596840, 37.887501, 31.396236>,  <34.662247, 37.659065, 31.362490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596840, 37.887501, 31.396236>,  <34.487827, 38.268227, 31.452482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596840, 37.887501, 31.396236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146270, -0.185435, 0.971709,
		-0.950963, -0.244257, -0.189759,
		0.272534, -0.951815, -0.140614,
		34.678600, 37.601955, 31.354052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985374, 37.857357, 31.631632>,  <34.487827, 38.268227, 31.452482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985374, 37.857357, 31.631632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.309002, 37.624405, 31.663210>,  <34.503178, 37.484634, 31.682156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.309002, 37.624405, 31.663210>,  <33.985374, 37.857357, 31.631632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309002, 37.624405, 31.663210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332594, -0.342971, 0.878494,
		-0.484545, -0.737021, -0.471185,
		0.809072, -0.582383, 0.078943,
		34.551723, 37.449692, 31.686893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780510, 37.146389, 31.696941>,  <33.985374, 37.857357, 31.631632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780510, 37.146389, 31.696941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.145920, 37.193432, 31.852707>,  <34.365166, 37.221657, 31.946165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.145920, 37.193432, 31.852707>,  <33.780510, 37.146389, 31.696941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145920, 37.193432, 31.852707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344390, -0.285878, 0.894242,
		0.216491, -0.951022, -0.220654,
		0.913525, 0.117604, 0.389413,
		34.419975, 37.228714, 31.969530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845810, 36.592804, 32.100521>,  <33.780510, 37.146389, 31.696941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845810, 36.592804, 32.100521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.158051, 36.806812, 32.229771>,  <34.345394, 36.935219, 32.307320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.158051, 36.806812, 32.229771>,  <33.845810, 36.592804, 32.100521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158051, 36.806812, 32.229771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117939, -0.381600, 0.916773,
		0.613797, -0.753745, -0.234779,
		0.780605, 0.535023, 0.323121,
		34.392231, 36.967319, 32.326706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248550, 36.133762, 32.483727>,  <33.845810, 36.592804, 32.100521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248550, 36.133762, 32.483727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.389172, 36.481628, 32.622345>,  <34.473545, 36.690350, 32.705517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.389172, 36.481628, 32.622345>,  <34.248550, 36.133762, 32.483727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389172, 36.481628, 32.622345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074139, -0.343150, 0.936350,
		0.933228, -0.354869, -0.056159,
		0.351553, 0.869664, 0.346547,
		34.494637, 36.742527, 32.726311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798920, 36.060024, 32.962334>,  <34.248550, 36.133762, 32.483727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798920, 36.060024, 32.962334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.660305, 36.422291, 33.060047>,  <34.577137, 36.639652, 33.118675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.660305, 36.422291, 33.060047>,  <34.798920, 36.060024, 32.962334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660305, 36.422291, 33.060047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066131, -0.283357, 0.956732,
		0.935701, 0.315391, 0.158087,
		-0.346539, 0.905670, 0.244280,
		34.556343, 36.693993, 33.133331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146122, 36.128925, 33.512135>,  <34.798920, 36.060024, 32.962334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146122, 36.128925, 33.512135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.857559, 36.405327, 33.530422>,  <34.684422, 36.571167, 33.541393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.857559, 36.405327, 33.530422>,  <35.146122, 36.128925, 33.512135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857559, 36.405327, 33.530422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178306, -0.249133, 0.951914,
		0.669164, 0.678564, 0.302936,
		-0.721406, 0.691002, 0.045719,
		34.641136, 36.612629, 33.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321289, 36.627644, 33.982986>,  <35.146122, 36.128925, 33.512135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321289, 36.627644, 33.982986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921890, 36.649540, 33.982712>,  <34.682251, 36.662678, 33.982548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921890, 36.649540, 33.982712>,  <35.321289, 36.627644, 33.982986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921890, 36.649540, 33.982712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025637, -0.456525, 0.889341,
		0.048367, 0.888025, 0.457244,
		-0.998501, 0.054737, -0.000685,
		34.622341, 36.665962, 33.982506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.068825, 38.747818, 26.122091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697857, 38.610168, 26.180693>,  <34.475277, 38.527576, 26.215853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697857, 38.610168, 26.180693>,  <35.068825, 38.747818, 26.122091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697857, 38.610168, 26.180693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283688, -0.391972, 0.875145,
		-0.243737, 0.853191, 0.461149,
		-0.927423, -0.344128, 0.146502,
		34.419628, 38.506931, 26.224644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811798, 39.182442, 26.671038>,  <35.068825, 38.747818, 26.122091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811798, 39.182442, 26.671038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591709, 38.848766, 26.656189>,  <34.459656, 38.648560, 26.647280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591709, 38.848766, 26.656189>,  <34.811798, 39.182442, 26.671038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591709, 38.848766, 26.656189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222227, -0.189145, 0.956472,
		-0.804901, 0.518027, 0.289452,
		-0.550227, -0.834190, -0.037123,
		34.426640, 38.598511, 26.645052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402050, 39.215038, 27.231869>,  <34.811798, 39.182442, 26.671038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402050, 39.215038, 27.231869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399891, 38.825775, 27.139843>,  <34.398598, 38.592216, 27.084627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399891, 38.825775, 27.139843>,  <34.402050, 39.215038, 27.231869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399891, 38.825775, 27.139843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207028, -0.226168, 0.951834,
		-0.978320, -0.042495, 0.202692,
		-0.005394, -0.973161, -0.230062,
		34.398273, 38.533829, 27.070824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155060, 39.006939, 27.782505>,  <34.402050, 39.215038, 27.231869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155060, 39.006939, 27.782505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292324, 38.665016, 27.626793>,  <34.374683, 38.459862, 27.533365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292324, 38.665016, 27.626793>,  <34.155060, 39.006939, 27.782505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292324, 38.665016, 27.626793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172373, -0.350097, 0.920717,
		-0.923323, -0.383060, 0.027205,
		0.343165, -0.854808, -0.389282,
		34.395275, 38.408573, 27.510008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740063, 38.474522, 28.069717>,  <34.155060, 39.006939, 27.782505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740063, 38.474522, 28.069717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075184, 38.305408, 27.931530>,  <34.276257, 38.203941, 27.848618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075184, 38.305408, 27.931530>,  <33.740063, 38.474522, 28.069717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075184, 38.305408, 27.931530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080131, -0.530679, 0.843777,
		-0.540080, -0.734591, -0.410719,
		0.837790, -0.422796, -0.345473,
		34.326523, 38.178574, 27.827890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716084, 37.725155, 28.375628>,  <33.740063, 38.474522, 28.069717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716084, 37.725155, 28.375628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098976, 37.810665, 28.297638>,  <34.328712, 37.861973, 28.250845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098976, 37.810665, 28.297638>,  <33.716084, 37.725155, 28.375628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098976, 37.810665, 28.297638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274217, -0.455315, 0.847049,
		0.092307, -0.864284, -0.494462,
		0.957227, 0.213779, -0.194973,
		34.386143, 37.874798, 28.239145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034538, 37.110287, 28.352537>,  <33.716084, 37.725155, 28.375628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034538, 37.110287, 28.352537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305706, 37.388844, 28.446737>,  <34.468407, 37.555977, 28.503258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305706, 37.388844, 28.446737>,  <34.034538, 37.110287, 28.352537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305706, 37.388844, 28.446737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166719, -0.457645, 0.873365,
		0.715980, -0.552810, -0.426349,
		0.677921, 0.696392, 0.235501,
		34.509083, 37.597763, 28.517387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540558, 36.813557, 28.636198>,  <34.034538, 37.110287, 28.352537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540558, 36.813557, 28.636198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630245, 37.187782, 28.745338>,  <34.684055, 37.412319, 28.810823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630245, 37.187782, 28.745338>,  <34.540558, 36.813557, 28.636198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630245, 37.187782, 28.745338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177869, -0.314563, 0.932423,
		0.958170, -0.160532, -0.236938,
		0.224216, 0.935564, 0.272851,
		34.697510, 37.468452, 28.827194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191814, 36.803680, 28.953783>,  <34.540558, 36.813557, 28.636198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191814, 36.803680, 28.953783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020061, 37.137390, 29.092129>,  <34.917007, 37.337616, 29.175137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020061, 37.137390, 29.092129>,  <35.191814, 36.803680, 28.953783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020061, 37.137390, 29.092129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268084, -0.247960, 0.930939,
		0.862414, 0.492453, -0.117183,
		-0.429386, 0.834270, 0.345863,
		34.891247, 37.387672, 29.195889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782120, 36.887352, 28.619404>,  <35.191814, 36.803680, 28.953783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782120, 36.887352, 28.619404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049526, 36.593761, 28.571480>,  <36.209972, 36.417606, 28.542725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049526, 36.593761, 28.571480>,  <35.782120, 36.887352, 28.619404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049526, 36.593761, 28.571480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108403, 0.063209, -0.992095,
		0.735752, 0.676223, -0.037309,
		0.668519, -0.733980, -0.119811,
		36.250084, 36.373566, 28.535536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111797, 37.135796, 28.129673>,  <35.782120, 36.887352, 28.619404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111797, 37.135796, 28.129673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201015, 36.745926, 28.136047>,  <36.254547, 36.512005, 28.139872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201015, 36.745926, 28.136047>,  <36.111797, 37.135796, 28.129673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201015, 36.745926, 28.136047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144682, 0.016935, -0.989333,
		0.964010, 0.222976, 0.144795,
		0.223050, -0.974677, 0.015935,
		36.267929, 36.453522, 28.140827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738453, 37.092060, 27.878231>,  <36.111797, 37.135796, 28.129673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738453, 37.092060, 27.878231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571846, 36.736572, 27.801609>,  <36.471882, 36.523281, 27.755636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571846, 36.736572, 27.801609>,  <36.738453, 37.092060, 27.878231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571846, 36.736572, 27.801609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165741, 0.132940, -0.977168,
		0.893892, -0.438756, 0.091925,
		-0.416518, -0.888718, -0.191554,
		36.446892, 36.469955, 27.744143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094917, 36.947510, 27.289244>,  <36.738453, 37.092060, 27.878231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094917, 36.947510, 27.289244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808014, 36.668816, 27.285078>,  <36.635872, 36.501598, 27.282579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808014, 36.668816, 27.285078>,  <37.094917, 36.947510, 27.289244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808014, 36.668816, 27.285078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151712, -0.141560, -0.978235,
		0.680095, -0.703223, 0.207237,
		-0.717254, -0.696734, -0.010413,
		36.592838, 36.459797, 27.281954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415562, 36.391209, 27.060490>,  <37.094917, 36.947510, 27.289244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415562, 36.391209, 27.060490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025898, 36.334568, 26.990108>,  <36.792099, 36.300583, 26.947880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025898, 36.334568, 26.990108>,  <37.415562, 36.391209, 27.060490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025898, 36.334568, 26.990108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181829, -0.029590, -0.982885,
		0.133974, -0.989481, 0.054573,
		-0.974161, -0.141604, -0.175952,
		36.733650, 36.292088, 26.937323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460026, 36.129852, 26.439320>,  <37.415562, 36.391209, 27.060490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460026, 36.129852, 26.439320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075066, 36.231712, 26.477142>,  <36.844090, 36.292828, 26.499836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075066, 36.231712, 26.477142>,  <37.460026, 36.129852, 26.439320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075066, 36.231712, 26.477142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106771, -0.034547, -0.993683,
		-0.249776, -0.966416, 0.060437,
		-0.962399, 0.254651, 0.094556,
		36.786346, 36.308105, 26.505508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199558, 35.592247, 26.067682>,  <37.460026, 36.129852, 26.439320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199558, 35.592247, 26.067682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963173, 35.914925, 26.068483>,  <36.821342, 36.108532, 26.068964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963173, 35.914925, 26.068483>,  <37.199558, 35.592247, 26.067682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963173, 35.914925, 26.068483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107137, -0.076025, -0.991333,
		-0.799554, -0.586054, 0.131355,
		-0.590962, 0.806697, 0.002002,
		36.785885, 36.156933, 26.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715187, 35.429409, 25.584799>,  <37.199558, 35.592247, 26.067682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715187, 35.429409, 25.584799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694996, 35.827553, 25.617548>,  <36.682880, 36.066441, 25.637197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694996, 35.827553, 25.617548>,  <36.715187, 35.429409, 25.584799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694996, 35.827553, 25.617548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200860, 0.070184, -0.977102,
		-0.978319, -0.065763, 0.196387,
		-0.050474, 0.995364, 0.081871,
		36.679855, 36.126163, 25.642109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157459, 35.691505, 25.224012>,  <36.715187, 35.429409, 25.584799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157459, 35.691505, 25.224012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377304, 36.024673, 25.249805>,  <36.509212, 36.224575, 25.265282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377304, 36.024673, 25.249805>,  <36.157459, 35.691505, 25.224012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377304, 36.024673, 25.249805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246483, 0.235425, -0.940118,
		-0.798228, 0.500811, 0.334695,
		0.549617, 0.832925, 0.064481,
		36.542191, 36.274551, 25.269150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627716, 36.297749, 24.889296>,  <36.157459, 35.691505, 25.224012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627716, 36.297749, 24.889296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013035, 36.405094, 24.886972>,  <36.244228, 36.469501, 24.885578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013035, 36.405094, 24.886972>,  <35.627716, 36.297749, 24.889296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013035, 36.405094, 24.886972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060235, 0.195025, -0.978947,
		-0.261585, 0.943369, 0.204033,
		0.963299, 0.268367, -0.005808,
		36.302025, 36.485603, 24.885229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699482, 36.985378, 24.603437>,  <35.627716, 36.297749, 24.889296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699482, 36.985378, 24.603437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081013, 36.871841, 24.564152>,  <36.309933, 36.803719, 24.540581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081013, 36.871841, 24.564152>,  <35.699482, 36.985378, 24.603437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081013, 36.871841, 24.564152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084458, 0.060339, -0.994598,
		0.288234, 0.956971, 0.033580,
		0.953828, -0.283841, -0.098216,
		36.367161, 36.786690, 24.534687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098694, 37.531998, 24.264418>,  <35.699482, 36.985378, 24.603437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098694, 37.531998, 24.264418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282303, 37.181103, 24.208200>,  <36.392467, 36.970566, 24.174471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282303, 37.181103, 24.208200>,  <36.098694, 37.531998, 24.264418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282303, 37.181103, 24.208200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181269, 0.062389, -0.981453,
		0.869735, 0.475986, -0.130378,
		0.459024, -0.877237, -0.140543,
		36.420010, 36.917931, 24.166039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543259, 37.653038, 23.615593>,  <36.098694, 37.531998, 24.264418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543259, 37.653038, 23.615593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481079, 37.260735, 23.662827>,  <36.443771, 37.025352, 23.691166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481079, 37.260735, 23.662827>,  <36.543259, 37.653038, 23.615593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481079, 37.260735, 23.662827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331142, -0.060885, -0.941614,
		0.930688, -0.185475, -0.315307,
		-0.155448, -0.980761, 0.118084,
		36.434444, 36.966507, 23.698252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916416, 37.409256, 22.971439>,  <36.543259, 37.653038, 23.615593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916416, 37.409256, 22.971439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664829, 37.119003, 23.083057>,  <36.513878, 36.944851, 23.150028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664829, 37.119003, 23.083057>,  <36.916416, 37.409256, 22.971439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664829, 37.119003, 23.083057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269165, -0.133483, -0.953799,
		0.729352, -0.675015, -0.111358,
		-0.628965, -0.725629, 0.279046,
		36.476139, 36.901314, 23.166771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.011246, 36.426395, 26.253847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.320669, 36.632210, 26.105869>,  <29.506323, 36.755699, 26.017082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.320669, 36.632210, 26.105869>,  <29.011246, 36.426395, 26.253847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320669, 36.632210, 26.105869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583573, -0.350769, 0.732395,
		0.247079, -0.782440, -0.571611,
		0.773559, 0.514537, -0.369944,
		29.552736, 36.786572, 25.994886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577148, 35.927826, 26.246910>,  <29.011246, 36.426395, 26.253847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577148, 35.927826, 26.246910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.757622, 36.284798, 26.247248>,  <29.865906, 36.498981, 26.247450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.757622, 36.284798, 26.247248>,  <29.577148, 35.927826, 26.246910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757622, 36.284798, 26.247248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539852, -0.273681, 0.796027,
		0.710630, -0.358698, -0.605261,
		0.451181, 0.892432, 0.000842,
		29.892977, 36.552528, 26.247499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206261, 35.781357, 26.436888>,  <29.577148, 35.927826, 26.246910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206261, 35.781357, 26.436888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.205339, 36.177628, 26.491381>,  <30.204786, 36.415390, 26.524076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.205339, 36.177628, 26.491381>,  <30.206261, 35.781357, 26.436888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205339, 36.177628, 26.491381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457932, -0.120065, 0.880842,
		0.888985, 0.064414, -0.453385,
		-0.002302, 0.990674, 0.136233,
		30.204649, 36.474831, 26.532251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818642, 35.828556, 26.749306>,  <30.206261, 35.781357, 26.436888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818642, 35.828556, 26.749306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.625696, 36.163784, 26.851261>,  <30.509930, 36.364922, 26.912434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.625696, 36.163784, 26.851261>,  <30.818642, 35.828556, 26.749306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625696, 36.163784, 26.851261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232794, -0.157872, 0.959627,
		0.844472, 0.522225, -0.118945,
		-0.482363, 0.838068, 0.254889,
		30.480988, 36.415203, 26.927729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368290, 36.195442, 26.980408>,  <30.818642, 35.828556, 26.749306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368290, 36.195442, 26.980408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.022701, 36.317352, 27.140739>,  <30.815348, 36.390499, 27.236938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.022701, 36.317352, 27.140739>,  <31.368290, 36.195442, 26.980408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022701, 36.317352, 27.140739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440607, 0.072238, 0.894789,
		0.243754, 0.949681, -0.196697,
		-0.863973, 0.304774, 0.400828,
		30.763510, 36.408783, 27.260988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528259, 36.863743, 27.342484>,  <31.368290, 36.195442, 26.980408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528259, 36.863743, 27.342484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.183270, 36.733170, 27.497187>,  <30.976276, 36.654827, 27.590008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.183270, 36.733170, 27.497187>,  <31.528259, 36.863743, 27.342484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183270, 36.733170, 27.497187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380793, 0.084820, 0.920762,
		-0.333373, 0.941406, 0.051149,
		-0.862473, -0.326434, 0.386758,
		30.924528, 36.635239, 27.613214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381159, 37.352180, 27.980522>,  <31.528259, 36.863743, 27.342484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381159, 37.352180, 27.980522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.177208, 37.008102, 27.984192>,  <31.054836, 36.801655, 27.986393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.177208, 37.008102, 27.984192>,  <31.381159, 37.352180, 27.980522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177208, 37.008102, 27.984192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393877, -0.223962, 0.891460,
		-0.764777, 0.458150, 0.453006,
		-0.509879, -0.860197, 0.009174,
		31.024244, 36.750042, 27.986944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971029, 37.317600, 28.566767>,  <31.381159, 37.352180, 27.980522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971029, 37.317600, 28.566767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.020437, 36.930668, 28.478210>,  <31.050081, 36.698509, 28.425077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.020437, 36.930668, 28.478210>,  <30.971029, 37.317600, 28.566767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020437, 36.930668, 28.478210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378310, -0.160347, 0.911685,
		-0.917401, -0.196364, 0.346145,
		0.123519, -0.967331, -0.221389,
		31.057493, 36.640469, 28.411795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869156, 36.991180, 29.129004>,  <30.971029, 37.317600, 28.566767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869156, 36.991180, 29.129004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.015471, 36.665997, 28.947763>,  <31.103260, 36.470886, 28.839020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.015471, 36.665997, 28.947763>,  <30.869156, 36.991180, 29.129004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015471, 36.665997, 28.947763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299263, -0.358246, 0.884365,
		-0.881272, -0.459086, 0.112247,
		0.365787, -0.812957, -0.453100,
		31.125206, 36.422108, 28.811834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475191, 36.444530, 29.281801>,  <30.869156, 36.991180, 29.129004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475191, 36.444530, 29.281801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821392, 36.270638, 29.182274>,  <31.029112, 36.166302, 29.122559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821392, 36.270638, 29.182274>,  <30.475191, 36.444530, 29.281801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821392, 36.270638, 29.182274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086421, -0.618887, 0.780711,
		-0.493392, -0.654205, -0.573219,
		0.865504, -0.434735, -0.248816,
		31.081043, 36.140217, 29.107628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322514, 35.790401, 29.418039>,  <30.475191, 36.444530, 29.281801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322514, 35.790401, 29.418039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720510, 35.828400, 29.430477>,  <30.959309, 35.851196, 29.437941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720510, 35.828400, 29.430477>,  <30.322514, 35.790401, 29.418039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720510, 35.828400, 29.430477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023877, -0.527984, 0.848919,
		0.097059, -0.843925, -0.527608,
		0.994992, 0.094993, 0.031095,
		31.019009, 35.856899, 29.439806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497854, 35.181160, 29.641924>,  <30.322514, 35.790401, 29.418039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497854, 35.181160, 29.641924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.838634, 35.384323, 29.692842>,  <31.043102, 35.506222, 29.723394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.838634, 35.384323, 29.692842>,  <30.497854, 35.181160, 29.641924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838634, 35.384323, 29.692842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132808, -0.444763, 0.885747,
		0.506499, -0.737707, -0.446372,
		0.851952, 0.507912, 0.127298,
		31.094219, 35.536697, 29.731031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989494, 34.709538, 29.937315>,  <30.497854, 35.181160, 29.641924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989494, 34.709538, 29.937315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.173891, 35.057335, 30.008268>,  <31.284529, 35.266014, 30.050840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.173891, 35.057335, 30.008268>,  <30.989494, 34.709538, 29.937315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173891, 35.057335, 30.008268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287339, -0.335376, 0.897195,
		0.839598, -0.362629, -0.404445,
		0.460990, 0.869496, 0.177384,
		31.312189, 35.318184, 30.061483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726160, 34.525375, 30.114496>,  <30.989494, 34.709538, 29.937315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726160, 34.525375, 30.114496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.575382, 34.872055, 30.245182>,  <31.484915, 35.080063, 30.323593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.575382, 34.872055, 30.245182>,  <31.726160, 34.525375, 30.114496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575382, 34.872055, 30.245182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201319, -0.267638, 0.942253,
		0.904093, 0.420951, -0.073599,
		-0.376944, 0.866701, 0.326715,
		31.462299, 35.132065, 30.343197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414146, 34.397160, 29.746992>,  <31.726160, 34.525375, 30.114496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414146, 34.397160, 29.746992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.503391, 34.017071, 29.660002>,  <32.556938, 33.789017, 29.607807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.503391, 34.017071, 29.660002>,  <32.414146, 34.397160, 29.746992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503391, 34.017071, 29.660002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370465, 0.123704, -0.920572,
		0.901653, 0.285955, -0.324425,
		0.223109, -0.950225, -0.217475,
		32.570324, 33.732002, 29.594759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621826, 34.387383, 29.119413>,  <32.414146, 34.397160, 29.746992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621826, 34.387383, 29.119413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.521282, 34.003914, 29.172741>,  <32.460957, 33.773834, 29.204737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.521282, 34.003914, 29.172741>,  <32.621826, 34.387383, 29.119413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521282, 34.003914, 29.172741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427064, -0.013755, -0.904117,
		0.868581, -0.284196, -0.405955,
		-0.251363, -0.958668, 0.133317,
		32.445873, 33.716312, 29.212736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816120, 33.978855, 28.601202>,  <32.621826, 34.387383, 29.119413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816120, 33.978855, 28.601202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.522949, 33.758953, 28.761496>,  <32.347046, 33.627014, 28.857672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.522949, 33.758953, 28.761496>,  <32.816120, 33.978855, 28.601202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522949, 33.758953, 28.761496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435725, -0.073031, -0.897112,
		0.522454, -0.832130, -0.186013,
		-0.732929, -0.549751, 0.400735,
		32.303070, 33.594028, 28.881716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838741, 33.311291, 28.303173>,  <32.816120, 33.978855, 28.601202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838741, 33.311291, 28.303173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.465382, 33.365780, 28.435966>,  <32.241367, 33.398472, 28.515642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.465382, 33.365780, 28.435966>,  <32.838741, 33.311291, 28.303173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465382, 33.365780, 28.435966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345917, -0.095457, -0.933397,
		-0.095457, -0.986069, 0.136221,
		0.933397, -0.136221, -0.331986,
		32.185364, 33.406647, 28.535563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510433, 32.848454, 27.817039>,  <32.838741, 33.311291, 28.303173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510433, 32.848454, 27.817039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.227798, 33.083893, 27.974157>,  <32.058216, 33.225155, 28.068428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.227798, 33.083893, 27.974157>,  <32.510433, 32.848454, 27.817039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227798, 33.083893, 27.974157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415343, 0.104436, -0.903650,
		-0.572906, -0.801653, 0.170676,
		-0.706589, 0.588596, 0.392793,
		32.015823, 33.260471, 28.091995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811321, 32.399818, 27.765886>,  <32.510433, 32.848454, 27.817039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811321, 32.399818, 27.765886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.752300, 32.794964, 27.785322>,  <31.716887, 33.032051, 27.796984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.752300, 32.794964, 27.785322>,  <31.811321, 32.399818, 27.765886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752300, 32.794964, 27.785322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404315, -0.015411, -0.914490,
		-0.902639, -0.154583, 0.401680,
		-0.147555, 0.987860, 0.048589,
		31.708035, 33.091320, 27.799898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210239, 32.515121, 27.444715>,  <31.811321, 32.399818, 27.765886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210239, 32.515121, 27.444715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.364298, 32.883896, 27.461172>,  <31.456732, 33.105160, 27.471046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.364298, 32.883896, 27.461172>,  <31.210239, 32.515121, 27.444715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364298, 32.883896, 27.461172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513053, 0.250961, -0.820850,
		-0.767099, 0.295038, 0.569660,
		0.385144, 0.921939, 0.041142,
		31.479841, 33.160477, 27.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690491, 32.987476, 27.254145>,  <31.210239, 32.515121, 27.444715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690491, 32.987476, 27.254145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.026602, 33.189552, 27.175442>,  <31.228268, 33.310799, 27.128220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.026602, 33.189552, 27.175442>,  <30.690491, 32.987476, 27.254145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026602, 33.189552, 27.175442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445850, 0.437416, -0.780951,
		-0.308464, 0.743942, 0.592791,
		0.840278, 0.505191, -0.196759,
		31.278685, 33.341110, 27.116413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382072, 33.604019, 27.014923>,  <30.690491, 32.987476, 27.254145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382072, 33.604019, 27.014923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.761471, 33.627193, 26.890345>,  <30.989109, 33.641098, 26.815598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.761471, 33.627193, 26.890345>,  <30.382072, 33.604019, 27.014923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761471, 33.627193, 26.890345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273274, 0.646924, -0.711906,
		0.160241, 0.760351, 0.629436,
		0.948495, 0.057932, -0.311448,
		31.046019, 33.644573, 26.796909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507469, 34.247219, 26.928734>,  <30.382072, 33.604019, 27.014923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507469, 34.247219, 26.928734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815199, 34.099583, 26.720152>,  <30.999836, 34.011002, 26.595003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815199, 34.099583, 26.720152>,  <30.507469, 34.247219, 26.928734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815199, 34.099583, 26.720152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251286, 0.575608, -0.778159,
		0.587365, 0.729690, 0.350080,
		0.769323, -0.369092, -0.521452,
		31.045996, 33.988853, 26.563717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918436, 34.796329, 26.716286>,  <30.507469, 34.247219, 26.928734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918436, 34.796329, 26.716286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.007097, 34.506607, 26.455135>,  <31.060293, 34.332775, 26.298445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.007097, 34.506607, 26.455135>,  <30.918436, 34.796329, 26.716286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007097, 34.506607, 26.455135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030801, 0.663998, -0.747100,
		0.974639, 0.185706, 0.124868,
		0.221653, -0.724307, -0.652878,
		31.073593, 34.289314, 26.259272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331060, 35.079590, 26.283211>,  <30.918436, 34.796329, 26.716286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331060, 35.079590, 26.283211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.234251, 34.738350, 26.098326>,  <31.176165, 34.533604, 25.987394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.234251, 34.738350, 26.098326>,  <31.331060, 35.079590, 26.283211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234251, 34.738350, 26.098326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024826, 0.470775, -0.881904,
		0.969953, -0.224917, -0.092759,
		-0.242024, -0.853102, -0.462214,
		31.161644, 34.482418, 25.959661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754549, 35.084675, 25.632572>,  <31.331060, 35.079590, 26.283211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754549, 35.084675, 25.632572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.442572, 34.841900, 25.571495>,  <31.255384, 34.696236, 25.534849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.442572, 34.841900, 25.571495>,  <31.754549, 35.084675, 25.632572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442572, 34.841900, 25.571495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146926, 0.414728, -0.898005,
		0.608359, -0.677958, -0.412639,
		-0.779943, -0.606938, -0.152694,
		31.208588, 34.659821, 25.525686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781858, 34.871380, 24.890154>,  <31.754549, 35.084675, 25.632572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781858, 34.871380, 24.890154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.399418, 34.821800, 24.996367>,  <31.169954, 34.792053, 25.060095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.399418, 34.821800, 24.996367>,  <31.781858, 34.871380, 24.890154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399418, 34.821800, 24.996367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288337, 0.236291, -0.927916,
		0.052273, -0.963744, -0.261658,
		-0.956101, -0.123950, 0.265532,
		31.112587, 34.784615, 25.076025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164497, 34.315823, 24.628433>,  <31.781858, 34.871380, 24.890154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164497, 34.315823, 24.628433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.531307, 34.287804, 24.471378>,  <32.751392, 34.270992, 24.377146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.531307, 34.287804, 24.471378>,  <32.164497, 34.315823, 24.628433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531307, 34.287804, 24.471378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370564, -0.214420, 0.903718,
		-0.147488, -0.974227, -0.170673,
		0.917022, -0.070042, -0.392638,
		32.806416, 34.266788, 24.353586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420734, 33.598389, 24.766697>,  <32.164497, 34.315823, 24.628433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420734, 33.598389, 24.766697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.722179, 33.854977, 24.709299>,  <32.903046, 34.008930, 24.674860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.722179, 33.854977, 24.709299>,  <32.420734, 33.598389, 24.766697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722179, 33.854977, 24.709299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431038, -0.317445, 0.844651,
		0.496266, -0.698388, -0.515727,
		0.753608, 0.641470, -0.143495,
		32.948261, 34.047417, 24.666250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023727, 33.219372, 25.042820>,  <32.420734, 33.598389, 24.766697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023727, 33.219372, 25.042820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195160, 33.578201, 24.999777>,  <33.298019, 33.793499, 24.973951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195160, 33.578201, 24.999777>,  <33.023727, 33.219372, 25.042820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195160, 33.578201, 24.999777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579430, -0.181512, 0.794553,
		0.693240, -0.402880, -0.597583,
		0.428578, 0.897074, -0.107610,
		33.323734, 33.847324, 24.967493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623131, 33.093002, 25.049561>,  <33.023727, 33.219372, 25.042820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623131, 33.093002, 25.049561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605801, 33.484077, 25.131779>,  <33.595402, 33.718723, 25.181110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605801, 33.484077, 25.131779>,  <33.623131, 33.093002, 25.049561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605801, 33.484077, 25.131779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630910, -0.132748, 0.764415,
		0.774645, 0.162803, -0.611081,
		-0.043329, 0.977688, 0.205546,
		33.592800, 33.777382, 25.193443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362530, 33.362137, 24.932232>,  <33.623131, 33.093002, 25.049561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362530, 33.362137, 24.932232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.134102, 33.585773, 25.172665>,  <33.997044, 33.719955, 25.316925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.134102, 33.585773, 25.172665>,  <34.362530, 33.362137, 24.932232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134102, 33.585773, 25.172665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752746, 0.064526, 0.655141,
		0.327495, 0.826594, -0.457700,
		-0.571070, 0.559087, 0.601083,
		33.962780, 33.753498, 25.352989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901314, 33.712898, 25.267305>,  <34.362530, 33.362137, 24.932232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901314, 33.712898, 25.267305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576271, 33.769691, 25.493404>,  <34.381245, 33.803768, 25.629065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576271, 33.769691, 25.493404>,  <34.901314, 33.712898, 25.267305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576271, 33.769691, 25.493404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580341, 0.108018, 0.807178,
		0.053547, 0.983958, -0.170174,
		-0.812611, 0.141981, 0.565248,
		34.332489, 33.812286, 25.662979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005199, 34.423401, 25.644880>,  <34.901314, 33.712898, 25.267305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005199, 34.423401, 25.644880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.745323, 34.187290, 25.836493>,  <34.589397, 34.045624, 25.951460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.745323, 34.187290, 25.836493>,  <35.005199, 34.423401, 25.644880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745323, 34.187290, 25.836493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491898, 0.154014, 0.856923,
		-0.579599, 0.792372, 0.190294,
		-0.649694, -0.590276, 0.479032,
		34.550415, 34.010208, 25.980202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022202, 34.740845, 26.329956>,  <35.005199, 34.423401, 25.644880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022202, 34.740845, 26.329956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848904, 34.386955, 26.398737>,  <34.744926, 34.174622, 26.440006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848904, 34.386955, 26.398737>,  <35.022202, 34.740845, 26.329956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848904, 34.386955, 26.398737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603693, -0.143201, 0.784250,
		-0.669218, 0.443579, 0.596142,
		-0.433245, -0.884721, 0.171953,
		34.718929, 34.121540, 26.450323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964798, 34.681065, 27.013643>,  <35.022202, 34.740845, 26.329956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964798, 34.681065, 27.013643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964573, 34.302082, 26.885695>,  <34.964439, 34.074692, 26.808926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964573, 34.302082, 26.885695>,  <34.964798, 34.681065, 27.013643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964573, 34.302082, 26.885695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583364, -0.260112, 0.769434,
		-0.812211, -0.186172, 0.552859,
		-0.000558, -0.947461, -0.319872,
		34.964405, 34.017845, 26.789732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755363, 34.380096, 27.654076>,  <34.964798, 34.681065, 27.013643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755363, 34.380096, 27.654076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915676, 34.099541, 27.418303>,  <35.011864, 33.931210, 27.276838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915676, 34.099541, 27.418303>,  <34.755363, 34.380096, 27.654076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915676, 34.099541, 27.418303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463496, -0.399738, 0.790810,
		-0.790283, -0.590141, 0.164883,
		0.400780, -0.701386, -0.589434,
		35.035912, 33.889126, 27.241472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658455, 33.711056, 27.999189>,  <34.755363, 34.380096, 27.654076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658455, 33.711056, 27.999189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967899, 33.681717, 27.747427>,  <35.153564, 33.664112, 27.596369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967899, 33.681717, 27.747427>,  <34.658455, 33.711056, 27.999189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967899, 33.681717, 27.747427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579218, -0.320967, 0.749324,
		-0.256977, -0.944246, -0.205820,
		0.773608, -0.073345, -0.629406,
		35.199982, 33.659714, 27.558605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884705, 33.079479, 27.920082>,  <34.658455, 33.711056, 27.999189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884705, 33.079479, 27.920082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209923, 33.296814, 27.836432>,  <35.405056, 33.427216, 27.786242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209923, 33.296814, 27.836432>,  <34.884705, 33.079479, 27.920082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209923, 33.296814, 27.836432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492896, -0.451222, 0.743944,
		0.309852, -0.707940, -0.634675,
		0.813047, 0.543341, -0.209128,
		35.453838, 33.459816, 27.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427502, 32.671360, 28.059740>,  <34.884705, 33.079479, 27.920082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427502, 32.671360, 28.059740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622269, 33.020653, 28.051928>,  <35.739128, 33.230228, 28.047241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622269, 33.020653, 28.051928>,  <35.427502, 32.671360, 28.059740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622269, 33.020653, 28.051928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517347, -0.270317, 0.811961,
		0.703749, -0.405463, -0.583384,
		0.486919, 0.873229, -0.019529,
		35.768345, 33.282623, 28.046068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059475, 32.618313, 28.158703>,  <35.427502, 32.671360, 28.059740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059475, 32.618313, 28.158703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098511, 32.999268, 28.274250>,  <36.121933, 33.227840, 28.343578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098511, 32.999268, 28.274250>,  <36.059475, 32.618313, 28.158703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098511, 32.999268, 28.274250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468564, -0.300037, 0.830918,
		0.878023, 0.054265, -0.475532,
		0.097588, 0.952383, 0.288866,
		36.127789, 33.284981, 28.360910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.947037, 36.340557, 22.222712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639706, 36.366913, 22.477371>,  <36.455307, 36.382725, 22.630167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639706, 36.366913, 22.477371>,  <36.947037, 36.340557, 22.222712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639706, 36.366913, 22.477371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636557, -0.182452, -0.749337,
		0.066784, -0.981005, 0.182127,
		-0.768333, 0.065891, 0.636650,
		36.409206, 36.386681, 22.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504856, 35.827484, 22.048510>,  <36.947037, 36.340557, 22.222712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504856, 35.827484, 22.048510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287251, 36.094257, 22.252176>,  <36.156685, 36.254322, 22.374376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287251, 36.094257, 22.252176>,  <36.504856, 35.827484, 22.048510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287251, 36.094257, 22.252176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719200, -0.058064, -0.692373,
		-0.432202, -0.742852, 0.511246,
		-0.544015, 0.666933, 0.509164,
		36.124046, 36.294338, 22.404926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867859, 35.591145, 21.988281>,  <36.504856, 35.827484, 22.048510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867859, 35.591145, 21.988281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802578, 35.970863, 22.095766>,  <35.763409, 36.198692, 22.160257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802578, 35.970863, 22.095766>,  <35.867859, 35.591145, 21.988281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802578, 35.970863, 22.095766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806854, 0.028313, -0.590071,
		-0.567759, -0.313116, 0.761320,
		-0.163206, 0.949293, 0.268714,
		35.753616, 36.255650, 22.176380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131531, 35.678509, 22.406590>,  <35.867859, 35.591145, 21.988281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131531, 35.678509, 22.406590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239773, 36.023098, 22.234709>,  <35.304718, 36.229851, 22.131580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239773, 36.023098, 22.234709>,  <35.131531, 35.678509, 22.406590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239773, 36.023098, 22.234709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840299, -0.006439, -0.542085,
		-0.469756, 0.507770, 0.722149,
		0.270605, 0.861468, -0.429704,
		35.320953, 36.281540, 22.105797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502235, 36.051430, 22.271545>,  <35.131531, 35.678509, 22.406590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502235, 36.051430, 22.271545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765667, 36.227081, 22.027107>,  <34.923725, 36.332470, 21.880444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765667, 36.227081, 22.027107>,  <34.502235, 36.051430, 22.271545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765667, 36.227081, 22.027107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711984, 0.100713, -0.694936,
		-0.243620, 0.892762, 0.378978,
		0.658581, 0.439127, -0.611097,
		34.963242, 36.358818, 21.843779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138088, 36.628128, 21.961843>,  <34.502235, 36.051430, 22.271545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138088, 36.628128, 21.961843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453579, 36.591900, 21.718630>,  <34.642876, 36.570164, 21.572702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453579, 36.591900, 21.718630>,  <34.138088, 36.628128, 21.961843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453579, 36.591900, 21.718630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597645, 0.118669, -0.792930,
		0.143971, 0.988795, 0.039469,
		0.788729, -0.090570, -0.608033,
		34.690197, 36.564728, 21.536221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082512, 37.255230, 21.469044>,  <34.138088, 36.628128, 21.961843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082512, 37.255230, 21.469044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327915, 36.984814, 21.305784>,  <34.475155, 36.822563, 21.207829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327915, 36.984814, 21.305784>,  <34.082512, 37.255230, 21.469044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327915, 36.984814, 21.305784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463287, 0.110433, -0.879301,
		0.639512, 0.728546, -0.245448,
		0.613506, -0.676036, -0.408149,
		34.511967, 36.782001, 21.183340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349319, 37.507000, 20.807152>,  <34.082512, 37.255230, 21.469044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349319, 37.507000, 20.807152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407715, 37.111420, 20.796890>,  <34.442753, 36.874069, 20.790733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407715, 37.111420, 20.796890>,  <34.349319, 37.507000, 20.807152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407715, 37.111420, 20.796890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423130, -0.038977, -0.905230,
		0.894231, 0.143004, -0.424146,
		0.145984, -0.988954, -0.025655,
		34.451511, 36.814732, 20.789194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629215, 37.370476, 20.102686>,  <34.349319, 37.507000, 20.807152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629215, 37.370476, 20.102686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496605, 37.021812, 20.247080>,  <34.417038, 36.812614, 20.333717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496605, 37.021812, 20.247080>,  <34.629215, 37.370476, 20.102686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496605, 37.021812, 20.247080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370310, -0.231696, -0.899548,
		0.867734, -0.431899, -0.245970,
		-0.331524, -0.871654, 0.360987,
		34.397148, 36.760315, 20.355375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707111, 36.756489, 19.593897>,  <34.629215, 37.370476, 20.102686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707111, 36.756489, 19.593897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410751, 36.637508, 19.834759>,  <34.232937, 36.566120, 19.979277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410751, 36.637508, 19.834759>,  <34.707111, 36.756489, 19.593897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410751, 36.637508, 19.834759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545655, -0.256140, -0.797905,
		0.391575, -0.919736, 0.027467,
		-0.740898, -0.297452, 0.602157,
		34.188480, 36.548271, 20.015406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403912, 36.164295, 19.189476>,  <34.707111, 36.756489, 19.593897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403912, 36.164295, 19.189476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143097, 36.272678, 19.472725>,  <33.986610, 36.337708, 19.642673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143097, 36.272678, 19.472725>,  <34.403912, 36.164295, 19.189476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143097, 36.272678, 19.472725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751573, -0.107840, -0.650775,
		-0.099964, -0.956534, 0.273954,
		-0.652032, 0.270950, 0.708125,
		33.947487, 36.353966, 19.685162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905277, 35.638840, 19.217146>,  <34.403912, 36.164295, 19.189476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905277, 35.638840, 19.217146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735348, 35.952225, 19.398569>,  <33.633389, 36.140255, 19.507423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735348, 35.952225, 19.398569>,  <33.905277, 35.638840, 19.217146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735348, 35.952225, 19.398569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790617, -0.077046, -0.607444,
		-0.440965, -0.616645, 0.652149,
		-0.424823, 0.783462, 0.453556,
		33.607903, 36.187263, 19.534636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219917, 35.777058, 18.849121>,  <33.905277, 35.638840, 19.217146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219917, 35.777058, 18.849121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527737, 36.027950, 18.897078>,  <33.712429, 36.178486, 18.925852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527737, 36.027950, 18.897078>,  <33.219917, 35.777058, 18.849121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527737, 36.027950, 18.897078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617282, 0.778740, -0.111924,
		-0.163568, 0.012123, 0.986457,
		0.769551, 0.627229, 0.119894,
		33.758602, 36.216118, 18.933046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426651, 35.681816, 18.653294>,  <33.219917, 35.777058, 18.849121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426651, 35.681816, 18.653294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.042309, 35.584732, 18.706724>,  <31.811703, 35.526482, 18.738783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.042309, 35.584732, 18.706724>,  <32.426651, 35.681816, 18.653294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042309, 35.584732, 18.706724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196516, -0.257257, 0.946150,
		-0.195275, 0.935367, 0.294884,
		-0.960858, -0.242709, 0.133578,
		31.754051, 35.511921, 18.746798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255806, 35.958885, 19.197714>,  <32.426651, 35.681816, 18.653294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255806, 35.958885, 19.197714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999352, 35.654419, 19.158587>,  <31.845478, 35.471741, 19.135109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999352, 35.654419, 19.158587>,  <32.255806, 35.958885, 19.197714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999352, 35.654419, 19.158587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015899, -0.114264, 0.993323,
		-0.767259, 0.638415, 0.061158,
		-0.641140, -0.761164, -0.097820,
		31.807009, 35.426071, 19.129240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832510, 36.007504, 19.768309>,  <32.255806, 35.958885, 19.197714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832510, 36.007504, 19.768309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772610, 35.629864, 19.650827>,  <31.736670, 35.403282, 19.580339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772610, 35.629864, 19.650827>,  <31.832510, 36.007504, 19.768309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772610, 35.629864, 19.650827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035888, -0.291665, 0.955847,
		-0.988073, 0.153677, 0.009795,
		-0.149749, -0.944095, -0.293701,
		31.727686, 35.346634, 19.562717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339499, 35.729664, 20.213688>,  <31.832510, 36.007504, 19.768309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339499, 35.729664, 20.213688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516876, 35.403492, 20.064861>,  <31.623302, 35.207790, 19.975565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516876, 35.403492, 20.064861>,  <31.339499, 35.729664, 20.213688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516876, 35.403492, 20.064861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037154, -0.431481, 0.901357,
		-0.895531, -0.385878, -0.221634,
		0.443445, -0.815427, -0.372068,
		31.649910, 35.158863, 19.953241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934750, 35.173214, 20.421619>,  <31.339499, 35.729664, 20.213688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934750, 35.173214, 20.421619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314600, 35.071033, 20.349009>,  <31.542511, 35.009724, 20.305443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314600, 35.071033, 20.349009>,  <30.934750, 35.173214, 20.421619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314600, 35.071033, 20.349009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098524, -0.306512, 0.946754,
		-0.297462, -0.916956, -0.265909,
		0.949637, -0.255425, -0.181518,
		31.599487, 34.994396, 20.294550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036566, 34.552158, 20.765429>,  <30.934750, 35.173214, 20.421619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036566, 34.552158, 20.765429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418566, 34.641136, 20.686953>,  <31.647766, 34.694523, 20.639868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418566, 34.641136, 20.686953>,  <31.036566, 34.552158, 20.765429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418566, 34.641136, 20.686953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271092, -0.386278, 0.881645,
		0.120334, -0.895158, -0.429199,
		0.955002, 0.222445, -0.196188,
		31.705067, 34.707870, 20.628096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354044, 33.975304, 20.973654>,  <31.036566, 34.552158, 20.765429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354044, 33.975304, 20.973654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639406, 34.255604, 20.973541>,  <31.810623, 34.423786, 20.973475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639406, 34.255604, 20.973541>,  <31.354044, 33.975304, 20.973654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639406, 34.255604, 20.973541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433636, -0.441148, 0.785715,
		0.550468, -0.560654, -0.618588,
		0.713404, 0.700753, -0.000282,
		31.853428, 34.465828, 20.973457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900028, 33.537018, 21.124411>,  <31.354044, 33.975304, 20.973654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900028, 33.537018, 21.124411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999935, 33.916904, 21.199947>,  <32.059879, 34.144836, 21.245270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999935, 33.916904, 21.199947>,  <31.900028, 33.537018, 21.124411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999935, 33.916904, 21.199947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557943, -0.300545, 0.773545,
		0.791402, -0.087842, -0.604952,
		0.249765, 0.949714, 0.188841,
		32.074863, 34.201820, 21.256599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678818, 33.538269, 21.359631>,  <31.900028, 33.537018, 21.124411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678818, 33.538269, 21.359631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529133, 33.897316, 21.452801>,  <32.439323, 34.112743, 21.508703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529133, 33.897316, 21.452801>,  <32.678818, 33.538269, 21.359631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529133, 33.897316, 21.452801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385304, -0.077971, 0.919490,
		0.843508, 0.433832, -0.316677,
		-0.374212, 0.897614, 0.232926,
		32.416870, 34.166599, 21.522678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219387, 33.781544, 21.755510>,  <32.678818, 33.538269, 21.359631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219387, 33.781544, 21.755510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897434, 33.997658, 21.853704>,  <32.704262, 34.127327, 21.912621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897434, 33.997658, 21.853704>,  <33.219387, 33.781544, 21.755510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897434, 33.997658, 21.853704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291287, -0.000717, 0.956635,
		0.517032, 0.841482, -0.156801,
		-0.804879, 0.540285, 0.245484,
		32.655972, 34.159744, 21.927349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400612, 34.323795, 22.032000>,  <33.219387, 33.781544, 21.755510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400612, 34.323795, 22.032000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027893, 34.315044, 22.176924>,  <32.804260, 34.309792, 22.263878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027893, 34.315044, 22.176924>,  <33.400612, 34.323795, 22.032000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027893, 34.315044, 22.176924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362011, 0.016566, 0.932027,
		-0.026394, 0.999623, -0.007516,
		-0.931800, -0.021879, 0.362312,
		32.748352, 34.308479, 22.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415974, 34.759624, 22.582026>,  <33.400612, 34.323795, 22.032000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415974, 34.759624, 22.582026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095947, 34.528252, 22.645668>,  <32.903931, 34.389427, 22.683853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095947, 34.528252, 22.645668>,  <33.415974, 34.759624, 22.582026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095947, 34.528252, 22.645668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185160, 0.014174, 0.982606,
		-0.570629, 0.815606, 0.095763,
		-0.800062, -0.578435, 0.159106,
		32.855930, 34.354721, 22.693399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035458, 35.154392, 22.999657>,  <33.415974, 34.759624, 22.582026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035458, 35.154392, 22.999657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907818, 34.777302, 23.038536>,  <32.831234, 34.551048, 23.061863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907818, 34.777302, 23.038536>,  <33.035458, 35.154392, 22.999657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907818, 34.777302, 23.038536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044842, 0.087427, 0.995161,
		-0.946661, 0.321911, 0.014376,
		-0.319097, -0.942725, 0.097199,
		32.812088, 34.494484, 23.067696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525383, 35.169128, 23.605080>,  <33.035458, 35.154392, 22.999657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525383, 35.169128, 23.605080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660049, 34.796890, 23.547598>,  <32.740849, 34.573547, 23.513109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660049, 34.796890, 23.547598>,  <32.525383, 35.169128, 23.605080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660049, 34.796890, 23.547598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111282, -0.112220, 0.987432,
		-0.935025, -0.348427, 0.065778,
		0.336666, -0.930594, -0.143703,
		32.761051, 34.517712, 23.504488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170483, 34.787464, 24.091835>,  <32.525383, 35.169128, 23.605080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170483, 34.787464, 24.091835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501621, 34.582912, 23.999613>,  <32.700306, 34.460182, 23.944279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501621, 34.582912, 23.999613>,  <32.170483, 34.787464, 24.091835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501621, 34.582912, 23.999613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180367, -0.146519, 0.972625,
		-0.531165, -0.846770, -0.029059,
		0.827847, -0.511383, -0.230555,
		32.749977, 34.429497, 23.930447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504862, 34.481674, 24.309067>,  <32.170483, 34.787464, 24.091835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504862, 34.481674, 24.309067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194881, 34.635818, 24.509443>,  <31.008892, 34.728306, 24.629669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194881, 34.635818, 24.509443>,  <31.504862, 34.481674, 24.309067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194881, 34.635818, 24.509443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547785, -0.014196, -0.836498,
		-0.315244, -0.922656, 0.222097,
		-0.774953, 0.385362, 0.500943,
		30.962395, 34.751427, 24.659725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887030, 34.159142, 23.963181>,  <31.504862, 34.481674, 24.309067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887030, 34.159142, 23.963181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767895, 34.483047, 24.165396>,  <30.696415, 34.677391, 24.286726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767895, 34.483047, 24.165396>,  <30.887030, 34.159142, 23.963181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767895, 34.483047, 24.165396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593808, 0.257496, -0.762291,
		-0.747453, -0.527231, 0.404155,
		-0.297835, 0.809767, 0.505540,
		30.678545, 34.725979, 24.317059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088379, 34.109398, 24.080097>,  <30.887030, 34.159142, 23.963181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088379, 34.109398, 24.080097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.207479, 34.491173, 24.087988>,  <30.278940, 34.720238, 24.092722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.207479, 34.491173, 24.087988>,  <30.088379, 34.109398, 24.080097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207479, 34.491173, 24.087988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691579, 0.229903, -0.684735,
		-0.658073, 0.190239, 0.728525,
		0.297754, 0.954439, 0.019728,
		30.296806, 34.777504, 24.093906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487759, 34.535507, 24.181461>,  <30.088379, 34.109398, 24.080097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487759, 34.535507, 24.181461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759405, 34.781696, 24.021461>,  <29.922392, 34.929409, 23.925461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759405, 34.781696, 24.021461>,  <29.487759, 34.535507, 24.181461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759405, 34.781696, 24.021461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681783, 0.326974, -0.654416,
		-0.271983, 0.717137, 0.641669,
		0.679115, 0.615469, -0.400001,
		29.963140, 34.966335, 23.901461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112080, 35.215542, 24.098799>,  <29.487759, 34.535507, 24.181461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112080, 35.215542, 24.098799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.435835, 35.222965, 23.864006>,  <29.630089, 35.227421, 23.723131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.435835, 35.222965, 23.864006>,  <29.112080, 35.215542, 24.098799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435835, 35.222965, 23.864006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564911, 0.297800, -0.769539,
		0.160518, 0.954448, 0.251522,
		0.809388, 0.018563, -0.586980,
		29.678652, 35.228535, 23.687912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126152, 35.872841, 23.713879>,  <29.112080, 35.215542, 24.098799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126152, 35.872841, 23.713879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.335939, 35.613960, 23.492588>,  <29.461811, 35.458630, 23.359814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.335939, 35.613960, 23.492588>,  <29.126152, 35.872841, 23.713879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335939, 35.613960, 23.492588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446532, 0.344154, -0.825934,
		0.724944, 0.680208, -0.108501,
		0.524466, -0.647205, -0.553227,
		29.493279, 35.419800, 23.326620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095964, 36.217323, 23.109095>,  <29.126152, 35.872841, 23.713879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095964, 36.217323, 23.109095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.263020, 35.876873, 22.981869>,  <29.363253, 35.672604, 22.905533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.263020, 35.876873, 22.981869>,  <29.095964, 36.217323, 23.109095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263020, 35.876873, 22.981869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493100, 0.081712, -0.866127,
		0.763170, 0.518568, -0.385563,
		0.417640, -0.851123, -0.318066,
		29.388311, 35.621536, 22.886450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210253, 37.047802, 23.080090>,  <29.095964, 36.217323, 23.109095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210253, 37.047802, 23.080090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897919, 37.233715, 23.247072>,  <28.710518, 37.345264, 23.347261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897919, 37.233715, 23.247072>,  <29.210253, 37.047802, 23.080090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897919, 37.233715, 23.247072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392006, -0.155783, 0.906677,
		0.486441, 0.871612, -0.060557,
		-0.780837, 0.464783, 0.417457,
		28.663668, 37.373150, 23.372309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482513, 37.483395, 23.560766>,  <29.210253, 37.047802, 23.080090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482513, 37.483395, 23.560766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103167, 37.466991, 23.686571>,  <28.875559, 37.457150, 23.762054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103167, 37.466991, 23.686571>,  <29.482513, 37.483395, 23.560766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103167, 37.466991, 23.686571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316225, -0.045638, 0.947586,
		-0.024506, 0.998116, 0.056250,
		-0.948368, -0.041010, 0.314511,
		28.818657, 37.454689, 23.780924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480471, 38.059002, 24.027340>,  <29.482513, 37.483395, 23.560766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480471, 38.059002, 24.027340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170372, 37.817135, 24.100416>,  <28.984312, 37.672016, 24.144262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170372, 37.817135, 24.100416>,  <29.480471, 38.059002, 24.027340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170372, 37.817135, 24.100416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260912, -0.043141, 0.964398,
		-0.575255, 0.795312, 0.191209,
		-0.775246, -0.604663, 0.182689,
		28.937798, 37.635735, 24.155222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207348, 38.302555, 24.626947>,  <29.480471, 38.059002, 24.027340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207348, 38.302555, 24.626947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.084799, 37.922943, 24.597340>,  <29.011269, 37.695175, 24.579575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.084799, 37.922943, 24.597340>,  <29.207348, 38.302555, 24.626947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084799, 37.922943, 24.597340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199713, -0.140110, 0.969786,
		-0.930726, 0.282333, 0.232459,
		-0.306372, -0.949030, -0.074018,
		28.992887, 37.638233, 24.575134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874712, 38.215649, 25.297657>,  <29.207348, 38.302555, 24.626947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874712, 38.215649, 25.297657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.951748, 37.848568, 25.158674>,  <28.997969, 37.628319, 25.075285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.951748, 37.848568, 25.158674>,  <28.874712, 38.215649, 25.297657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951748, 37.848568, 25.158674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296020, -0.283256, 0.912216,
		-0.935565, -0.278536, 0.217107,
		0.192589, -0.917706, -0.347457,
		29.009525, 37.573257, 25.054438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855816, 37.739223, 25.897943>,  <28.874712, 38.215649, 25.297657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855816, 37.739223, 25.897943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.045624, 37.502121, 25.637646>,  <29.159510, 37.359859, 25.481466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.045624, 37.502121, 25.637646>,  <28.855816, 37.739223, 25.897943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045624, 37.502121, 25.637646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582617, -0.342671, 0.736976,
		-0.659838, -0.728847, 0.182744,
		0.474521, -0.592755, -0.650746,
		29.187981, 37.324295, 25.442421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737993, 37.056767, 26.003803>,  <28.855816, 37.739223, 25.897943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737993, 37.056767, 26.003803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.093409, 37.068237, 25.820642>,  <29.306658, 37.075119, 25.710747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.093409, 37.068237, 25.820642>,  <28.737993, 37.056767, 26.003803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093409, 37.068237, 25.820642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449991, -0.249093, 0.857590,
		-0.089466, -0.968055, -0.234235,
		0.888540, 0.028678, -0.457902,
		29.359970, 37.076839, 25.683271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.576820, 38.990875, 19.595186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.832355, 38.701344, 19.699467>,  <32.985676, 38.527626, 19.762035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.832355, 38.701344, 19.699467>,  <32.576820, 38.990875, 19.595186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832355, 38.701344, 19.699467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367838, 0.010249, 0.929834,
		-0.675711, -0.689905, -0.259703,
		0.638835, -0.723827, 0.260699,
		33.024006, 38.484196, 19.777676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117443, 38.527180, 19.799063>,  <32.576820, 38.990875, 19.595186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117443, 38.527180, 19.799063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.475075, 38.434074, 19.952133>,  <32.689655, 38.378212, 20.043976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.475075, 38.434074, 19.952133>,  <32.117443, 38.527180, 19.799063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475075, 38.434074, 19.952133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375446, 0.076448, 0.923686,
		-0.244259, -0.969523, -0.019041,
		0.894079, -0.232767, 0.382677,
		32.743298, 38.364243, 20.066936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879498, 38.249928, 20.375349>,  <32.117443, 38.527180, 19.799063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879498, 38.249928, 20.375349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.268742, 38.309624, 20.445528>,  <32.502289, 38.345440, 20.487637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.268742, 38.309624, 20.445528>,  <31.879498, 38.249928, 20.375349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268742, 38.309624, 20.445528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197647, 0.149862, 0.968750,
		0.118274, -0.977380, 0.175327,
		0.973112, 0.149230, 0.175452,
		32.560677, 38.354397, 20.498163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082569, 37.851589, 20.970913>,  <31.879498, 38.249928, 20.375349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082569, 37.851589, 20.970913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.390270, 38.106075, 20.947304>,  <32.574890, 38.258766, 20.933138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.390270, 38.106075, 20.947304>,  <32.082569, 37.851589, 20.970913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390270, 38.106075, 20.947304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143703, -0.082260, 0.986196,
		0.622573, -0.767118, -0.154704,
		0.769254, 0.636211, -0.059025,
		32.621048, 38.296940, 20.929596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682537, 37.614204, 21.372839>,  <32.082569, 37.851589, 20.970913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682537, 37.614204, 21.372839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.738056, 38.006157, 21.315470>,  <32.771366, 38.241329, 21.281048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.738056, 38.006157, 21.315470>,  <32.682537, 37.614204, 21.372839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738056, 38.006157, 21.315470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374975, 0.082041, 0.923397,
		0.916586, -0.181943, -0.356044,
		0.138796, 0.979880, -0.143422,
		32.779694, 38.300121, 21.272444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421375, 37.747845, 21.609056>,  <32.682537, 37.614204, 21.372839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421375, 37.747845, 21.609056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198441, 38.078125, 21.643921>,  <33.064678, 38.276291, 21.664839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198441, 38.078125, 21.643921>,  <33.421375, 37.747845, 21.609056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198441, 38.078125, 21.643921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345266, 0.135015, 0.928742,
		0.755092, 0.547718, -0.360335,
		-0.557339, 0.825697, 0.087159,
		33.031239, 38.325832, 21.670069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871330, 38.324703, 21.866461>,  <33.421375, 37.747845, 21.609056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871330, 38.324703, 21.866461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.493134, 38.405075, 21.968962>,  <33.266216, 38.453297, 22.030462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.493134, 38.405075, 21.968962>,  <33.871330, 38.324703, 21.866461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493134, 38.405075, 21.968962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275641, 0.074858, 0.958341,
		0.173378, 0.976741, -0.126162,
		-0.945496, 0.200930, 0.256252,
		33.209484, 38.465355, 22.045837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944046, 38.788960, 22.474401>,  <33.871330, 38.324703, 21.866461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944046, 38.788960, 22.474401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.553963, 38.700520, 22.478184>,  <33.319912, 38.647457, 22.480453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.553963, 38.700520, 22.478184>,  <33.944046, 38.788960, 22.474401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553963, 38.700520, 22.478184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011907, 0.095100, 0.995396,
		-0.220977, 0.970604, -0.095375,
		-0.975206, -0.221096, 0.009458,
		33.261402, 38.634190, 22.481022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604546, 39.366550, 22.587917>,  <33.944046, 38.788960, 22.474401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604546, 39.366550, 22.587917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.379452, 39.053925, 22.695614>,  <33.244396, 38.866348, 22.760231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.379452, 39.053925, 22.695614>,  <33.604546, 39.366550, 22.587917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379452, 39.053925, 22.695614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013675, 0.316857, 0.948375,
		-0.826527, 0.537362, -0.167617,
		-0.562731, -0.781565, 0.269240,
		33.210632, 38.819454, 22.776386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253307, 39.695133, 23.265495>,  <33.604546, 39.366550, 22.587917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253307, 39.695133, 23.265495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.202545, 39.298405, 23.271067>,  <33.172089, 39.060368, 23.274408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.202545, 39.298405, 23.271067>,  <33.253307, 39.695133, 23.265495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202545, 39.298405, 23.271067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079653, 0.024184, 0.996529,
		-0.988712, 0.125354, -0.082071,
		-0.126904, -0.991817, 0.013926,
		33.164474, 39.000858, 23.275244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743790, 39.577435, 23.822102>,  <33.253307, 39.695133, 23.265495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743790, 39.577435, 23.822102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.924011, 39.225700, 23.760426>,  <33.032146, 39.014660, 23.723421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.924011, 39.225700, 23.760426>,  <32.743790, 39.577435, 23.822102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924011, 39.225700, 23.760426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030761, -0.187900, 0.981706,
		-0.892218, -0.437572, -0.111709,
		0.450557, -0.879332, -0.154188,
		33.059177, 38.961903, 23.714169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449375, 39.101643, 24.260485>,  <32.743790, 39.577435, 23.822102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449375, 39.101643, 24.260485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802933, 38.938885, 24.168255>,  <33.015068, 38.841228, 24.112917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802933, 38.938885, 24.168255>,  <32.449375, 39.101643, 24.260485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802933, 38.938885, 24.168255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118303, -0.282449, 0.951959,
		-0.452476, -0.868709, -0.201518,
		0.883894, -0.406899, -0.230573,
		33.068100, 38.816814, 24.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899357, 38.884144, 24.792686>,  <32.449375, 39.101643, 24.260485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899357, 38.884144, 24.792686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.734123, 39.200302, 24.973631>,  <31.634983, 39.389999, 25.082197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.734123, 39.200302, 24.973631>,  <31.899357, 38.884144, 24.792686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734123, 39.200302, 24.973631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554110, 0.176053, -0.813614,
		-0.722720, -0.586749, 0.365243,
		-0.413085, 0.790400, 0.452360,
		31.610197, 39.437424, 25.109339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046087, 38.847469, 24.804800>,  <31.899357, 38.884144, 24.792686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046087, 38.847469, 24.804800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168781, 39.224274, 24.859245>,  <31.242397, 39.450356, 24.891912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168781, 39.224274, 24.859245>,  <31.046087, 38.847469, 24.804800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168781, 39.224274, 24.859245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540315, 0.290070, -0.789886,
		-0.783565, 0.168741, 0.597957,
		0.306735, 0.942012, 0.136115,
		31.260801, 39.506878, 24.900080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460680, 39.150520, 24.632376>,  <31.046087, 38.847469, 24.804800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460680, 39.150520, 24.632376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733393, 39.442303, 24.610224>,  <30.897020, 39.617371, 24.596933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733393, 39.442303, 24.610224>,  <30.460680, 39.150520, 24.632376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733393, 39.442303, 24.610224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534974, 0.445514, -0.717858,
		-0.498974, 0.519049, 0.693983,
		0.681783, 0.729456, -0.055378,
		30.937927, 39.661140, 24.593611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055721, 39.768490, 24.519995>,  <30.460680, 39.150520, 24.632376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055721, 39.768490, 24.519995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426462, 39.885071, 24.425335>,  <30.648907, 39.955021, 24.368540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426462, 39.885071, 24.425335>,  <30.055721, 39.768490, 24.519995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426462, 39.885071, 24.425335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356486, 0.485520, -0.798240,
		-0.117756, 0.824211, 0.553904,
		0.926850, 0.291457, -0.236647,
		30.704517, 39.972507, 24.354342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079607, 40.499359, 24.434839>,  <30.055721, 39.768490, 24.519995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079607, 40.499359, 24.434839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344652, 40.298195, 24.212839>,  <30.503679, 40.177498, 24.079639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344652, 40.298195, 24.212839>,  <30.079607, 40.499359, 24.434839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344652, 40.298195, 24.212839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427396, 0.354625, -0.831609,
		0.615041, 0.788240, 0.020038,
		0.662614, -0.502910, -0.555000,
		30.543436, 40.147324, 24.046339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354340, 40.989738, 23.987867>,  <30.079607, 40.499359, 24.434839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354340, 40.989738, 23.987867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458124, 40.648239, 23.807293>,  <30.520395, 40.443340, 23.698948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458124, 40.648239, 23.807293>,  <30.354340, 40.989738, 23.987867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458124, 40.648239, 23.807293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437186, 0.312972, -0.843159,
		0.861131, 0.416130, -0.292042,
		0.259463, -0.853747, -0.451437,
		30.535963, 40.392117, 23.671862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460833, 41.220524, 23.299166>,  <30.354340, 40.989738, 23.987867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460833, 41.220524, 23.299166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446617, 40.821236, 23.280045>,  <30.438087, 40.581661, 23.268572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446617, 40.821236, 23.280045>,  <30.460833, 41.220524, 23.299166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446617, 40.821236, 23.280045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392370, 0.057927, -0.917982,
		0.919121, -0.013866, -0.393732,
		-0.035536, -0.998224, -0.047801,
		30.435957, 40.521767, 23.265705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726519, 40.999741, 22.594534>,  <30.460833, 41.220524, 23.299166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726519, 40.999741, 22.594534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.506021, 40.686134, 22.708696>,  <30.373724, 40.497971, 22.777193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.506021, 40.686134, 22.708696>,  <30.726519, 40.999741, 22.594534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506021, 40.686134, 22.708696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518467, 0.053871, -0.853399,
		0.653702, -0.618402, -0.436181,
		-0.551241, -0.784014, 0.285405,
		30.340649, 40.450932, 22.794317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793341, 40.589027, 22.010918>,  <30.726519, 40.999741, 22.594534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793341, 40.589027, 22.010918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465923, 40.472664, 22.209053>,  <30.269472, 40.402847, 22.327934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465923, 40.472664, 22.209053>,  <30.793341, 40.589027, 22.010918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465923, 40.472664, 22.209053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522135, 0.017256, -0.852688,
		0.239504, -0.956596, -0.166017,
		-0.818543, -0.290905, 0.495339,
		30.220360, 40.385391, 22.357655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616276, 40.133598, 21.627439>,  <30.793341, 40.589027, 22.010918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616276, 40.133598, 21.627439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302677, 40.289082, 21.821039>,  <30.114517, 40.382370, 21.937199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302677, 40.289082, 21.821039>,  <30.616276, 40.133598, 21.627439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302677, 40.289082, 21.821039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471044, 0.135302, -0.871671,
		-0.404309, -0.911374, 0.077020,
		-0.783997, 0.388705, 0.484001,
		30.067478, 40.405693, 21.966240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141182, 39.762299, 21.342636>,  <30.616276, 40.133598, 21.627439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141182, 39.762299, 21.342636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962841, 40.083252, 21.501328>,  <29.855837, 40.275826, 21.596542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962841, 40.083252, 21.501328>,  <30.141182, 39.762299, 21.342636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962841, 40.083252, 21.501328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459525, 0.175174, -0.870718,
		-0.768148, -0.570519, 0.290615,
		-0.445853, 0.802385, 0.396727,
		29.829084, 40.323967, 21.620346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481348, 39.700050, 21.193689>,  <30.141182, 39.762299, 21.342636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481348, 39.700050, 21.193689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498989, 40.089336, 21.283932>,  <29.509573, 40.322910, 21.338078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498989, 40.089336, 21.283932>,  <29.481348, 39.700050, 21.193689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498989, 40.089336, 21.283932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728603, 0.185840, -0.659242,
		-0.683514, -0.135305, 0.717287,
		0.044102, 0.973220, 0.225608,
		29.512220, 40.381302, 21.351614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749443, 39.933315, 21.372162>,  <29.481348, 39.700050, 21.193689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749443, 39.933315, 21.372162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989433, 40.242065, 21.288029>,  <29.133429, 40.427315, 21.237549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989433, 40.242065, 21.288029>,  <28.749443, 39.933315, 21.372162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989433, 40.242065, 21.288029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620475, 0.282996, -0.731385,
		-0.505014, 0.569319, 0.648719,
		0.599977, 0.771874, -0.210331,
		29.169426, 40.473629, 21.224930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084612, 39.776752, 20.979841>,  <28.749443, 39.933315, 21.372162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084612, 39.776752, 20.979841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829960, 39.472294, 20.930271>,  <27.677168, 39.289619, 20.900528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829960, 39.472294, 20.930271>,  <28.084612, 39.776752, 20.979841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829960, 39.472294, 20.930271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376681, -0.447150, 0.811275,
		-0.672913, 0.469802, 0.571379,
		-0.636631, -0.761145, -0.123927,
		27.638971, 39.243950, 20.893093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782536, 39.665623, 21.667168>,  <28.084612, 39.776752, 20.979841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782536, 39.665623, 21.667168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735268, 39.325794, 21.461540>,  <27.706907, 39.121899, 21.338163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735268, 39.325794, 21.461540>,  <27.782536, 39.665623, 21.667168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735268, 39.325794, 21.461540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138132, -0.526725, 0.838737,
		-0.983339, 0.028104, 0.179595,
		-0.118169, -0.849571, -0.514067,
		27.699818, 39.070923, 21.307320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190281, 39.361759, 21.960060>,  <27.782536, 39.665623, 21.667168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190281, 39.361759, 21.960060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455992, 39.117130, 21.788147>,  <27.615419, 38.970352, 21.684999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455992, 39.117130, 21.788147>,  <27.190281, 39.361759, 21.960060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455992, 39.117130, 21.788147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145624, -0.458070, 0.876907,
		-0.733163, -0.645097, -0.215226,
		0.664278, -0.611574, -0.429781,
		27.655275, 38.933659, 21.659212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074068, 38.721405, 22.140144>,  <27.190281, 39.361759, 21.960060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074068, 38.721405, 22.140144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442051, 38.641220, 22.005390>,  <27.662840, 38.593109, 21.924538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442051, 38.641220, 22.005390>,  <27.074068, 38.721405, 22.140144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442051, 38.641220, 22.005390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201027, -0.496532, 0.844420,
		-0.336553, -0.844553, -0.416488,
		0.919956, -0.200466, -0.336887,
		27.718039, 38.581081, 21.904324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245190, 38.013535, 22.130959>,  <27.074068, 38.721405, 22.140144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245190, 38.013535, 22.130959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601944, 38.192028, 22.160397>,  <27.815996, 38.299126, 22.178059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601944, 38.192028, 22.160397>,  <27.245190, 38.013535, 22.130959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601944, 38.192028, 22.160397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255953, -0.632184, 0.731322,
		0.372868, -0.633417, -0.678050,
		0.891884, 0.446235, 0.073596,
		27.869509, 38.325897, 22.182476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477234, 37.416599, 22.319633>,  <27.245190, 38.013535, 22.130959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477234, 37.416599, 22.319633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756092, 37.699604, 22.365971>,  <27.923407, 37.869408, 22.393774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756092, 37.699604, 22.365971>,  <27.477234, 37.416599, 22.319633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756092, 37.699604, 22.365971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383698, -0.504701, 0.773339,
		0.605610, -0.494681, -0.623320,
		0.697146, 0.707508, 0.115844,
		27.965237, 37.911858, 22.400724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077847, 37.017345, 22.316277>,  <27.477234, 37.416599, 22.319633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077847, 37.017345, 22.316277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139130, 37.348419, 22.532228>,  <28.175900, 37.547062, 22.661798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139130, 37.348419, 22.532228>,  <28.077847, 37.017345, 22.316277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139130, 37.348419, 22.532228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352323, -0.556177, 0.752686,
		0.923252, 0.074893, -0.376823,
		0.153210, 0.827682, 0.539878,
		28.185093, 37.596725, 22.694193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662970, 36.931801, 22.587046>,  <28.077847, 37.017345, 22.316277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662970, 36.931801, 22.587046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515217, 37.209843, 22.833746>,  <28.426565, 37.376667, 22.981766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515217, 37.209843, 22.833746>,  <28.662970, 36.931801, 22.587046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515217, 37.209843, 22.833746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302833, -0.537418, 0.787067,
		0.878550, 0.477501, -0.011990,
		-0.369381, 0.695108, 0.616751,
		28.404402, 37.418377, 23.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197680, 36.400791, 22.317019>,  <28.662970, 36.931801, 22.587046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197680, 36.400791, 22.317019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248714, 36.004372, 22.332737>,  <29.279335, 35.766521, 22.342167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248714, 36.004372, 22.332737>,  <29.197680, 36.400791, 22.317019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248714, 36.004372, 22.332737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082453, -0.050079, -0.995336,
		0.988394, 0.123753, -0.088104,
		0.127588, -0.991049, 0.039294,
		29.286991, 35.707058, 22.344524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782761, 36.274017, 21.843618>,  <29.197680, 36.400791, 22.317019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782761, 36.274017, 21.843618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565710, 35.939903, 21.879084>,  <29.435480, 35.739437, 21.900364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565710, 35.939903, 21.879084>,  <29.782761, 36.274017, 21.843618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565710, 35.939903, 21.879084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044258, -0.076978, -0.996050,
		0.838807, -0.544407, 0.004803,
		-0.542627, -0.835281, 0.088664,
		29.402922, 35.689320, 21.905684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107504, 35.655697, 21.492037>,  <29.782761, 36.274017, 21.843618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107504, 35.655697, 21.492037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.711708, 35.598030, 21.487532>,  <29.474230, 35.563431, 21.484829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.711708, 35.598030, 21.487532>,  <30.107504, 35.655697, 21.492037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711708, 35.598030, 21.487532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012478, -0.007523, -0.999894,
		0.144067, -0.989525, 0.009243,
		-0.989489, -0.144167, -0.011263,
		29.414862, 35.554779, 21.484152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968218, 35.109928, 21.022938>,  <30.107504, 35.655697, 21.492037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968218, 35.109928, 21.022938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643501, 35.339725, 21.064802>,  <29.448671, 35.477604, 21.089920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643501, 35.339725, 21.064802>,  <29.968218, 35.109928, 21.022938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643501, 35.339725, 21.064802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088717, 0.055810, -0.994492,
		-0.577169, -0.816605, 0.005661,
		-0.811791, 0.574492, 0.104659,
		29.399963, 35.512074, 21.096199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545109, 35.015110, 20.346703>,  <29.968218, 35.109928, 21.022938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545109, 35.015110, 20.346703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325066, 35.304916, 20.512814>,  <29.193039, 35.478802, 20.612480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325066, 35.304916, 20.512814>,  <29.545109, 35.015110, 20.346703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325066, 35.304916, 20.512814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266297, 0.319129, -0.909529,
		-0.791497, -0.610926, 0.017382,
		-0.550108, 0.724518, 0.415277,
		29.160034, 35.522270, 20.637396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006554, 34.939213, 19.885374>,  <29.545109, 35.015110, 20.346703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006554, 34.939213, 19.885374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005081, 35.301182, 20.055597>,  <29.004198, 35.518364, 20.157732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005081, 35.301182, 20.055597>,  <29.006554, 34.939213, 19.885374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005081, 35.301182, 20.055597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275304, 0.408200, -0.870391,
		-0.961350, -0.120361, 0.247627,
		-0.003680, 0.904923, 0.425559,
		29.003977, 35.572659, 20.183266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359715, 35.279221, 19.659393>,  <29.006554, 34.939213, 19.885374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359715, 35.279221, 19.659393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592630, 35.582508, 19.776726>,  <28.732380, 35.764481, 19.847126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592630, 35.582508, 19.776726>,  <28.359715, 35.279221, 19.659393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592630, 35.582508, 19.776726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300956, 0.536215, -0.788606,
		-0.755224, 0.370917, 0.540423,
		0.582290, 0.758217, 0.293333,
		28.767317, 35.809975, 19.864725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002441, 35.891705, 19.473749>,  <28.359715, 35.279221, 19.659393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002441, 35.891705, 19.473749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392138, 35.977032, 19.503016>,  <28.625956, 36.028229, 19.520575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392138, 35.977032, 19.503016>,  <28.002441, 35.891705, 19.473749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392138, 35.977032, 19.503016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022938, 0.416483, -0.908854,
		-0.224346, 0.883763, 0.410647,
		0.974239, 0.213318, 0.073164,
		28.684410, 36.041027, 19.524965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119286, 36.532063, 19.092216>,  <28.002441, 35.891705, 19.473749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119286, 36.532063, 19.092216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494253, 36.398876, 19.132957>,  <28.719234, 36.318962, 19.157402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494253, 36.398876, 19.132957>,  <28.119286, 36.532063, 19.092216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494253, 36.398876, 19.132957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225747, 0.358469, -0.905836,
		0.265104, 0.872142, 0.411203,
		0.937421, -0.332968, 0.101852,
		28.775480, 36.298985, 19.163513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.749603, 34.034962, 33.826523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095699, 34.015732, 33.626904>,  <35.303356, 34.004192, 33.507133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095699, 34.015732, 33.626904>,  <34.749603, 34.034962, 33.826523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095699, 34.015732, 33.626904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501321, -0.095046, -0.860025,
		-0.006088, 0.994312, -0.106338,
		0.865240, -0.048074, -0.499048,
		35.355270, 34.001308, 33.477188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664391, 34.524094, 33.325466>,  <34.749603, 34.034962, 33.826523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664391, 34.524094, 33.325466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945007, 34.264797, 33.207062>,  <35.113377, 34.109219, 33.136017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945007, 34.264797, 33.207062>,  <34.664391, 34.524094, 33.325466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945007, 34.264797, 33.207062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472967, -0.112834, -0.873825,
		0.533045, 0.753033, -0.385752,
		0.701545, -0.648236, -0.296015,
		35.155472, 34.070328, 33.118256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873348, 34.744602, 32.660927>,  <34.664391, 34.524094, 33.325466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873348, 34.744602, 32.660927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977661, 34.358974, 32.681156>,  <35.040249, 34.127598, 32.693295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977661, 34.358974, 32.681156>,  <34.873348, 34.744602, 32.660927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977661, 34.358974, 32.681156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437191, -0.164643, -0.884170,
		0.860731, 0.208463, -0.464420,
		0.260780, -0.964073, 0.050575,
		35.055897, 34.069752, 32.696327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193516, 34.639919, 32.072025>,  <34.873348, 34.744602, 32.660927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193516, 34.639919, 32.072025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086464, 34.268337, 32.174328>,  <35.022232, 34.045387, 32.235710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086464, 34.268337, 32.174328>,  <35.193516, 34.639919, 32.072025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086464, 34.268337, 32.174328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290918, -0.175148, -0.940580,
		0.918554, -0.326132, -0.223376,
		-0.267630, -0.928957, 0.255760,
		35.006176, 33.989651, 32.251057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335190, 34.219490, 31.540356>,  <35.193516, 34.639919, 32.072025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335190, 34.219490, 31.540356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083176, 33.990509, 31.750252>,  <34.931969, 33.853119, 31.876190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083176, 33.990509, 31.750252>,  <35.335190, 34.219490, 31.540356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083176, 33.990509, 31.750252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486935, -0.235163, -0.841185,
		0.604941, -0.785489, -0.130588,
		-0.630033, -0.572455, 0.524742,
		34.894165, 33.818771, 31.907675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225639, 33.560394, 31.192987>,  <35.335190, 34.219490, 31.540356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225639, 33.560394, 31.192987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897633, 33.597572, 31.418884>,  <34.700829, 33.619877, 31.554422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897633, 33.597572, 31.418884>,  <35.225639, 33.560394, 31.192987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897633, 33.597572, 31.418884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560480, -0.330209, -0.759490,
		0.115895, -0.939321, 0.322869,
		-0.820019, 0.092941, 0.564740,
		34.651627, 33.625454, 31.588306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814270, 32.849945, 31.081738>,  <35.225639, 33.560394, 31.192987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814270, 32.849945, 31.081738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583763, 33.141857, 31.228889>,  <34.445461, 33.317005, 31.317181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583763, 33.141857, 31.228889>,  <34.814270, 32.849945, 31.081738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583763, 33.141857, 31.228889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669868, -0.163904, -0.724163,
		-0.468185, -0.663741, 0.583311,
		-0.576263, 0.729783, 0.367881,
		34.410885, 33.360790, 31.339254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148270, 32.507751, 31.125769>,  <34.814270, 32.849945, 31.081738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148270, 32.507751, 31.125769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080662, 32.901863, 31.115511>,  <34.040096, 33.138329, 31.109356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080662, 32.901863, 31.115511>,  <34.148270, 32.507751, 31.125769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080662, 32.901863, 31.115511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661811, -0.132734, -0.737826,
		-0.730369, -0.107733, 0.674503,
		-0.169018, 0.985279, -0.025646,
		34.029957, 33.197449, 31.107817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378819, 32.525753, 31.014835>,  <34.148270, 32.507751, 31.125769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378819, 32.525753, 31.014835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495640, 32.896675, 30.921181>,  <33.565731, 33.119228, 30.864988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495640, 32.896675, 30.921181>,  <33.378819, 32.525753, 31.014835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495640, 32.896675, 30.921181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762158, 0.077761, -0.642704,
		-0.577773, 0.366151, 0.729460,
		0.292050, 0.927301, -0.234137,
		33.583256, 33.174866, 30.850939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720104, 32.886929, 30.984245>,  <33.378819, 32.525753, 31.014835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720104, 32.886929, 30.984245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969044, 33.123119, 30.778715>,  <33.118408, 33.264835, 30.655397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969044, 33.123119, 30.778715>,  <32.720104, 32.886929, 30.984245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969044, 33.123119, 30.778715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707363, 0.143213, -0.692190,
		-0.335135, 0.794247, 0.506810,
		0.622352, 0.590476, -0.513825,
		33.155750, 33.300262, 30.624567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385422, 33.630623, 30.807467>,  <32.720104, 32.886929, 30.984245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385422, 33.630623, 30.807467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658348, 33.541412, 30.528984>,  <32.822105, 33.487885, 30.361895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658348, 33.541412, 30.528984>,  <32.385422, 33.630623, 30.807467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658348, 33.541412, 30.528984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665719, 0.203985, -0.717780,
		0.302101, 0.953231, -0.009291,
		0.682315, -0.223027, -0.696208,
		32.863041, 33.474503, 30.320122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238640, 34.069901, 30.389027>,  <32.385422, 33.630623, 30.807467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238640, 34.069901, 30.389027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468540, 33.810581, 30.189280>,  <32.606480, 33.654991, 30.069431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468540, 33.810581, 30.189280>,  <32.238640, 34.069901, 30.389027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468540, 33.810581, 30.189280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395040, 0.314612, -0.863112,
		0.716662, 0.693346, -0.075280,
		0.574751, -0.648299, -0.499369,
		32.640965, 33.616093, 30.039469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226303, 34.704689, 30.834507>,  <32.238640, 34.069901, 30.389027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226303, 34.704689, 30.834507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907921, 34.946827, 30.832718>,  <31.716892, 35.092110, 30.831644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907921, 34.946827, 30.832718>,  <32.226303, 34.704689, 30.834507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907921, 34.946827, 30.832718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005996, -0.000495, 0.999982,
		0.605329, 0.795965, 0.004024,
		-0.795952, 0.605343, -0.004473,
		31.669134, 35.128429, 30.831375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336494, 35.320019, 31.187881>,  <32.226303, 34.704689, 30.834507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336494, 35.320019, 31.187881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939371, 35.294117, 31.228146>,  <31.701096, 35.278576, 31.252304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939371, 35.294117, 31.228146>,  <32.336494, 35.320019, 31.187881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939371, 35.294117, 31.228146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099203, 0.025340, 0.994745,
		-0.066962, 0.997580, -0.018734,
		-0.992812, -0.064752, 0.100659,
		31.641527, 35.274693, 31.258343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104969, 35.680309, 31.791569>,  <32.336494, 35.320019, 31.187881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104969, 35.680309, 31.791569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777452, 35.460201, 31.726110>,  <31.580942, 35.328136, 31.686836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777452, 35.460201, 31.726110>,  <32.104969, 35.680309, 31.791569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777452, 35.460201, 31.726110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155626, -0.061623, 0.985892,
		-0.552590, 0.832710, -0.035180,
		-0.818795, -0.550269, -0.163644,
		31.531815, 35.295120, 31.677017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509649, 36.024883, 32.072163>,  <32.104969, 35.680309, 31.791569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509649, 36.024883, 32.072163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420992, 35.636555, 32.035561>,  <31.367798, 35.403557, 32.013599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420992, 35.636555, 32.035561>,  <31.509649, 36.024883, 32.072163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420992, 35.636555, 32.035561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297147, -0.022131, 0.954575,
		-0.928750, 0.238767, -0.283573,
		-0.221645, -0.970825, -0.091503,
		31.354498, 35.345306, 32.008110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864290, 35.943405, 32.396347>,  <31.509649, 36.024883, 32.072163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864290, 35.943405, 32.396347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.991325, 35.564190, 32.388725>,  <31.067547, 35.336662, 32.384151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.991325, 35.564190, 32.388725>,  <30.864290, 35.943405, 32.396347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991325, 35.564190, 32.388725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178663, -0.079566, 0.980688,
		-0.931245, -0.308049, -0.194648,
		0.317588, -0.948037, -0.019058,
		31.086601, 35.279778, 32.383007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247568, 35.575592, 32.709743>,  <30.864290, 35.943405, 32.396347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247568, 35.575592, 32.709743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.559212, 35.326443, 32.738079>,  <30.746199, 35.176952, 32.755081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.559212, 35.326443, 32.738079>,  <30.247568, 35.575592, 32.709743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559212, 35.326443, 32.738079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250025, -0.205117, 0.946263,
		-0.574870, -0.754955, -0.315542,
		0.779110, -0.622871, 0.070842,
		30.792944, 35.139580, 32.759331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021055, 34.985657, 33.084629>,  <30.247568, 35.575592, 32.709743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021055, 34.985657, 33.084629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.417088, 34.987392, 33.140800>,  <30.654707, 34.988434, 33.174503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.417088, 34.987392, 33.140800>,  <30.021055, 34.985657, 33.084629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417088, 34.987392, 33.140800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139403, -0.093886, 0.985775,
		0.017459, -0.995574, -0.092350,
		0.990082, 0.004337, 0.140425,
		30.714111, 34.988693, 33.182930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975836, 34.606606, 33.662590>,  <30.021055, 34.985657, 33.084629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975836, 34.606606, 33.662590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.354208, 34.736267, 33.667351>,  <30.581230, 34.814064, 33.670208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.354208, 34.736267, 33.667351>,  <29.975836, 34.606606, 33.662590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354208, 34.736267, 33.667351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069384, 0.166363, 0.983620,
		0.316870, -0.931259, 0.179859,
		0.945927, 0.324159, 0.011900,
		30.637987, 34.833515, 33.670921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326885, 34.172787, 34.131279>,  <29.975836, 34.606606, 33.662590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326885, 34.172787, 34.131279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530598, 34.514313, 34.088127>,  <30.652826, 34.719227, 34.062237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530598, 34.514313, 34.088127>,  <30.326885, 34.172787, 34.131279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530598, 34.514313, 34.088127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091312, 0.071036, 0.993285,
		0.855741, -0.515714, -0.041786,
		0.509283, 0.853811, -0.107879,
		30.683382, 34.770454, 34.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054230, 34.166634, 34.395370>,  <30.326885, 34.172787, 34.131279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054230, 34.166634, 34.395370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890596, 34.531475, 34.406025>,  <30.792416, 34.750381, 34.412418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890596, 34.531475, 34.406025>,  <31.054230, 34.166634, 34.395370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890596, 34.531475, 34.406025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232916, 0.076156, 0.969510,
		0.882270, 0.402815, -0.243599,
		-0.409085, 0.912108, 0.026631,
		30.767872, 34.805107, 34.414013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548435, 34.485977, 34.777458>,  <31.054230, 34.166634, 34.395370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548435, 34.485977, 34.777458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237146, 34.737164, 34.775154>,  <31.050373, 34.887875, 34.773773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237146, 34.737164, 34.775154>,  <31.548435, 34.485977, 34.777458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237146, 34.737164, 34.775154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204382, 0.261935, 0.943196,
		0.593803, 0.732837, -0.332188,
		-0.778220, 0.627965, -0.005759,
		31.003681, 34.925552, 34.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804346, 35.062317, 34.980114>,  <31.548435, 34.485977, 34.777458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804346, 35.062317, 34.980114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.412571, 35.103180, 35.049702>,  <31.177505, 35.127697, 35.091454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.412571, 35.103180, 35.049702>,  <31.804346, 35.062317, 34.980114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412571, 35.103180, 35.049702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198770, 0.340972, 0.918819,
		0.034545, 0.934506, -0.354267,
		-0.979437, 0.102158, 0.173972,
		31.118740, 35.133827, 35.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771507, 35.581711, 35.483810>,  <31.804346, 35.062317, 34.980114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771507, 35.581711, 35.483810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406191, 35.423100, 35.521042>,  <31.187000, 35.327930, 35.543381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406191, 35.423100, 35.521042>,  <31.771507, 35.581711, 35.483810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406191, 35.423100, 35.521042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025208, 0.173046, 0.984591,
		-0.406528, 0.901564, -0.148045,
		-0.913290, -0.396532, 0.093075,
		31.132204, 35.304138, 35.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347477, 36.056179, 35.780384>,  <31.771507, 35.581711, 35.483810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347477, 36.056179, 35.780384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.196527, 35.692368, 35.850056>,  <31.105957, 35.474079, 35.891861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.196527, 35.692368, 35.850056>,  <31.347477, 36.056179, 35.780384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196527, 35.692368, 35.850056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165057, 0.119016, 0.979077,
		-0.911232, 0.398230, 0.105211,
		-0.377375, -0.909532, 0.174182,
		31.083315, 35.419506, 35.902309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463392, 36.329269, 35.094383>,  <31.347477, 36.056179, 35.780384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463392, 36.329269, 35.094383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499582, 36.696583, 35.248562>,  <31.521296, 36.916969, 35.341068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499582, 36.696583, 35.248562>,  <31.463392, 36.329269, 35.094383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499582, 36.696583, 35.248562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365360, 0.329444, -0.870620,
		-0.926459, 0.219596, -0.305698,
		0.090475, 0.918283, 0.385449,
		31.526724, 36.972069, 35.364197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065474, 36.802315, 34.736816>,  <31.463392, 36.329269, 35.094383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065474, 36.802315, 34.736816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365475, 37.003502, 34.908638>,  <31.545475, 37.124214, 35.011730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365475, 37.003502, 34.908638>,  <31.065474, 36.802315, 34.736816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365475, 37.003502, 34.908638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201721, 0.444555, -0.872743,
		-0.629926, 0.741208, 0.231956,
		0.750001, 0.502972, 0.429554,
		31.590475, 37.154392, 35.037506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999832, 37.599461, 34.680698>,  <31.065474, 36.802315, 34.736816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999832, 37.599461, 34.680698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373915, 37.457821, 34.681293>,  <31.598364, 37.372837, 34.681648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.373915, 37.457821, 34.681293>,  <30.999832, 37.599461, 34.680698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373915, 37.457821, 34.681293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224749, 0.590320, -0.775249,
		0.273641, 0.725350, 0.631655,
		0.935205, -0.354104, 0.001486,
		31.654476, 37.351589, 34.681740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464779, 38.155231, 34.741180>,  <30.999832, 37.599461, 34.680698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464779, 38.155231, 34.741180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653860, 37.869526, 34.534729>,  <31.767309, 37.698105, 34.410858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653860, 37.869526, 34.534729>,  <31.464779, 38.155231, 34.741180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653860, 37.869526, 34.534729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200287, 0.657445, -0.726396,
		0.858160, 0.239996, 0.453832,
		0.472702, -0.714261, -0.516125,
		31.795671, 37.655247, 34.379890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069489, 38.407417, 34.509071>,  <31.464779, 38.155231, 34.741180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069489, 38.407417, 34.509071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046875, 38.095440, 34.259754>,  <32.033306, 37.908253, 34.110165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046875, 38.095440, 34.259754>,  <32.069489, 38.407417, 34.509071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046875, 38.095440, 34.259754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308493, 0.580094, -0.753872,
		0.949545, -0.234900, 0.207813,
		-0.056533, -0.779944, -0.623290,
		32.029915, 37.861458, 34.072765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720615, 38.415241, 34.070026>,  <32.069489, 38.407417, 34.509071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720615, 38.415241, 34.070026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452484, 38.209038, 33.856514>,  <32.291607, 38.085316, 33.728409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452484, 38.209038, 33.856514>,  <32.720615, 38.415241, 34.070026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452484, 38.209038, 33.856514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272206, 0.498354, -0.823133,
		0.690340, -0.697063, -0.193735,
		-0.670324, -0.515506, -0.533778,
		32.251385, 38.054386, 33.696381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063423, 38.329296, 33.460968>,  <32.720615, 38.415241, 34.070026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063423, 38.329296, 33.460968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679695, 38.250359, 33.380207>,  <32.449459, 38.202995, 33.331753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.679695, 38.250359, 33.380207>,  <33.063423, 38.329296, 33.460968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679695, 38.250359, 33.380207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112925, 0.387220, -0.915046,
		0.258759, -0.900620, -0.349182,
		-0.959318, -0.197345, -0.201899,
		32.391899, 38.191154, 33.319637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965405, 37.869862, 32.915623>,  <33.063423, 38.329296, 33.460968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965405, 37.869862, 32.915623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627815, 38.084335, 32.909626>,  <32.425262, 38.213020, 32.906029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627815, 38.084335, 32.909626>,  <32.965405, 37.869862, 32.915623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627815, 38.084335, 32.909626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283848, 0.422722, -0.860660,
		-0.455131, -0.730628, -0.508958,
		-0.843970, 0.536180, -0.014994,
		32.374622, 38.245190, 32.905128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755672, 37.835903, 32.206005>,  <32.965405, 37.869862, 32.915623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755672, 37.835903, 32.206005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.562546, 38.142120, 32.376106>,  <32.446671, 38.325851, 32.478165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.562546, 38.142120, 32.376106>,  <32.755672, 37.835903, 32.206005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562546, 38.142120, 32.376106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111061, 0.428149, -0.896858,
		-0.868652, -0.480245, -0.121695,
		-0.482815, 0.765541, 0.425249,
		32.417702, 38.371784, 32.503681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987562, 37.873169, 31.917505>,  <32.755672, 37.835903, 32.206005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987562, 37.873169, 31.917505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105789, 38.227409, 32.060814>,  <32.176727, 38.439953, 32.146797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105789, 38.227409, 32.060814>,  <31.987562, 37.873169, 31.917505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105789, 38.227409, 32.060814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096691, 0.400833, -0.911035,
		-0.950416, 0.234632, 0.204103,
		0.295569, 0.885596, 0.358271,
		32.194458, 38.493088, 32.168297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506672, 38.323593, 31.749453>,  <31.987562, 37.873169, 31.917505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506672, 38.323593, 31.749453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804739, 38.579117, 31.826033>,  <31.983580, 38.732430, 31.871981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804739, 38.579117, 31.826033>,  <31.506672, 38.323593, 31.749453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804739, 38.579117, 31.826033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178893, 0.468040, -0.865411,
		-0.642436, 0.610626, 0.463046,
		0.745166, 0.638807, 0.191450,
		32.028290, 38.770760, 31.883467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377995, 38.874813, 31.335812>,  <31.506672, 38.323593, 31.749453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377995, 38.874813, 31.335812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759165, 38.942333, 31.436563>,  <31.987867, 38.982845, 31.497015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759165, 38.942333, 31.436563>,  <31.377995, 38.874813, 31.335812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759165, 38.942333, 31.436563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154850, 0.443273, -0.882910,
		-0.260687, 0.880349, 0.396266,
		0.952924, 0.168802, 0.251878,
		32.045040, 38.992973, 31.512127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489592, 39.551582, 31.045601>,  <31.377995, 38.874813, 31.335812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489592, 39.551582, 31.045601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.847147, 39.389164, 31.121590>,  <32.061680, 39.291714, 31.167183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.847147, 39.389164, 31.121590>,  <31.489592, 39.551582, 31.045601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847147, 39.389164, 31.121590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393164, 0.506500, -0.767385,
		0.215376, 0.760645, 0.612399,
		0.893888, -0.406049, 0.189970,
		32.115314, 39.267349, 31.178581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967010, 40.056801, 31.064161>,  <31.489592, 39.551582, 31.045601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967010, 40.056801, 31.064161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175537, 39.723728, 30.989464>,  <32.300652, 39.523884, 30.944645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175537, 39.723728, 30.989464>,  <31.967010, 40.056801, 31.064161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175537, 39.723728, 30.989464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399461, 0.431490, -0.808855,
		0.754097, 0.347071, 0.557566,
		0.521314, -0.832681, -0.186744,
		32.331932, 39.473923, 30.933441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684719, 40.327438, 30.801676>,  <31.967010, 40.056801, 31.064161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684719, 40.327438, 30.801676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621685, 39.952057, 30.678728>,  <32.583862, 39.726830, 30.604959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621685, 39.952057, 30.678728>,  <32.684719, 40.327438, 30.801676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621685, 39.952057, 30.678728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456237, 0.206855, -0.865482,
		0.875793, -0.276623, 0.395558,
		-0.157589, -0.938451, -0.307368,
		32.574409, 39.670521, 30.586517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262356, 40.136597, 30.419117>,  <32.684719, 40.327438, 30.801676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262356, 40.136597, 30.419117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995144, 39.872482, 30.281855>,  <32.834816, 39.714012, 30.199497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995144, 39.872482, 30.281855>,  <33.262356, 40.136597, 30.419117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995144, 39.872482, 30.281855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376857, 0.097445, -0.921131,
		0.641650, -0.744665, 0.183738,
		-0.668030, -0.660287, -0.343158,
		32.794735, 39.674397, 30.178907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517044, 39.837795, 29.787655>,  <33.262356, 40.136597, 30.419117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517044, 39.837795, 29.787655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139004, 39.726585, 29.718960>,  <32.912182, 39.659859, 29.677742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139004, 39.726585, 29.718960>,  <33.517044, 39.837795, 29.787655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139004, 39.726585, 29.718960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185349, -0.023232, -0.982398,
		0.269140, -0.960293, 0.073488,
		-0.945097, -0.278024, -0.171737,
		32.855476, 39.643177, 29.667439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452393, 39.177601, 29.278351>,  <33.517044, 39.837795, 29.787655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452393, 39.177601, 29.278351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093105, 39.352795, 29.293217>,  <32.877533, 39.457912, 29.302135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093105, 39.352795, 29.293217>,  <33.452393, 39.177601, 29.278351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093105, 39.352795, 29.293217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103757, -0.129104, -0.986188,
		-0.427136, -0.889664, 0.161407,
		-0.898214, 0.437984, 0.037164,
		32.823643, 39.484188, 29.304365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073837, 38.696632, 28.997515>,  <33.452393, 39.177601, 29.278351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073837, 38.696632, 28.997515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879425, 39.041634, 28.941128>,  <32.762779, 39.248634, 28.907295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879425, 39.041634, 28.941128>,  <33.073837, 38.696632, 28.997515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879425, 39.041634, 28.941128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141109, -0.236629, -0.961298,
		-0.862477, -0.447325, 0.236715,
		-0.486026, 0.862500, -0.140966,
		32.733616, 39.300385, 28.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354828, 38.589672, 28.762091>,  <33.073837, 38.696632, 28.997515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354828, 38.589672, 28.762091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429100, 38.967064, 28.652275>,  <32.473663, 39.193501, 28.586386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429100, 38.967064, 28.652275>,  <32.354828, 38.589672, 28.762091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429100, 38.967064, 28.652275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258258, -0.222716, -0.940053,
		-0.948065, 0.245449, 0.202307,
		0.185678, 0.943479, -0.274539,
		32.484802, 39.250107, 28.569914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784296, 38.834621, 28.438593>,  <32.354828, 38.589672, 28.762091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784296, 38.834621, 28.438593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068924, 39.078754, 28.299362>,  <32.239700, 39.225235, 28.215824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068924, 39.078754, 28.299362>,  <31.784296, 38.834621, 28.438593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068924, 39.078754, 28.299362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421634, -0.025357, -0.906412,
		-0.562041, 0.791737, 0.239295,
		0.711572, 0.610336, -0.348075,
		32.282394, 39.261856, 28.194941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481876, 39.459877, 28.065372>,  <31.784296, 38.834621, 28.438593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481876, 39.459877, 28.065372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867100, 39.461475, 27.957666>,  <32.098232, 39.462437, 27.893042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867100, 39.461475, 27.957666>,  <31.481876, 39.459877, 28.065372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867100, 39.461475, 27.957666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266394, 0.160571, -0.950395,
		0.039435, 0.987016, 0.155705,
		0.963057, 0.004000, -0.269267,
		32.156017, 39.462677, 27.876886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571936, 40.102936, 27.692120>,  <31.481876, 39.459877, 28.065372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571936, 40.102936, 27.692120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882027, 39.869545, 27.595303>,  <32.068081, 39.729511, 27.537212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882027, 39.869545, 27.595303>,  <31.571936, 40.102936, 27.692120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882027, 39.869545, 27.595303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180287, 0.162863, -0.970037,
		0.605411, 0.795635, 0.021063,
		0.775226, -0.583473, -0.242042,
		32.114594, 39.694504, 27.522690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823963, 40.485172, 27.074596>,  <31.571936, 40.102936, 27.692120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823963, 40.485172, 27.074596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975790, 40.115177, 27.067331>,  <32.066887, 39.893181, 27.062973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975790, 40.115177, 27.067331>,  <31.823963, 40.485172, 27.074596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975790, 40.115177, 27.067331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067086, -0.007939, -0.997716,
		0.922728, 0.379920, -0.065066,
		0.379569, -0.924985, -0.018162,
		32.089661, 39.837681, 27.061882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201057, 40.483864, 26.527948>,  <31.823963, 40.485172, 27.074596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201057, 40.483864, 26.527948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169621, 40.088665, 26.581129>,  <32.150757, 39.851543, 26.613037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169621, 40.088665, 26.581129>,  <32.201057, 40.483864, 26.527948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169621, 40.088665, 26.581129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022699, -0.131557, -0.991049,
		0.996648, -0.080908, -0.012087,
		-0.078593, -0.988001, 0.132953,
		32.146042, 39.792263, 26.621016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707283, 40.194180, 26.033516>,  <32.201057, 40.483864, 26.527948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707283, 40.194180, 26.033516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438026, 39.916122, 26.134436>,  <32.276470, 39.749290, 26.194988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438026, 39.916122, 26.134436>,  <32.707283, 40.194180, 26.033516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438026, 39.916122, 26.134436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200551, -0.156788, -0.967056,
		0.711797, -0.701568, -0.033870,
		-0.673145, -0.695140, 0.252301,
		32.236084, 39.707581, 26.210127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804943, 39.731159, 25.533924>,  <32.707283, 40.194180, 26.033516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804943, 39.731159, 25.533924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444645, 39.648422, 25.686701>,  <32.228466, 39.598782, 25.778366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444645, 39.648422, 25.686701>,  <32.804943, 39.731159, 25.533924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444645, 39.648422, 25.686701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352611, -0.165248, -0.921064,
		0.253632, -0.964318, 0.075910,
		-0.900742, -0.206845, 0.381941,
		32.174423, 39.586369, 25.801283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623524, 39.108128, 25.215635>,  <32.804943, 39.731159, 25.533924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623524, 39.108128, 25.215635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310421, 39.315823, 25.352856>,  <32.122559, 39.440441, 25.435188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310421, 39.315823, 25.352856>,  <32.623524, 39.108128, 25.215635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310421, 39.315823, 25.352856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370063, 0.054829, -0.927387,
		-0.500344, -0.852869, 0.149233,
		-0.782757, 0.519238, 0.343049,
		32.075592, 39.471596, 25.455770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554245, 38.512650, 24.753386>,  <32.623524, 39.108128, 25.215635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554245, 38.512650, 24.753386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920643, 38.586948, 24.611147>,  <33.140484, 38.631527, 24.525805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920643, 38.586948, 24.611147>,  <32.554245, 38.512650, 24.753386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920643, 38.586948, 24.611147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384835, -0.156347, 0.909647,
		0.113367, -0.970079, -0.214695,
		0.915997, 0.185746, -0.355596,
		33.195442, 38.642673, 24.504469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934731, 37.912140, 24.888504>,  <32.554245, 38.512650, 24.753386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934731, 37.912140, 24.888504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196159, 38.213848, 24.863464>,  <33.353016, 38.394875, 24.848440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196159, 38.213848, 24.863464>,  <32.934731, 37.912140, 24.888504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196159, 38.213848, 24.863464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458556, -0.328817, 0.825594,
		0.602138, -0.568291, -0.560781,
		0.653572, 0.754271, -0.062600,
		33.392231, 38.440128, 24.844685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542999, 37.540245, 24.983456>,  <32.934731, 37.912140, 24.888504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542999, 37.540245, 24.983456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600861, 37.930939, 25.046787>,  <33.635578, 38.165356, 25.084785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600861, 37.930939, 25.046787>,  <33.542999, 37.540245, 24.983456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600861, 37.930939, 25.046787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414237, -0.205094, 0.886760,
		0.898600, -0.062690, -0.434267,
		0.144657, 0.976732, 0.158329,
		33.644257, 38.223957, 25.094286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299553, 37.687134, 25.036966>,  <33.542999, 37.540245, 24.983456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299553, 37.687134, 25.036966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113201, 37.983849, 25.229927>,  <34.001389, 38.161877, 25.345703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113201, 37.983849, 25.229927>,  <34.299553, 37.687134, 25.036966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113201, 37.983849, 25.229927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472274, -0.252581, 0.844488,
		0.748274, 0.621255, -0.232653,
		-0.465879, 0.741785, 0.482402,
		33.973438, 38.206383, 25.374647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766060, 37.781429, 25.447784>,  <34.299553, 37.687134, 25.036966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766060, 37.781429, 25.447784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449917, 37.965179, 25.609924>,  <34.260231, 38.075432, 25.707209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449917, 37.965179, 25.609924>,  <34.766060, 37.781429, 25.447784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449917, 37.965179, 25.609924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306796, -0.275931, 0.910900,
		0.530297, 0.844295, 0.077148,
		-0.790355, 0.459379, 0.405351,
		34.212811, 38.102993, 25.731529>
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
